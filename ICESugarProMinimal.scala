package saxon.board.muselab.ICESugarPro

import saxon._
import spinal.core._
import spinal.lib.com.uart.UartCtrlMemoryMappedConfig
import spinal.lib.bus.bmb._
import spinal.lib.bus.bsb.BsbInterconnectGenerator
import spinal.lib.bus.misc.SizeMapping
import spinal.lib.com.jtag.sim.JtagTcp
import spinal.lib.com.uart.sim.{UartDecoder, UartEncoder}
import spinal.lib.generator._
import spinal.lib.io.{Gpio, InOutWrapper}
import spinal.lib.misc.plic.PlicMapping
import spinal.lib.graphic.RgbConfig
import spinal.lib.graphic.vga.{BmbVgaCtrlGenerator, BmbVgaCtrlParameter}
import spinal.lib.memory.sdram.sdr._
import spinal.lib.memory.sdram.xdr.CoreParameter
import spinal.lib.memory.sdram.xdr.phy.{Ecp5Sdrx2Phy, XilinxS7Phy}
import spinal.lib.blackbox.lattice.ecp5.{DCCA, IDDRX1F, ODDRX1F}
import spinal.lib.system.dma.sg.{DmaMemoryLayout, DmaSgGenerator}
import vexriscv.VexRiscvBmbGenerator
import vexriscv.ip._
import vexriscv._
import vexriscv.plugin._
import spinal.core.fiber._


// Define a SoC abstract enough to be used for simulation
class ICESugarProMinimalAbstract extends Area{
  implicit val interconnect = BmbInterconnectGenerator()
  implicit val bmbPeripheral = BmbBridgeGenerator(mapping = SizeMapping(0xF0000000l, 16 MiB)).peripheral(dataWidth = 32)
  implicit val peripheralDecoder = bmbPeripheral.asPeripheralDecoder() //Will be used by peripherals as default bus to connect to
  implicit val cpu = VexRiscvBmbGenerator()

  // Define the main interrupt controllers
  val plic = BmbPlicGenerator(0xC00000)
  plic.priorityWidth.load(2)
  plic.mapping.load(PlicMapping.sifive)

  val clint = BmbClintGenerator(0xB00000) //Used as a time reference only
  clint.cpuCount.load(1)

  cpu.setTimerInterrupt(clint.timerInterrupt(0))
  cpu.setSoftwareInterrupt(clint.softwareInterrupt(0))
  plic.addTarget(cpu.externalInterrupt)
  List(clint.logic, cpu.logic).produce{
    for (plugin <- cpu.config.plugins) plugin match {
      case plugin : CsrPlugin if plugin.utime != null => plugin.utime := RegNext(clint.logic.io.time)
      case _ =>
    }
  }

  //Add components
  val sdramA = SdramXdrBmbGenerator(memoryAddress = 0x40000000l).mapCtrlAt(0x100000)
  val sdramA0 = sdramA.addPort()

  val ramA = BmbOnChipRamGenerator(0x80000000l) // 64K Code
  val gpioA = BmbGpioGenerator(0x00000)
  val uartA = BmbUartGenerator(0x10000)

  implicit val bsbInterconnect = BsbInterconnectGenerator()
  val dma = new DmaSgGenerator(0x80000){
    val vga = new Area{
      val channel = createChannel()
      channel.fixedBurst(64)
      channel.withCircularMode()
      channel.fifoMapping load Some(0, 256)
      channel.connectInterrupt(plic, 12)

      val stream = createOutput(byteCount = 4)
      channel.outputsPorts += stream
    }
  }

  val dBus32 = BmbBridgeGenerator()
  dBus32.dataWidth(32) //Avoid 64 bits FPU requirements getting further

  //interconnect.addConnection(dma.write,   dBus32.bmb)
  interconnect.addConnection(dma.read,    dBus32.bmb)

  // Sg is Scatter Gather DMA I/F
  //interconnect.addConnection(dma.readSg,  dBus32.bmb)
  //interconnect.addConnection(dma.writeSg, dBus32.bmb)

