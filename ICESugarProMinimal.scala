package saxon.board.muselab.ICESugarPro

import saxon._
import spinal.core._
import spinal.lib.com.uart.UartCtrlMemoryMappedConfig
import spinal.lib.bus.bmb._
import spinal.lib.bus.misc.SizeMapping
import spinal.lib.com.jtag.sim.JtagTcp
import spinal.lib.com.uart.sim.{UartDecoder, UartEncoder}
import spinal.lib.generator._
import spinal.lib.io.{Gpio, InOutWrapper}
import spinal.lib.misc.plic.PlicMapping
import vexriscv.VexRiscvBmbGenerator
import vexriscv.ip._
import vexriscv._
import vexriscv.plugin._


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
  //plic.addTarget(cpu.externalSupervisorInterrupt)
  List(clint.logic, cpu.logic).produce{
    for (plugin <- cpu.config.plugins) plugin match {
      case plugin : CsrPlugin if plugin.utime != null => plugin.utime := RegNext(clint.logic.io.time)
      case _ =>
    }
  }

  //Add components
  val ramA = BmbOnChipRamGenerator(0x80000000l) // 64K Code
  val gpioA = BmbGpioGenerator(0x00000)
  val uartA = BmbUartGenerator(0x10000)

  //Interconnect specification
  interconnect.setDefaultArbitration(BmbInterconnectGenerator.STATIC_PRIORITY)
  interconnect.setPriority(cpu.iBus, 1)
  interconnect.setPriority(cpu.dBus, 2)
  interconnect.addConnection(
    cpu.iBus -> List(ramA.ctrl),
    cpu.dBus -> List(ramA.ctrl, bmbPeripheral.bmb)
  )
}

class ICESugarProMinimal extends Component{
  // Define the clock domains used by the SoC
  val debugCdCtrl = ClockDomainResetGenerator()
  debugCdCtrl.holdDuration.load(4095)
  debugCdCtrl.enablePowerOnReset()
  debugCdCtrl.makeExternal(FixedFrequency(25 MHz), resetActiveLevel = LOW)

  val systemCdCtrl = ClockDomainResetGenerator()
  systemCdCtrl.holdDuration.load(63)
  systemCdCtrl.asyncReset(debugCdCtrl)
  systemCdCtrl.setInput(
    debugCdCtrl.outputClockDomain,
    omitReset = true
  )

  val debugCd  = debugCdCtrl.outputClockDomain
  val systemCd = systemCdCtrl.outputClockDomain

  val system = systemCd on new ICESugarProMinimalAbstract(){
    cpu.enableJtag(debugCdCtrl, systemCdCtrl)

    interconnect.setPipelining(bmbPeripheral.bmb)(cmdHalfRate = true, rspHalfRate = true)
    interconnect.setPipelining(cpu.dBus)(cmdValid = true)
  }
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

    uartA.parameter load UartCtrlMemoryMappedConfig(
      baudrate = 115200,
      txFifoDepth = 16,
      rxFifoDepth = 16
    )

    gpioA.parameter load Gpio.Parameter(width = 8)

    g
  }
}

object ICESugarProMinimal extends App{
  //Function used to configure the SoC
  def default(g : ICESugarProMinimal) = g.rework {
    import g._
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