  val vga = BmbVgaCtrlGenerator(0x90000)
  bsbInterconnect.connect(dma.vga.stream.output, vga.input)

  //Interconnect specification
  interconnect.setDefaultArbitration(BmbInterconnectGenerator.STATIC_PRIORITY)
  interconnect.setPriority(cpu.iBus, 1)
  interconnect.setPriority(cpu.dBus, 2)
  interconnect.addConnection(
    cpu.iBus   -> List(dBus32.bmb),//sdramA0.bmb,ramA.ctrl, bmbPeripheral.bmb),
    //fabric.dBus.bmb   -> List(sdramA0.bmb,ramA.ctrl, bmbPeripheral.bmb)
    cpu.dBus   -> List(dBus32.bmb),
    dBus32.bmb -> List(sdramA0.bmb,ramA.ctrl, bmbPeripheral.bmb)
  )
}

class ICESugarProMinimal extends Component{
  // Define the clock domains used by the SoC
  val debugCdCtrl = ClockDomainResetGenerator()
  debugCdCtrl.holdDuration.load(4095)
  debugCdCtrl.enablePowerOnReset()
  //debugCdCtrl.makeExternal(FixedFrequency(25 MHz), resetActiveLevel = LOW)

  val systemCdCtrl = ClockDomainResetGenerator()
  systemCdCtrl.holdDuration.load(63)
  systemCdCtrl.asyncReset(debugCdCtrl)
  systemCdCtrl.setInput(
    debugCdCtrl.outputClockDomain,
    omitReset = true
  )

  val hdmiCd = ClockDomainResetGenerator()
  hdmiCd.holdDuration.load(63)
  hdmiCd.asyncReset(debugCdCtrl)

  val vgaCd = ClockDomainResetGenerator()
  vgaCd.holdDuration.load(63)
  vgaCd.asyncReset(debugCdCtrl)

  val debugCd  = debugCdCtrl.outputClockDomain
  val systemCd = systemCdCtrl.outputClockDomain

  val clocking = new Area{
    val resetn    = in Bool()
    val clk25m    = in Bool()
    val sdram_clk = out Bool()
    val vga_clk   = out Bool()

    val pll = new BlackBox{
      setDefinitionName("pll_50mhz")
      val clkin = in Bool()
      val clkout_sdram = out Bool()
      val clkout_system = out Bool()
      val clkout_hdmi   = out Bool()
      val clkout_vga    = out Bool()
      val locked = out Bool()
    }
    pll.clkin := clk25m

    debugCdCtrl.setInput(
      ClockDomain(
        clock = pll.clkout_system,
        reset = resetn,
        frequency = FixedFrequency(50 MHz),
        config = ClockDomainConfig(
          resetKind = spinal.core.ASYNC, // vexriscv.plugin.ASYNC exists
          resetActiveLevel = LOW
        )
      )
    )

    Clock.syncDrive(pll.clkin, pll.clkout_hdmi)
    Clock.syncDrive(pll.clkin, pll.clkout_system)    
    Clock.syncDrive(pll.clkin, pll.clkout_vga)
    hdmiCd.setInput(ClockDomain(pll.clkout_hdmi))
    vgaCd.setInput(ClockDomain(pll.clkout_vga))

    val bb = ClockDomain(pll.clkout_sdram, False)(ODDRX1F())
    bb.D0 <> True
    bb.D1 <> False
    bb.Q <> sdram_clk

    pll.clkout_vga <> vga_clk;
  }

  val system = systemCd on new ICESugarProMinimalAbstract(){
    cpu.enableJtag(debugCdCtrl, systemCdCtrl)

    val phyA = Ecp5Sdrx2PhyGenerator().connect(sdramA)
    val hdmiPhy = vga.withHdmiEcp5(hdmiCd.outputClockDomain)
    // VGA BUS and timing signal for Overlay Text
    val vgaBus  = Handle(vga.output.toIo)
    val vga_frameStart = Handle(vga.logic.vga.ctrl.io.frameStart.pull().toIo)
    val vga_hctr = Handle(vga.logic.vga.ctrl.h.counter.pull().toIo)
    val vga_vctr = Handle(vga.logic.vga.ctrl.v.counter.pull().toIo)
    val vga_hstart = Handle(vga.logic.vga.ctrl.io.timings.h.syncStart.pull().toIo)
    val vga_vstart = Handle(vga.logic.vga.ctrl.io.timings.v.syncStart.pull().toIo)

    interconnect.setPipelining(bmbPeripheral.bmb)(cmdHalfRate = true, rspHalfRate = true)
    interconnect.setPipelining(cpu.dBus)(cmdValid = true)
    interconnect.setPipelining(dBus32.bmb)(cmdValid = true, cmdReady = true, rspValid = true)
    interconnect.setPipelining(sdramA0.bmb)(cmdValid = true, cmdReady = true, rspValid = true)
    interconnect.setPipelining(dma.read)(cmdHalfRate = true, rspValid = true)
  }

  system.vga.vgaCd.load(vgaCd.outputClockDomain)
}

object ICESugarProMinimalAbstract{
  def default(g : ICESugarProMinimalAbstract) = g.rework {
    import g._

    def cpuconfig = VexRiscvConfig(
      withMemoryStage = true,
      withWriteBackStage = true,
      List(
        new IBusCachedPlugin(
          resetVector = 0x80000000l,
          prediction = STATIC,
          compressedGen = true, // for compressed instruction
          injectorStage = true, // for speed up
          config = InstructionCacheConfig(
            cacheSize = 4096,
            bytePerLine =32,
            wayCount = 1,
            addressWidth = 32,
            cpuDataWidth = 32,
            memDataWidth = 32,
            catchIllegalAccess = true,
            catchAccessFault = true,
            asyncTagMemory = true, //false,
            // https://github.com/SpinalHDL/VexRiscv/issues/93
            twoCycleRam = false, //true, ->set false if compressedGen = true
            twoCycleCache = false //true ->set false if compressedGen = true
          )
          //            askMemoryTranslation = true,
          //            memoryTranslatorPortConfig = MemoryTranslatorPortConfig(
          //              portTlbSize = 4
          //            )
        ),
        new DBusCachedPlugin(
          config = new DataCacheConfig(
            cacheSize         = 4096,
            bytePerLine       = 32,
            wayCount          = 1,
            addressWidth      = 32,
            cpuDataWidth      = 32,
            memDataWidth      = 32,
            catchAccessError  = true,
            catchIllegal      = true,
            catchUnaligned    = true,
            asyncTagMemory = true //false
          ),
          memoryTranslatorPortConfig = null
          //            memoryTranslatorPortConfig = MemoryTranslatorPortConfig(
          //              portTlbSize = 6
          //            )
        ),
        new StaticMemoryTranslatorPlugin(
          ioRange      = _(31 downto 28) === 0xF
        ),
        new DecoderSimplePlugin(
          catchIllegalInstruction = true
        ),
        new RegFilePlugin(
          regFileReadyKind = plugin.ASYNC,//plugin.SYNC, // Use BRAM or NOT
          zeroBoot = false
        ),
        new IntAluPlugin,
        new SrcPlugin(
          separatedAddSub = false,
          executeInsertion = true
        ),
        new FullBarrelShifterPlugin,
        new MulPlugin,
        new DivPlugin,
        new HazardSimplePlugin(
          bypassExecute           = true,
          bypassMemory            = true,
          bypassWriteBack         = true,
          bypassWriteBackBuffer   = true,
          pessimisticUseSrc       = false,
          pessimisticWriteRegFile = false,
          pessimisticAddressMatch = false
        ),
        new BranchPlugin(
          earlyBranch = false,
          catchAddressMisaligned = true
        ),
        new CsrPlugin(
          new CsrPluginConfig(
            catchIllegalAccess = false,
            mvendorid      = null,
            marchid        = null,
            mimpid         = null,
            mhartid        = null,
            misaExtensionsInit = 66,
            misaAccess     = CsrAccess.NONE,
            mtvecAccess    = CsrAccess.NONE,
            mtvecInit      = 0x80000020l,
            mepcAccess     = CsrAccess.READ_WRITE,
            mscratchGen    = false,
            mcauseAccess   = CsrAccess.READ_ONLY,
            mbadaddrAccess = CsrAccess.READ_ONLY,
            mcycleAccess   = CsrAccess.NONE,
            minstretAccess = CsrAccess.NONE,
            ecallGen       = true, //false,
            ebreakGen      = false,
            wfiGenAsWait   = false,
            ucycleAccess   = CsrAccess.NONE,
            uinstretAccess = CsrAccess.NONE
          )
        ),
        new YamlPlugin("cpu0.yaml")
      )
    )

    cpu.config.load(cpuconfig)
    //cpu.config.load(VexRiscvConfigs.muraxLike)

    ramA.size.load(64 KiB)
    ramA.hexInit.load("software/standalone/blinkAndEcho/build/blinkAndEcho.hex")

    sdramA.coreParameter.load(CoreParameter(
      portTockenMin = 16,
      portTockenMax = 32,
      timingWidth = 4,
      refWidth = 16,
      stationCount  = 2,
      bytePerTaskMax = 64,
      writeLatencies = List(0),
      readLatencies = List(5, 6, 7)
    ))

    uartA.parameter load UartCtrlMemoryMappedConfig(
      baudrate = 115200,
      txFifoDepth = 16,
      rxFifoDepth = 16
    )

    gpioA.parameter load Gpio.Parameter(width = 8)

    vga.parameter load BmbVgaCtrlParameter(
      rgbConfig = RgbConfig(5,6,5)
    )

    dma.parameter.layout load DmaMemoryLayout(
      bankCount     = 1,
      bankWords     = 128,
      bankWidth     = 32,
      priorityWidth = 2
    )

    dma.setBmbParameter(
      addressWidth = 32,
      dataWidth = 32,
      lengthWidth = 6
    )


    // val io = new Bundle {
    //   val externalInterruptLine = in Bool()
    // }
    // val exline = Handle[Bool]

    // exline.load(io.externalInterruptLine)
    // plic.addInterrupt(exline,1)

    g
  }
}

object ICESugarProMinimal extends App{
  //Function used to configure the SoC
  def default(g : ICESugarProMinimal) = g.rework {
    import g._
    system.phyA.sdramLayout.load(MT48LC16M16A2.layout) // IS42S16160 compatible
    ICESugarProMinimalAbstract.default(system)
    g
  }

  //Generate the SoC
  val report = SpinalRtlConfig.generateVerilog(InOutWrapper(default(new ICESugarProMinimal())))
  BspGenerator("muselab/ICESugarPro/minimal", report.toplevel, report.toplevel.system.cpu.dBus)
}


object ICESugarProMinimalSim extends App{
  import spinal.core.sim._

  val config = SimConfig
  config.compile{
    val dut = new ICESugarProMinimal()
    ICESugarProMinimal.default(dut) //Configure the system
    dut
  }.doSimUntilVoid(seed=42){dut =>
    val debugClkPeriod = (1e12/dut.debugCdCtrl.inputClockDomain.frequency.getValue.toDouble).toLong
    val jtagClkPeriod = debugClkPeriod*8
    val uartBaudRate = 115200
    val uartBaudPeriod = (1e12/uartBaudRate).toLong

    dut.debugCdCtrl.inputClockDomain.forkStimulus(debugClkPeriod)

    JtagTcp(
      jtag = dut.system.cpu.jtag,
      jtagClkPeriod = jtagClkPeriod
    )

    UartDecoder(
      uartPin =  dut.system.uartA.uart.txd,
      baudPeriod = uartBaudPeriod
    )

    UartEncoder(
      uartPin = dut.system.uartA.uart.rxd,
      baudPeriod = uartBaudPeriod
    )
  }
}

