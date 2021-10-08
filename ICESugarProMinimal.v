// Generator : SpinalHDL v1.6.1    git head : 8434600e3b32dc561f4e361e99a6085b79085453
// Component : ICESugarProMinimal
// Git hash  : b1df330390622bbad0bd6c81c4e6a72d9a256f47



module ICESugarProMinimal (
  input               clocking_resetn,
  input               clocking_clk25m,
  output              clocking_sdram_clk,
  input               system_cpu_jtag_tms,
  input               system_cpu_jtag_tdi,
  output              system_cpu_jtag_tdo,
  input               system_cpu_jtag_tck,
  output     [12:0]   system_phyA_sdram_ADDR,
  output     [1:0]    system_phyA_sdram_BA,
  output     [1:0]    system_phyA_sdram_DQM,
  output              system_phyA_sdram_CASn,
  output              system_phyA_sdram_CKE,
  output              system_phyA_sdram_CSn,
  output              system_phyA_sdram_RASn,
  output              system_phyA_sdram_WEn,
  output              system_uartA_uart_txd,
  input               system_uartA_uart_rxd,
   inout     [15:0]   system_phyA_sdram_DQ,
   inout     [7:0]    system_gpioA_gpio
);

  reg                 system_cpu_logic_cpu_dBus_rsp_valid;
  wire                system_cpu_logic_cpu_dBus_rsp_payload_error;
  wire                system_cpu_logic_cpu_timerInterrupt;
  wire                system_cpu_logic_cpu_softwareInterrupt;
  wire       [7:0]    system_cpu_logic_cpu_debug_bus_cmd_payload_address;
  wire                system_cpu_logic_cpu_iBus_rsp_payload_error;
  wire       [15:0]   system_ramA_ctrl_arbiter_io_inputs_0_cmd_payload_fragment_address;
  wire       [15:0]   system_ramA_ctrl_arbiter_io_inputs_1_cmd_payload_fragment_address;
  wire       [24:0]   system_sdramA0_bmb_arbiter_io_inputs_0_cmd_payload_fragment_address;
  wire       [24:0]   system_sdramA0_bmb_arbiter_io_inputs_1_cmd_payload_fragment_address;
  wire                system_sdramA0_bmb_arbiter_io_output_cmd_ready;
  wire                clocking_pll_clkout_sdram;
  wire                clocking_pll_clkout_system;
  wire                clocking_pll_locked;
  wire                clocking_pll_clkout_sdram_DCCA_CLKO;
  wire                clocking_bb_Q;
  wire       [15:0]   system_phyA_logic_io_ctrl_phases_0_DQr_0;
  wire       [15:0]   system_phyA_logic_io_ctrl_phases_1_DQr_0;
  wire                system_phyA_logic_io_ctrl_readValid;
  wire       [12:0]   system_phyA_logic_io_sdram_ADDR;
  wire       [1:0]    system_phyA_logic_io_sdram_BA;
  wire                system_phyA_logic_io_sdram_CASn;
  wire                system_phyA_logic_io_sdram_CKE;
  wire                system_phyA_logic_io_sdram_CSn;
  wire       [1:0]    system_phyA_logic_io_sdram_DQM;
  wire                system_phyA_logic_io_sdram_RASn;
  wire                system_phyA_logic_io_sdram_WEn;
  wire       [15:0]   system_phyA_logic_io_sdram_DQ_write;
  wire       [15:0]   system_phyA_logic_io_sdram_DQ_writeEnable;
  wire                bufferCC_5_io_dataOut;
  wire                bufferCC_6_io_dataOut;
  wire                system_cpu_logic_cpu_dBus_cmd_valid;
  wire                system_cpu_logic_cpu_dBus_cmd_payload_wr;
  wire                system_cpu_logic_cpu_dBus_cmd_payload_uncached;
  wire       [31:0]   system_cpu_logic_cpu_dBus_cmd_payload_address;
  wire       [31:0]   system_cpu_logic_cpu_dBus_cmd_payload_data;
  wire       [3:0]    system_cpu_logic_cpu_dBus_cmd_payload_mask;
  wire       [2:0]    system_cpu_logic_cpu_dBus_cmd_payload_size;
  wire                system_cpu_logic_cpu_dBus_cmd_payload_last;
  wire                system_cpu_logic_cpu_debug_bus_cmd_ready;
  wire       [31:0]   system_cpu_logic_cpu_debug_bus_rsp_data;
  wire                system_cpu_logic_cpu_debug_resetOut;
  wire                system_cpu_logic_cpu_iBus_cmd_valid;
  wire       [31:0]   system_cpu_logic_cpu_iBus_cmd_payload_address;
  wire       [2:0]    system_cpu_logic_cpu_iBus_cmd_payload_size;
  wire                jtagBridge_1_io_jtag_tdo;
  wire                jtagBridge_1_io_remote_cmd_valid;
  wire                jtagBridge_1_io_remote_cmd_payload_last;
  wire       [0:0]    jtagBridge_1_io_remote_cmd_payload_fragment;
  wire                jtagBridge_1_io_remote_rsp_ready;
  wire                systemDebugger_1_io_remote_cmd_ready;
  wire                systemDebugger_1_io_remote_rsp_valid;
  wire                systemDebugger_1_io_remote_rsp_payload_error;
  wire       [31:0]   systemDebugger_1_io_remote_rsp_payload_data;
  wire                systemDebugger_1_io_mem_cmd_valid;
  wire       [31:0]   systemDebugger_1_io_mem_cmd_payload_address;
  wire       [31:0]   systemDebugger_1_io_mem_cmd_payload_data;
  wire                systemDebugger_1_io_mem_cmd_payload_wr;
  wire       [1:0]    systemDebugger_1_io_mem_cmd_payload_size;
  wire                system_cpu_iBus_decoder_io_input_cmd_ready;
  wire                system_cpu_iBus_decoder_io_input_rsp_valid;
  wire                system_cpu_iBus_decoder_io_input_rsp_payload_last;
  wire       [0:0]    system_cpu_iBus_decoder_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   system_cpu_iBus_decoder_io_input_rsp_payload_fragment_data;
  wire                system_cpu_iBus_decoder_io_outputs_0_cmd_valid;
  wire                system_cpu_iBus_decoder_io_outputs_0_cmd_payload_last;
  wire       [0:0]    system_cpu_iBus_decoder_io_outputs_0_cmd_payload_fragment_opcode;
  wire       [31:0]   system_cpu_iBus_decoder_io_outputs_0_cmd_payload_fragment_address;
  wire       [4:0]    system_cpu_iBus_decoder_io_outputs_0_cmd_payload_fragment_length;
  wire                system_cpu_iBus_decoder_io_outputs_0_rsp_ready;
  wire                system_cpu_iBus_decoder_io_outputs_1_cmd_valid;
  wire                system_cpu_iBus_decoder_io_outputs_1_cmd_payload_last;
  wire       [0:0]    system_cpu_iBus_decoder_io_outputs_1_cmd_payload_fragment_opcode;
  wire       [31:0]   system_cpu_iBus_decoder_io_outputs_1_cmd_payload_fragment_address;
  wire       [4:0]    system_cpu_iBus_decoder_io_outputs_1_cmd_payload_fragment_length;
  wire                system_cpu_iBus_decoder_io_outputs_1_rsp_ready;
  wire                bufferCC_7_io_dataOut;
  wire                system_cpu_dBus_decoder_io_input_cmd_ready;
  wire                system_cpu_dBus_decoder_io_input_rsp_valid;
  wire                system_cpu_dBus_decoder_io_input_rsp_payload_last;
  wire       [0:0]    system_cpu_dBus_decoder_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   system_cpu_dBus_decoder_io_input_rsp_payload_fragment_data;
  wire       [0:0]    system_cpu_dBus_decoder_io_input_rsp_payload_fragment_context;
  wire                system_cpu_dBus_decoder_io_outputs_0_cmd_valid;
  wire                system_cpu_dBus_decoder_io_outputs_0_cmd_payload_last;
  wire       [0:0]    system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_opcode;
  wire       [31:0]   system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_address;
  wire       [4:0]    system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_length;
  wire       [31:0]   system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_data;
  wire       [3:0]    system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_mask;
  wire       [0:0]    system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_context;
  wire                system_cpu_dBus_decoder_io_outputs_0_rsp_ready;
  wire                system_cpu_dBus_decoder_io_outputs_1_cmd_valid;
  wire                system_cpu_dBus_decoder_io_outputs_1_cmd_payload_last;
  wire       [0:0]    system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_opcode;
  wire       [31:0]   system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_address;
  wire       [4:0]    system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_length;
  wire       [31:0]   system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_data;
  wire       [3:0]    system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_mask;
  wire       [0:0]    system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_context;
  wire                system_cpu_dBus_decoder_io_outputs_1_rsp_ready;
  wire                system_cpu_dBus_decoder_io_outputs_2_cmd_valid;
  wire                system_cpu_dBus_decoder_io_outputs_2_cmd_payload_last;
  wire       [0:0]    system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_opcode;
  wire       [31:0]   system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_address;
  wire       [4:0]    system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_length;
  wire       [31:0]   system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_data;
  wire       [3:0]    system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_mask;
  wire       [0:0]    system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_context;
  wire                system_cpu_dBus_decoder_io_outputs_2_rsp_ready;
  wire                system_ramA_logic_io_bus_cmd_ready;
  wire                system_ramA_logic_io_bus_rsp_valid;
  wire                system_ramA_logic_io_bus_rsp_payload_last;
  wire       [0:0]    system_ramA_logic_io_bus_rsp_payload_fragment_source;
  wire       [0:0]    system_ramA_logic_io_bus_rsp_payload_fragment_opcode;
  wire       [31:0]   system_ramA_logic_io_bus_rsp_payload_fragment_data;
  wire       [2:0]    system_ramA_logic_io_bus_rsp_payload_fragment_context;
  wire                system_cpu_dBus_unburstify_io_input_cmd_ready;
  wire                system_cpu_dBus_unburstify_io_input_rsp_valid;
  wire                system_cpu_dBus_unburstify_io_input_rsp_payload_last;
  wire       [0:0]    system_cpu_dBus_unburstify_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   system_cpu_dBus_unburstify_io_input_rsp_payload_fragment_data;
  wire       [0:0]    system_cpu_dBus_unburstify_io_input_rsp_payload_fragment_context;
  wire                system_cpu_dBus_unburstify_io_output_cmd_valid;
  wire                system_cpu_dBus_unburstify_io_output_cmd_payload_last;
  wire       [0:0]    system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_opcode;
  wire       [31:0]   system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_address;
  wire       [1:0]    system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_length;
  wire       [31:0]   system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_data;
  wire       [3:0]    system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_mask;
  wire       [2:0]    system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_context;
  wire                system_cpu_dBus_unburstify_io_output_rsp_ready;
  wire                system_ramA_ctrl_arbiter_io_inputs_0_cmd_ready;
  wire                system_ramA_ctrl_arbiter_io_inputs_0_rsp_valid;
  wire                system_ramA_ctrl_arbiter_io_inputs_0_rsp_payload_last;
  wire       [0:0]    system_ramA_ctrl_arbiter_io_inputs_0_rsp_payload_fragment_opcode;
  wire       [31:0]   system_ramA_ctrl_arbiter_io_inputs_0_rsp_payload_fragment_data;
  wire       [2:0]    system_ramA_ctrl_arbiter_io_inputs_0_rsp_payload_fragment_context;
  wire                system_ramA_ctrl_arbiter_io_inputs_1_cmd_ready;
  wire                system_ramA_ctrl_arbiter_io_inputs_1_rsp_valid;
  wire                system_ramA_ctrl_arbiter_io_inputs_1_rsp_payload_last;
  wire       [0:0]    system_ramA_ctrl_arbiter_io_inputs_1_rsp_payload_fragment_opcode;
  wire       [31:0]   system_ramA_ctrl_arbiter_io_inputs_1_rsp_payload_fragment_data;
  wire       [1:0]    system_ramA_ctrl_arbiter_io_inputs_1_rsp_payload_fragment_context;
  wire                system_ramA_ctrl_arbiter_io_output_cmd_valid;
  wire                system_ramA_ctrl_arbiter_io_output_cmd_payload_last;
  wire       [0:0]    system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_source;
  wire       [0:0]    system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_opcode;
  wire       [15:0]   system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_address;
  wire       [1:0]    system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_length;
  wire       [31:0]   system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_data;
  wire       [3:0]    system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_mask;
  wire       [2:0]    system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_context;
  wire                system_ramA_ctrl_arbiter_io_output_rsp_ready;
  wire                system_cpu_dBus_unburstify_1_io_input_cmd_ready;
  wire                system_cpu_dBus_unburstify_1_io_input_rsp_valid;
  wire                system_cpu_dBus_unburstify_1_io_input_rsp_payload_last;
  wire       [0:0]    system_cpu_dBus_unburstify_1_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   system_cpu_dBus_unburstify_1_io_input_rsp_payload_fragment_data;
  wire       [0:0]    system_cpu_dBus_unburstify_1_io_input_rsp_payload_fragment_context;
  wire                system_cpu_dBus_unburstify_1_io_output_cmd_valid;
  wire                system_cpu_dBus_unburstify_1_io_output_cmd_payload_last;
  wire       [0:0]    system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_opcode;
  wire       [31:0]   system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_address;
  wire       [1:0]    system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_length;
  wire       [31:0]   system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_data;
  wire       [3:0]    system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_mask;
  wire       [2:0]    system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_context;
  wire                system_cpu_dBus_unburstify_1_io_output_rsp_ready;
  wire                system_cpu_iBus_unburstify_io_input_cmd_ready;
  wire                system_cpu_iBus_unburstify_io_input_rsp_valid;
  wire                system_cpu_iBus_unburstify_io_input_rsp_payload_last;
  wire       [0:0]    system_cpu_iBus_unburstify_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   system_cpu_iBus_unburstify_io_input_rsp_payload_fragment_data;
  wire                system_cpu_iBus_unburstify_io_output_cmd_valid;
  wire                system_cpu_iBus_unburstify_io_output_cmd_payload_last;
  wire       [0:0]    system_cpu_iBus_unburstify_io_output_cmd_payload_fragment_opcode;
  wire       [31:0]   system_cpu_iBus_unburstify_io_output_cmd_payload_fragment_address;
  wire       [1:0]    system_cpu_iBus_unburstify_io_output_cmd_payload_fragment_length;
  wire       [1:0]    system_cpu_iBus_unburstify_io_output_cmd_payload_fragment_context;
  wire                system_cpu_iBus_unburstify_io_output_rsp_ready;
  wire                system_bmbPeripheral_bmb_decoder_io_input_cmd_ready;
  wire                system_bmbPeripheral_bmb_decoder_io_input_rsp_valid;
  wire                system_bmbPeripheral_bmb_decoder_io_input_rsp_payload_last;
  wire       [0:0]    system_bmbPeripheral_bmb_decoder_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   system_bmbPeripheral_bmb_decoder_io_input_rsp_payload_fragment_data;
  wire       [2:0]    system_bmbPeripheral_bmb_decoder_io_input_rsp_payload_fragment_context;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_valid;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_last;
  wire       [0:0]    system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode;
  wire       [23:0]   system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_address;
  wire       [1:0]    system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_length;
  wire       [31:0]   system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_data;
  wire       [3:0]    system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_mask;
  wire       [2:0]    system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_context;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_0_rsp_ready;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_valid;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_last;
  wire       [0:0]    system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_opcode;
  wire       [23:0]   system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_address;
  wire       [1:0]    system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_length;
  wire       [31:0]   system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_data;
  wire       [3:0]    system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_mask;
  wire       [2:0]    system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_context;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_1_rsp_ready;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_valid;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_last;
  wire       [0:0]    system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_opcode;
  wire       [23:0]   system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_address;
  wire       [1:0]    system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_length;
  wire       [31:0]   system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_data;
  wire       [3:0]    system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_mask;
  wire       [2:0]    system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_context;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_2_rsp_ready;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_valid;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_last;
  wire       [0:0]    system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_opcode;
  wire       [23:0]   system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_address;
  wire       [1:0]    system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_length;
  wire       [31:0]   system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_data;
  wire       [3:0]    system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_mask;
  wire       [2:0]    system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_context;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_3_rsp_ready;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_valid;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_last;
  wire       [0:0]    system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_opcode;
  wire       [23:0]   system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_address;
  wire       [1:0]    system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_length;
  wire       [31:0]   system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_data;
  wire       [3:0]    system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_mask;
  wire       [2:0]    system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_context;
  wire                system_bmbPeripheral_bmb_decoder_io_outputs_4_rsp_ready;
  wire                system_clint_logic_io_bus_cmd_ready;
  wire                system_clint_logic_io_bus_rsp_valid;
  wire                system_clint_logic_io_bus_rsp_payload_last;
  wire       [0:0]    system_clint_logic_io_bus_rsp_payload_fragment_opcode;
  wire       [31:0]   system_clint_logic_io_bus_rsp_payload_fragment_data;
  wire       [2:0]    system_clint_logic_io_bus_rsp_payload_fragment_context;
  wire       [0:0]    system_clint_logic_io_timerInterrupt;
  wire       [0:0]    system_clint_logic_io_softwareInterrupt;
  wire       [63:0]   system_clint_logic_io_time;
  wire                system_sdramA_logic_io_bmb_0_cmd_ready;
  wire                system_sdramA_logic_io_bmb_0_rsp_valid;
  wire                system_sdramA_logic_io_bmb_0_rsp_payload_last;
  wire       [0:0]    system_sdramA_logic_io_bmb_0_rsp_payload_fragment_source;
  wire       [0:0]    system_sdramA_logic_io_bmb_0_rsp_payload_fragment_opcode;
  wire       [31:0]   system_sdramA_logic_io_bmb_0_rsp_payload_fragment_data;
  wire       [0:0]    system_sdramA_logic_io_bmb_0_rsp_payload_fragment_context;
  wire                system_sdramA_logic_io_ctrl_cmd_ready;
  wire                system_sdramA_logic_io_ctrl_rsp_valid;
  wire                system_sdramA_logic_io_ctrl_rsp_payload_last;
  wire       [0:0]    system_sdramA_logic_io_ctrl_rsp_payload_fragment_opcode;
  wire       [31:0]   system_sdramA_logic_io_ctrl_rsp_payload_fragment_data;
  wire       [2:0]    system_sdramA_logic_io_ctrl_rsp_payload_fragment_context;
  wire                system_sdramA_logic_io_phy_phases_0_CASn;
  wire                system_sdramA_logic_io_phy_phases_0_CKE;
  wire                system_sdramA_logic_io_phy_phases_0_CSn;
  wire       [1:0]    system_sdramA_logic_io_phy_phases_0_DM_0;
  wire                system_sdramA_logic_io_phy_phases_0_RASn;
  wire                system_sdramA_logic_io_phy_phases_0_WEn;
  wire       [15:0]   system_sdramA_logic_io_phy_phases_0_DQw_0;
  wire                system_sdramA_logic_io_phy_phases_1_CASn;
  wire                system_sdramA_logic_io_phy_phases_1_CKE;
  wire                system_sdramA_logic_io_phy_phases_1_CSn;
  wire       [1:0]    system_sdramA_logic_io_phy_phases_1_DM_0;
  wire                system_sdramA_logic_io_phy_phases_1_RASn;
  wire                system_sdramA_logic_io_phy_phases_1_WEn;
  wire       [15:0]   system_sdramA_logic_io_phy_phases_1_DQw_0;
  wire       [12:0]   system_sdramA_logic_io_phy_ADDR;
  wire       [1:0]    system_sdramA_logic_io_phy_BA;
  wire                system_sdramA_logic_io_phy_readEnable;
  wire                system_sdramA_logic_io_phy_writeEnable;
  wire       [7:0]    system_gpioA_logic_io_gpio_write;
  wire       [7:0]    system_gpioA_logic_io_gpio_writeEnable;
  wire                system_gpioA_logic_io_bus_cmd_ready;
  wire                system_gpioA_logic_io_bus_rsp_valid;
  wire                system_gpioA_logic_io_bus_rsp_payload_last;
  wire       [0:0]    system_gpioA_logic_io_bus_rsp_payload_fragment_opcode;
  wire       [31:0]   system_gpioA_logic_io_bus_rsp_payload_fragment_data;
  wire       [2:0]    system_gpioA_logic_io_bus_rsp_payload_fragment_context;
  wire       [7:0]    system_gpioA_logic_io_interrupt;
  wire                system_uartA_logic_io_bus_cmd_ready;
  wire                system_uartA_logic_io_bus_rsp_valid;
  wire                system_uartA_logic_io_bus_rsp_payload_last;
  wire       [0:0]    system_uartA_logic_io_bus_rsp_payload_fragment_opcode;
  wire       [31:0]   system_uartA_logic_io_bus_rsp_payload_fragment_data;
  wire       [2:0]    system_uartA_logic_io_bus_rsp_payload_fragment_context;
  wire                system_uartA_logic_io_uart_txd;
  wire                system_uartA_logic_io_interrupt;
  wire                system_sdramA0_bmb_arbiter_io_inputs_0_cmd_ready;
  wire                system_sdramA0_bmb_arbiter_io_inputs_0_rsp_valid;
  wire                system_sdramA0_bmb_arbiter_io_inputs_0_rsp_payload_last;
  wire       [0:0]    system_sdramA0_bmb_arbiter_io_inputs_0_rsp_payload_fragment_opcode;
  wire       [31:0]   system_sdramA0_bmb_arbiter_io_inputs_0_rsp_payload_fragment_data;
  wire       [0:0]    system_sdramA0_bmb_arbiter_io_inputs_0_rsp_payload_fragment_context;
  wire                system_sdramA0_bmb_arbiter_io_inputs_1_cmd_ready;
  wire                system_sdramA0_bmb_arbiter_io_inputs_1_rsp_valid;
  wire                system_sdramA0_bmb_arbiter_io_inputs_1_rsp_payload_last;
  wire       [0:0]    system_sdramA0_bmb_arbiter_io_inputs_1_rsp_payload_fragment_opcode;
  wire       [31:0]   system_sdramA0_bmb_arbiter_io_inputs_1_rsp_payload_fragment_data;
  wire                system_sdramA0_bmb_arbiter_io_output_cmd_valid;
  wire                system_sdramA0_bmb_arbiter_io_output_cmd_payload_last;
  wire       [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_source;
  wire       [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_opcode;
  wire       [24:0]   system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_address;
  wire       [4:0]    system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_length;
  wire       [31:0]   system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_data;
  wire       [3:0]    system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_mask;
  wire       [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_context;
  wire                system_sdramA0_bmb_arbiter_io_output_rsp_ready;
  reg                 _zz_system_gpioA_gpio;
  reg                 _zz_system_gpioA_gpio_1;
  reg                 _zz_system_gpioA_gpio_2;
  reg                 _zz_system_gpioA_gpio_3;
  reg                 _zz_system_gpioA_gpio_4;
  reg                 _zz_system_gpioA_gpio_5;
  reg                 _zz_system_gpioA_gpio_6;
  reg                 _zz_system_gpioA_gpio_7;
  reg                 _zz_system_phyA_sdram_DQ;
  reg                 _zz_system_phyA_sdram_DQ_1;
  reg                 _zz_system_phyA_sdram_DQ_2;
  reg                 _zz_system_phyA_sdram_DQ_3;
  reg                 _zz_system_phyA_sdram_DQ_4;
  reg                 _zz_system_phyA_sdram_DQ_5;
  reg                 _zz_system_phyA_sdram_DQ_6;
  reg                 _zz_system_phyA_sdram_DQ_7;
  reg                 _zz_system_phyA_sdram_DQ_8;
  reg                 _zz_system_phyA_sdram_DQ_9;
  reg                 _zz_system_phyA_sdram_DQ_10;
  reg                 _zz_system_phyA_sdram_DQ_11;
  reg                 _zz_system_phyA_sdram_DQ_12;
  reg                 _zz_system_phyA_sdram_DQ_13;
  reg                 _zz_system_phyA_sdram_DQ_14;
  reg                 _zz_system_phyA_sdram_DQ_15;
  reg                 debugCdCtrl_logic_inputResetTrigger;
  reg                 debugCdCtrl_logic_outputResetUnbuffered;
  reg        [11:0]   debugCdCtrl_logic_holdingLogic_resetCounter = 12'h0;
  wire                when_ClockDomainGenerator_l77;
  reg                 debugCdCtrl_logic_outputReset = 1'b1;
  wire                debugCdCtrl_logic_inputResetAdapter_stuff_syncTrigger;
  reg                 systemCdCtrl_logic_inputResetTrigger;
  reg                 systemCdCtrl_logic_outputResetUnbuffered;
  reg        [5:0]    systemCdCtrl_logic_holdingLogic_resetCounter;
  wire                when_ClockDomainGenerator_l77_1;
  reg                 systemCdCtrl_logic_outputReset;
  wire                system_cpu_iBus_cmd_valid;
  wire                system_cpu_iBus_cmd_ready;
  wire                system_cpu_iBus_cmd_payload_last;
  wire       [0:0]    system_cpu_iBus_cmd_payload_fragment_opcode;
  wire       [31:0]   system_cpu_iBus_cmd_payload_fragment_address;
  wire       [4:0]    system_cpu_iBus_cmd_payload_fragment_length;
  wire                system_cpu_iBus_rsp_valid;
  wire                system_cpu_iBus_rsp_ready;
  wire                system_cpu_iBus_rsp_payload_last;
  wire       [0:0]    system_cpu_iBus_rsp_payload_fragment_opcode;
  wire       [31:0]   system_cpu_iBus_rsp_payload_fragment_data;
  wire                system_cpu_logic_cpu_dBus_Bridge_bus_cmd_valid;
  reg                 system_cpu_logic_cpu_dBus_Bridge_bus_cmd_ready;
  wire                system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_last;
  wire       [0:0]    system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_opcode;
  wire       [31:0]   system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_address;
  wire       [4:0]    system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_length;
  wire       [31:0]   system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_data;
  wire       [3:0]    system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_mask;
  wire       [0:0]    system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_context;
  wire                system_cpu_logic_cpu_dBus_Bridge_bus_rsp_valid;
  wire                system_cpu_logic_cpu_dBus_Bridge_bus_rsp_ready;
  wire                system_cpu_logic_cpu_dBus_Bridge_bus_rsp_payload_last;
  wire       [0:0]    system_cpu_logic_cpu_dBus_Bridge_bus_rsp_payload_fragment_opcode;
  wire       [31:0]   system_cpu_logic_cpu_dBus_Bridge_bus_rsp_payload_fragment_data;
  wire       [0:0]    system_cpu_logic_cpu_dBus_Bridge_bus_rsp_payload_fragment_context;
  wire                system_cpu_logic_cpu_dBus_Bridge_withoutWriteBuffer_busCmdContext_isWrite;
  reg        [4:0]    _zz_system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_length;
  wire                when_DataCache_l525;
  reg                 system_cpu_debugReset;
  wire                system_cpu_logic_cpu_debug_bus_cmd_fire;
  reg                 system_cpu_logic_cpu_debug_bus_cmd_fire_regNext;
  wire       [15:0]   _zz_io_sdram_DQ_read;
  wire       [15:0]   _zz_system_phyA_sdram_DQ_16;
  wire       [15:0]   _zz_when_InOutWrapper_l65;
  wire                system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_valid;
  wire                system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_ready;
  wire                system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_last;
  wire       [0:0]    system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_opcode;
  wire       [31:0]   system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_address;
  wire       [4:0]    system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_length;
  wire       [31:0]   system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_data;
  wire       [3:0]    system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_mask;
  wire       [0:0]    system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_context;
  reg                 system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rValid;
  reg                 system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_last;
  reg        [0:0]    system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_opcode;
  reg        [31:0]   system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_address;
  reg        [4:0]    system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_length;
  reg        [31:0]   system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_data;
  reg        [3:0]    system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_mask;
  reg        [0:0]    system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_context;
  wire                when_Stream_l342;
  wire                system_bmbPeripheral_bmb_cmd_valid;
  wire                system_bmbPeripheral_bmb_cmd_ready;
  wire                system_bmbPeripheral_bmb_cmd_payload_last;
  wire       [0:0]    system_bmbPeripheral_bmb_cmd_payload_fragment_opcode;
  wire       [23:0]   system_bmbPeripheral_bmb_cmd_payload_fragment_address;
  wire       [1:0]    system_bmbPeripheral_bmb_cmd_payload_fragment_length;
  wire       [31:0]   system_bmbPeripheral_bmb_cmd_payload_fragment_data;
  wire       [3:0]    system_bmbPeripheral_bmb_cmd_payload_fragment_mask;
  wire       [2:0]    system_bmbPeripheral_bmb_cmd_payload_fragment_context;
  wire                system_bmbPeripheral_bmb_rsp_valid;
  wire                system_bmbPeripheral_bmb_rsp_ready;
  wire                system_bmbPeripheral_bmb_rsp_payload_last;
  wire       [0:0]    system_bmbPeripheral_bmb_rsp_payload_fragment_opcode;
  wire       [31:0]   system_bmbPeripheral_bmb_rsp_payload_fragment_data;
  wire       [2:0]    system_bmbPeripheral_bmb_rsp_payload_fragment_context;
  wire                system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid;
  wire                system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready;
  wire                system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last;
  wire       [0:0]    system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode;
  wire       [23:0]   system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address;
  wire       [1:0]    system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length;
  wire       [31:0]   system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data;
  wire       [3:0]    system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_mask;
  wire       [2:0]    system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context;
  wire                system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid;
  wire                system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready;
  wire                system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last;
  wire       [0:0]    system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode;
  wire       [31:0]   system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data;
  wire       [2:0]    system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context;
  wire                _zz_io_input_rsp_ready;
  wire                system_bmbPeripheral_bmb_cmd_halfPipe_valid;
  wire                system_bmbPeripheral_bmb_cmd_halfPipe_ready;
  wire                system_bmbPeripheral_bmb_cmd_halfPipe_payload_last;
  wire       [0:0]    system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_opcode;
  wire       [23:0]   system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_address;
  wire       [1:0]    system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_length;
  wire       [31:0]   system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_data;
  wire       [3:0]    system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_mask;
  wire       [2:0]    system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_context;
  reg                 system_bmbPeripheral_bmb_cmd_rValid;
  wire                system_bmbPeripheral_bmb_cmd_halfPipe_fire;
  reg                 system_bmbPeripheral_bmb_cmd_rData_last;
  reg        [0:0]    system_bmbPeripheral_bmb_cmd_rData_fragment_opcode;
  reg        [23:0]   system_bmbPeripheral_bmb_cmd_rData_fragment_address;
  reg        [1:0]    system_bmbPeripheral_bmb_cmd_rData_fragment_length;
  reg        [31:0]   system_bmbPeripheral_bmb_cmd_rData_fragment_data;
  reg        [3:0]    system_bmbPeripheral_bmb_cmd_rData_fragment_mask;
  reg        [2:0]    system_bmbPeripheral_bmb_cmd_rData_fragment_context;
  wire                _zz_system_bmbPeripheral_bmb_rsp_valid;
  reg                 _zz_system_bmbPeripheral_bmb_rsp_valid_1;
  reg                 _zz_system_bmbPeripheral_bmb_rsp_payload_last;
  reg        [0:0]    _zz_system_bmbPeripheral_bmb_rsp_payload_fragment_opcode;
  reg        [31:0]   _zz_system_bmbPeripheral_bmb_rsp_payload_fragment_data;
  reg        [2:0]    _zz_system_bmbPeripheral_bmb_rsp_payload_fragment_context;
  wire                system_plic_logic_bmb_cmd_valid;
  wire                system_plic_logic_bmb_cmd_ready;
  wire                system_plic_logic_bmb_cmd_payload_last;
  wire       [0:0]    system_plic_logic_bmb_cmd_payload_fragment_opcode;
  wire       [21:0]   system_plic_logic_bmb_cmd_payload_fragment_address;
  wire       [1:0]    system_plic_logic_bmb_cmd_payload_fragment_length;
  wire       [31:0]   system_plic_logic_bmb_cmd_payload_fragment_data;
  wire       [2:0]    system_plic_logic_bmb_cmd_payload_fragment_context;
  wire                system_plic_logic_bmb_rsp_valid;
  wire                system_plic_logic_bmb_rsp_ready;
  wire                system_plic_logic_bmb_rsp_payload_last;
  wire       [0:0]    system_plic_logic_bmb_rsp_payload_fragment_opcode;
  wire       [31:0]   system_plic_logic_bmb_rsp_payload_fragment_data;
  wire       [2:0]    system_plic_logic_bmb_rsp_payload_fragment_context;
  reg                 system_plic_logic_bus_readHaltTrigger;
  wire                system_plic_logic_bus_writeHaltTrigger;
  wire                system_plic_logic_bus_rsp_valid;
  wire                system_plic_logic_bus_rsp_ready;
  wire                system_plic_logic_bus_rsp_payload_last;
  wire       [0:0]    system_plic_logic_bus_rsp_payload_fragment_opcode;
  reg        [31:0]   system_plic_logic_bus_rsp_payload_fragment_data;
  wire       [2:0]    system_plic_logic_bus_rsp_payload_fragment_context;
  wire                _zz_system_plic_logic_bmb_rsp_valid;
  reg                 _zz_system_plic_logic_bus_rsp_ready;
  wire                _zz_system_plic_logic_bmb_rsp_valid_1;
  reg                 _zz_system_plic_logic_bmb_rsp_valid_2;
  reg                 _zz_system_plic_logic_bmb_rsp_payload_last;
  reg        [0:0]    _zz_system_plic_logic_bmb_rsp_payload_fragment_opcode;
  reg        [31:0]   _zz_system_plic_logic_bmb_rsp_payload_fragment_data;
  reg        [2:0]    _zz_system_plic_logic_bmb_rsp_payload_fragment_context;
  wire                when_Stream_l342_1;
  wire                system_plic_logic_bus_askWrite;
  wire                system_plic_logic_bus_askRead;
  wire                system_plic_logic_bmb_cmd_fire;
  wire                system_plic_logic_bus_doWrite;
  wire                system_plic_logic_bmb_cmd_fire_1;
  wire                system_plic_logic_bus_doRead;
  wire       [1:0]    system_cpu_externalInterrupt_plic_target_threshold;
  wire       [1:0]    system_cpu_externalInterrupt_plic_target_requests_0_priority;
  wire                system_cpu_externalInterrupt_plic_target_requests_0_valid;
  reg        [1:0]    system_cpu_externalInterrupt_plic_target_bestRequest_priority;
  reg                 system_cpu_externalInterrupt_plic_target_bestRequest_valid;
  wire                system_cpu_externalInterrupt_plic_target_iep;
  reg                 system_plic_logic_bridge_claim_valid;
  reg                 system_plic_logic_bridge_completion_valid;
  reg                 system_plic_logic_bridge_coherencyStall_willIncrement;
  wire                system_plic_logic_bridge_coherencyStall_willClear;
  reg        [0:0]    system_plic_logic_bridge_coherencyStall_valueNext;
  reg        [0:0]    system_plic_logic_bridge_coherencyStall_value;
  wire                system_plic_logic_bridge_coherencyStall_willOverflowIfInc;
  wire                system_plic_logic_bridge_coherencyStall_willOverflow;
  wire                when_PlicMapper_l122;
  reg        [1:0]    _zz_system_cpu_externalInterrupt_plic_target_threshold;
  reg                 system_plic_logic_bridge_targetMapping_0_targetCompletion_valid;
  wire       [7:0]    _zz_io_gpio_read;
  wire       [7:0]    _zz_system_gpioA_gpio_8;
  wire       [7:0]    _zz_when_InOutWrapper_l65_1;
  wire                system_gpioA_interrupts_0;
  wire                system_gpioA_interrupts_1;
  wire                system_gpioA_interrupts_2;
  wire                system_gpioA_interrupts_3;
  wire                system_gpioA_interrupts_4;
  wire                system_gpioA_interrupts_5;
  wire                system_gpioA_interrupts_6;
  wire                system_gpioA_interrupts_7;
  wire                system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid;
  wire                system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready;
  wire                system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last;
  wire       [0:0]    system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode;
  wire       [21:0]   system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address;
  wire       [1:0]    system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length;
  wire       [31:0]   system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data;
  wire       [2:0]    system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context;
  wire                system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid;
  wire                system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready;
  wire                system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last;
  wire       [0:0]    system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode;
  wire       [31:0]   system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data;
  wire       [2:0]    system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context;
  wire                system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid;
  wire                system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready;
  wire                system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last;
  wire       [0:0]    system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode;
  wire       [15:0]   system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address;
  wire       [1:0]    system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length;
  wire       [31:0]   system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data;
  wire       [2:0]    system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context;
  wire                system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid;
  wire                system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready;
  wire                system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last;
  wire       [0:0]    system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode;
  wire       [31:0]   system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data;
  wire       [2:0]    system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context;
  wire                system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid;
  wire                system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready;
  wire                system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last;
  wire       [0:0]    system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode;
  wire       [11:0]   system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address;
  wire       [1:0]    system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length;
  wire       [31:0]   system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data;
  wire       [2:0]    system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context;
  wire                system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid;
  wire                system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready;
  wire                system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last;
  wire       [0:0]    system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode;
  wire       [31:0]   system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data;
  wire       [2:0]    system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context;
  reg                 _zz_io_bmb_0_rsp_ready;
  wire                system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_valid;
  reg                 system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_ready;
  wire                system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_last;
  wire       [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_source;
  wire       [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_opcode;
  wire       [24:0]   system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_address;
  wire       [4:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_length;
  wire       [31:0]   system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_data;
  wire       [3:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_mask;
  wire       [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_context;
  reg                 system_sdramA0_bmb_arbiter_io_output_cmd_rValid;
  reg                 system_sdramA0_bmb_arbiter_io_output_cmd_rData_last;
  reg        [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_source;
  reg        [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_opcode;
  reg        [24:0]   system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_address;
  reg        [4:0]    system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_length;
  reg        [31:0]   system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_data;
  reg        [3:0]    system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_mask;
  reg        [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_context;
  wire                system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_valid;
  wire                system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_ready;
  wire                system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_last;
  wire       [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_source;
  wire       [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_opcode;
  wire       [24:0]   system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_address;
  wire       [4:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_length;
  wire       [31:0]   system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_data;
  wire       [3:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_mask;
  wire       [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_context;
  reg                 system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rValid;
  reg                 system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_last;
  reg        [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_source;
  reg        [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_opcode;
  reg        [24:0]   system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_address;
  reg        [4:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_length;
  reg        [31:0]   system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_data;
  reg        [3:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_mask;
  reg        [0:0]    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_context;
  wire                when_Stream_l342_2;
  wire                _zz_when_Stream_l342;
  reg                 _zz_when_Stream_l342_1;
  reg                 _zz_io_output_rsp_payload_last;
  reg        [0:0]    _zz_io_output_rsp_payload_fragment_source;
  reg        [0:0]    _zz_io_output_rsp_payload_fragment_opcode;
  reg        [31:0]   _zz_io_output_rsp_payload_fragment_data;
  reg        [0:0]    _zz_io_output_rsp_payload_fragment_context;
  wire                when_Stream_l342_3;
  wire                system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid;
  wire                system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready;
  wire                system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last;
  wire       [0:0]    system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode;
  wire       [7:0]    system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address;
  wire       [1:0]    system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length;
  wire       [31:0]   system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data;
  wire       [2:0]    system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context;
  wire                system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid;
  wire                system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready;
  wire                system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last;
  wire       [0:0]    system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode;
  wire       [31:0]   system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data;
  wire       [2:0]    system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context;
  wire                system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid;
  wire                system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready;
  wire                system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last;
  wire       [0:0]    system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode;
  wire       [5:0]    system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address;
  wire       [1:0]    system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length;
  wire       [31:0]   system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data;
  wire       [2:0]    system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context;
  wire                system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid;
  wire                system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready;
  wire                system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last;
  wire       [0:0]    system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode;
  wire       [31:0]   system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data;
  wire       [2:0]    system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_valid;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_ready;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_payload_last;
  wire       [0:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode;
  wire       [23:0]   system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address;
  wire       [1:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length;
  wire       [31:0]   system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data;
  wire       [2:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_valid;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_ready;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_payload_last;
  wire       [0:0]    system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode;
  wire       [31:0]   system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data;
  wire       [2:0]    system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_valid_1;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_ready_1;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_payload_last_1;
  wire       [0:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode_1;
  wire       [23:0]   system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address_1;
  wire       [1:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length_1;
  wire       [31:0]   system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data_1;
  wire       [2:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context_1;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_valid_1;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_ready_1;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_payload_last_1;
  wire       [0:0]    system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode_1;
  wire       [31:0]   system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data_1;
  wire       [2:0]    system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context_1;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_valid_2;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_ready_2;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_payload_last_2;
  wire       [0:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode_2;
  wire       [23:0]   system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address_2;
  wire       [1:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length_2;
  wire       [31:0]   system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data_2;
  wire       [2:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context_2;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_valid_2;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_ready_2;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_payload_last_2;
  wire       [0:0]    system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode_2;
  wire       [31:0]   system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data_2;
  wire       [2:0]    system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context_2;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_valid_3;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_ready_3;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_payload_last_3;
  wire       [0:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode_3;
  wire       [23:0]   system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address_3;
  wire       [1:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length_3;
  wire       [31:0]   system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data_3;
  wire       [2:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context_3;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_valid_3;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_ready_3;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_payload_last_3;
  wire       [0:0]    system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode_3;
  wire       [31:0]   system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data_3;
  wire       [2:0]    system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context_3;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_valid_4;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_ready_4;
  wire                system_bmbPeripheral_bmb_withoutMask_cmd_payload_last_4;
  wire       [0:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode_4;
  wire       [23:0]   system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address_4;
  wire       [1:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length_4;
  wire       [31:0]   system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data_4;
  wire       [2:0]    system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context_4;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_valid_4;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_ready_4;
  wire                system_bmbPeripheral_bmb_withoutMask_rsp_payload_last_4;
  wire       [0:0]    system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode_4;
  wire       [31:0]   system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data_4;
  wire       [2:0]    system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context_4;
  wire                when_BmbSlaveFactory_l71;
  wire                when_InOutWrapper_l65;
  wire                when_InOutWrapper_l65_1;
  wire                when_InOutWrapper_l65_2;
  wire                when_InOutWrapper_l65_3;
  wire                when_InOutWrapper_l65_4;
  wire                when_InOutWrapper_l65_5;
  wire                when_InOutWrapper_l65_6;
  wire                when_InOutWrapper_l65_7;
  wire                when_InOutWrapper_l65_8;
  wire                when_InOutWrapper_l65_9;
  wire                when_InOutWrapper_l65_10;
  wire                when_InOutWrapper_l65_11;
  wire                when_InOutWrapper_l65_12;
  wire                when_InOutWrapper_l65_13;
  wire                when_InOutWrapper_l65_14;
  wire                when_InOutWrapper_l65_15;
  wire                when_InOutWrapper_l65_16;
  wire                when_InOutWrapper_l65_17;
  wire                when_InOutWrapper_l65_18;
  wire                when_InOutWrapper_l65_19;
  wire                when_InOutWrapper_l65_20;
  wire                when_InOutWrapper_l65_21;
  wire                when_InOutWrapper_l65_22;
  wire                when_InOutWrapper_l65_23;

  pll_50mhz clocking_pll (
    .clkin            (clocking_clk25m             ), //i
    .clkout_sdram     (clocking_pll_clkout_sdram   ), //o
    .clkout_system    (clocking_pll_clkout_system  ), //o
    .locked           (clocking_pll_locked         )  //o
  );
  DCCA clocking_pll_clkout_sdram_DCCA (
    .CLKI    (clocking_pll_clkout_sdram            ), //i
    .CE      (1'b1                                 ), //i
    .CLKO    (clocking_pll_clkout_sdram_DCCA_CLKO  )  //o
  );
  ODDRX1F clocking_bb (
    .SCLK    (clocking_pll_clkout_sdram_DCCA_CLKO  ), //i
    .RST     (1'b0                                 ), //i
    .D0      (1'b1                                 ), //i
    .D1      (1'b0                                 ), //i
    .Q       (clocking_bb_Q                        )  //o
  );
  Ecp5Sdrx2Phy system_phyA_logic (
    .io_ctrl_phases_0_CASn             (system_sdramA_logic_io_phy_phases_0_CASn         ), //i
    .io_ctrl_phases_0_CKE              (system_sdramA_logic_io_phy_phases_0_CKE          ), //i
    .io_ctrl_phases_0_CSn              (system_sdramA_logic_io_phy_phases_0_CSn          ), //i
    .io_ctrl_phases_0_RASn             (system_sdramA_logic_io_phy_phases_0_RASn         ), //i
    .io_ctrl_phases_0_WEn              (system_sdramA_logic_io_phy_phases_0_WEn          ), //i
    .io_ctrl_phases_0_DM_0             (system_sdramA_logic_io_phy_phases_0_DM_0[1:0]    ), //i
    .io_ctrl_phases_0_DQw_0            (system_sdramA_logic_io_phy_phases_0_DQw_0[15:0]  ), //i
    .io_ctrl_phases_0_DQr_0            (system_phyA_logic_io_ctrl_phases_0_DQr_0[15:0]   ), //o
    .io_ctrl_phases_1_CASn             (system_sdramA_logic_io_phy_phases_1_CASn         ), //i
    .io_ctrl_phases_1_CKE              (system_sdramA_logic_io_phy_phases_1_CKE          ), //i
    .io_ctrl_phases_1_CSn              (system_sdramA_logic_io_phy_phases_1_CSn          ), //i
    .io_ctrl_phases_1_RASn             (system_sdramA_logic_io_phy_phases_1_RASn         ), //i
    .io_ctrl_phases_1_WEn              (system_sdramA_logic_io_phy_phases_1_WEn          ), //i
    .io_ctrl_phases_1_DM_0             (system_sdramA_logic_io_phy_phases_1_DM_0[1:0]    ), //i
    .io_ctrl_phases_1_DQw_0            (system_sdramA_logic_io_phy_phases_1_DQw_0[15:0]  ), //i
    .io_ctrl_phases_1_DQr_0            (system_phyA_logic_io_ctrl_phases_1_DQr_0[15:0]   ), //o
    .io_ctrl_ADDR                      (system_sdramA_logic_io_phy_ADDR[12:0]            ), //i
    .io_ctrl_BA                        (system_sdramA_logic_io_phy_BA[1:0]               ), //i
    .io_ctrl_writeEnable               (system_sdramA_logic_io_phy_writeEnable           ), //i
    .io_ctrl_readEnable                (system_sdramA_logic_io_phy_readEnable            ), //i
    .io_ctrl_readValid                 (system_phyA_logic_io_ctrl_readValid              ), //o
    .io_sdram_ADDR                     (system_phyA_logic_io_sdram_ADDR[12:0]            ), //o
    .io_sdram_BA                       (system_phyA_logic_io_sdram_BA[1:0]               ), //o
    .io_sdram_DQ_read                  (_zz_io_sdram_DQ_read[15:0]                       ), //i
    .io_sdram_DQ_write                 (system_phyA_logic_io_sdram_DQ_write[15:0]        ), //o
    .io_sdram_DQ_writeEnable           (system_phyA_logic_io_sdram_DQ_writeEnable[15:0]  ), //o
    .io_sdram_DQM                      (system_phyA_logic_io_sdram_DQM[1:0]              ), //o
    .io_sdram_CASn                     (system_phyA_logic_io_sdram_CASn                  ), //o
    .io_sdram_CKE                      (system_phyA_logic_io_sdram_CKE                   ), //o
    .io_sdram_CSn                      (system_phyA_logic_io_sdram_CSn                   ), //o
    .io_sdram_RASn                     (system_phyA_logic_io_sdram_RASn                  ), //o
    .io_sdram_WEn                      (system_phyA_logic_io_sdram_WEn                   ), //o
    .systemCdCtrl_logic_outputReset    (systemCdCtrl_logic_outputReset                   ), //i
    .clkout_system                     (clocking_pll_clkout_system                       )  //i
  );
  BufferCC_2 bufferCC_5 (
    .io_dataIn          (1'b0                        ), //i
    .io_dataOut         (bufferCC_5_io_dataOut       ), //o
    .clkout_system      (clocking_pll_clkout_system  ), //i
    .clocking_resetn    (clocking_resetn             )  //i
  );
  BufferCC_3 bufferCC_6 (
    .io_dataIn                        (1'b0                           ), //i
    .io_dataOut                       (bufferCC_6_io_dataOut          ), //o
    .clkout_system                    (clocking_pll_clkout_system     ), //i
    .debugCdCtrl_logic_outputReset    (debugCdCtrl_logic_outputReset  )  //i
  );
  VexRiscv system_cpu_logic_cpu (
    .dBus_cmd_valid                    (system_cpu_logic_cpu_dBus_cmd_valid                                   ), //o
    .dBus_cmd_ready                    (system_cpu_logic_cpu_dBus_Bridge_bus_cmd_ready                        ), //i
    .dBus_cmd_payload_wr               (system_cpu_logic_cpu_dBus_cmd_payload_wr                              ), //o
    .dBus_cmd_payload_uncached         (system_cpu_logic_cpu_dBus_cmd_payload_uncached                        ), //o
    .dBus_cmd_payload_address          (system_cpu_logic_cpu_dBus_cmd_payload_address[31:0]                   ), //o
    .dBus_cmd_payload_data             (system_cpu_logic_cpu_dBus_cmd_payload_data[31:0]                      ), //o
    .dBus_cmd_payload_mask             (system_cpu_logic_cpu_dBus_cmd_payload_mask[3:0]                       ), //o
    .dBus_cmd_payload_size             (system_cpu_logic_cpu_dBus_cmd_payload_size[2:0]                       ), //o
    .dBus_cmd_payload_last             (system_cpu_logic_cpu_dBus_cmd_payload_last                            ), //o
    .dBus_rsp_valid                    (system_cpu_logic_cpu_dBus_rsp_valid                                   ), //i
    .dBus_rsp_payload_last             (system_cpu_logic_cpu_dBus_Bridge_bus_rsp_payload_last                 ), //i
    .dBus_rsp_payload_data             (system_cpu_logic_cpu_dBus_Bridge_bus_rsp_payload_fragment_data[31:0]  ), //i
    .dBus_rsp_payload_error            (system_cpu_logic_cpu_dBus_rsp_payload_error                           ), //i
    .timerInterrupt                    (system_cpu_logic_cpu_timerInterrupt                                   ), //i
    .externalInterrupt                 (system_cpu_externalInterrupt_plic_target_iep                          ), //i
    .softwareInterrupt                 (system_cpu_logic_cpu_softwareInterrupt                                ), //i
    .debug_bus_cmd_valid               (systemDebugger_1_io_mem_cmd_valid                                     ), //i
    .debug_bus_cmd_ready               (system_cpu_logic_cpu_debug_bus_cmd_ready                              ), //o
    .debug_bus_cmd_payload_wr          (systemDebugger_1_io_mem_cmd_payload_wr                                ), //i
    .debug_bus_cmd_payload_address     (system_cpu_logic_cpu_debug_bus_cmd_payload_address[7:0]               ), //i
    .debug_bus_cmd_payload_data        (systemDebugger_1_io_mem_cmd_payload_data[31:0]                        ), //i
    .debug_bus_rsp_data                (system_cpu_logic_cpu_debug_bus_rsp_data[31:0]                         ), //o
    .debug_resetOut                    (system_cpu_logic_cpu_debug_resetOut                                   ), //o
    .iBus_cmd_valid                    (system_cpu_logic_cpu_iBus_cmd_valid                                   ), //o
    .iBus_cmd_ready                    (system_cpu_iBus_cmd_ready                                             ), //i
    .iBus_cmd_payload_address          (system_cpu_logic_cpu_iBus_cmd_payload_address[31:0]                   ), //o
    .iBus_cmd_payload_size             (system_cpu_logic_cpu_iBus_cmd_payload_size[2:0]                       ), //o
    .iBus_rsp_valid                    (system_cpu_iBus_rsp_valid                                             ), //i
    .iBus_rsp_payload_data             (system_cpu_iBus_rsp_payload_fragment_data[31:0]                       ), //i
    .iBus_rsp_payload_error            (system_cpu_logic_cpu_iBus_rsp_payload_error                           ), //i
    .clkout_system                     (clocking_pll_clkout_system                                            ), //i
    .systemCdCtrl_logic_outputReset    (systemCdCtrl_logic_outputReset                                        ), //i
    .debugCdCtrl_logic_outputReset     (debugCdCtrl_logic_outputReset                                         )  //i
  );
  JtagBridge jtagBridge_1 (
    .io_jtag_tms                       (system_cpu_jtag_tms                                ), //i
    .io_jtag_tdi                       (system_cpu_jtag_tdi                                ), //i
    .io_jtag_tdo                       (jtagBridge_1_io_jtag_tdo                           ), //o
    .io_jtag_tck                       (system_cpu_jtag_tck                                ), //i
    .io_remote_cmd_valid               (jtagBridge_1_io_remote_cmd_valid                   ), //o
    .io_remote_cmd_ready               (systemDebugger_1_io_remote_cmd_ready               ), //i
    .io_remote_cmd_payload_last        (jtagBridge_1_io_remote_cmd_payload_last            ), //o
    .io_remote_cmd_payload_fragment    (jtagBridge_1_io_remote_cmd_payload_fragment        ), //o
    .io_remote_rsp_valid               (systemDebugger_1_io_remote_rsp_valid               ), //i
    .io_remote_rsp_ready               (jtagBridge_1_io_remote_rsp_ready                   ), //o
    .io_remote_rsp_payload_error       (systemDebugger_1_io_remote_rsp_payload_error       ), //i
    .io_remote_rsp_payload_data        (systemDebugger_1_io_remote_rsp_payload_data[31:0]  ), //i
    .clkout_system                     (clocking_pll_clkout_system                         ), //i
    .debugCdCtrl_logic_outputReset     (debugCdCtrl_logic_outputReset                      )  //i
  );
  SystemDebugger systemDebugger_1 (
    .io_remote_cmd_valid               (jtagBridge_1_io_remote_cmd_valid                   ), //i
    .io_remote_cmd_ready               (systemDebugger_1_io_remote_cmd_ready               ), //o
    .io_remote_cmd_payload_last        (jtagBridge_1_io_remote_cmd_payload_last            ), //i
    .io_remote_cmd_payload_fragment    (jtagBridge_1_io_remote_cmd_payload_fragment        ), //i
    .io_remote_rsp_valid               (systemDebugger_1_io_remote_rsp_valid               ), //o
    .io_remote_rsp_ready               (jtagBridge_1_io_remote_rsp_ready                   ), //i
    .io_remote_rsp_payload_error       (systemDebugger_1_io_remote_rsp_payload_error       ), //o
    .io_remote_rsp_payload_data        (systemDebugger_1_io_remote_rsp_payload_data[31:0]  ), //o
    .io_mem_cmd_valid                  (systemDebugger_1_io_mem_cmd_valid                  ), //o
    .io_mem_cmd_ready                  (system_cpu_logic_cpu_debug_bus_cmd_ready           ), //i
    .io_mem_cmd_payload_address        (systemDebugger_1_io_mem_cmd_payload_address[31:0]  ), //o
    .io_mem_cmd_payload_data           (systemDebugger_1_io_mem_cmd_payload_data[31:0]     ), //o
    .io_mem_cmd_payload_wr             (systemDebugger_1_io_mem_cmd_payload_wr             ), //o
    .io_mem_cmd_payload_size           (systemDebugger_1_io_mem_cmd_payload_size[1:0]      ), //o
    .io_mem_rsp_valid                  (system_cpu_logic_cpu_debug_bus_cmd_fire_regNext    ), //i
    .io_mem_rsp_payload                (system_cpu_logic_cpu_debug_bus_rsp_data[31:0]      ), //i
    .clkout_system                     (clocking_pll_clkout_system                         ), //i
    .debugCdCtrl_logic_outputReset     (debugCdCtrl_logic_outputReset                      )  //i
  );
  BmbDecoder system_cpu_iBus_decoder (
    .io_input_cmd_valid                           (system_cpu_iBus_cmd_valid                                                ), //i
    .io_input_cmd_ready                           (system_cpu_iBus_decoder_io_input_cmd_ready                               ), //o
    .io_input_cmd_payload_last                    (system_cpu_iBus_cmd_payload_last                                         ), //i
    .io_input_cmd_payload_fragment_opcode         (system_cpu_iBus_cmd_payload_fragment_opcode                              ), //i
    .io_input_cmd_payload_fragment_address        (system_cpu_iBus_cmd_payload_fragment_address[31:0]                       ), //i
    .io_input_cmd_payload_fragment_length         (system_cpu_iBus_cmd_payload_fragment_length[4:0]                         ), //i
    .io_input_rsp_valid                           (system_cpu_iBus_decoder_io_input_rsp_valid                               ), //o
    .io_input_rsp_ready                           (system_cpu_iBus_rsp_ready                                                ), //i
    .io_input_rsp_payload_last                    (system_cpu_iBus_decoder_io_input_rsp_payload_last                        ), //o
    .io_input_rsp_payload_fragment_opcode         (system_cpu_iBus_decoder_io_input_rsp_payload_fragment_opcode             ), //o
    .io_input_rsp_payload_fragment_data           (system_cpu_iBus_decoder_io_input_rsp_payload_fragment_data[31:0]         ), //o
    .io_outputs_0_cmd_valid                       (system_cpu_iBus_decoder_io_outputs_0_cmd_valid                           ), //o
    .io_outputs_0_cmd_ready                       (system_sdramA0_bmb_arbiter_io_inputs_1_cmd_ready                         ), //i
    .io_outputs_0_cmd_payload_last                (system_cpu_iBus_decoder_io_outputs_0_cmd_payload_last                    ), //o
    .io_outputs_0_cmd_payload_fragment_opcode     (system_cpu_iBus_decoder_io_outputs_0_cmd_payload_fragment_opcode         ), //o
    .io_outputs_0_cmd_payload_fragment_address    (system_cpu_iBus_decoder_io_outputs_0_cmd_payload_fragment_address[31:0]  ), //o
    .io_outputs_0_cmd_payload_fragment_length     (system_cpu_iBus_decoder_io_outputs_0_cmd_payload_fragment_length[4:0]    ), //o
    .io_outputs_0_rsp_valid                       (system_sdramA0_bmb_arbiter_io_inputs_1_rsp_valid                         ), //i
    .io_outputs_0_rsp_ready                       (system_cpu_iBus_decoder_io_outputs_0_rsp_ready                           ), //o
    .io_outputs_0_rsp_payload_last                (system_sdramA0_bmb_arbiter_io_inputs_1_rsp_payload_last                  ), //i
    .io_outputs_0_rsp_payload_fragment_opcode     (system_sdramA0_bmb_arbiter_io_inputs_1_rsp_payload_fragment_opcode       ), //i
    .io_outputs_0_rsp_payload_fragment_data       (system_sdramA0_bmb_arbiter_io_inputs_1_rsp_payload_fragment_data[31:0]   ), //i
    .io_outputs_1_cmd_valid                       (system_cpu_iBus_decoder_io_outputs_1_cmd_valid                           ), //o
    .io_outputs_1_cmd_ready                       (system_cpu_iBus_unburstify_io_input_cmd_ready                            ), //i
    .io_outputs_1_cmd_payload_last                (system_cpu_iBus_decoder_io_outputs_1_cmd_payload_last                    ), //o
    .io_outputs_1_cmd_payload_fragment_opcode     (system_cpu_iBus_decoder_io_outputs_1_cmd_payload_fragment_opcode         ), //o
    .io_outputs_1_cmd_payload_fragment_address    (system_cpu_iBus_decoder_io_outputs_1_cmd_payload_fragment_address[31:0]  ), //o
    .io_outputs_1_cmd_payload_fragment_length     (system_cpu_iBus_decoder_io_outputs_1_cmd_payload_fragment_length[4:0]    ), //o
    .io_outputs_1_rsp_valid                       (system_cpu_iBus_unburstify_io_input_rsp_valid                            ), //i
    .io_outputs_1_rsp_ready                       (system_cpu_iBus_decoder_io_outputs_1_rsp_ready                           ), //o
    .io_outputs_1_rsp_payload_last                (system_cpu_iBus_unburstify_io_input_rsp_payload_last                     ), //i
    .io_outputs_1_rsp_payload_fragment_opcode     (system_cpu_iBus_unburstify_io_input_rsp_payload_fragment_opcode          ), //i
    .io_outputs_1_rsp_payload_fragment_data       (system_cpu_iBus_unburstify_io_input_rsp_payload_fragment_data[31:0]      ), //i
    .clkout_system                                (clocking_pll_clkout_system                                               ), //i
    .systemCdCtrl_logic_outputReset               (systemCdCtrl_logic_outputReset                                           )  //i
  );
  BufferCC_4 bufferCC_7 (
    .io_dataIn                (1'b0                        ), //i
    .io_dataOut               (bufferCC_7_io_dataOut       ), //o
    .clkout_system            (clocking_pll_clkout_system  ), //i
    .system_cpu_debugReset    (system_cpu_debugReset       )  //i
  );
  BmbDecoder_1 system_cpu_dBus_decoder (
    .io_input_cmd_valid                           (system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_valid                           ), //i
    .io_input_cmd_ready                           (system_cpu_dBus_decoder_io_input_cmd_ready                                       ), //o
    .io_input_cmd_payload_last                    (system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_last                    ), //i
    .io_input_cmd_payload_fragment_opcode         (system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_opcode         ), //i
    .io_input_cmd_payload_fragment_address        (system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_address[31:0]  ), //i
    .io_input_cmd_payload_fragment_length         (system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_length[4:0]    ), //i
    .io_input_cmd_payload_fragment_data           (system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_data[31:0]     ), //i
    .io_input_cmd_payload_fragment_mask           (system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_mask[3:0]      ), //i
    .io_input_cmd_payload_fragment_context        (system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_context        ), //i
    .io_input_rsp_valid                           (system_cpu_dBus_decoder_io_input_rsp_valid                                       ), //o
    .io_input_rsp_ready                           (system_cpu_logic_cpu_dBus_Bridge_bus_rsp_ready                                   ), //i
    .io_input_rsp_payload_last                    (system_cpu_dBus_decoder_io_input_rsp_payload_last                                ), //o
    .io_input_rsp_payload_fragment_opcode         (system_cpu_dBus_decoder_io_input_rsp_payload_fragment_opcode                     ), //o
    .io_input_rsp_payload_fragment_data           (system_cpu_dBus_decoder_io_input_rsp_payload_fragment_data[31:0]                 ), //o
    .io_input_rsp_payload_fragment_context        (system_cpu_dBus_decoder_io_input_rsp_payload_fragment_context                    ), //o
    .io_outputs_0_cmd_valid                       (system_cpu_dBus_decoder_io_outputs_0_cmd_valid                                   ), //o
    .io_outputs_0_cmd_ready                       (system_sdramA0_bmb_arbiter_io_inputs_0_cmd_ready                                 ), //i
    .io_outputs_0_cmd_payload_last                (system_cpu_dBus_decoder_io_outputs_0_cmd_payload_last                            ), //o
    .io_outputs_0_cmd_payload_fragment_opcode     (system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_opcode                 ), //o
    .io_outputs_0_cmd_payload_fragment_address    (system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_address[31:0]          ), //o
    .io_outputs_0_cmd_payload_fragment_length     (system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_length[4:0]            ), //o
    .io_outputs_0_cmd_payload_fragment_data       (system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_data[31:0]             ), //o
    .io_outputs_0_cmd_payload_fragment_mask       (system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_mask[3:0]              ), //o
    .io_outputs_0_cmd_payload_fragment_context    (system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_context                ), //o
    .io_outputs_0_rsp_valid                       (system_sdramA0_bmb_arbiter_io_inputs_0_rsp_valid                                 ), //i
    .io_outputs_0_rsp_ready                       (system_cpu_dBus_decoder_io_outputs_0_rsp_ready                                   ), //o
    .io_outputs_0_rsp_payload_last                (system_sdramA0_bmb_arbiter_io_inputs_0_rsp_payload_last                          ), //i
    .io_outputs_0_rsp_payload_fragment_opcode     (system_sdramA0_bmb_arbiter_io_inputs_0_rsp_payload_fragment_opcode               ), //i
    .io_outputs_0_rsp_payload_fragment_data       (system_sdramA0_bmb_arbiter_io_inputs_0_rsp_payload_fragment_data[31:0]           ), //i
    .io_outputs_0_rsp_payload_fragment_context    (system_sdramA0_bmb_arbiter_io_inputs_0_rsp_payload_fragment_context              ), //i
    .io_outputs_1_cmd_valid                       (system_cpu_dBus_decoder_io_outputs_1_cmd_valid                                   ), //o
    .io_outputs_1_cmd_ready                       (system_cpu_dBus_unburstify_1_io_input_cmd_ready                                  ), //i
    .io_outputs_1_cmd_payload_last                (system_cpu_dBus_decoder_io_outputs_1_cmd_payload_last                            ), //o
    .io_outputs_1_cmd_payload_fragment_opcode     (system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_opcode                 ), //o
    .io_outputs_1_cmd_payload_fragment_address    (system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_address[31:0]          ), //o
    .io_outputs_1_cmd_payload_fragment_length     (system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_length[4:0]            ), //o
    .io_outputs_1_cmd_payload_fragment_data       (system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_data[31:0]             ), //o
    .io_outputs_1_cmd_payload_fragment_mask       (system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_mask[3:0]              ), //o
    .io_outputs_1_cmd_payload_fragment_context    (system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_context                ), //o
    .io_outputs_1_rsp_valid                       (system_cpu_dBus_unburstify_1_io_input_rsp_valid                                  ), //i
    .io_outputs_1_rsp_ready                       (system_cpu_dBus_decoder_io_outputs_1_rsp_ready                                   ), //o
    .io_outputs_1_rsp_payload_last                (system_cpu_dBus_unburstify_1_io_input_rsp_payload_last                           ), //i
    .io_outputs_1_rsp_payload_fragment_opcode     (system_cpu_dBus_unburstify_1_io_input_rsp_payload_fragment_opcode                ), //i
    .io_outputs_1_rsp_payload_fragment_data       (system_cpu_dBus_unburstify_1_io_input_rsp_payload_fragment_data[31:0]            ), //i
    .io_outputs_1_rsp_payload_fragment_context    (system_cpu_dBus_unburstify_1_io_input_rsp_payload_fragment_context               ), //i
    .io_outputs_2_cmd_valid                       (system_cpu_dBus_decoder_io_outputs_2_cmd_valid                                   ), //o
    .io_outputs_2_cmd_ready                       (system_cpu_dBus_unburstify_io_input_cmd_ready                                    ), //i
    .io_outputs_2_cmd_payload_last                (system_cpu_dBus_decoder_io_outputs_2_cmd_payload_last                            ), //o
    .io_outputs_2_cmd_payload_fragment_opcode     (system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_opcode                 ), //o
    .io_outputs_2_cmd_payload_fragment_address    (system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_address[31:0]          ), //o
    .io_outputs_2_cmd_payload_fragment_length     (system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_length[4:0]            ), //o
    .io_outputs_2_cmd_payload_fragment_data       (system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_data[31:0]             ), //o
    .io_outputs_2_cmd_payload_fragment_mask       (system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_mask[3:0]              ), //o
    .io_outputs_2_cmd_payload_fragment_context    (system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_context                ), //o
    .io_outputs_2_rsp_valid                       (system_cpu_dBus_unburstify_io_input_rsp_valid                                    ), //i
    .io_outputs_2_rsp_ready                       (system_cpu_dBus_decoder_io_outputs_2_rsp_ready                                   ), //o
    .io_outputs_2_rsp_payload_last                (system_cpu_dBus_unburstify_io_input_rsp_payload_last                             ), //i
    .io_outputs_2_rsp_payload_fragment_opcode     (system_cpu_dBus_unburstify_io_input_rsp_payload_fragment_opcode                  ), //i
    .io_outputs_2_rsp_payload_fragment_data       (system_cpu_dBus_unburstify_io_input_rsp_payload_fragment_data[31:0]              ), //i
    .io_outputs_2_rsp_payload_fragment_context    (system_cpu_dBus_unburstify_io_input_rsp_payload_fragment_context                 ), //i
    .clkout_system                                (clocking_pll_clkout_system                                                       ), //i
    .systemCdCtrl_logic_outputReset               (systemCdCtrl_logic_outputReset                                                   )  //i
  );
  BmbOnChipRam system_ramA_logic (
    .io_bus_cmd_valid                       (system_ramA_ctrl_arbiter_io_output_cmd_valid                           ), //i
    .io_bus_cmd_ready                       (system_ramA_logic_io_bus_cmd_ready                                     ), //o
    .io_bus_cmd_payload_last                (system_ramA_ctrl_arbiter_io_output_cmd_payload_last                    ), //i
    .io_bus_cmd_payload_fragment_source     (system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_source         ), //i
    .io_bus_cmd_payload_fragment_opcode     (system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_opcode         ), //i
    .io_bus_cmd_payload_fragment_address    (system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_address[15:0]  ), //i
    .io_bus_cmd_payload_fragment_length     (system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_length[1:0]    ), //i
    .io_bus_cmd_payload_fragment_data       (system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_data[31:0]     ), //i
    .io_bus_cmd_payload_fragment_mask       (system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_mask[3:0]      ), //i
    .io_bus_cmd_payload_fragment_context    (system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_context[2:0]   ), //i
    .io_bus_rsp_valid                       (system_ramA_logic_io_bus_rsp_valid                                     ), //o
    .io_bus_rsp_ready                       (system_ramA_ctrl_arbiter_io_output_rsp_ready                           ), //i
    .io_bus_rsp_payload_last                (system_ramA_logic_io_bus_rsp_payload_last                              ), //o
    .io_bus_rsp_payload_fragment_source     (system_ramA_logic_io_bus_rsp_payload_fragment_source                   ), //o
    .io_bus_rsp_payload_fragment_opcode     (system_ramA_logic_io_bus_rsp_payload_fragment_opcode                   ), //o
    .io_bus_rsp_payload_fragment_data       (system_ramA_logic_io_bus_rsp_payload_fragment_data[31:0]               ), //o
    .io_bus_rsp_payload_fragment_context    (system_ramA_logic_io_bus_rsp_payload_fragment_context[2:0]             ), //o
    .clkout_system                          (clocking_pll_clkout_system                                             ), //i
    .systemCdCtrl_logic_outputReset         (systemCdCtrl_logic_outputReset                                         )  //i
  );
  BmbUnburstify system_cpu_dBus_unburstify (
    .io_input_cmd_valid                        (system_cpu_dBus_decoder_io_outputs_2_cmd_valid                                                     ), //i
    .io_input_cmd_ready                        (system_cpu_dBus_unburstify_io_input_cmd_ready                                                      ), //o
    .io_input_cmd_payload_last                 (system_cpu_dBus_decoder_io_outputs_2_cmd_payload_last                                              ), //i
    .io_input_cmd_payload_fragment_opcode      (system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_opcode                                   ), //i
    .io_input_cmd_payload_fragment_address     (system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_address[31:0]                            ), //i
    .io_input_cmd_payload_fragment_length      (system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_length[4:0]                              ), //i
    .io_input_cmd_payload_fragment_data        (system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_data[31:0]                               ), //i
    .io_input_cmd_payload_fragment_mask        (system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_mask[3:0]                                ), //i
    .io_input_cmd_payload_fragment_context     (system_cpu_dBus_decoder_io_outputs_2_cmd_payload_fragment_context                                  ), //i
    .io_input_rsp_valid                        (system_cpu_dBus_unburstify_io_input_rsp_valid                                                      ), //o
    .io_input_rsp_ready                        (system_cpu_dBus_decoder_io_outputs_2_rsp_ready                                                     ), //i
    .io_input_rsp_payload_last                 (system_cpu_dBus_unburstify_io_input_rsp_payload_last                                               ), //o
    .io_input_rsp_payload_fragment_opcode      (system_cpu_dBus_unburstify_io_input_rsp_payload_fragment_opcode                                    ), //o
    .io_input_rsp_payload_fragment_data        (system_cpu_dBus_unburstify_io_input_rsp_payload_fragment_data[31:0]                                ), //o
    .io_input_rsp_payload_fragment_context     (system_cpu_dBus_unburstify_io_input_rsp_payload_fragment_context                                   ), //o
    .io_output_cmd_valid                       (system_cpu_dBus_unburstify_io_output_cmd_valid                                                     ), //o
    .io_output_cmd_ready                       (system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready                          ), //i
    .io_output_cmd_payload_last                (system_cpu_dBus_unburstify_io_output_cmd_payload_last                                              ), //o
    .io_output_cmd_payload_fragment_opcode     (system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_opcode                                   ), //o
    .io_output_cmd_payload_fragment_address    (system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_address[31:0]                            ), //o
    .io_output_cmd_payload_fragment_length     (system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_length[1:0]                              ), //o
    .io_output_cmd_payload_fragment_data       (system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_data[31:0]                               ), //o
    .io_output_cmd_payload_fragment_mask       (system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_mask[3:0]                                ), //o
    .io_output_cmd_payload_fragment_context    (system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_context[2:0]                             ), //o
    .io_output_rsp_valid                       (system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid                          ), //i
    .io_output_rsp_ready                       (system_cpu_dBus_unburstify_io_output_rsp_ready                                                     ), //o
    .io_output_rsp_payload_last                (system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last                   ), //i
    .io_output_rsp_payload_fragment_opcode     (system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode        ), //i
    .io_output_rsp_payload_fragment_data       (system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data[31:0]    ), //i
    .io_output_rsp_payload_fragment_context    (system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context[2:0]  ), //i
    .clkout_system                             (clocking_pll_clkout_system                                                                         ), //i
    .systemCdCtrl_logic_outputReset            (systemCdCtrl_logic_outputReset                                                                     )  //i
  );
  BmbArbiter system_ramA_ctrl_arbiter (
    .io_inputs_0_cmd_valid                       (system_cpu_dBus_unburstify_1_io_output_cmd_valid                          ), //i
    .io_inputs_0_cmd_ready                       (system_ramA_ctrl_arbiter_io_inputs_0_cmd_ready                            ), //o
    .io_inputs_0_cmd_payload_last                (system_cpu_dBus_unburstify_1_io_output_cmd_payload_last                   ), //i
    .io_inputs_0_cmd_payload_fragment_opcode     (system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_opcode        ), //i
    .io_inputs_0_cmd_payload_fragment_address    (system_ramA_ctrl_arbiter_io_inputs_0_cmd_payload_fragment_address[15:0]   ), //i
    .io_inputs_0_cmd_payload_fragment_length     (system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_length[1:0]   ), //i
    .io_inputs_0_cmd_payload_fragment_data       (system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_data[31:0]    ), //i
    .io_inputs_0_cmd_payload_fragment_mask       (system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_mask[3:0]     ), //i
    .io_inputs_0_cmd_payload_fragment_context    (system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_context[2:0]  ), //i
    .io_inputs_0_rsp_valid                       (system_ramA_ctrl_arbiter_io_inputs_0_rsp_valid                            ), //o
    .io_inputs_0_rsp_ready                       (system_cpu_dBus_unburstify_1_io_output_rsp_ready                          ), //i
    .io_inputs_0_rsp_payload_last                (system_ramA_ctrl_arbiter_io_inputs_0_rsp_payload_last                     ), //o
    .io_inputs_0_rsp_payload_fragment_opcode     (system_ramA_ctrl_arbiter_io_inputs_0_rsp_payload_fragment_opcode          ), //o
    .io_inputs_0_rsp_payload_fragment_data       (system_ramA_ctrl_arbiter_io_inputs_0_rsp_payload_fragment_data[31:0]      ), //o
    .io_inputs_0_rsp_payload_fragment_context    (system_ramA_ctrl_arbiter_io_inputs_0_rsp_payload_fragment_context[2:0]    ), //o
    .io_inputs_1_cmd_valid                       (system_cpu_iBus_unburstify_io_output_cmd_valid                            ), //i
    .io_inputs_1_cmd_ready                       (system_ramA_ctrl_arbiter_io_inputs_1_cmd_ready                            ), //o
    .io_inputs_1_cmd_payload_last                (system_cpu_iBus_unburstify_io_output_cmd_payload_last                     ), //i
    .io_inputs_1_cmd_payload_fragment_opcode     (system_cpu_iBus_unburstify_io_output_cmd_payload_fragment_opcode          ), //i
    .io_inputs_1_cmd_payload_fragment_address    (system_ramA_ctrl_arbiter_io_inputs_1_cmd_payload_fragment_address[15:0]   ), //i
    .io_inputs_1_cmd_payload_fragment_length     (system_cpu_iBus_unburstify_io_output_cmd_payload_fragment_length[1:0]     ), //i
    .io_inputs_1_cmd_payload_fragment_data       (32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                      ), //i
    .io_inputs_1_cmd_payload_fragment_mask       (4'bxxxx                                                                   ), //i
    .io_inputs_1_cmd_payload_fragment_context    (system_cpu_iBus_unburstify_io_output_cmd_payload_fragment_context[1:0]    ), //i
    .io_inputs_1_rsp_valid                       (system_ramA_ctrl_arbiter_io_inputs_1_rsp_valid                            ), //o
    .io_inputs_1_rsp_ready                       (system_cpu_iBus_unburstify_io_output_rsp_ready                            ), //i
    .io_inputs_1_rsp_payload_last                (system_ramA_ctrl_arbiter_io_inputs_1_rsp_payload_last                     ), //o
    .io_inputs_1_rsp_payload_fragment_opcode     (system_ramA_ctrl_arbiter_io_inputs_1_rsp_payload_fragment_opcode          ), //o
    .io_inputs_1_rsp_payload_fragment_data       (system_ramA_ctrl_arbiter_io_inputs_1_rsp_payload_fragment_data[31:0]      ), //o
    .io_inputs_1_rsp_payload_fragment_context    (system_ramA_ctrl_arbiter_io_inputs_1_rsp_payload_fragment_context[1:0]    ), //o
    .io_output_cmd_valid                         (system_ramA_ctrl_arbiter_io_output_cmd_valid                              ), //o
    .io_output_cmd_ready                         (system_ramA_logic_io_bus_cmd_ready                                        ), //i
    .io_output_cmd_payload_last                  (system_ramA_ctrl_arbiter_io_output_cmd_payload_last                       ), //o
    .io_output_cmd_payload_fragment_source       (system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_source            ), //o
    .io_output_cmd_payload_fragment_opcode       (system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_opcode            ), //o
    .io_output_cmd_payload_fragment_address      (system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_address[15:0]     ), //o
    .io_output_cmd_payload_fragment_length       (system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_length[1:0]       ), //o
    .io_output_cmd_payload_fragment_data         (system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_data[31:0]        ), //o
    .io_output_cmd_payload_fragment_mask         (system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_mask[3:0]         ), //o
    .io_output_cmd_payload_fragment_context      (system_ramA_ctrl_arbiter_io_output_cmd_payload_fragment_context[2:0]      ), //o
    .io_output_rsp_valid                         (system_ramA_logic_io_bus_rsp_valid                                        ), //i
    .io_output_rsp_ready                         (system_ramA_ctrl_arbiter_io_output_rsp_ready                              ), //o
    .io_output_rsp_payload_last                  (system_ramA_logic_io_bus_rsp_payload_last                                 ), //i
    .io_output_rsp_payload_fragment_source       (system_ramA_logic_io_bus_rsp_payload_fragment_source                      ), //i
    .io_output_rsp_payload_fragment_opcode       (system_ramA_logic_io_bus_rsp_payload_fragment_opcode                      ), //i
    .io_output_rsp_payload_fragment_data         (system_ramA_logic_io_bus_rsp_payload_fragment_data[31:0]                  ), //i
    .io_output_rsp_payload_fragment_context      (system_ramA_logic_io_bus_rsp_payload_fragment_context[2:0]                ), //i
    .clkout_system                               (clocking_pll_clkout_system                                                ), //i
    .systemCdCtrl_logic_outputReset              (systemCdCtrl_logic_outputReset                                            )  //i
  );
  BmbUnburstify system_cpu_dBus_unburstify_1 (
    .io_input_cmd_valid                        (system_cpu_dBus_decoder_io_outputs_1_cmd_valid                             ), //i
    .io_input_cmd_ready                        (system_cpu_dBus_unburstify_1_io_input_cmd_ready                            ), //o
    .io_input_cmd_payload_last                 (system_cpu_dBus_decoder_io_outputs_1_cmd_payload_last                      ), //i
    .io_input_cmd_payload_fragment_opcode      (system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_opcode           ), //i
    .io_input_cmd_payload_fragment_address     (system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_address[31:0]    ), //i
    .io_input_cmd_payload_fragment_length      (system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_length[4:0]      ), //i
    .io_input_cmd_payload_fragment_data        (system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_data[31:0]       ), //i
    .io_input_cmd_payload_fragment_mask        (system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_mask[3:0]        ), //i
    .io_input_cmd_payload_fragment_context     (system_cpu_dBus_decoder_io_outputs_1_cmd_payload_fragment_context          ), //i
    .io_input_rsp_valid                        (system_cpu_dBus_unburstify_1_io_input_rsp_valid                            ), //o
    .io_input_rsp_ready                        (system_cpu_dBus_decoder_io_outputs_1_rsp_ready                             ), //i
    .io_input_rsp_payload_last                 (system_cpu_dBus_unburstify_1_io_input_rsp_payload_last                     ), //o
    .io_input_rsp_payload_fragment_opcode      (system_cpu_dBus_unburstify_1_io_input_rsp_payload_fragment_opcode          ), //o
    .io_input_rsp_payload_fragment_data        (system_cpu_dBus_unburstify_1_io_input_rsp_payload_fragment_data[31:0]      ), //o
    .io_input_rsp_payload_fragment_context     (system_cpu_dBus_unburstify_1_io_input_rsp_payload_fragment_context         ), //o
    .io_output_cmd_valid                       (system_cpu_dBus_unburstify_1_io_output_cmd_valid                           ), //o
    .io_output_cmd_ready                       (system_ramA_ctrl_arbiter_io_inputs_0_cmd_ready                             ), //i
    .io_output_cmd_payload_last                (system_cpu_dBus_unburstify_1_io_output_cmd_payload_last                    ), //o
    .io_output_cmd_payload_fragment_opcode     (system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_opcode         ), //o
    .io_output_cmd_payload_fragment_address    (system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_address[31:0]  ), //o
    .io_output_cmd_payload_fragment_length     (system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_length[1:0]    ), //o
    .io_output_cmd_payload_fragment_data       (system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_data[31:0]     ), //o
    .io_output_cmd_payload_fragment_mask       (system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_mask[3:0]      ), //o
    .io_output_cmd_payload_fragment_context    (system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_context[2:0]   ), //o
    .io_output_rsp_valid                       (system_ramA_ctrl_arbiter_io_inputs_0_rsp_valid                             ), //i
    .io_output_rsp_ready                       (system_cpu_dBus_unburstify_1_io_output_rsp_ready                           ), //o
    .io_output_rsp_payload_last                (system_ramA_ctrl_arbiter_io_inputs_0_rsp_payload_last                      ), //i
    .io_output_rsp_payload_fragment_opcode     (system_ramA_ctrl_arbiter_io_inputs_0_rsp_payload_fragment_opcode           ), //i
    .io_output_rsp_payload_fragment_data       (system_ramA_ctrl_arbiter_io_inputs_0_rsp_payload_fragment_data[31:0]       ), //i
    .io_output_rsp_payload_fragment_context    (system_ramA_ctrl_arbiter_io_inputs_0_rsp_payload_fragment_context[2:0]     ), //i
    .clkout_system                             (clocking_pll_clkout_system                                                 ), //i
    .systemCdCtrl_logic_outputReset            (systemCdCtrl_logic_outputReset                                             )  //i
  );
  BmbUnburstify_2 system_cpu_iBus_unburstify (
    .io_input_cmd_valid                        (system_cpu_iBus_decoder_io_outputs_1_cmd_valid                           ), //i
    .io_input_cmd_ready                        (system_cpu_iBus_unburstify_io_input_cmd_ready                            ), //o
    .io_input_cmd_payload_last                 (system_cpu_iBus_decoder_io_outputs_1_cmd_payload_last                    ), //i
    .io_input_cmd_payload_fragment_opcode      (system_cpu_iBus_decoder_io_outputs_1_cmd_payload_fragment_opcode         ), //i
    .io_input_cmd_payload_fragment_address     (system_cpu_iBus_decoder_io_outputs_1_cmd_payload_fragment_address[31:0]  ), //i
    .io_input_cmd_payload_fragment_length      (system_cpu_iBus_decoder_io_outputs_1_cmd_payload_fragment_length[4:0]    ), //i
    .io_input_rsp_valid                        (system_cpu_iBus_unburstify_io_input_rsp_valid                            ), //o
    .io_input_rsp_ready                        (system_cpu_iBus_decoder_io_outputs_1_rsp_ready                           ), //i
    .io_input_rsp_payload_last                 (system_cpu_iBus_unburstify_io_input_rsp_payload_last                     ), //o
    .io_input_rsp_payload_fragment_opcode      (system_cpu_iBus_unburstify_io_input_rsp_payload_fragment_opcode          ), //o
    .io_input_rsp_payload_fragment_data        (system_cpu_iBus_unburstify_io_input_rsp_payload_fragment_data[31:0]      ), //o
    .io_output_cmd_valid                       (system_cpu_iBus_unburstify_io_output_cmd_valid                           ), //o
    .io_output_cmd_ready                       (system_ramA_ctrl_arbiter_io_inputs_1_cmd_ready                           ), //i
    .io_output_cmd_payload_last                (system_cpu_iBus_unburstify_io_output_cmd_payload_last                    ), //o
    .io_output_cmd_payload_fragment_opcode     (system_cpu_iBus_unburstify_io_output_cmd_payload_fragment_opcode         ), //o
    .io_output_cmd_payload_fragment_address    (system_cpu_iBus_unburstify_io_output_cmd_payload_fragment_address[31:0]  ), //o
    .io_output_cmd_payload_fragment_length     (system_cpu_iBus_unburstify_io_output_cmd_payload_fragment_length[1:0]    ), //o
    .io_output_cmd_payload_fragment_context    (system_cpu_iBus_unburstify_io_output_cmd_payload_fragment_context[1:0]   ), //o
    .io_output_rsp_valid                       (system_ramA_ctrl_arbiter_io_inputs_1_rsp_valid                           ), //i
    .io_output_rsp_ready                       (system_cpu_iBus_unburstify_io_output_rsp_ready                           ), //o
    .io_output_rsp_payload_last                (system_ramA_ctrl_arbiter_io_inputs_1_rsp_payload_last                    ), //i
    .io_output_rsp_payload_fragment_opcode     (system_ramA_ctrl_arbiter_io_inputs_1_rsp_payload_fragment_opcode         ), //i
    .io_output_rsp_payload_fragment_data       (system_ramA_ctrl_arbiter_io_inputs_1_rsp_payload_fragment_data[31:0]     ), //i
    .io_output_rsp_payload_fragment_context    (system_ramA_ctrl_arbiter_io_inputs_1_rsp_payload_fragment_context[1:0]   ), //i
    .clkout_system                             (clocking_pll_clkout_system                                               ), //i
    .systemCdCtrl_logic_outputReset            (systemCdCtrl_logic_outputReset                                           )  //i
  );
  BmbDecoder_2 system_bmbPeripheral_bmb_decoder (
    .io_input_cmd_valid                           (system_bmbPeripheral_bmb_cmd_halfPipe_valid                                       ), //i
    .io_input_cmd_ready                           (system_bmbPeripheral_bmb_decoder_io_input_cmd_ready                               ), //o
    .io_input_cmd_payload_last                    (system_bmbPeripheral_bmb_cmd_halfPipe_payload_last                                ), //i
    .io_input_cmd_payload_fragment_opcode         (system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_opcode                     ), //i
    .io_input_cmd_payload_fragment_address        (system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_address[23:0]              ), //i
    .io_input_cmd_payload_fragment_length         (system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_length[1:0]                ), //i
    .io_input_cmd_payload_fragment_data           (system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_data[31:0]                 ), //i
    .io_input_cmd_payload_fragment_mask           (system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_mask[3:0]                  ), //i
    .io_input_cmd_payload_fragment_context        (system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_context[2:0]               ), //i
    .io_input_rsp_valid                           (system_bmbPeripheral_bmb_decoder_io_input_rsp_valid                               ), //o
    .io_input_rsp_ready                           (_zz_io_input_rsp_ready                                                            ), //i
    .io_input_rsp_payload_last                    (system_bmbPeripheral_bmb_decoder_io_input_rsp_payload_last                        ), //o
    .io_input_rsp_payload_fragment_opcode         (system_bmbPeripheral_bmb_decoder_io_input_rsp_payload_fragment_opcode             ), //o
    .io_input_rsp_payload_fragment_data           (system_bmbPeripheral_bmb_decoder_io_input_rsp_payload_fragment_data[31:0]         ), //o
    .io_input_rsp_payload_fragment_context        (system_bmbPeripheral_bmb_decoder_io_input_rsp_payload_fragment_context[2:0]       ), //o
    .io_outputs_0_cmd_valid                       (system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_valid                           ), //o
    .io_outputs_0_cmd_ready                       (system_bmbPeripheral_bmb_withoutMask_cmd_ready                                    ), //i
    .io_outputs_0_cmd_payload_last                (system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_last                    ), //o
    .io_outputs_0_cmd_payload_fragment_opcode     (system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode         ), //o
    .io_outputs_0_cmd_payload_fragment_address    (system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_address[23:0]  ), //o
    .io_outputs_0_cmd_payload_fragment_length     (system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_length[1:0]    ), //o
    .io_outputs_0_cmd_payload_fragment_data       (system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_data[31:0]     ), //o
    .io_outputs_0_cmd_payload_fragment_mask       (system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_mask[3:0]      ), //o
    .io_outputs_0_cmd_payload_fragment_context    (system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_context[2:0]   ), //o
    .io_outputs_0_rsp_valid                       (system_bmbPeripheral_bmb_withoutMask_rsp_valid                                    ), //i
    .io_outputs_0_rsp_ready                       (system_bmbPeripheral_bmb_decoder_io_outputs_0_rsp_ready                           ), //o
    .io_outputs_0_rsp_payload_last                (system_bmbPeripheral_bmb_withoutMask_rsp_payload_last                             ), //i
    .io_outputs_0_rsp_payload_fragment_opcode     (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode                  ), //i
    .io_outputs_0_rsp_payload_fragment_data       (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data[31:0]              ), //i
    .io_outputs_0_rsp_payload_fragment_context    (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context[2:0]            ), //i
    .io_outputs_1_cmd_valid                       (system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_valid                           ), //o
    .io_outputs_1_cmd_ready                       (system_bmbPeripheral_bmb_withoutMask_cmd_ready_1                                  ), //i
    .io_outputs_1_cmd_payload_last                (system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_last                    ), //o
    .io_outputs_1_cmd_payload_fragment_opcode     (system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_opcode         ), //o
    .io_outputs_1_cmd_payload_fragment_address    (system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_address[23:0]  ), //o
    .io_outputs_1_cmd_payload_fragment_length     (system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_length[1:0]    ), //o
    .io_outputs_1_cmd_payload_fragment_data       (system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_data[31:0]     ), //o
    .io_outputs_1_cmd_payload_fragment_mask       (system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_mask[3:0]      ), //o
    .io_outputs_1_cmd_payload_fragment_context    (system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_context[2:0]   ), //o
    .io_outputs_1_rsp_valid                       (system_bmbPeripheral_bmb_withoutMask_rsp_valid_1                                  ), //i
    .io_outputs_1_rsp_ready                       (system_bmbPeripheral_bmb_decoder_io_outputs_1_rsp_ready                           ), //o
    .io_outputs_1_rsp_payload_last                (system_bmbPeripheral_bmb_withoutMask_rsp_payload_last_1                           ), //i
    .io_outputs_1_rsp_payload_fragment_opcode     (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode_1                ), //i
    .io_outputs_1_rsp_payload_fragment_data       (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data_1[31:0]            ), //i
    .io_outputs_1_rsp_payload_fragment_context    (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context_1[2:0]          ), //i
    .io_outputs_2_cmd_valid                       (system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_valid                           ), //o
    .io_outputs_2_cmd_ready                       (system_bmbPeripheral_bmb_withoutMask_cmd_ready_2                                  ), //i
    .io_outputs_2_cmd_payload_last                (system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_last                    ), //o
    .io_outputs_2_cmd_payload_fragment_opcode     (system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_opcode         ), //o
    .io_outputs_2_cmd_payload_fragment_address    (system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_address[23:0]  ), //o
    .io_outputs_2_cmd_payload_fragment_length     (system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_length[1:0]    ), //o
    .io_outputs_2_cmd_payload_fragment_data       (system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_data[31:0]     ), //o
    .io_outputs_2_cmd_payload_fragment_mask       (system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_mask[3:0]      ), //o
    .io_outputs_2_cmd_payload_fragment_context    (system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_context[2:0]   ), //o
    .io_outputs_2_rsp_valid                       (system_bmbPeripheral_bmb_withoutMask_rsp_valid_2                                  ), //i
    .io_outputs_2_rsp_ready                       (system_bmbPeripheral_bmb_decoder_io_outputs_2_rsp_ready                           ), //o
    .io_outputs_2_rsp_payload_last                (system_bmbPeripheral_bmb_withoutMask_rsp_payload_last_2                           ), //i
    .io_outputs_2_rsp_payload_fragment_opcode     (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode_2                ), //i
    .io_outputs_2_rsp_payload_fragment_data       (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data_2[31:0]            ), //i
    .io_outputs_2_rsp_payload_fragment_context    (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context_2[2:0]          ), //i
    .io_outputs_3_cmd_valid                       (system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_valid                           ), //o
    .io_outputs_3_cmd_ready                       (system_bmbPeripheral_bmb_withoutMask_cmd_ready_3                                  ), //i
    .io_outputs_3_cmd_payload_last                (system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_last                    ), //o
    .io_outputs_3_cmd_payload_fragment_opcode     (system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_opcode         ), //o
    .io_outputs_3_cmd_payload_fragment_address    (system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_address[23:0]  ), //o
    .io_outputs_3_cmd_payload_fragment_length     (system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_length[1:0]    ), //o
    .io_outputs_3_cmd_payload_fragment_data       (system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_data[31:0]     ), //o
    .io_outputs_3_cmd_payload_fragment_mask       (system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_mask[3:0]      ), //o
    .io_outputs_3_cmd_payload_fragment_context    (system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_context[2:0]   ), //o
    .io_outputs_3_rsp_valid                       (system_bmbPeripheral_bmb_withoutMask_rsp_valid_3                                  ), //i
    .io_outputs_3_rsp_ready                       (system_bmbPeripheral_bmb_decoder_io_outputs_3_rsp_ready                           ), //o
    .io_outputs_3_rsp_payload_last                (system_bmbPeripheral_bmb_withoutMask_rsp_payload_last_3                           ), //i
    .io_outputs_3_rsp_payload_fragment_opcode     (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode_3                ), //i
    .io_outputs_3_rsp_payload_fragment_data       (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data_3[31:0]            ), //i
    .io_outputs_3_rsp_payload_fragment_context    (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context_3[2:0]          ), //i
    .io_outputs_4_cmd_valid                       (system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_valid                           ), //o
    .io_outputs_4_cmd_ready                       (system_bmbPeripheral_bmb_withoutMask_cmd_ready_4                                  ), //i
    .io_outputs_4_cmd_payload_last                (system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_last                    ), //o
    .io_outputs_4_cmd_payload_fragment_opcode     (system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_opcode         ), //o
    .io_outputs_4_cmd_payload_fragment_address    (system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_address[23:0]  ), //o
    .io_outputs_4_cmd_payload_fragment_length     (system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_length[1:0]    ), //o
    .io_outputs_4_cmd_payload_fragment_data       (system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_data[31:0]     ), //o
    .io_outputs_4_cmd_payload_fragment_mask       (system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_mask[3:0]      ), //o
    .io_outputs_4_cmd_payload_fragment_context    (system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_context[2:0]   ), //o
    .io_outputs_4_rsp_valid                       (system_bmbPeripheral_bmb_withoutMask_rsp_valid_4                                  ), //i
    .io_outputs_4_rsp_ready                       (system_bmbPeripheral_bmb_decoder_io_outputs_4_rsp_ready                           ), //o
    .io_outputs_4_rsp_payload_last                (system_bmbPeripheral_bmb_withoutMask_rsp_payload_last_4                           ), //i
    .io_outputs_4_rsp_payload_fragment_opcode     (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode_4                ), //i
    .io_outputs_4_rsp_payload_fragment_data       (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data_4[31:0]            ), //i
    .io_outputs_4_rsp_payload_fragment_context    (system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context_4[2:0]          ), //i
    .clkout_system                                (clocking_pll_clkout_system                                                        ), //i
    .systemCdCtrl_logic_outputReset               (systemCdCtrl_logic_outputReset                                                    )  //i
  );
  BmbClint system_clint_logic (
    .io_bus_cmd_valid                       (system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid                           ), //i
    .io_bus_cmd_ready                       (system_clint_logic_io_bus_cmd_ready                                                          ), //o
    .io_bus_cmd_payload_last                (system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last                    ), //i
    .io_bus_cmd_payload_fragment_opcode     (system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode         ), //i
    .io_bus_cmd_payload_fragment_address    (system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address[15:0]  ), //i
    .io_bus_cmd_payload_fragment_length     (system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length[1:0]    ), //i
    .io_bus_cmd_payload_fragment_data       (system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data[31:0]     ), //i
    .io_bus_cmd_payload_fragment_context    (system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context[2:0]   ), //i
    .io_bus_rsp_valid                       (system_clint_logic_io_bus_rsp_valid                                                          ), //o
    .io_bus_rsp_ready                       (system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready                           ), //i
    .io_bus_rsp_payload_last                (system_clint_logic_io_bus_rsp_payload_last                                                   ), //o
    .io_bus_rsp_payload_fragment_opcode     (system_clint_logic_io_bus_rsp_payload_fragment_opcode                                        ), //o
    .io_bus_rsp_payload_fragment_data       (system_clint_logic_io_bus_rsp_payload_fragment_data[31:0]                                    ), //o
    .io_bus_rsp_payload_fragment_context    (system_clint_logic_io_bus_rsp_payload_fragment_context[2:0]                                  ), //o
    .io_timerInterrupt                      (system_clint_logic_io_timerInterrupt                                                         ), //o
    .io_softwareInterrupt                   (system_clint_logic_io_softwareInterrupt                                                      ), //o
    .io_time                                (system_clint_logic_io_time[63:0]                                                             ), //o
    .clkout_system                          (clocking_pll_clkout_system                                                                   ), //i
    .systemCdCtrl_logic_outputReset         (systemCdCtrl_logic_outputReset                                                               )  //i
  );
  CtrlWithoutPhyBmb system_sdramA_logic (
    .io_bmb_0_cmd_valid                       (system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_valid                                ), //i
    .io_bmb_0_cmd_ready                       (system_sdramA_logic_io_bmb_0_cmd_ready                                                        ), //o
    .io_bmb_0_cmd_payload_last                (system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_last                         ), //i
    .io_bmb_0_cmd_payload_fragment_source     (system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_source              ), //i
    .io_bmb_0_cmd_payload_fragment_opcode     (system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_opcode              ), //i
    .io_bmb_0_cmd_payload_fragment_address    (system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_address[24:0]       ), //i
    .io_bmb_0_cmd_payload_fragment_length     (system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_length[4:0]         ), //i
    .io_bmb_0_cmd_payload_fragment_data       (system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_data[31:0]          ), //i
    .io_bmb_0_cmd_payload_fragment_mask       (system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_mask[3:0]           ), //i
    .io_bmb_0_cmd_payload_fragment_context    (system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_context             ), //i
    .io_bmb_0_rsp_valid                       (system_sdramA_logic_io_bmb_0_rsp_valid                                                        ), //o
    .io_bmb_0_rsp_ready                       (_zz_io_bmb_0_rsp_ready                                                                        ), //i
    .io_bmb_0_rsp_payload_last                (system_sdramA_logic_io_bmb_0_rsp_payload_last                                                 ), //o
    .io_bmb_0_rsp_payload_fragment_source     (system_sdramA_logic_io_bmb_0_rsp_payload_fragment_source                                      ), //o
    .io_bmb_0_rsp_payload_fragment_opcode     (system_sdramA_logic_io_bmb_0_rsp_payload_fragment_opcode                                      ), //o
    .io_bmb_0_rsp_payload_fragment_data       (system_sdramA_logic_io_bmb_0_rsp_payload_fragment_data[31:0]                                  ), //o
    .io_bmb_0_rsp_payload_fragment_context    (system_sdramA_logic_io_bmb_0_rsp_payload_fragment_context                                     ), //o
    .io_ctrl_cmd_valid                        (system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid                           ), //i
    .io_ctrl_cmd_ready                        (system_sdramA_logic_io_ctrl_cmd_ready                                                         ), //o
    .io_ctrl_cmd_payload_last                 (system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last                    ), //i
    .io_ctrl_cmd_payload_fragment_opcode      (system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode         ), //i
    .io_ctrl_cmd_payload_fragment_address     (system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address[11:0]  ), //i
    .io_ctrl_cmd_payload_fragment_length      (system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length[1:0]    ), //i
    .io_ctrl_cmd_payload_fragment_data        (system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data[31:0]     ), //i
    .io_ctrl_cmd_payload_fragment_context     (system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context[2:0]   ), //i
    .io_ctrl_rsp_valid                        (system_sdramA_logic_io_ctrl_rsp_valid                                                         ), //o
    .io_ctrl_rsp_ready                        (system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready                           ), //i
    .io_ctrl_rsp_payload_last                 (system_sdramA_logic_io_ctrl_rsp_payload_last                                                  ), //o
    .io_ctrl_rsp_payload_fragment_opcode      (system_sdramA_logic_io_ctrl_rsp_payload_fragment_opcode                                       ), //o
    .io_ctrl_rsp_payload_fragment_data        (system_sdramA_logic_io_ctrl_rsp_payload_fragment_data[31:0]                                   ), //o
    .io_ctrl_rsp_payload_fragment_context     (system_sdramA_logic_io_ctrl_rsp_payload_fragment_context[2:0]                                 ), //o
    .io_phy_phases_0_CASn                     (system_sdramA_logic_io_phy_phases_0_CASn                                                      ), //o
    .io_phy_phases_0_CKE                      (system_sdramA_logic_io_phy_phases_0_CKE                                                       ), //o
    .io_phy_phases_0_CSn                      (system_sdramA_logic_io_phy_phases_0_CSn                                                       ), //o
    .io_phy_phases_0_RASn                     (system_sdramA_logic_io_phy_phases_0_RASn                                                      ), //o
    .io_phy_phases_0_WEn                      (system_sdramA_logic_io_phy_phases_0_WEn                                                       ), //o
    .io_phy_phases_0_DM_0                     (system_sdramA_logic_io_phy_phases_0_DM_0[1:0]                                                 ), //o
    .io_phy_phases_0_DQw_0                    (system_sdramA_logic_io_phy_phases_0_DQw_0[15:0]                                               ), //o
    .io_phy_phases_0_DQr_0                    (system_phyA_logic_io_ctrl_phases_0_DQr_0[15:0]                                                ), //i
    .io_phy_phases_1_CASn                     (system_sdramA_logic_io_phy_phases_1_CASn                                                      ), //o
    .io_phy_phases_1_CKE                      (system_sdramA_logic_io_phy_phases_1_CKE                                                       ), //o
    .io_phy_phases_1_CSn                      (system_sdramA_logic_io_phy_phases_1_CSn                                                       ), //o
    .io_phy_phases_1_RASn                     (system_sdramA_logic_io_phy_phases_1_RASn                                                      ), //o
    .io_phy_phases_1_WEn                      (system_sdramA_logic_io_phy_phases_1_WEn                                                       ), //o
    .io_phy_phases_1_DM_0                     (system_sdramA_logic_io_phy_phases_1_DM_0[1:0]                                                 ), //o
    .io_phy_phases_1_DQw_0                    (system_sdramA_logic_io_phy_phases_1_DQw_0[15:0]                                               ), //o
    .io_phy_phases_1_DQr_0                    (system_phyA_logic_io_ctrl_phases_1_DQr_0[15:0]                                                ), //i
    .io_phy_ADDR                              (system_sdramA_logic_io_phy_ADDR[12:0]                                                         ), //o
    .io_phy_BA                                (system_sdramA_logic_io_phy_BA[1:0]                                                            ), //o
    .io_phy_writeEnable                       (system_sdramA_logic_io_phy_writeEnable                                                        ), //o
    .io_phy_readEnable                        (system_sdramA_logic_io_phy_readEnable                                                         ), //o
    .io_phy_readValid                         (system_phyA_logic_io_ctrl_readValid                                                           ), //i
    .clkout_system                            (clocking_pll_clkout_system                                                                    ), //i
    .systemCdCtrl_logic_outputReset           (systemCdCtrl_logic_outputReset                                                                )  //i
  );
  BmbGpio2 system_gpioA_logic (
    .io_gpio_read                           (_zz_io_gpio_read[7:0]                                                                       ), //i
    .io_gpio_write                          (system_gpioA_logic_io_gpio_write[7:0]                                                       ), //o
    .io_gpio_writeEnable                    (system_gpioA_logic_io_gpio_writeEnable[7:0]                                                 ), //o
    .io_bus_cmd_valid                       (system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid                          ), //i
    .io_bus_cmd_ready                       (system_gpioA_logic_io_bus_cmd_ready                                                         ), //o
    .io_bus_cmd_payload_last                (system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last                   ), //i
    .io_bus_cmd_payload_fragment_opcode     (system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode        ), //i
    .io_bus_cmd_payload_fragment_address    (system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address[7:0]  ), //i
    .io_bus_cmd_payload_fragment_length     (system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length[1:0]   ), //i
    .io_bus_cmd_payload_fragment_data       (system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data[31:0]    ), //i
    .io_bus_cmd_payload_fragment_context    (system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context[2:0]  ), //i
    .io_bus_rsp_valid                       (system_gpioA_logic_io_bus_rsp_valid                                                         ), //o
    .io_bus_rsp_ready                       (system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready                          ), //i
    .io_bus_rsp_payload_last                (system_gpioA_logic_io_bus_rsp_payload_last                                                  ), //o
    .io_bus_rsp_payload_fragment_opcode     (system_gpioA_logic_io_bus_rsp_payload_fragment_opcode                                       ), //o
    .io_bus_rsp_payload_fragment_data       (system_gpioA_logic_io_bus_rsp_payload_fragment_data[31:0]                                   ), //o
    .io_bus_rsp_payload_fragment_context    (system_gpioA_logic_io_bus_rsp_payload_fragment_context[2:0]                                 ), //o
    .io_interrupt                           (system_gpioA_logic_io_interrupt[7:0]                                                        ), //o
    .clkout_system                          (clocking_pll_clkout_system                                                                  ), //i
    .systemCdCtrl_logic_outputReset         (systemCdCtrl_logic_outputReset                                                              )  //i
  );
  BmbUartCtrl system_uartA_logic (
    .io_bus_cmd_valid                       (system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid                          ), //i
    .io_bus_cmd_ready                       (system_uartA_logic_io_bus_cmd_ready                                                         ), //o
    .io_bus_cmd_payload_last                (system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last                   ), //i
    .io_bus_cmd_payload_fragment_opcode     (system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode        ), //i
    .io_bus_cmd_payload_fragment_address    (system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address[5:0]  ), //i
    .io_bus_cmd_payload_fragment_length     (system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length[1:0]   ), //i
    .io_bus_cmd_payload_fragment_data       (system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data[31:0]    ), //i
    .io_bus_cmd_payload_fragment_context    (system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context[2:0]  ), //i
    .io_bus_rsp_valid                       (system_uartA_logic_io_bus_rsp_valid                                                         ), //o
    .io_bus_rsp_ready                       (system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready                          ), //i
    .io_bus_rsp_payload_last                (system_uartA_logic_io_bus_rsp_payload_last                                                  ), //o
    .io_bus_rsp_payload_fragment_opcode     (system_uartA_logic_io_bus_rsp_payload_fragment_opcode                                       ), //o
    .io_bus_rsp_payload_fragment_data       (system_uartA_logic_io_bus_rsp_payload_fragment_data[31:0]                                   ), //o
    .io_bus_rsp_payload_fragment_context    (system_uartA_logic_io_bus_rsp_payload_fragment_context[2:0]                                 ), //o
    .io_uart_txd                            (system_uartA_logic_io_uart_txd                                                              ), //o
    .io_uart_rxd                            (system_uartA_uart_rxd                                                                       ), //i
    .io_interrupt                           (system_uartA_logic_io_interrupt                                                             ), //o
    .clkout_system                          (clocking_pll_clkout_system                                                                  ), //i
    .systemCdCtrl_logic_outputReset         (systemCdCtrl_logic_outputReset                                                              )  //i
  );
  BmbArbiter_1 system_sdramA0_bmb_arbiter (
    .io_inputs_0_cmd_valid                       (system_cpu_dBus_decoder_io_outputs_0_cmd_valid                             ), //i
    .io_inputs_0_cmd_ready                       (system_sdramA0_bmb_arbiter_io_inputs_0_cmd_ready                           ), //o
    .io_inputs_0_cmd_payload_last                (system_cpu_dBus_decoder_io_outputs_0_cmd_payload_last                      ), //i
    .io_inputs_0_cmd_payload_fragment_opcode     (system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_opcode           ), //i
    .io_inputs_0_cmd_payload_fragment_address    (system_sdramA0_bmb_arbiter_io_inputs_0_cmd_payload_fragment_address[24:0]  ), //i
    .io_inputs_0_cmd_payload_fragment_length     (system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_length[4:0]      ), //i
    .io_inputs_0_cmd_payload_fragment_data       (system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_data[31:0]       ), //i
    .io_inputs_0_cmd_payload_fragment_mask       (system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_mask[3:0]        ), //i
    .io_inputs_0_cmd_payload_fragment_context    (system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_context          ), //i
    .io_inputs_0_rsp_valid                       (system_sdramA0_bmb_arbiter_io_inputs_0_rsp_valid                           ), //o
    .io_inputs_0_rsp_ready                       (system_cpu_dBus_decoder_io_outputs_0_rsp_ready                             ), //i
    .io_inputs_0_rsp_payload_last                (system_sdramA0_bmb_arbiter_io_inputs_0_rsp_payload_last                    ), //o
    .io_inputs_0_rsp_payload_fragment_opcode     (system_sdramA0_bmb_arbiter_io_inputs_0_rsp_payload_fragment_opcode         ), //o
    .io_inputs_0_rsp_payload_fragment_data       (system_sdramA0_bmb_arbiter_io_inputs_0_rsp_payload_fragment_data[31:0]     ), //o
    .io_inputs_0_rsp_payload_fragment_context    (system_sdramA0_bmb_arbiter_io_inputs_0_rsp_payload_fragment_context        ), //o
    .io_inputs_1_cmd_valid                       (system_cpu_iBus_decoder_io_outputs_0_cmd_valid                             ), //i
    .io_inputs_1_cmd_ready                       (system_sdramA0_bmb_arbiter_io_inputs_1_cmd_ready                           ), //o
    .io_inputs_1_cmd_payload_last                (system_cpu_iBus_decoder_io_outputs_0_cmd_payload_last                      ), //i
    .io_inputs_1_cmd_payload_fragment_opcode     (system_cpu_iBus_decoder_io_outputs_0_cmd_payload_fragment_opcode           ), //i
    .io_inputs_1_cmd_payload_fragment_address    (system_sdramA0_bmb_arbiter_io_inputs_1_cmd_payload_fragment_address[24:0]  ), //i
    .io_inputs_1_cmd_payload_fragment_length     (system_cpu_iBus_decoder_io_outputs_0_cmd_payload_fragment_length[4:0]      ), //i
    .io_inputs_1_cmd_payload_fragment_data       (32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                       ), //i
    .io_inputs_1_cmd_payload_fragment_mask       (4'bxxxx                                                                    ), //i
    .io_inputs_1_rsp_valid                       (system_sdramA0_bmb_arbiter_io_inputs_1_rsp_valid                           ), //o
    .io_inputs_1_rsp_ready                       (system_cpu_iBus_decoder_io_outputs_0_rsp_ready                             ), //i
    .io_inputs_1_rsp_payload_last                (system_sdramA0_bmb_arbiter_io_inputs_1_rsp_payload_last                    ), //o
    .io_inputs_1_rsp_payload_fragment_opcode     (system_sdramA0_bmb_arbiter_io_inputs_1_rsp_payload_fragment_opcode         ), //o
    .io_inputs_1_rsp_payload_fragment_data       (system_sdramA0_bmb_arbiter_io_inputs_1_rsp_payload_fragment_data[31:0]     ), //o
    .io_output_cmd_valid                         (system_sdramA0_bmb_arbiter_io_output_cmd_valid                             ), //o
    .io_output_cmd_ready                         (system_sdramA0_bmb_arbiter_io_output_cmd_ready                             ), //i
    .io_output_cmd_payload_last                  (system_sdramA0_bmb_arbiter_io_output_cmd_payload_last                      ), //o
    .io_output_cmd_payload_fragment_source       (system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_source           ), //o
    .io_output_cmd_payload_fragment_opcode       (system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_opcode           ), //o
    .io_output_cmd_payload_fragment_address      (system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_address[24:0]    ), //o
    .io_output_cmd_payload_fragment_length       (system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_length[4:0]      ), //o
    .io_output_cmd_payload_fragment_data         (system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_data[31:0]       ), //o
    .io_output_cmd_payload_fragment_mask         (system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_mask[3:0]        ), //o
    .io_output_cmd_payload_fragment_context      (system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_context          ), //o
    .io_output_rsp_valid                         (_zz_when_Stream_l342                                                       ), //i
    .io_output_rsp_ready                         (system_sdramA0_bmb_arbiter_io_output_rsp_ready                             ), //o
    .io_output_rsp_payload_last                  (_zz_io_output_rsp_payload_last                                             ), //i
    .io_output_rsp_payload_fragment_source       (_zz_io_output_rsp_payload_fragment_source                                  ), //i
    .io_output_rsp_payload_fragment_opcode       (_zz_io_output_rsp_payload_fragment_opcode                                  ), //i
    .io_output_rsp_payload_fragment_data         (_zz_io_output_rsp_payload_fragment_data[31:0]                              ), //i
    .io_output_rsp_payload_fragment_context      (_zz_io_output_rsp_payload_fragment_context                                 ), //i
    .clkout_system                               (clocking_pll_clkout_system                                                 ), //i
    .systemCdCtrl_logic_outputReset              (systemCdCtrl_logic_outputReset                                             )  //i
  );
  assign system_phyA_sdram_DQ[0] = _zz_system_phyA_sdram_DQ_15 ? _zz_system_phyA_sdram_DQ_16[0] : 1'bz;
  assign system_phyA_sdram_DQ[1] = _zz_system_phyA_sdram_DQ_14 ? _zz_system_phyA_sdram_DQ_16[1] : 1'bz;
  assign system_phyA_sdram_DQ[2] = _zz_system_phyA_sdram_DQ_13 ? _zz_system_phyA_sdram_DQ_16[2] : 1'bz;
  assign system_phyA_sdram_DQ[3] = _zz_system_phyA_sdram_DQ_12 ? _zz_system_phyA_sdram_DQ_16[3] : 1'bz;
  assign system_phyA_sdram_DQ[4] = _zz_system_phyA_sdram_DQ_11 ? _zz_system_phyA_sdram_DQ_16[4] : 1'bz;
  assign system_phyA_sdram_DQ[5] = _zz_system_phyA_sdram_DQ_10 ? _zz_system_phyA_sdram_DQ_16[5] : 1'bz;
  assign system_phyA_sdram_DQ[6] = _zz_system_phyA_sdram_DQ_9 ? _zz_system_phyA_sdram_DQ_16[6] : 1'bz;
  assign system_phyA_sdram_DQ[7] = _zz_system_phyA_sdram_DQ_8 ? _zz_system_phyA_sdram_DQ_16[7] : 1'bz;
  assign system_phyA_sdram_DQ[8] = _zz_system_phyA_sdram_DQ_7 ? _zz_system_phyA_sdram_DQ_16[8] : 1'bz;
  assign system_phyA_sdram_DQ[9] = _zz_system_phyA_sdram_DQ_6 ? _zz_system_phyA_sdram_DQ_16[9] : 1'bz;
  assign system_phyA_sdram_DQ[10] = _zz_system_phyA_sdram_DQ_5 ? _zz_system_phyA_sdram_DQ_16[10] : 1'bz;
  assign system_phyA_sdram_DQ[11] = _zz_system_phyA_sdram_DQ_4 ? _zz_system_phyA_sdram_DQ_16[11] : 1'bz;
  assign system_phyA_sdram_DQ[12] = _zz_system_phyA_sdram_DQ_3 ? _zz_system_phyA_sdram_DQ_16[12] : 1'bz;
  assign system_phyA_sdram_DQ[13] = _zz_system_phyA_sdram_DQ_2 ? _zz_system_phyA_sdram_DQ_16[13] : 1'bz;
  assign system_phyA_sdram_DQ[14] = _zz_system_phyA_sdram_DQ_1 ? _zz_system_phyA_sdram_DQ_16[14] : 1'bz;
  assign system_phyA_sdram_DQ[15] = _zz_system_phyA_sdram_DQ ? _zz_system_phyA_sdram_DQ_16[15] : 1'bz;
  assign system_gpioA_gpio[0] = _zz_system_gpioA_gpio_7 ? _zz_system_gpioA_gpio_8[0] : 1'bz;
  assign system_gpioA_gpio[1] = _zz_system_gpioA_gpio_6 ? _zz_system_gpioA_gpio_8[1] : 1'bz;
  assign system_gpioA_gpio[2] = _zz_system_gpioA_gpio_5 ? _zz_system_gpioA_gpio_8[2] : 1'bz;
  assign system_gpioA_gpio[3] = _zz_system_gpioA_gpio_4 ? _zz_system_gpioA_gpio_8[3] : 1'bz;
  assign system_gpioA_gpio[4] = _zz_system_gpioA_gpio_3 ? _zz_system_gpioA_gpio_8[4] : 1'bz;
  assign system_gpioA_gpio[5] = _zz_system_gpioA_gpio_2 ? _zz_system_gpioA_gpio_8[5] : 1'bz;
  assign system_gpioA_gpio[6] = _zz_system_gpioA_gpio_1 ? _zz_system_gpioA_gpio_8[6] : 1'bz;
  assign system_gpioA_gpio[7] = _zz_system_gpioA_gpio ? _zz_system_gpioA_gpio_8[7] : 1'bz;
  always @(*) begin
    _zz_system_gpioA_gpio = 1'b0;
    if(when_InOutWrapper_l65_23) begin
      _zz_system_gpioA_gpio = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_gpioA_gpio_1 = 1'b0;
    if(when_InOutWrapper_l65_22) begin
      _zz_system_gpioA_gpio_1 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_gpioA_gpio_2 = 1'b0;
    if(when_InOutWrapper_l65_21) begin
      _zz_system_gpioA_gpio_2 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_gpioA_gpio_3 = 1'b0;
    if(when_InOutWrapper_l65_20) begin
      _zz_system_gpioA_gpio_3 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_gpioA_gpio_4 = 1'b0;
    if(when_InOutWrapper_l65_19) begin
      _zz_system_gpioA_gpio_4 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_gpioA_gpio_5 = 1'b0;
    if(when_InOutWrapper_l65_18) begin
      _zz_system_gpioA_gpio_5 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_gpioA_gpio_6 = 1'b0;
    if(when_InOutWrapper_l65_17) begin
      _zz_system_gpioA_gpio_6 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_gpioA_gpio_7 = 1'b0;
    if(when_InOutWrapper_l65_16) begin
      _zz_system_gpioA_gpio_7 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ = 1'b0;
    if(when_InOutWrapper_l65_15) begin
      _zz_system_phyA_sdram_DQ = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_1 = 1'b0;
    if(when_InOutWrapper_l65_14) begin
      _zz_system_phyA_sdram_DQ_1 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_2 = 1'b0;
    if(when_InOutWrapper_l65_13) begin
      _zz_system_phyA_sdram_DQ_2 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_3 = 1'b0;
    if(when_InOutWrapper_l65_12) begin
      _zz_system_phyA_sdram_DQ_3 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_4 = 1'b0;
    if(when_InOutWrapper_l65_11) begin
      _zz_system_phyA_sdram_DQ_4 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_5 = 1'b0;
    if(when_InOutWrapper_l65_10) begin
      _zz_system_phyA_sdram_DQ_5 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_6 = 1'b0;
    if(when_InOutWrapper_l65_9) begin
      _zz_system_phyA_sdram_DQ_6 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_7 = 1'b0;
    if(when_InOutWrapper_l65_8) begin
      _zz_system_phyA_sdram_DQ_7 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_8 = 1'b0;
    if(when_InOutWrapper_l65_7) begin
      _zz_system_phyA_sdram_DQ_8 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_9 = 1'b0;
    if(when_InOutWrapper_l65_6) begin
      _zz_system_phyA_sdram_DQ_9 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_10 = 1'b0;
    if(when_InOutWrapper_l65_5) begin
      _zz_system_phyA_sdram_DQ_10 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_11 = 1'b0;
    if(when_InOutWrapper_l65_4) begin
      _zz_system_phyA_sdram_DQ_11 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_12 = 1'b0;
    if(when_InOutWrapper_l65_3) begin
      _zz_system_phyA_sdram_DQ_12 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_13 = 1'b0;
    if(when_InOutWrapper_l65_2) begin
      _zz_system_phyA_sdram_DQ_13 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_14 = 1'b0;
    if(when_InOutWrapper_l65_1) begin
      _zz_system_phyA_sdram_DQ_14 = 1'b1;
    end
  end

  always @(*) begin
    _zz_system_phyA_sdram_DQ_15 = 1'b0;
    if(when_InOutWrapper_l65) begin
      _zz_system_phyA_sdram_DQ_15 = 1'b1;
    end
  end

  assign clocking_sdram_clk = clocking_bb_Q;
  always @(*) begin
    debugCdCtrl_logic_inputResetTrigger = 1'b0;
    if(debugCdCtrl_logic_inputResetAdapter_stuff_syncTrigger) begin
      debugCdCtrl_logic_inputResetTrigger = 1'b1;
    end
  end

  always @(*) begin
    debugCdCtrl_logic_outputResetUnbuffered = 1'b0;
    if(when_ClockDomainGenerator_l77) begin
      debugCdCtrl_logic_outputResetUnbuffered = 1'b1;
    end
  end

  assign when_ClockDomainGenerator_l77 = (debugCdCtrl_logic_holdingLogic_resetCounter != 12'hfff);
  assign debugCdCtrl_logic_inputResetAdapter_stuff_syncTrigger = bufferCC_5_io_dataOut;
  always @(*) begin
    systemCdCtrl_logic_inputResetTrigger = 1'b0;
    if(bufferCC_6_io_dataOut) begin
      systemCdCtrl_logic_inputResetTrigger = 1'b1;
    end
    if(bufferCC_7_io_dataOut) begin
      systemCdCtrl_logic_inputResetTrigger = 1'b1;
    end
  end

  always @(*) begin
    systemCdCtrl_logic_outputResetUnbuffered = 1'b0;
    if(when_ClockDomainGenerator_l77_1) begin
      systemCdCtrl_logic_outputResetUnbuffered = 1'b1;
    end
  end

  assign when_ClockDomainGenerator_l77_1 = (systemCdCtrl_logic_holdingLogic_resetCounter != 6'h3f);
  assign system_cpu_iBus_cmd_valid = system_cpu_logic_cpu_iBus_cmd_valid;
  assign system_cpu_iBus_cmd_payload_fragment_opcode = 1'b0;
  assign system_cpu_iBus_cmd_payload_fragment_address = system_cpu_logic_cpu_iBus_cmd_payload_address;
  assign system_cpu_iBus_cmd_payload_fragment_length = 5'h1f;
  assign system_cpu_iBus_cmd_payload_last = 1'b1;
  assign system_cpu_logic_cpu_iBus_rsp_payload_error = (system_cpu_iBus_rsp_payload_fragment_opcode == 1'b1);
  assign system_cpu_iBus_rsp_ready = 1'b1;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_valid = system_cpu_logic_cpu_dBus_cmd_valid;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_last = system_cpu_logic_cpu_dBus_cmd_payload_last;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_opcode = (system_cpu_logic_cpu_dBus_cmd_payload_wr ? 1'b1 : 1'b0);
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_address = system_cpu_logic_cpu_dBus_cmd_payload_address;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_data = system_cpu_logic_cpu_dBus_cmd_payload_data;
  always @(*) begin
    _zz_system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_length = 5'bxxxxx;
    case(system_cpu_logic_cpu_dBus_cmd_payload_size)
      3'b000 : begin
        _zz_system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_length = 5'h0;
      end
      3'b001 : begin
        _zz_system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_length = 5'h01;
      end
      3'b010 : begin
        _zz_system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_length = 5'h03;
      end
      3'b011 : begin
        _zz_system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_length = 5'h07;
      end
      3'b100 : begin
        _zz_system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_length = 5'h0f;
      end
      3'b101 : begin
        _zz_system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_length = 5'h1f;
      end
      default : begin
      end
    endcase
  end

  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_length = _zz_system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_length;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_mask = system_cpu_logic_cpu_dBus_cmd_payload_mask;
  assign system_cpu_logic_cpu_dBus_Bridge_withoutWriteBuffer_busCmdContext_isWrite = system_cpu_logic_cpu_dBus_cmd_payload_wr;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_context = system_cpu_logic_cpu_dBus_Bridge_withoutWriteBuffer_busCmdContext_isWrite;
  always @(*) begin
    system_cpu_logic_cpu_dBus_rsp_valid = system_cpu_logic_cpu_dBus_Bridge_bus_rsp_valid;
    if(when_DataCache_l525) begin
      system_cpu_logic_cpu_dBus_rsp_valid = 1'b0;
    end
  end

  assign when_DataCache_l525 = system_cpu_logic_cpu_dBus_Bridge_bus_rsp_payload_fragment_context[0];
  assign system_cpu_logic_cpu_dBus_rsp_payload_error = (system_cpu_logic_cpu_dBus_Bridge_bus_rsp_payload_fragment_opcode == 1'b1);
  assign system_cpu_logic_cpu_dBus_Bridge_bus_rsp_ready = 1'b1;
  assign system_cpu_logic_cpu_debug_bus_cmd_payload_address = systemDebugger_1_io_mem_cmd_payload_address[7:0];
  assign system_cpu_logic_cpu_debug_bus_cmd_fire = (systemDebugger_1_io_mem_cmd_valid && system_cpu_logic_cpu_debug_bus_cmd_ready);
  assign system_cpu_jtag_tdo = jtagBridge_1_io_jtag_tdo;
  assign system_phyA_sdram_ADDR = system_phyA_logic_io_sdram_ADDR;
  assign system_phyA_sdram_BA = system_phyA_logic_io_sdram_BA;
  assign _zz_system_phyA_sdram_DQ_16 = system_phyA_logic_io_sdram_DQ_write;
  assign _zz_when_InOutWrapper_l65 = system_phyA_logic_io_sdram_DQ_writeEnable;
  assign system_phyA_sdram_DQM = system_phyA_logic_io_sdram_DQM;
  assign system_phyA_sdram_CASn = system_phyA_logic_io_sdram_CASn;
  assign system_phyA_sdram_CKE = system_phyA_logic_io_sdram_CKE;
  assign system_phyA_sdram_CSn = system_phyA_logic_io_sdram_CSn;
  assign system_phyA_sdram_RASn = system_phyA_logic_io_sdram_RASn;
  assign system_phyA_sdram_WEn = system_phyA_logic_io_sdram_WEn;
  assign system_cpu_iBus_cmd_ready = system_cpu_iBus_decoder_io_input_cmd_ready;
  assign system_cpu_iBus_rsp_valid = system_cpu_iBus_decoder_io_input_rsp_valid;
  assign system_cpu_iBus_rsp_payload_last = system_cpu_iBus_decoder_io_input_rsp_payload_last;
  assign system_cpu_iBus_rsp_payload_fragment_opcode = system_cpu_iBus_decoder_io_input_rsp_payload_fragment_opcode;
  assign system_cpu_iBus_rsp_payload_fragment_data = system_cpu_iBus_decoder_io_input_rsp_payload_fragment_data;
  always @(*) begin
    system_cpu_logic_cpu_dBus_Bridge_bus_cmd_ready = system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_ready;
    if(when_Stream_l342) begin
      system_cpu_logic_cpu_dBus_Bridge_bus_cmd_ready = 1'b1;
    end
  end

  assign when_Stream_l342 = (! system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_valid);
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_valid = system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rValid;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_last = system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_last;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_opcode = system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_opcode;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_address = system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_address;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_length = system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_length;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_data = system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_data;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_mask = system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_mask;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_context = system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_context;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_cmd_m2sPipe_ready = system_cpu_dBus_decoder_io_input_cmd_ready;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_rsp_valid = system_cpu_dBus_decoder_io_input_rsp_valid;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_rsp_payload_last = system_cpu_dBus_decoder_io_input_rsp_payload_last;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_rsp_payload_fragment_opcode = system_cpu_dBus_decoder_io_input_rsp_payload_fragment_opcode;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_rsp_payload_fragment_data = system_cpu_dBus_decoder_io_input_rsp_payload_fragment_data;
  assign system_cpu_logic_cpu_dBus_Bridge_bus_rsp_payload_fragment_context = system_cpu_dBus_decoder_io_input_rsp_payload_fragment_context;
  assign system_bmbPeripheral_bmb_cmd_valid = system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid;
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready = system_bmbPeripheral_bmb_cmd_ready;
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid = system_bmbPeripheral_bmb_rsp_valid;
  assign system_bmbPeripheral_bmb_rsp_ready = system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready;
  assign system_bmbPeripheral_bmb_cmd_payload_last = system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last;
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last = system_bmbPeripheral_bmb_rsp_payload_last;
  assign system_bmbPeripheral_bmb_cmd_payload_fragment_opcode = system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode;
  assign system_bmbPeripheral_bmb_cmd_payload_fragment_address = system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address;
  assign system_bmbPeripheral_bmb_cmd_payload_fragment_length = system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length;
  assign system_bmbPeripheral_bmb_cmd_payload_fragment_data = system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data;
  assign system_bmbPeripheral_bmb_cmd_payload_fragment_mask = system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_mask;
  assign system_bmbPeripheral_bmb_cmd_payload_fragment_context = system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context;
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode = system_bmbPeripheral_bmb_rsp_payload_fragment_opcode;
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data = system_bmbPeripheral_bmb_rsp_payload_fragment_data;
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context = system_bmbPeripheral_bmb_rsp_payload_fragment_context;
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid = system_cpu_dBus_unburstify_io_output_cmd_valid;
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready = system_cpu_dBus_unburstify_io_output_rsp_ready;
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last = system_cpu_dBus_unburstify_io_output_cmd_payload_last;
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode = system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_opcode;
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address = system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_address[23:0];
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length = system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_length;
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data = system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_data;
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_mask = system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_mask;
  assign system_bmbPeripheral_bmb_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context = system_cpu_dBus_unburstify_io_output_cmd_payload_fragment_context;
  assign system_ramA_ctrl_arbiter_io_inputs_0_cmd_payload_fragment_address = system_cpu_dBus_unburstify_1_io_output_cmd_payload_fragment_address[15:0];
  assign system_ramA_ctrl_arbiter_io_inputs_1_cmd_payload_fragment_address = system_cpu_iBus_unburstify_io_output_cmd_payload_fragment_address[15:0];
  assign system_bmbPeripheral_bmb_cmd_halfPipe_fire = (system_bmbPeripheral_bmb_cmd_halfPipe_valid && system_bmbPeripheral_bmb_cmd_halfPipe_ready);
  assign system_bmbPeripheral_bmb_cmd_ready = (! system_bmbPeripheral_bmb_cmd_rValid);
  assign system_bmbPeripheral_bmb_cmd_halfPipe_valid = system_bmbPeripheral_bmb_cmd_rValid;
  assign system_bmbPeripheral_bmb_cmd_halfPipe_payload_last = system_bmbPeripheral_bmb_cmd_rData_last;
  assign system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_opcode = system_bmbPeripheral_bmb_cmd_rData_fragment_opcode;
  assign system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_address = system_bmbPeripheral_bmb_cmd_rData_fragment_address;
  assign system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_length = system_bmbPeripheral_bmb_cmd_rData_fragment_length;
  assign system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_data = system_bmbPeripheral_bmb_cmd_rData_fragment_data;
  assign system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_mask = system_bmbPeripheral_bmb_cmd_rData_fragment_mask;
  assign system_bmbPeripheral_bmb_cmd_halfPipe_payload_fragment_context = system_bmbPeripheral_bmb_cmd_rData_fragment_context;
  assign system_bmbPeripheral_bmb_cmd_halfPipe_ready = system_bmbPeripheral_bmb_decoder_io_input_cmd_ready;
  assign _zz_io_input_rsp_ready = (! _zz_system_bmbPeripheral_bmb_rsp_valid_1);
  assign _zz_system_bmbPeripheral_bmb_rsp_valid = _zz_system_bmbPeripheral_bmb_rsp_valid_1;
  assign system_bmbPeripheral_bmb_rsp_valid = _zz_system_bmbPeripheral_bmb_rsp_valid;
  assign system_bmbPeripheral_bmb_rsp_payload_last = _zz_system_bmbPeripheral_bmb_rsp_payload_last;
  assign system_bmbPeripheral_bmb_rsp_payload_fragment_opcode = _zz_system_bmbPeripheral_bmb_rsp_payload_fragment_opcode;
  assign system_bmbPeripheral_bmb_rsp_payload_fragment_data = _zz_system_bmbPeripheral_bmb_rsp_payload_fragment_data;
  assign system_bmbPeripheral_bmb_rsp_payload_fragment_context = _zz_system_bmbPeripheral_bmb_rsp_payload_fragment_context;
  always @(*) begin
    system_plic_logic_bus_readHaltTrigger = 1'b0;
    if(when_PlicMapper_l122) begin
      system_plic_logic_bus_readHaltTrigger = 1'b1;
    end
  end

  assign system_plic_logic_bus_writeHaltTrigger = 1'b0;
  assign _zz_system_plic_logic_bmb_rsp_valid = (! (system_plic_logic_bus_readHaltTrigger || system_plic_logic_bus_writeHaltTrigger));
  assign system_plic_logic_bus_rsp_ready = (_zz_system_plic_logic_bus_rsp_ready && _zz_system_plic_logic_bmb_rsp_valid);
  always @(*) begin
    _zz_system_plic_logic_bus_rsp_ready = system_plic_logic_bmb_rsp_ready;
    if(when_Stream_l342_1) begin
      _zz_system_plic_logic_bus_rsp_ready = 1'b1;
    end
  end

  assign when_Stream_l342_1 = (! _zz_system_plic_logic_bmb_rsp_valid_1);
  assign _zz_system_plic_logic_bmb_rsp_valid_1 = _zz_system_plic_logic_bmb_rsp_valid_2;
  assign system_plic_logic_bmb_rsp_valid = _zz_system_plic_logic_bmb_rsp_valid_1;
  assign system_plic_logic_bmb_rsp_payload_last = _zz_system_plic_logic_bmb_rsp_payload_last;
  assign system_plic_logic_bmb_rsp_payload_fragment_opcode = _zz_system_plic_logic_bmb_rsp_payload_fragment_opcode;
  assign system_plic_logic_bmb_rsp_payload_fragment_data = _zz_system_plic_logic_bmb_rsp_payload_fragment_data;
  assign system_plic_logic_bmb_rsp_payload_fragment_context = _zz_system_plic_logic_bmb_rsp_payload_fragment_context;
  assign system_plic_logic_bus_askWrite = (system_plic_logic_bmb_cmd_valid && (system_plic_logic_bmb_cmd_payload_fragment_opcode == 1'b1));
  assign system_plic_logic_bus_askRead = (system_plic_logic_bmb_cmd_valid && (system_plic_logic_bmb_cmd_payload_fragment_opcode == 1'b0));
  assign system_plic_logic_bmb_cmd_fire = (system_plic_logic_bmb_cmd_valid && system_plic_logic_bmb_cmd_ready);
  assign system_plic_logic_bus_doWrite = (system_plic_logic_bmb_cmd_fire && (system_plic_logic_bmb_cmd_payload_fragment_opcode == 1'b1));
  assign system_plic_logic_bmb_cmd_fire_1 = (system_plic_logic_bmb_cmd_valid && system_plic_logic_bmb_cmd_ready);
  assign system_plic_logic_bus_doRead = (system_plic_logic_bmb_cmd_fire_1 && (system_plic_logic_bmb_cmd_payload_fragment_opcode == 1'b0));
  assign system_plic_logic_bus_rsp_valid = system_plic_logic_bmb_cmd_valid;
  assign system_plic_logic_bmb_cmd_ready = system_plic_logic_bus_rsp_ready;
  assign system_plic_logic_bus_rsp_payload_last = 1'b1;
  assign system_plic_logic_bus_rsp_payload_fragment_opcode = 1'b0;
  always @(*) begin
    system_plic_logic_bus_rsp_payload_fragment_data = 32'h0;
    case(system_plic_logic_bmb_cmd_payload_fragment_address)
      22'h200000 : begin
        system_plic_logic_bus_rsp_payload_fragment_data[1 : 0] = system_cpu_externalInterrupt_plic_target_threshold;
      end
      default : begin
      end
    endcase
  end

  assign system_plic_logic_bus_rsp_payload_fragment_context = system_plic_logic_bmb_cmd_payload_fragment_context;
  assign system_cpu_externalInterrupt_plic_target_requests_0_priority = 2'b00;
  assign system_cpu_externalInterrupt_plic_target_requests_0_valid = 1'b1;
  assign system_cpu_externalInterrupt_plic_target_iep = (system_cpu_externalInterrupt_plic_target_threshold < system_cpu_externalInterrupt_plic_target_bestRequest_priority);
  always @(*) begin
    system_plic_logic_bridge_claim_valid = 1'b0;
    case(system_plic_logic_bmb_cmd_payload_fragment_address)
      22'h200004 : begin
        if(system_plic_logic_bus_doRead) begin
          system_plic_logic_bridge_claim_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    system_plic_logic_bridge_completion_valid = 1'b0;
    if(system_plic_logic_bridge_targetMapping_0_targetCompletion_valid) begin
      system_plic_logic_bridge_completion_valid = 1'b1;
    end
  end

  always @(*) begin
    system_plic_logic_bridge_coherencyStall_willIncrement = 1'b0;
    if(when_PlicMapper_l122) begin
      system_plic_logic_bridge_coherencyStall_willIncrement = 1'b1;
    end
    if(when_BmbSlaveFactory_l71) begin
      if(system_plic_logic_bus_askWrite) begin
        system_plic_logic_bridge_coherencyStall_willIncrement = 1'b1;
      end
      if(system_plic_logic_bus_askRead) begin
        system_plic_logic_bridge_coherencyStall_willIncrement = 1'b1;
      end
    end
  end

  assign system_plic_logic_bridge_coherencyStall_willClear = 1'b0;
  assign system_plic_logic_bridge_coherencyStall_willOverflowIfInc = (system_plic_logic_bridge_coherencyStall_value == 1'b1);
  assign system_plic_logic_bridge_coherencyStall_willOverflow = (system_plic_logic_bridge_coherencyStall_willOverflowIfInc && system_plic_logic_bridge_coherencyStall_willIncrement);
  always @(*) begin
    system_plic_logic_bridge_coherencyStall_valueNext = (system_plic_logic_bridge_coherencyStall_value + system_plic_logic_bridge_coherencyStall_willIncrement);
    if(system_plic_logic_bridge_coherencyStall_willClear) begin
      system_plic_logic_bridge_coherencyStall_valueNext = 1'b0;
    end
  end

  assign when_PlicMapper_l122 = (system_plic_logic_bridge_coherencyStall_value != 1'b0);
  assign system_cpu_externalInterrupt_plic_target_threshold = _zz_system_cpu_externalInterrupt_plic_target_threshold;
  always @(*) begin
    system_plic_logic_bridge_targetMapping_0_targetCompletion_valid = 1'b0;
    case(system_plic_logic_bmb_cmd_payload_fragment_address)
      22'h200004 : begin
        if(system_plic_logic_bus_doWrite) begin
          system_plic_logic_bridge_targetMapping_0_targetCompletion_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign _zz_system_gpioA_gpio_8 = system_gpioA_logic_io_gpio_write;
  assign _zz_when_InOutWrapper_l65_1 = system_gpioA_logic_io_gpio_writeEnable;
  assign system_gpioA_interrupts_0 = system_gpioA_logic_io_interrupt[0];
  assign system_gpioA_interrupts_1 = system_gpioA_logic_io_interrupt[1];
  assign system_gpioA_interrupts_2 = system_gpioA_logic_io_interrupt[2];
  assign system_gpioA_interrupts_3 = system_gpioA_logic_io_interrupt[3];
  assign system_gpioA_interrupts_4 = system_gpioA_logic_io_interrupt[4];
  assign system_gpioA_interrupts_5 = system_gpioA_logic_io_interrupt[5];
  assign system_gpioA_interrupts_6 = system_gpioA_logic_io_interrupt[6];
  assign system_gpioA_interrupts_7 = system_gpioA_logic_io_interrupt[7];
  assign system_uartA_uart_txd = system_uartA_logic_io_uart_txd;
  assign system_plic_logic_bmb_cmd_valid = system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid;
  assign system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready = system_plic_logic_bmb_cmd_ready;
  assign system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid = system_plic_logic_bmb_rsp_valid;
  assign system_plic_logic_bmb_rsp_ready = system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready;
  assign system_plic_logic_bmb_cmd_payload_last = system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last;
  assign system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last = system_plic_logic_bmb_rsp_payload_last;
  assign system_plic_logic_bmb_cmd_payload_fragment_opcode = system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode;
  assign system_plic_logic_bmb_cmd_payload_fragment_address = system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address;
  assign system_plic_logic_bmb_cmd_payload_fragment_length = system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length;
  assign system_plic_logic_bmb_cmd_payload_fragment_data = system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data;
  assign system_plic_logic_bmb_cmd_payload_fragment_context = system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context;
  assign system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode = system_plic_logic_bmb_rsp_payload_fragment_opcode;
  assign system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data = system_plic_logic_bmb_rsp_payload_fragment_data;
  assign system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context = system_plic_logic_bmb_rsp_payload_fragment_context;
  assign system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready = system_clint_logic_io_bus_cmd_ready;
  assign system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid = system_clint_logic_io_bus_rsp_valid;
  assign system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last = system_clint_logic_io_bus_rsp_payload_last;
  assign system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode = system_clint_logic_io_bus_rsp_payload_fragment_opcode;
  assign system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data = system_clint_logic_io_bus_rsp_payload_fragment_data;
  assign system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context = system_clint_logic_io_bus_rsp_payload_fragment_context;
  assign system_cpu_logic_cpu_timerInterrupt = system_clint_logic_io_timerInterrupt[0];
  assign system_cpu_logic_cpu_softwareInterrupt = system_clint_logic_io_softwareInterrupt[0];
  assign system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready = system_sdramA_logic_io_ctrl_cmd_ready;
  assign system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid = system_sdramA_logic_io_ctrl_rsp_valid;
  assign system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last = system_sdramA_logic_io_ctrl_rsp_payload_last;
  assign system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode = system_sdramA_logic_io_ctrl_rsp_payload_fragment_opcode;
  assign system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data = system_sdramA_logic_io_ctrl_rsp_payload_fragment_data;
  assign system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context = system_sdramA_logic_io_ctrl_rsp_payload_fragment_context;
  assign system_sdramA0_bmb_arbiter_io_output_cmd_ready = (! system_sdramA0_bmb_arbiter_io_output_cmd_rValid);
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_valid = (system_sdramA0_bmb_arbiter_io_output_cmd_valid || system_sdramA0_bmb_arbiter_io_output_cmd_rValid);
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_last = (system_sdramA0_bmb_arbiter_io_output_cmd_rValid ? system_sdramA0_bmb_arbiter_io_output_cmd_rData_last : system_sdramA0_bmb_arbiter_io_output_cmd_payload_last);
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_source = (system_sdramA0_bmb_arbiter_io_output_cmd_rValid ? system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_source : system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_source);
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_opcode = (system_sdramA0_bmb_arbiter_io_output_cmd_rValid ? system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_opcode : system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_opcode);
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_address = (system_sdramA0_bmb_arbiter_io_output_cmd_rValid ? system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_address : system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_address);
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_length = (system_sdramA0_bmb_arbiter_io_output_cmd_rValid ? system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_length : system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_length);
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_data = (system_sdramA0_bmb_arbiter_io_output_cmd_rValid ? system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_data : system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_data);
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_mask = (system_sdramA0_bmb_arbiter_io_output_cmd_rValid ? system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_mask : system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_mask);
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_context = (system_sdramA0_bmb_arbiter_io_output_cmd_rValid ? system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_context : system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_context);
  always @(*) begin
    system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_ready = system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_ready;
    if(when_Stream_l342_2) begin
      system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_ready = 1'b1;
    end
  end

  assign when_Stream_l342_2 = (! system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_valid);
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_valid = system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rValid;
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_last = system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_last;
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_source = system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_source;
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_opcode = system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_opcode;
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_address = system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_address;
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_length = system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_length;
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_data = system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_data;
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_mask = system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_mask;
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_context = system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_context;
  assign system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_m2sPipe_ready = system_sdramA_logic_io_bmb_0_cmd_ready;
  always @(*) begin
    _zz_io_bmb_0_rsp_ready = system_sdramA0_bmb_arbiter_io_output_rsp_ready;
    if(when_Stream_l342_3) begin
      _zz_io_bmb_0_rsp_ready = 1'b1;
    end
  end

  assign when_Stream_l342_3 = (! _zz_when_Stream_l342);
  assign _zz_when_Stream_l342 = _zz_when_Stream_l342_1;
  assign system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready = system_gpioA_logic_io_bus_cmd_ready;
  assign system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid = system_gpioA_logic_io_bus_rsp_valid;
  assign system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last = system_gpioA_logic_io_bus_rsp_payload_last;
  assign system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode = system_gpioA_logic_io_bus_rsp_payload_fragment_opcode;
  assign system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data = system_gpioA_logic_io_bus_rsp_payload_fragment_data;
  assign system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context = system_gpioA_logic_io_bus_rsp_payload_fragment_context;
  assign system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready = system_uartA_logic_io_bus_cmd_ready;
  assign system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid = system_uartA_logic_io_bus_rsp_valid;
  assign system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last = system_uartA_logic_io_bus_rsp_payload_last;
  assign system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode = system_uartA_logic_io_bus_rsp_payload_fragment_opcode;
  assign system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data = system_uartA_logic_io_bus_rsp_payload_fragment_data;
  assign system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context = system_uartA_logic_io_bus_rsp_payload_fragment_context;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_valid = system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_valid;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_ready = system_bmbPeripheral_bmb_decoder_io_outputs_0_rsp_ready;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_last = system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_last;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode = system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address = system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_address;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length = system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_length;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data = system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_data;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context = system_bmbPeripheral_bmb_decoder_io_outputs_0_cmd_payload_fragment_context;
  assign system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid = system_bmbPeripheral_bmb_withoutMask_cmd_valid;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_ready = system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_valid = system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid;
  assign system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready = system_bmbPeripheral_bmb_withoutMask_rsp_ready;
  assign system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last = system_bmbPeripheral_bmb_withoutMask_cmd_payload_last;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_last = system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last;
  assign system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode;
  assign system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address[21:0];
  assign system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length;
  assign system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data;
  assign system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode = system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data = system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context = system_plic_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_valid_1 = system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_valid;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_ready_1 = system_bmbPeripheral_bmb_decoder_io_outputs_1_rsp_ready;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_last_1 = system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_last;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode_1 = system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_opcode;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address_1 = system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_address;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length_1 = system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_length;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data_1 = system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_data;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context_1 = system_bmbPeripheral_bmb_decoder_io_outputs_1_cmd_payload_fragment_context;
  assign system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid = system_bmbPeripheral_bmb_withoutMask_cmd_valid_1;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_ready_1 = system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_valid_1 = system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid;
  assign system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready = system_bmbPeripheral_bmb_withoutMask_rsp_ready_1;
  assign system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last = system_bmbPeripheral_bmb_withoutMask_cmd_payload_last_1;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_last_1 = system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last;
  assign system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode_1;
  assign system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address_1[15:0];
  assign system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length_1;
  assign system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data_1;
  assign system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context_1;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode_1 = system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data_1 = system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context_1 = system_clint_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_valid_2 = system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_valid;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_ready_2 = system_bmbPeripheral_bmb_decoder_io_outputs_2_rsp_ready;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_last_2 = system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_last;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode_2 = system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_opcode;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address_2 = system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_address;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length_2 = system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_length;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data_2 = system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_data;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context_2 = system_bmbPeripheral_bmb_decoder_io_outputs_2_cmd_payload_fragment_context;
  assign system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid = system_bmbPeripheral_bmb_withoutMask_cmd_valid_2;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_ready_2 = system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_valid_2 = system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid;
  assign system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready = system_bmbPeripheral_bmb_withoutMask_rsp_ready_2;
  assign system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last = system_bmbPeripheral_bmb_withoutMask_cmd_payload_last_2;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_last_2 = system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last;
  assign system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode_2;
  assign system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address_2[11:0];
  assign system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length_2;
  assign system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data_2;
  assign system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context_2;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode_2 = system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data_2 = system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context_2 = system_sdramA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context;
  assign system_sdramA0_bmb_arbiter_io_inputs_0_cmd_payload_fragment_address = system_cpu_dBus_decoder_io_outputs_0_cmd_payload_fragment_address[24:0];
  assign system_sdramA0_bmb_arbiter_io_inputs_1_cmd_payload_fragment_address = system_cpu_iBus_decoder_io_outputs_0_cmd_payload_fragment_address[24:0];
  assign system_bmbPeripheral_bmb_withoutMask_cmd_valid_3 = system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_valid;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_ready_3 = system_bmbPeripheral_bmb_decoder_io_outputs_3_rsp_ready;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_last_3 = system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_last;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode_3 = system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_opcode;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address_3 = system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_address;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length_3 = system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_length;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data_3 = system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_data;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context_3 = system_bmbPeripheral_bmb_decoder_io_outputs_3_cmd_payload_fragment_context;
  assign system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid = system_bmbPeripheral_bmb_withoutMask_cmd_valid_3;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_ready_3 = system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_valid_3 = system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid;
  assign system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready = system_bmbPeripheral_bmb_withoutMask_rsp_ready_3;
  assign system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last = system_bmbPeripheral_bmb_withoutMask_cmd_payload_last_3;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_last_3 = system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last;
  assign system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode_3;
  assign system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address_3[7:0];
  assign system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length_3;
  assign system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data_3;
  assign system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context_3;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode_3 = system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data_3 = system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context_3 = system_gpioA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_valid_4 = system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_valid;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_ready_4 = system_bmbPeripheral_bmb_decoder_io_outputs_4_rsp_ready;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_last_4 = system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_last;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode_4 = system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_opcode;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address_4 = system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_address;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length_4 = system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_length;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data_4 = system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_data;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context_4 = system_bmbPeripheral_bmb_decoder_io_outputs_4_cmd_payload_fragment_context;
  assign system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_valid = system_bmbPeripheral_bmb_withoutMask_cmd_valid_4;
  assign system_bmbPeripheral_bmb_withoutMask_cmd_ready_4 = system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_ready;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_valid_4 = system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_valid;
  assign system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_ready = system_bmbPeripheral_bmb_withoutMask_rsp_ready_4;
  assign system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_last = system_bmbPeripheral_bmb_withoutMask_cmd_payload_last_4;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_last_4 = system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_last;
  assign system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_opcode = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_opcode_4;
  assign system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_address = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_address_4[5:0];
  assign system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_length = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_length_4;
  assign system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_data = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_data_4;
  assign system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_cmd_payload_fragment_context = system_bmbPeripheral_bmb_withoutMask_cmd_payload_fragment_context_4;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_opcode_4 = system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_opcode;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_data_4 = system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_data;
  assign system_bmbPeripheral_bmb_withoutMask_rsp_payload_fragment_context_4 = system_uartA_ctrl_slaveModel_arbiterGen_oneToOne_arbiter_rsp_payload_fragment_context;
  assign when_BmbSlaveFactory_l71 = 1'b1;
  assign _zz_io_sdram_DQ_read = system_phyA_sdram_DQ;
  assign when_InOutWrapper_l65 = _zz_when_InOutWrapper_l65[0];
  assign when_InOutWrapper_l65_1 = _zz_when_InOutWrapper_l65[1];
  assign when_InOutWrapper_l65_2 = _zz_when_InOutWrapper_l65[2];
  assign when_InOutWrapper_l65_3 = _zz_when_InOutWrapper_l65[3];
  assign when_InOutWrapper_l65_4 = _zz_when_InOutWrapper_l65[4];
  assign when_InOutWrapper_l65_5 = _zz_when_InOutWrapper_l65[5];
  assign when_InOutWrapper_l65_6 = _zz_when_InOutWrapper_l65[6];
  assign when_InOutWrapper_l65_7 = _zz_when_InOutWrapper_l65[7];
  assign when_InOutWrapper_l65_8 = _zz_when_InOutWrapper_l65[8];
  assign when_InOutWrapper_l65_9 = _zz_when_InOutWrapper_l65[9];
  assign when_InOutWrapper_l65_10 = _zz_when_InOutWrapper_l65[10];
  assign when_InOutWrapper_l65_11 = _zz_when_InOutWrapper_l65[11];
  assign when_InOutWrapper_l65_12 = _zz_when_InOutWrapper_l65[12];
  assign when_InOutWrapper_l65_13 = _zz_when_InOutWrapper_l65[13];
  assign when_InOutWrapper_l65_14 = _zz_when_InOutWrapper_l65[14];
  assign when_InOutWrapper_l65_15 = _zz_when_InOutWrapper_l65[15];
  assign _zz_io_gpio_read = system_gpioA_gpio;
  assign when_InOutWrapper_l65_16 = _zz_when_InOutWrapper_l65_1[0];
  assign when_InOutWrapper_l65_17 = _zz_when_InOutWrapper_l65_1[1];
  assign when_InOutWrapper_l65_18 = _zz_when_InOutWrapper_l65_1[2];
  assign when_InOutWrapper_l65_19 = _zz_when_InOutWrapper_l65_1[3];
  assign when_InOutWrapper_l65_20 = _zz_when_InOutWrapper_l65_1[4];
  assign when_InOutWrapper_l65_21 = _zz_when_InOutWrapper_l65_1[5];
  assign when_InOutWrapper_l65_22 = _zz_when_InOutWrapper_l65_1[6];
  assign when_InOutWrapper_l65_23 = _zz_when_InOutWrapper_l65_1[7];
  always @(posedge clocking_pll_clkout_system) begin
    if(when_ClockDomainGenerator_l77) begin
      debugCdCtrl_logic_holdingLogic_resetCounter <= (debugCdCtrl_logic_holdingLogic_resetCounter + 12'h001);
    end
    if(debugCdCtrl_logic_inputResetTrigger) begin
      debugCdCtrl_logic_holdingLogic_resetCounter <= 12'h0;
    end
    debugCdCtrl_logic_outputReset <= debugCdCtrl_logic_outputResetUnbuffered;
  end

  always @(posedge clocking_pll_clkout_system) begin
    if(when_ClockDomainGenerator_l77_1) begin
      systemCdCtrl_logic_holdingLogic_resetCounter <= (systemCdCtrl_logic_holdingLogic_resetCounter + 6'h01);
    end
    if(systemCdCtrl_logic_inputResetTrigger) begin
      systemCdCtrl_logic_holdingLogic_resetCounter <= 6'h0;
    end
    systemCdCtrl_logic_outputReset <= systemCdCtrl_logic_outputResetUnbuffered;
  end

  always @(posedge clocking_pll_clkout_system) begin
    system_cpu_debugReset <= system_cpu_logic_cpu_debug_resetOut;
  end

  always @(posedge clocking_pll_clkout_system) begin
    if(debugCdCtrl_logic_outputReset) begin
      system_cpu_logic_cpu_debug_bus_cmd_fire_regNext <= 1'b0;
    end else begin
      system_cpu_logic_cpu_debug_bus_cmd_fire_regNext <= system_cpu_logic_cpu_debug_bus_cmd_fire;
    end
  end

  always @(posedge clocking_pll_clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rValid <= 1'b0;
      system_bmbPeripheral_bmb_cmd_rValid <= 1'b0;
      _zz_system_bmbPeripheral_bmb_rsp_valid_1 <= 1'b0;
      _zz_system_plic_logic_bmb_rsp_valid_2 <= 1'b0;
      system_plic_logic_bridge_coherencyStall_value <= 1'b0;
      _zz_system_cpu_externalInterrupt_plic_target_threshold <= 2'b00;
      system_sdramA0_bmb_arbiter_io_output_cmd_rValid <= 1'b0;
      system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rValid <= 1'b0;
      _zz_when_Stream_l342_1 <= 1'b0;
    end else begin
      if(system_cpu_logic_cpu_dBus_Bridge_bus_cmd_ready) begin
        system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rValid <= system_cpu_logic_cpu_dBus_Bridge_bus_cmd_valid;
      end
      if(system_bmbPeripheral_bmb_cmd_valid) begin
        system_bmbPeripheral_bmb_cmd_rValid <= 1'b1;
      end
      if(system_bmbPeripheral_bmb_cmd_halfPipe_fire) begin
        system_bmbPeripheral_bmb_cmd_rValid <= 1'b0;
      end
      if(system_bmbPeripheral_bmb_decoder_io_input_rsp_valid) begin
        _zz_system_bmbPeripheral_bmb_rsp_valid_1 <= 1'b1;
      end
      if((_zz_system_bmbPeripheral_bmb_rsp_valid && system_bmbPeripheral_bmb_rsp_ready)) begin
        _zz_system_bmbPeripheral_bmb_rsp_valid_1 <= 1'b0;
      end
      if(_zz_system_plic_logic_bus_rsp_ready) begin
        _zz_system_plic_logic_bmb_rsp_valid_2 <= (system_plic_logic_bus_rsp_valid && _zz_system_plic_logic_bmb_rsp_valid);
      end
      system_plic_logic_bridge_coherencyStall_value <= system_plic_logic_bridge_coherencyStall_valueNext;
      if(system_sdramA0_bmb_arbiter_io_output_cmd_valid) begin
        system_sdramA0_bmb_arbiter_io_output_cmd_rValid <= 1'b1;
      end
      if(system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_ready) begin
        system_sdramA0_bmb_arbiter_io_output_cmd_rValid <= 1'b0;
      end
      if(system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_ready) begin
        system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rValid <= system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_valid;
      end
      if(_zz_io_bmb_0_rsp_ready) begin
        _zz_when_Stream_l342_1 <= system_sdramA_logic_io_bmb_0_rsp_valid;
      end
      case(system_plic_logic_bmb_cmd_payload_fragment_address)
        22'h200000 : begin
          if(system_plic_logic_bus_doWrite) begin
            _zz_system_cpu_externalInterrupt_plic_target_threshold <= system_plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clocking_pll_clkout_system) begin
    if(system_cpu_logic_cpu_dBus_Bridge_bus_cmd_ready) begin
      system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_last <= system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_last;
      system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_opcode <= system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_opcode;
      system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_address <= system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_address;
      system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_length <= system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_length;
      system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_data <= system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_data;
      system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_mask <= system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_mask;
      system_cpu_logic_cpu_dBus_Bridge_bus_cmd_rData_fragment_context <= system_cpu_logic_cpu_dBus_Bridge_bus_cmd_payload_fragment_context;
    end
    if(system_bmbPeripheral_bmb_cmd_ready) begin
      system_bmbPeripheral_bmb_cmd_rData_last <= system_bmbPeripheral_bmb_cmd_payload_last;
      system_bmbPeripheral_bmb_cmd_rData_fragment_opcode <= system_bmbPeripheral_bmb_cmd_payload_fragment_opcode;
      system_bmbPeripheral_bmb_cmd_rData_fragment_address <= system_bmbPeripheral_bmb_cmd_payload_fragment_address;
      system_bmbPeripheral_bmb_cmd_rData_fragment_length <= system_bmbPeripheral_bmb_cmd_payload_fragment_length;
      system_bmbPeripheral_bmb_cmd_rData_fragment_data <= system_bmbPeripheral_bmb_cmd_payload_fragment_data;
      system_bmbPeripheral_bmb_cmd_rData_fragment_mask <= system_bmbPeripheral_bmb_cmd_payload_fragment_mask;
      system_bmbPeripheral_bmb_cmd_rData_fragment_context <= system_bmbPeripheral_bmb_cmd_payload_fragment_context;
    end
    if(_zz_io_input_rsp_ready) begin
      _zz_system_bmbPeripheral_bmb_rsp_payload_last <= system_bmbPeripheral_bmb_decoder_io_input_rsp_payload_last;
      _zz_system_bmbPeripheral_bmb_rsp_payload_fragment_opcode <= system_bmbPeripheral_bmb_decoder_io_input_rsp_payload_fragment_opcode;
      _zz_system_bmbPeripheral_bmb_rsp_payload_fragment_data <= system_bmbPeripheral_bmb_decoder_io_input_rsp_payload_fragment_data;
      _zz_system_bmbPeripheral_bmb_rsp_payload_fragment_context <= system_bmbPeripheral_bmb_decoder_io_input_rsp_payload_fragment_context;
    end
    if(_zz_system_plic_logic_bus_rsp_ready) begin
      _zz_system_plic_logic_bmb_rsp_payload_last <= system_plic_logic_bus_rsp_payload_last;
      _zz_system_plic_logic_bmb_rsp_payload_fragment_opcode <= system_plic_logic_bus_rsp_payload_fragment_opcode;
      _zz_system_plic_logic_bmb_rsp_payload_fragment_data <= system_plic_logic_bus_rsp_payload_fragment_data;
      _zz_system_plic_logic_bmb_rsp_payload_fragment_context <= system_plic_logic_bus_rsp_payload_fragment_context;
    end
    system_cpu_externalInterrupt_plic_target_bestRequest_priority <= system_cpu_externalInterrupt_plic_target_requests_0_priority;
    system_cpu_externalInterrupt_plic_target_bestRequest_valid <= system_cpu_externalInterrupt_plic_target_requests_0_valid;
    if(system_sdramA0_bmb_arbiter_io_output_cmd_ready) begin
      system_sdramA0_bmb_arbiter_io_output_cmd_rData_last <= system_sdramA0_bmb_arbiter_io_output_cmd_payload_last;
      system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_source <= system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_source;
      system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_opcode <= system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_opcode;
      system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_address <= system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_address;
      system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_length <= system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_length;
      system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_data <= system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_data;
      system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_mask <= system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_mask;
      system_sdramA0_bmb_arbiter_io_output_cmd_rData_fragment_context <= system_sdramA0_bmb_arbiter_io_output_cmd_payload_fragment_context;
    end
    if(system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_ready) begin
      system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_last <= system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_last;
      system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_source <= system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_source;
      system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_opcode <= system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_opcode;
      system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_address <= system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_address;
      system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_length <= system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_length;
      system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_data <= system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_data;
      system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_mask <= system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_mask;
      system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_rData_fragment_context <= system_sdramA0_bmb_arbiter_io_output_cmd_s2mPipe_payload_fragment_context;
    end
    if(_zz_io_bmb_0_rsp_ready) begin
      _zz_io_output_rsp_payload_last <= system_sdramA_logic_io_bmb_0_rsp_payload_last;
      _zz_io_output_rsp_payload_fragment_source <= system_sdramA_logic_io_bmb_0_rsp_payload_fragment_source;
      _zz_io_output_rsp_payload_fragment_opcode <= system_sdramA_logic_io_bmb_0_rsp_payload_fragment_opcode;
      _zz_io_output_rsp_payload_fragment_data <= system_sdramA_logic_io_bmb_0_rsp_payload_fragment_data;
      _zz_io_output_rsp_payload_fragment_context <= system_sdramA_logic_io_bmb_0_rsp_payload_fragment_context;
    end
  end


endmodule

module BmbArbiter_1 (
  input               io_inputs_0_cmd_valid,
  output              io_inputs_0_cmd_ready,
  input               io_inputs_0_cmd_payload_last,
  input      [0:0]    io_inputs_0_cmd_payload_fragment_opcode,
  input      [24:0]   io_inputs_0_cmd_payload_fragment_address,
  input      [4:0]    io_inputs_0_cmd_payload_fragment_length,
  input      [31:0]   io_inputs_0_cmd_payload_fragment_data,
  input      [3:0]    io_inputs_0_cmd_payload_fragment_mask,
  input      [0:0]    io_inputs_0_cmd_payload_fragment_context,
  output              io_inputs_0_rsp_valid,
  input               io_inputs_0_rsp_ready,
  output              io_inputs_0_rsp_payload_last,
  output     [0:0]    io_inputs_0_rsp_payload_fragment_opcode,
  output     [31:0]   io_inputs_0_rsp_payload_fragment_data,
  output     [0:0]    io_inputs_0_rsp_payload_fragment_context,
  input               io_inputs_1_cmd_valid,
  output              io_inputs_1_cmd_ready,
  input               io_inputs_1_cmd_payload_last,
  input      [0:0]    io_inputs_1_cmd_payload_fragment_opcode,
  input      [24:0]   io_inputs_1_cmd_payload_fragment_address,
  input      [4:0]    io_inputs_1_cmd_payload_fragment_length,
  input      [31:0]   io_inputs_1_cmd_payload_fragment_data,
  input      [3:0]    io_inputs_1_cmd_payload_fragment_mask,
  output              io_inputs_1_rsp_valid,
  input               io_inputs_1_rsp_ready,
  output              io_inputs_1_rsp_payload_last,
  output     [0:0]    io_inputs_1_rsp_payload_fragment_opcode,
  output     [31:0]   io_inputs_1_rsp_payload_fragment_data,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_source,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [24:0]   io_output_cmd_payload_fragment_address,
  output     [4:0]    io_output_cmd_payload_fragment_length,
  output     [31:0]   io_output_cmd_payload_fragment_data,
  output     [3:0]    io_output_cmd_payload_fragment_mask,
  output     [0:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_source,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [0:0]    io_output_rsp_payload_fragment_context,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire                memory_arbiter_io_inputs_0_ready;
  wire                memory_arbiter_io_inputs_1_ready;
  wire                memory_arbiter_io_output_valid;
  wire                memory_arbiter_io_output_payload_last;
  wire       [0:0]    memory_arbiter_io_output_payload_fragment_source;
  wire       [0:0]    memory_arbiter_io_output_payload_fragment_opcode;
  wire       [24:0]   memory_arbiter_io_output_payload_fragment_address;
  wire       [4:0]    memory_arbiter_io_output_payload_fragment_length;
  wire       [31:0]   memory_arbiter_io_output_payload_fragment_data;
  wire       [3:0]    memory_arbiter_io_output_payload_fragment_mask;
  wire       [0:0]    memory_arbiter_io_output_payload_fragment_context;
  wire       [0:0]    memory_arbiter_io_chosen;
  wire       [1:0]    memory_arbiter_io_chosenOH;
  wire       [1:0]    _zz_io_output_cmd_payload_fragment_source;
  reg                 _zz_io_output_rsp_ready;
  wire       [0:0]    memory_rspSel;

  assign _zz_io_output_cmd_payload_fragment_source = {memory_arbiter_io_output_payload_fragment_source,memory_arbiter_io_chosen};
  StreamArbiter_1 memory_arbiter (
    .io_inputs_0_valid                       (io_inputs_0_cmd_valid                                    ), //i
    .io_inputs_0_ready                       (memory_arbiter_io_inputs_0_ready                         ), //o
    .io_inputs_0_payload_last                (io_inputs_0_cmd_payload_last                             ), //i
    .io_inputs_0_payload_fragment_source     (1'b0                                                     ), //i
    .io_inputs_0_payload_fragment_opcode     (io_inputs_0_cmd_payload_fragment_opcode                  ), //i
    .io_inputs_0_payload_fragment_address    (io_inputs_0_cmd_payload_fragment_address[24:0]           ), //i
    .io_inputs_0_payload_fragment_length     (io_inputs_0_cmd_payload_fragment_length[4:0]             ), //i
    .io_inputs_0_payload_fragment_data       (io_inputs_0_cmd_payload_fragment_data[31:0]              ), //i
    .io_inputs_0_payload_fragment_mask       (io_inputs_0_cmd_payload_fragment_mask[3:0]               ), //i
    .io_inputs_0_payload_fragment_context    (io_inputs_0_cmd_payload_fragment_context                 ), //i
    .io_inputs_1_valid                       (io_inputs_1_cmd_valid                                    ), //i
    .io_inputs_1_ready                       (memory_arbiter_io_inputs_1_ready                         ), //o
    .io_inputs_1_payload_last                (io_inputs_1_cmd_payload_last                             ), //i
    .io_inputs_1_payload_fragment_source     (1'b0                                                     ), //i
    .io_inputs_1_payload_fragment_opcode     (io_inputs_1_cmd_payload_fragment_opcode                  ), //i
    .io_inputs_1_payload_fragment_address    (io_inputs_1_cmd_payload_fragment_address[24:0]           ), //i
    .io_inputs_1_payload_fragment_length     (io_inputs_1_cmd_payload_fragment_length[4:0]             ), //i
    .io_inputs_1_payload_fragment_data       (io_inputs_1_cmd_payload_fragment_data[31:0]              ), //i
    .io_inputs_1_payload_fragment_mask       (io_inputs_1_cmd_payload_fragment_mask[3:0]               ), //i
    .io_inputs_1_payload_fragment_context    (1'b0                                                     ), //i
    .io_output_valid                         (memory_arbiter_io_output_valid                           ), //o
    .io_output_ready                         (io_output_cmd_ready                                      ), //i
    .io_output_payload_last                  (memory_arbiter_io_output_payload_last                    ), //o
    .io_output_payload_fragment_source       (memory_arbiter_io_output_payload_fragment_source         ), //o
    .io_output_payload_fragment_opcode       (memory_arbiter_io_output_payload_fragment_opcode         ), //o
    .io_output_payload_fragment_address      (memory_arbiter_io_output_payload_fragment_address[24:0]  ), //o
    .io_output_payload_fragment_length       (memory_arbiter_io_output_payload_fragment_length[4:0]    ), //o
    .io_output_payload_fragment_data         (memory_arbiter_io_output_payload_fragment_data[31:0]     ), //o
    .io_output_payload_fragment_mask         (memory_arbiter_io_output_payload_fragment_mask[3:0]      ), //o
    .io_output_payload_fragment_context      (memory_arbiter_io_output_payload_fragment_context        ), //o
    .io_chosen                               (memory_arbiter_io_chosen                                 ), //o
    .io_chosenOH                             (memory_arbiter_io_chosenOH[1:0]                          ), //o
    .clkout_system                           (clkout_system                                            ), //i
    .systemCdCtrl_logic_outputReset          (systemCdCtrl_logic_outputReset                           )  //i
  );
  always @(*) begin
    case(memory_rspSel)
      1'b0 : begin
        _zz_io_output_rsp_ready = io_inputs_0_rsp_ready;
      end
      default : begin
        _zz_io_output_rsp_ready = io_inputs_1_rsp_ready;
      end
    endcase
  end

  assign io_inputs_0_cmd_ready = memory_arbiter_io_inputs_0_ready;
  assign io_inputs_1_cmd_ready = memory_arbiter_io_inputs_1_ready;
  assign io_output_cmd_valid = memory_arbiter_io_output_valid;
  assign io_output_cmd_payload_last = memory_arbiter_io_output_payload_last;
  assign io_output_cmd_payload_fragment_opcode = memory_arbiter_io_output_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = memory_arbiter_io_output_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = memory_arbiter_io_output_payload_fragment_length;
  assign io_output_cmd_payload_fragment_data = memory_arbiter_io_output_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = memory_arbiter_io_output_payload_fragment_mask;
  assign io_output_cmd_payload_fragment_context = memory_arbiter_io_output_payload_fragment_context;
  assign io_output_cmd_payload_fragment_source = _zz_io_output_cmd_payload_fragment_source[0:0];
  assign memory_rspSel = io_output_rsp_payload_fragment_source[0 : 0];
  assign io_inputs_0_rsp_valid = (io_output_rsp_valid && (memory_rspSel == 1'b0));
  assign io_inputs_0_rsp_payload_last = io_output_rsp_payload_last;
  assign io_inputs_0_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_inputs_0_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_inputs_0_rsp_payload_fragment_context = io_output_rsp_payload_fragment_context;
  assign io_inputs_1_rsp_valid = (io_output_rsp_valid && (memory_rspSel == 1'b1));
  assign io_inputs_1_rsp_payload_last = io_output_rsp_payload_last;
  assign io_inputs_1_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_inputs_1_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_output_rsp_ready = _zz_io_output_rsp_ready;

endmodule

module BmbUartCtrl (
  input               io_bus_cmd_valid,
  output              io_bus_cmd_ready,
  input               io_bus_cmd_payload_last,
  input      [0:0]    io_bus_cmd_payload_fragment_opcode,
  input      [5:0]    io_bus_cmd_payload_fragment_address,
  input      [1:0]    io_bus_cmd_payload_fragment_length,
  input      [31:0]   io_bus_cmd_payload_fragment_data,
  input      [2:0]    io_bus_cmd_payload_fragment_context,
  output              io_bus_rsp_valid,
  input               io_bus_rsp_ready,
  output              io_bus_rsp_payload_last,
  output     [0:0]    io_bus_rsp_payload_fragment_opcode,
  output     [31:0]   io_bus_rsp_payload_fragment_data,
  output     [2:0]    io_bus_rsp_payload_fragment_context,
  output              io_uart_txd,
  input               io_uart_rxd,
  output              io_interrupt,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);
  localparam UartStopType_ONE = 1'd0;
  localparam UartStopType_TWO = 1'd1;
  localparam UartParityType_NONE = 2'd0;
  localparam UartParityType_EVEN = 2'd1;
  localparam UartParityType_ODD = 2'd2;

  reg                 uartCtrl_1_io_read_queueWithOccupancy_io_pop_ready;
  wire                uartCtrl_1_io_write_ready;
  wire                uartCtrl_1_io_read_valid;
  wire       [7:0]    uartCtrl_1_io_read_payload;
  wire                uartCtrl_1_io_uart_txd;
  wire                uartCtrl_1_io_readError;
  wire                uartCtrl_1_io_readBreak;
  wire                bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready;
  wire                bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid;
  wire       [7:0]    bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload;
  wire       [4:0]    bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy;
  wire       [4:0]    bridge_write_streamUnbuffered_queueWithOccupancy_io_availability;
  wire                uartCtrl_1_io_read_queueWithOccupancy_io_push_ready;
  wire                uartCtrl_1_io_read_queueWithOccupancy_io_pop_valid;
  wire       [7:0]    uartCtrl_1_io_read_queueWithOccupancy_io_pop_payload;
  wire       [4:0]    uartCtrl_1_io_read_queueWithOccupancy_io_occupancy;
  wire       [4:0]    uartCtrl_1_io_read_queueWithOccupancy_io_availability;
  wire       [0:0]    _zz_bridge_misc_readError;
  wire       [0:0]    _zz_bridge_misc_readOverflowError;
  wire       [0:0]    _zz_bridge_misc_breakDetected;
  wire       [0:0]    _zz_bridge_misc_doBreak;
  wire       [0:0]    _zz_bridge_misc_doBreak_1;
  wire       [4:0]    _zz_busCtrl_rsp_payload_fragment_data;
  wire                busCtrl_readHaltTrigger;
  wire                busCtrl_writeHaltTrigger;
  wire                busCtrl_rsp_valid;
  wire                busCtrl_rsp_ready;
  wire                busCtrl_rsp_payload_last;
  wire       [0:0]    busCtrl_rsp_payload_fragment_opcode;
  reg        [31:0]   busCtrl_rsp_payload_fragment_data;
  wire       [2:0]    busCtrl_rsp_payload_fragment_context;
  wire                _zz_io_bus_rsp_valid;
  reg                 _zz_busCtrl_rsp_ready;
  wire                _zz_io_bus_rsp_valid_1;
  reg                 _zz_io_bus_rsp_valid_2;
  reg                 _zz_io_bus_rsp_payload_last;
  reg        [0:0]    _zz_io_bus_rsp_payload_fragment_opcode;
  reg        [31:0]   _zz_io_bus_rsp_payload_fragment_data;
  reg        [2:0]    _zz_io_bus_rsp_payload_fragment_context;
  wire                when_Stream_l342;
  wire                busCtrl_askWrite;
  wire                busCtrl_askRead;
  wire                io_bus_cmd_fire;
  wire                busCtrl_doWrite;
  wire                io_bus_cmd_fire_1;
  wire                busCtrl_doRead;
  wire       [2:0]    bridge_uartConfigReg_frame_dataLength;
  wire       [0:0]    bridge_uartConfigReg_frame_stop;
  wire       [1:0]    bridge_uartConfigReg_frame_parity;
  reg        [11:0]   bridge_uartConfigReg_clockDivider;
  reg                 _zz_bridge_write_streamUnbuffered_valid;
  wire                bridge_write_streamUnbuffered_valid;
  wire                bridge_write_streamUnbuffered_ready;
  wire       [7:0]    bridge_write_streamUnbuffered_payload;
  reg                 bridge_read_streamBreaked_valid;
  reg                 bridge_read_streamBreaked_ready;
  wire       [7:0]    bridge_read_streamBreaked_payload;
  reg                 bridge_interruptCtrl_writeIntEnable;
  reg                 bridge_interruptCtrl_readIntEnable;
  wire                bridge_interruptCtrl_readInt;
  wire                bridge_interruptCtrl_writeInt;
  wire                bridge_interruptCtrl_interrupt;
  reg                 bridge_misc_readError;
  reg                 when_BusSlaveFactory_l335;
  wire                when_BusSlaveFactory_l337;
  reg                 bridge_misc_readOverflowError;
  reg                 when_BusSlaveFactory_l335_1;
  wire                when_BusSlaveFactory_l337_1;
  wire                uartCtrl_1_io_read_isStall;
  reg                 bridge_misc_breakDetected;
  reg                 uartCtrl_1_io_readBreak_regNext;
  wire                when_UartCtrl_l155;
  reg                 when_BusSlaveFactory_l335_2;
  wire                when_BusSlaveFactory_l337_2;
  reg                 bridge_misc_doBreak;
  reg                 when_BusSlaveFactory_l366;
  wire                when_BusSlaveFactory_l368;
  reg                 when_BusSlaveFactory_l335_3;
  wire                when_BusSlaveFactory_l337_3;
  `ifndef SYNTHESIS
  reg [23:0] bridge_uartConfigReg_frame_stop_string;
  reg [31:0] bridge_uartConfigReg_frame_parity_string;
  `endif

  function [11:0] zz_bridge_uartConfigReg_clockDivider(input dummy);
    begin
      zz_bridge_uartConfigReg_clockDivider = 12'h0;
      zz_bridge_uartConfigReg_clockDivider = 12'h055;
    end
  endfunction
  wire [11:0] _zz_1;

  assign _zz_bridge_misc_readError = 1'b0;
  assign _zz_bridge_misc_readOverflowError = 1'b0;
  assign _zz_bridge_misc_breakDetected = 1'b0;
  assign _zz_bridge_misc_doBreak = 1'b1;
  assign _zz_bridge_misc_doBreak_1 = 1'b0;
  assign _zz_busCtrl_rsp_payload_fragment_data = (5'h10 - bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy);
  UartCtrl uartCtrl_1 (
    .io_config_frame_dataLength        (bridge_uartConfigReg_frame_dataLength[2:0]                            ), //i
    .io_config_frame_stop              (bridge_uartConfigReg_frame_stop                                       ), //i
    .io_config_frame_parity            (bridge_uartConfigReg_frame_parity[1:0]                                ), //i
    .io_config_clockDivider            (bridge_uartConfigReg_clockDivider[11:0]                               ), //i
    .io_write_valid                    (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid         ), //i
    .io_write_ready                    (uartCtrl_1_io_write_ready                                             ), //o
    .io_write_payload                  (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload[7:0]  ), //i
    .io_read_valid                     (uartCtrl_1_io_read_valid                                              ), //o
    .io_read_ready                     (uartCtrl_1_io_read_queueWithOccupancy_io_push_ready                   ), //i
    .io_read_payload                   (uartCtrl_1_io_read_payload[7:0]                                       ), //o
    .io_uart_txd                       (uartCtrl_1_io_uart_txd                                                ), //o
    .io_uart_rxd                       (io_uart_rxd                                                           ), //i
    .io_readError                      (uartCtrl_1_io_readError                                               ), //o
    .io_writeBreak                     (bridge_misc_doBreak                                                   ), //i
    .io_readBreak                      (uartCtrl_1_io_readBreak                                               ), //o
    .clkout_system                     (clkout_system                                                         ), //i
    .systemCdCtrl_logic_outputReset    (systemCdCtrl_logic_outputReset                                        )  //i
  );
  StreamFifo bridge_write_streamUnbuffered_queueWithOccupancy (
    .io_push_valid                     (bridge_write_streamUnbuffered_valid                                    ), //i
    .io_push_ready                     (bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready         ), //o
    .io_push_payload                   (bridge_write_streamUnbuffered_payload[7:0]                             ), //i
    .io_pop_valid                      (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid          ), //o
    .io_pop_ready                      (uartCtrl_1_io_write_ready                                              ), //i
    .io_pop_payload                    (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload[7:0]   ), //o
    .io_flush                          (1'b0                                                                   ), //i
    .io_occupancy                      (bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy[4:0]     ), //o
    .io_availability                   (bridge_write_streamUnbuffered_queueWithOccupancy_io_availability[4:0]  ), //o
    .clkout_system                     (clkout_system                                                          ), //i
    .systemCdCtrl_logic_outputReset    (systemCdCtrl_logic_outputReset                                         )  //i
  );
  StreamFifo uartCtrl_1_io_read_queueWithOccupancy (
    .io_push_valid                     (uartCtrl_1_io_read_valid                                    ), //i
    .io_push_ready                     (uartCtrl_1_io_read_queueWithOccupancy_io_push_ready         ), //o
    .io_push_payload                   (uartCtrl_1_io_read_payload[7:0]                             ), //i
    .io_pop_valid                      (uartCtrl_1_io_read_queueWithOccupancy_io_pop_valid          ), //o
    .io_pop_ready                      (uartCtrl_1_io_read_queueWithOccupancy_io_pop_ready          ), //i
    .io_pop_payload                    (uartCtrl_1_io_read_queueWithOccupancy_io_pop_payload[7:0]   ), //o
    .io_flush                          (1'b0                                                        ), //i
    .io_occupancy                      (uartCtrl_1_io_read_queueWithOccupancy_io_occupancy[4:0]     ), //o
    .io_availability                   (uartCtrl_1_io_read_queueWithOccupancy_io_availability[4:0]  ), //o
    .clkout_system                     (clkout_system                                               ), //i
    .systemCdCtrl_logic_outputReset    (systemCdCtrl_logic_outputReset                              )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(bridge_uartConfigReg_frame_stop)
      UartStopType_ONE : bridge_uartConfigReg_frame_stop_string = "ONE";
      UartStopType_TWO : bridge_uartConfigReg_frame_stop_string = "TWO";
      default : bridge_uartConfigReg_frame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(bridge_uartConfigReg_frame_parity)
      UartParityType_NONE : bridge_uartConfigReg_frame_parity_string = "NONE";
      UartParityType_EVEN : bridge_uartConfigReg_frame_parity_string = "EVEN";
      UartParityType_ODD : bridge_uartConfigReg_frame_parity_string = "ODD ";
      default : bridge_uartConfigReg_frame_parity_string = "????";
    endcase
  end
  `endif

  assign io_uart_txd = uartCtrl_1_io_uart_txd;
  assign busCtrl_readHaltTrigger = 1'b0;
  assign busCtrl_writeHaltTrigger = 1'b0;
  assign _zz_io_bus_rsp_valid = (! (busCtrl_readHaltTrigger || busCtrl_writeHaltTrigger));
  assign busCtrl_rsp_ready = (_zz_busCtrl_rsp_ready && _zz_io_bus_rsp_valid);
  always @(*) begin
    _zz_busCtrl_rsp_ready = io_bus_rsp_ready;
    if(when_Stream_l342) begin
      _zz_busCtrl_rsp_ready = 1'b1;
    end
  end

  assign when_Stream_l342 = (! _zz_io_bus_rsp_valid_1);
  assign _zz_io_bus_rsp_valid_1 = _zz_io_bus_rsp_valid_2;
  assign io_bus_rsp_valid = _zz_io_bus_rsp_valid_1;
  assign io_bus_rsp_payload_last = _zz_io_bus_rsp_payload_last;
  assign io_bus_rsp_payload_fragment_opcode = _zz_io_bus_rsp_payload_fragment_opcode;
  assign io_bus_rsp_payload_fragment_data = _zz_io_bus_rsp_payload_fragment_data;
  assign io_bus_rsp_payload_fragment_context = _zz_io_bus_rsp_payload_fragment_context;
  assign busCtrl_askWrite = (io_bus_cmd_valid && (io_bus_cmd_payload_fragment_opcode == 1'b1));
  assign busCtrl_askRead = (io_bus_cmd_valid && (io_bus_cmd_payload_fragment_opcode == 1'b0));
  assign io_bus_cmd_fire = (io_bus_cmd_valid && io_bus_cmd_ready);
  assign busCtrl_doWrite = (io_bus_cmd_fire && (io_bus_cmd_payload_fragment_opcode == 1'b1));
  assign io_bus_cmd_fire_1 = (io_bus_cmd_valid && io_bus_cmd_ready);
  assign busCtrl_doRead = (io_bus_cmd_fire_1 && (io_bus_cmd_payload_fragment_opcode == 1'b0));
  assign busCtrl_rsp_valid = io_bus_cmd_valid;
  assign io_bus_cmd_ready = busCtrl_rsp_ready;
  assign busCtrl_rsp_payload_last = 1'b1;
  assign busCtrl_rsp_payload_fragment_opcode = 1'b0;
  always @(*) begin
    busCtrl_rsp_payload_fragment_data = 32'h0;
    case(io_bus_cmd_payload_fragment_address)
      6'h0 : begin
        busCtrl_rsp_payload_fragment_data[16 : 16] = (bridge_read_streamBreaked_valid ^ 1'b0);
        busCtrl_rsp_payload_fragment_data[7 : 0] = bridge_read_streamBreaked_payload;
      end
      6'h04 : begin
        busCtrl_rsp_payload_fragment_data[20 : 16] = _zz_busCtrl_rsp_payload_fragment_data;
        busCtrl_rsp_payload_fragment_data[15 : 15] = bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid;
        busCtrl_rsp_payload_fragment_data[28 : 24] = uartCtrl_1_io_read_queueWithOccupancy_io_occupancy;
        busCtrl_rsp_payload_fragment_data[0 : 0] = bridge_interruptCtrl_writeIntEnable;
        busCtrl_rsp_payload_fragment_data[1 : 1] = bridge_interruptCtrl_readIntEnable;
        busCtrl_rsp_payload_fragment_data[8 : 8] = bridge_interruptCtrl_writeInt;
        busCtrl_rsp_payload_fragment_data[9 : 9] = bridge_interruptCtrl_readInt;
      end
      6'h10 : begin
        busCtrl_rsp_payload_fragment_data[0 : 0] = bridge_misc_readError;
        busCtrl_rsp_payload_fragment_data[1 : 1] = bridge_misc_readOverflowError;
        busCtrl_rsp_payload_fragment_data[8 : 8] = uartCtrl_1_io_readBreak;
        busCtrl_rsp_payload_fragment_data[9 : 9] = bridge_misc_breakDetected;
      end
      default : begin
      end
    endcase
  end

  assign busCtrl_rsp_payload_fragment_context = io_bus_cmd_payload_fragment_context;
  assign _zz_1 = zz_bridge_uartConfigReg_clockDivider(1'b0);
  always @(*) bridge_uartConfigReg_clockDivider = _zz_1;
  assign bridge_uartConfigReg_frame_dataLength = 3'b111;
  assign bridge_uartConfigReg_frame_parity = UartParityType_NONE;
  assign bridge_uartConfigReg_frame_stop = UartStopType_ONE;
  always @(*) begin
    _zz_bridge_write_streamUnbuffered_valid = 1'b0;
    case(io_bus_cmd_payload_fragment_address)
      6'h0 : begin
        if(busCtrl_doWrite) begin
          _zz_bridge_write_streamUnbuffered_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign bridge_write_streamUnbuffered_valid = _zz_bridge_write_streamUnbuffered_valid;
  assign bridge_write_streamUnbuffered_payload = io_bus_cmd_payload_fragment_data[7 : 0];
  assign bridge_write_streamUnbuffered_ready = bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready;
  always @(*) begin
    bridge_read_streamBreaked_valid = uartCtrl_1_io_read_queueWithOccupancy_io_pop_valid;
    if(uartCtrl_1_io_readBreak) begin
      bridge_read_streamBreaked_valid = 1'b0;
    end
  end

  always @(*) begin
    uartCtrl_1_io_read_queueWithOccupancy_io_pop_ready = bridge_read_streamBreaked_ready;
    if(uartCtrl_1_io_readBreak) begin
      uartCtrl_1_io_read_queueWithOccupancy_io_pop_ready = 1'b1;
    end
  end

  assign bridge_read_streamBreaked_payload = uartCtrl_1_io_read_queueWithOccupancy_io_pop_payload;
  always @(*) begin
    bridge_read_streamBreaked_ready = 1'b0;
    case(io_bus_cmd_payload_fragment_address)
      6'h0 : begin
        if(busCtrl_doRead) begin
          bridge_read_streamBreaked_ready = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign bridge_interruptCtrl_readInt = (bridge_interruptCtrl_readIntEnable && bridge_read_streamBreaked_valid);
  assign bridge_interruptCtrl_writeInt = (bridge_interruptCtrl_writeIntEnable && (! bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid));
  assign bridge_interruptCtrl_interrupt = (bridge_interruptCtrl_readInt || bridge_interruptCtrl_writeInt);
  always @(*) begin
    when_BusSlaveFactory_l335 = 1'b0;
    case(io_bus_cmd_payload_fragment_address)
      6'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l335 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l337 = io_bus_cmd_payload_fragment_data[0];
  always @(*) begin
    when_BusSlaveFactory_l335_1 = 1'b0;
    case(io_bus_cmd_payload_fragment_address)
      6'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l335_1 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l337_1 = io_bus_cmd_payload_fragment_data[1];
  assign uartCtrl_1_io_read_isStall = (uartCtrl_1_io_read_valid && (! uartCtrl_1_io_read_queueWithOccupancy_io_push_ready));
  assign when_UartCtrl_l155 = (uartCtrl_1_io_readBreak && (! uartCtrl_1_io_readBreak_regNext));
  always @(*) begin
    when_BusSlaveFactory_l335_2 = 1'b0;
    case(io_bus_cmd_payload_fragment_address)
      6'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l335_2 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l337_2 = io_bus_cmd_payload_fragment_data[9];
  always @(*) begin
    when_BusSlaveFactory_l366 = 1'b0;
    case(io_bus_cmd_payload_fragment_address)
      6'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l366 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l368 = io_bus_cmd_payload_fragment_data[10];
  always @(*) begin
    when_BusSlaveFactory_l335_3 = 1'b0;
    case(io_bus_cmd_payload_fragment_address)
      6'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l335_3 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l337_3 = io_bus_cmd_payload_fragment_data[11];
  assign io_interrupt = bridge_interruptCtrl_interrupt;
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      _zz_io_bus_rsp_valid_2 <= 1'b0;
      bridge_interruptCtrl_writeIntEnable <= 1'b0;
      bridge_interruptCtrl_readIntEnable <= 1'b0;
      bridge_misc_readError <= 1'b0;
      bridge_misc_readOverflowError <= 1'b0;
      bridge_misc_breakDetected <= 1'b0;
      bridge_misc_doBreak <= 1'b0;
    end else begin
      if(_zz_busCtrl_rsp_ready) begin
        _zz_io_bus_rsp_valid_2 <= (busCtrl_rsp_valid && _zz_io_bus_rsp_valid);
      end
      if(when_BusSlaveFactory_l335) begin
        if(when_BusSlaveFactory_l337) begin
          bridge_misc_readError <= _zz_bridge_misc_readError[0];
        end
      end
      if(uartCtrl_1_io_readError) begin
        bridge_misc_readError <= 1'b1;
      end
      if(when_BusSlaveFactory_l335_1) begin
        if(when_BusSlaveFactory_l337_1) begin
          bridge_misc_readOverflowError <= _zz_bridge_misc_readOverflowError[0];
        end
      end
      if(uartCtrl_1_io_read_isStall) begin
        bridge_misc_readOverflowError <= 1'b1;
      end
      if(when_UartCtrl_l155) begin
        bridge_misc_breakDetected <= 1'b1;
      end
      if(when_BusSlaveFactory_l335_2) begin
        if(when_BusSlaveFactory_l337_2) begin
          bridge_misc_breakDetected <= _zz_bridge_misc_breakDetected[0];
        end
      end
      if(when_BusSlaveFactory_l366) begin
        if(when_BusSlaveFactory_l368) begin
          bridge_misc_doBreak <= _zz_bridge_misc_doBreak[0];
        end
      end
      if(when_BusSlaveFactory_l335_3) begin
        if(when_BusSlaveFactory_l337_3) begin
          bridge_misc_doBreak <= _zz_bridge_misc_doBreak_1[0];
        end
      end
      case(io_bus_cmd_payload_fragment_address)
        6'h04 : begin
          if(busCtrl_doWrite) begin
            bridge_interruptCtrl_writeIntEnable <= io_bus_cmd_payload_fragment_data[0];
            bridge_interruptCtrl_readIntEnable <= io_bus_cmd_payload_fragment_data[1];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clkout_system) begin
    if(_zz_busCtrl_rsp_ready) begin
      _zz_io_bus_rsp_payload_last <= busCtrl_rsp_payload_last;
      _zz_io_bus_rsp_payload_fragment_opcode <= busCtrl_rsp_payload_fragment_opcode;
      _zz_io_bus_rsp_payload_fragment_data <= busCtrl_rsp_payload_fragment_data;
      _zz_io_bus_rsp_payload_fragment_context <= busCtrl_rsp_payload_fragment_context;
    end
    uartCtrl_1_io_readBreak_regNext <= uartCtrl_1_io_readBreak;
  end


endmodule

module BmbGpio2 (
  input      [7:0]    io_gpio_read,
  output reg [7:0]    io_gpio_write,
  output reg [7:0]    io_gpio_writeEnable,
  input               io_bus_cmd_valid,
  output              io_bus_cmd_ready,
  input               io_bus_cmd_payload_last,
  input      [0:0]    io_bus_cmd_payload_fragment_opcode,
  input      [7:0]    io_bus_cmd_payload_fragment_address,
  input      [1:0]    io_bus_cmd_payload_fragment_length,
  input      [31:0]   io_bus_cmd_payload_fragment_data,
  input      [2:0]    io_bus_cmd_payload_fragment_context,
  output              io_bus_rsp_valid,
  input               io_bus_rsp_ready,
  output              io_bus_rsp_payload_last,
  output     [0:0]    io_bus_rsp_payload_fragment_opcode,
  output     [31:0]   io_bus_rsp_payload_fragment_data,
  output     [2:0]    io_bus_rsp_payload_fragment_context,
  output reg [7:0]    io_interrupt,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire                mapper_readHaltTrigger;
  wire                mapper_writeHaltTrigger;
  wire                mapper_rsp_valid;
  wire                mapper_rsp_ready;
  wire                mapper_rsp_payload_last;
  wire       [0:0]    mapper_rsp_payload_fragment_opcode;
  reg        [31:0]   mapper_rsp_payload_fragment_data;
  wire       [2:0]    mapper_rsp_payload_fragment_context;
  wire                _zz_io_bus_rsp_valid;
  reg                 _zz_mapper_rsp_ready;
  wire                _zz_io_bus_rsp_valid_1;
  reg                 _zz_io_bus_rsp_valid_2;
  reg                 _zz_io_bus_rsp_payload_last;
  reg        [0:0]    _zz_io_bus_rsp_payload_fragment_opcode;
  reg        [31:0]   _zz_io_bus_rsp_payload_fragment_data;
  reg        [2:0]    _zz_io_bus_rsp_payload_fragment_context;
  wire                when_Stream_l342;
  wire                mapper_askWrite;
  wire                mapper_askRead;
  wire                io_bus_cmd_fire;
  wire                mapper_doWrite;
  wire                io_bus_cmd_fire_1;
  wire                mapper_doRead;
  reg        [7:0]    io_gpio_read_delay_1;
  reg        [7:0]    syncronized;
  reg        [7:0]    last;
  reg                 _zz_io_gpio_write;
  reg                 _zz_io_gpio_writeEnable;
  reg                 _zz_io_gpio_write_1;
  reg                 _zz_io_gpio_writeEnable_1;
  reg                 _zz_io_gpio_write_2;
  reg                 _zz_io_gpio_writeEnable_2;
  reg                 _zz_io_gpio_write_3;
  reg                 _zz_io_gpio_writeEnable_3;
  reg                 _zz_io_gpio_write_4;
  reg                 _zz_io_gpio_writeEnable_4;
  reg                 _zz_io_gpio_write_5;
  reg                 _zz_io_gpio_writeEnable_5;
  reg                 _zz_io_gpio_write_6;
  reg                 _zz_io_gpio_writeEnable_6;
  reg                 _zz_io_gpio_write_7;
  reg                 _zz_io_gpio_writeEnable_7;
  reg        [7:0]    interrupt_enable_high;
  reg        [7:0]    interrupt_enable_low;
  reg        [7:0]    interrupt_enable_rise;
  reg        [7:0]    interrupt_enable_fall;
  wire       [7:0]    interrupt_valid;
  function [7:0] zz_io_interrupt(input dummy);
    begin
      zz_io_interrupt[0] = 1'b0;
      zz_io_interrupt[1] = 1'b0;
      zz_io_interrupt[2] = 1'b0;
      zz_io_interrupt[3] = 1'b0;
      zz_io_interrupt[4] = 1'b0;
      zz_io_interrupt[5] = 1'b0;
      zz_io_interrupt[6] = 1'b0;
      zz_io_interrupt[7] = 1'b0;
    end
  endfunction
  wire [7:0] _zz_1;
  function [7:0] zz_interrupt_enable_rise(input dummy);
    begin
      zz_interrupt_enable_rise[0] = 1'b0;
      zz_interrupt_enable_rise[1] = 1'b0;
      zz_interrupt_enable_rise[2] = 1'b0;
      zz_interrupt_enable_rise[3] = 1'b0;
      zz_interrupt_enable_rise[4] = 1'b0;
      zz_interrupt_enable_rise[5] = 1'b0;
      zz_interrupt_enable_rise[6] = 1'b0;
      zz_interrupt_enable_rise[7] = 1'b0;
    end
  endfunction
  wire [7:0] _zz_2;
  function [7:0] zz_interrupt_enable_fall(input dummy);
    begin
      zz_interrupt_enable_fall[0] = 1'b0;
      zz_interrupt_enable_fall[1] = 1'b0;
      zz_interrupt_enable_fall[2] = 1'b0;
      zz_interrupt_enable_fall[3] = 1'b0;
      zz_interrupt_enable_fall[4] = 1'b0;
      zz_interrupt_enable_fall[5] = 1'b0;
      zz_interrupt_enable_fall[6] = 1'b0;
      zz_interrupt_enable_fall[7] = 1'b0;
    end
  endfunction
  wire [7:0] _zz_3;
  function [7:0] zz_interrupt_enable_high(input dummy);
    begin
      zz_interrupt_enable_high[0] = 1'b0;
      zz_interrupt_enable_high[1] = 1'b0;
      zz_interrupt_enable_high[2] = 1'b0;
      zz_interrupt_enable_high[3] = 1'b0;
      zz_interrupt_enable_high[4] = 1'b0;
      zz_interrupt_enable_high[5] = 1'b0;
      zz_interrupt_enable_high[6] = 1'b0;
      zz_interrupt_enable_high[7] = 1'b0;
    end
  endfunction
  wire [7:0] _zz_4;
  function [7:0] zz_interrupt_enable_low(input dummy);
    begin
      zz_interrupt_enable_low[0] = 1'b0;
      zz_interrupt_enable_low[1] = 1'b0;
      zz_interrupt_enable_low[2] = 1'b0;
      zz_interrupt_enable_low[3] = 1'b0;
      zz_interrupt_enable_low[4] = 1'b0;
      zz_interrupt_enable_low[5] = 1'b0;
      zz_interrupt_enable_low[6] = 1'b0;
      zz_interrupt_enable_low[7] = 1'b0;
    end
  endfunction
  wire [7:0] _zz_5;

  assign mapper_readHaltTrigger = 1'b0;
  assign mapper_writeHaltTrigger = 1'b0;
  assign _zz_io_bus_rsp_valid = (! (mapper_readHaltTrigger || mapper_writeHaltTrigger));
  assign mapper_rsp_ready = (_zz_mapper_rsp_ready && _zz_io_bus_rsp_valid);
  always @(*) begin
    _zz_mapper_rsp_ready = io_bus_rsp_ready;
    if(when_Stream_l342) begin
      _zz_mapper_rsp_ready = 1'b1;
    end
  end

  assign when_Stream_l342 = (! _zz_io_bus_rsp_valid_1);
  assign _zz_io_bus_rsp_valid_1 = _zz_io_bus_rsp_valid_2;
  assign io_bus_rsp_valid = _zz_io_bus_rsp_valid_1;
  assign io_bus_rsp_payload_last = _zz_io_bus_rsp_payload_last;
  assign io_bus_rsp_payload_fragment_opcode = _zz_io_bus_rsp_payload_fragment_opcode;
  assign io_bus_rsp_payload_fragment_data = _zz_io_bus_rsp_payload_fragment_data;
  assign io_bus_rsp_payload_fragment_context = _zz_io_bus_rsp_payload_fragment_context;
  assign mapper_askWrite = (io_bus_cmd_valid && (io_bus_cmd_payload_fragment_opcode == 1'b1));
  assign mapper_askRead = (io_bus_cmd_valid && (io_bus_cmd_payload_fragment_opcode == 1'b0));
  assign io_bus_cmd_fire = (io_bus_cmd_valid && io_bus_cmd_ready);
  assign mapper_doWrite = (io_bus_cmd_fire && (io_bus_cmd_payload_fragment_opcode == 1'b1));
  assign io_bus_cmd_fire_1 = (io_bus_cmd_valid && io_bus_cmd_ready);
  assign mapper_doRead = (io_bus_cmd_fire_1 && (io_bus_cmd_payload_fragment_opcode == 1'b0));
  assign mapper_rsp_valid = io_bus_cmd_valid;
  assign io_bus_cmd_ready = mapper_rsp_ready;
  assign mapper_rsp_payload_last = 1'b1;
  assign mapper_rsp_payload_fragment_opcode = 1'b0;
  always @(*) begin
    mapper_rsp_payload_fragment_data = 32'h0;
    case(io_bus_cmd_payload_fragment_address)
      8'h0 : begin
        mapper_rsp_payload_fragment_data[0 : 0] = syncronized[0];
        mapper_rsp_payload_fragment_data[1 : 1] = syncronized[1];
        mapper_rsp_payload_fragment_data[2 : 2] = syncronized[2];
        mapper_rsp_payload_fragment_data[3 : 3] = syncronized[3];
        mapper_rsp_payload_fragment_data[4 : 4] = syncronized[4];
        mapper_rsp_payload_fragment_data[5 : 5] = syncronized[5];
        mapper_rsp_payload_fragment_data[6 : 6] = syncronized[6];
        mapper_rsp_payload_fragment_data[7 : 7] = syncronized[7];
      end
      8'h04 : begin
        mapper_rsp_payload_fragment_data[0 : 0] = _zz_io_gpio_write;
        mapper_rsp_payload_fragment_data[1 : 1] = _zz_io_gpio_write_1;
        mapper_rsp_payload_fragment_data[2 : 2] = _zz_io_gpio_write_2;
        mapper_rsp_payload_fragment_data[3 : 3] = _zz_io_gpio_write_3;
        mapper_rsp_payload_fragment_data[4 : 4] = _zz_io_gpio_write_4;
        mapper_rsp_payload_fragment_data[5 : 5] = _zz_io_gpio_write_5;
        mapper_rsp_payload_fragment_data[6 : 6] = _zz_io_gpio_write_6;
        mapper_rsp_payload_fragment_data[7 : 7] = _zz_io_gpio_write_7;
      end
      8'h08 : begin
        mapper_rsp_payload_fragment_data[0 : 0] = _zz_io_gpio_writeEnable;
        mapper_rsp_payload_fragment_data[1 : 1] = _zz_io_gpio_writeEnable_1;
        mapper_rsp_payload_fragment_data[2 : 2] = _zz_io_gpio_writeEnable_2;
        mapper_rsp_payload_fragment_data[3 : 3] = _zz_io_gpio_writeEnable_3;
        mapper_rsp_payload_fragment_data[4 : 4] = _zz_io_gpio_writeEnable_4;
        mapper_rsp_payload_fragment_data[5 : 5] = _zz_io_gpio_writeEnable_5;
        mapper_rsp_payload_fragment_data[6 : 6] = _zz_io_gpio_writeEnable_6;
        mapper_rsp_payload_fragment_data[7 : 7] = _zz_io_gpio_writeEnable_7;
      end
      default : begin
      end
    endcase
  end

  assign mapper_rsp_payload_fragment_context = io_bus_cmd_payload_fragment_context;
  always @(*) begin
    io_gpio_write[0] = _zz_io_gpio_write;
    io_gpio_write[1] = _zz_io_gpio_write_1;
    io_gpio_write[2] = _zz_io_gpio_write_2;
    io_gpio_write[3] = _zz_io_gpio_write_3;
    io_gpio_write[4] = _zz_io_gpio_write_4;
    io_gpio_write[5] = _zz_io_gpio_write_5;
    io_gpio_write[6] = _zz_io_gpio_write_6;
    io_gpio_write[7] = _zz_io_gpio_write_7;
  end

  always @(*) begin
    io_gpio_writeEnable[0] = _zz_io_gpio_writeEnable;
    io_gpio_writeEnable[1] = _zz_io_gpio_writeEnable_1;
    io_gpio_writeEnable[2] = _zz_io_gpio_writeEnable_2;
    io_gpio_writeEnable[3] = _zz_io_gpio_writeEnable_3;
    io_gpio_writeEnable[4] = _zz_io_gpio_writeEnable_4;
    io_gpio_writeEnable[5] = _zz_io_gpio_writeEnable_5;
    io_gpio_writeEnable[6] = _zz_io_gpio_writeEnable_6;
    io_gpio_writeEnable[7] = _zz_io_gpio_writeEnable_7;
  end

  assign interrupt_valid = ((((interrupt_enable_high & syncronized) | (interrupt_enable_low & (~ syncronized))) | (interrupt_enable_rise & (syncronized & (~ last)))) | (interrupt_enable_fall & ((~ syncronized) & last)));
  assign _zz_1 = zz_io_interrupt(1'b0);
  always @(*) io_interrupt = _zz_1;
  assign _zz_2 = zz_interrupt_enable_rise(1'b0);
  always @(*) interrupt_enable_rise = _zz_2;
  assign _zz_3 = zz_interrupt_enable_fall(1'b0);
  always @(*) interrupt_enable_fall = _zz_3;
  assign _zz_4 = zz_interrupt_enable_high(1'b0);
  always @(*) interrupt_enable_high = _zz_4;
  assign _zz_5 = zz_interrupt_enable_low(1'b0);
  always @(*) interrupt_enable_low = _zz_5;
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      _zz_io_bus_rsp_valid_2 <= 1'b0;
      _zz_io_gpio_writeEnable <= 1'b0;
      _zz_io_gpio_writeEnable_1 <= 1'b0;
      _zz_io_gpio_writeEnable_2 <= 1'b0;
      _zz_io_gpio_writeEnable_3 <= 1'b0;
      _zz_io_gpio_writeEnable_4 <= 1'b0;
      _zz_io_gpio_writeEnable_5 <= 1'b0;
      _zz_io_gpio_writeEnable_6 <= 1'b0;
      _zz_io_gpio_writeEnable_7 <= 1'b0;
    end else begin
      if(_zz_mapper_rsp_ready) begin
        _zz_io_bus_rsp_valid_2 <= (mapper_rsp_valid && _zz_io_bus_rsp_valid);
      end
      case(io_bus_cmd_payload_fragment_address)
        8'h08 : begin
          if(mapper_doWrite) begin
            _zz_io_gpio_writeEnable <= io_bus_cmd_payload_fragment_data[0];
            _zz_io_gpio_writeEnable_1 <= io_bus_cmd_payload_fragment_data[1];
            _zz_io_gpio_writeEnable_2 <= io_bus_cmd_payload_fragment_data[2];
            _zz_io_gpio_writeEnable_3 <= io_bus_cmd_payload_fragment_data[3];
            _zz_io_gpio_writeEnable_4 <= io_bus_cmd_payload_fragment_data[4];
            _zz_io_gpio_writeEnable_5 <= io_bus_cmd_payload_fragment_data[5];
            _zz_io_gpio_writeEnable_6 <= io_bus_cmd_payload_fragment_data[6];
            _zz_io_gpio_writeEnable_7 <= io_bus_cmd_payload_fragment_data[7];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clkout_system) begin
    if(_zz_mapper_rsp_ready) begin
      _zz_io_bus_rsp_payload_last <= mapper_rsp_payload_last;
      _zz_io_bus_rsp_payload_fragment_opcode <= mapper_rsp_payload_fragment_opcode;
      _zz_io_bus_rsp_payload_fragment_data <= mapper_rsp_payload_fragment_data;
      _zz_io_bus_rsp_payload_fragment_context <= mapper_rsp_payload_fragment_context;
    end
    io_gpio_read_delay_1 <= io_gpio_read;
    syncronized <= io_gpio_read_delay_1;
    last <= syncronized;
    case(io_bus_cmd_payload_fragment_address)
      8'h04 : begin
        if(mapper_doWrite) begin
          _zz_io_gpio_write <= io_bus_cmd_payload_fragment_data[0];
          _zz_io_gpio_write_1 <= io_bus_cmd_payload_fragment_data[1];
          _zz_io_gpio_write_2 <= io_bus_cmd_payload_fragment_data[2];
          _zz_io_gpio_write_3 <= io_bus_cmd_payload_fragment_data[3];
          _zz_io_gpio_write_4 <= io_bus_cmd_payload_fragment_data[4];
          _zz_io_gpio_write_5 <= io_bus_cmd_payload_fragment_data[5];
          _zz_io_gpio_write_6 <= io_bus_cmd_payload_fragment_data[6];
          _zz_io_gpio_write_7 <= io_bus_cmd_payload_fragment_data[7];
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module CtrlWithoutPhyBmb (
  input               io_bmb_0_cmd_valid,
  output              io_bmb_0_cmd_ready,
  input               io_bmb_0_cmd_payload_last,
  input      [0:0]    io_bmb_0_cmd_payload_fragment_source,
  input      [0:0]    io_bmb_0_cmd_payload_fragment_opcode,
  input      [24:0]   io_bmb_0_cmd_payload_fragment_address,
  input      [4:0]    io_bmb_0_cmd_payload_fragment_length,
  input      [31:0]   io_bmb_0_cmd_payload_fragment_data,
  input      [3:0]    io_bmb_0_cmd_payload_fragment_mask,
  input      [0:0]    io_bmb_0_cmd_payload_fragment_context,
  output              io_bmb_0_rsp_valid,
  input               io_bmb_0_rsp_ready,
  output              io_bmb_0_rsp_payload_last,
  output     [0:0]    io_bmb_0_rsp_payload_fragment_source,
  output     [0:0]    io_bmb_0_rsp_payload_fragment_opcode,
  output     [31:0]   io_bmb_0_rsp_payload_fragment_data,
  output     [0:0]    io_bmb_0_rsp_payload_fragment_context,
  input               io_ctrl_cmd_valid,
  output              io_ctrl_cmd_ready,
  input               io_ctrl_cmd_payload_last,
  input      [0:0]    io_ctrl_cmd_payload_fragment_opcode,
  input      [11:0]   io_ctrl_cmd_payload_fragment_address,
  input      [1:0]    io_ctrl_cmd_payload_fragment_length,
  input      [31:0]   io_ctrl_cmd_payload_fragment_data,
  input      [2:0]    io_ctrl_cmd_payload_fragment_context,
  output              io_ctrl_rsp_valid,
  input               io_ctrl_rsp_ready,
  output              io_ctrl_rsp_payload_last,
  output     [0:0]    io_ctrl_rsp_payload_fragment_opcode,
  output     [31:0]   io_ctrl_rsp_payload_fragment_data,
  output     [2:0]    io_ctrl_rsp_payload_fragment_context,
  output              io_phy_phases_0_CASn,
  output              io_phy_phases_0_CKE,
  output              io_phy_phases_0_CSn,
  output              io_phy_phases_0_RASn,
  output              io_phy_phases_0_WEn,
  output     [1:0]    io_phy_phases_0_DM_0,
  output     [15:0]   io_phy_phases_0_DQw_0,
  input      [15:0]   io_phy_phases_0_DQr_0,
  output              io_phy_phases_1_CASn,
  output              io_phy_phases_1_CKE,
  output              io_phy_phases_1_CSn,
  output              io_phy_phases_1_RASn,
  output              io_phy_phases_1_WEn,
  output     [1:0]    io_phy_phases_1_DM_0,
  output     [15:0]   io_phy_phases_1_DQw_0,
  input      [15:0]   io_phy_phases_1_DQr_0,
  output     [12:0]   io_phy_ADDR,
  output     [1:0]    io_phy_BA,
  output              io_phy_writeEnable,
  output              io_phy_readEnable,
  input               io_phy_readValid,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire                bmbAdapter_0_io_input_cmd_ready;
  wire                bmbAdapter_0_io_input_rsp_valid;
  wire                bmbAdapter_0_io_input_rsp_payload_last;
  wire       [0:0]    bmbAdapter_0_io_input_rsp_payload_fragment_source;
  wire       [0:0]    bmbAdapter_0_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   bmbAdapter_0_io_input_rsp_payload_fragment_data;
  wire       [0:0]    bmbAdapter_0_io_input_rsp_payload_fragment_context;
  wire       [0:0]    bmbAdapter_0_io_output_writeDataTocken;
  wire                bmbAdapter_0_io_output_cmd_valid;
  wire                bmbAdapter_0_io_output_cmd_payload_write;
  wire       [24:0]   bmbAdapter_0_io_output_cmd_payload_address;
  wire       [3:0]    bmbAdapter_0_io_output_cmd_payload_context;
  wire                bmbAdapter_0_io_output_cmd_payload_burstLast;
  wire       [3:0]    bmbAdapter_0_io_output_cmd_payload_length;
  wire                bmbAdapter_0_io_output_writeData_valid;
  wire       [31:0]   bmbAdapter_0_io_output_writeData_payload_data;
  wire       [3:0]    bmbAdapter_0_io_output_writeData_payload_mask;
  wire       [0:0]    bmbAdapter_0_io_output_writeDataAdded;
  wire                bmbAdapter_0_io_output_rsp_ready;
  wire                core_1_io_ports_0_cmd_ready;
  wire                core_1_io_ports_0_writeData_ready;
  wire                core_1_io_ports_0_rsp_valid;
  wire                core_1_io_ports_0_rsp_payload_last;
  wire       [31:0]   core_1_io_ports_0_rsp_payload_fragment_data;
  wire       [3:0]    core_1_io_ports_0_rsp_payload_fragment_context;
  wire                core_1_io_phy_phases_0_CASn;
  wire                core_1_io_phy_phases_0_CKE;
  wire                core_1_io_phy_phases_0_CSn;
  wire       [1:0]    core_1_io_phy_phases_0_DM_0;
  wire                core_1_io_phy_phases_0_RASn;
  wire                core_1_io_phy_phases_0_WEn;
  wire       [15:0]   core_1_io_phy_phases_0_DQw_0;
  wire                core_1_io_phy_phases_1_CASn;
  wire                core_1_io_phy_phases_1_CKE;
  wire                core_1_io_phy_phases_1_CSn;
  wire       [1:0]    core_1_io_phy_phases_1_DM_0;
  wire                core_1_io_phy_phases_1_RASn;
  wire                core_1_io_phy_phases_1_WEn;
  wire       [15:0]   core_1_io_phy_phases_1_DQw_0;
  wire       [12:0]   core_1_io_phy_ADDR;
  wire       [1:0]    core_1_io_phy_BA;
  wire                core_1_io_phy_readEnable;
  wire                core_1_io_phy_writeEnable;
  wire                core_1_io_refresh;
  wire                mapper_readHaltTrigger;
  wire                mapper_writeHaltTrigger;
  wire                mapper_rsp_valid;
  wire                mapper_rsp_ready;
  wire                mapper_rsp_payload_last;
  wire       [0:0]    mapper_rsp_payload_fragment_opcode;
  wire       [31:0]   mapper_rsp_payload_fragment_data;
  wire       [2:0]    mapper_rsp_payload_fragment_context;
  wire                _zz_io_ctrl_rsp_valid;
  reg                 _zz_mapper_rsp_ready;
  wire                _zz_io_ctrl_rsp_valid_1;
  reg                 _zz_io_ctrl_rsp_valid_2;
  reg                 _zz_io_ctrl_rsp_payload_last;
  reg        [0:0]    _zz_io_ctrl_rsp_payload_fragment_opcode;
  reg        [31:0]   _zz_io_ctrl_rsp_payload_fragment_data;
  reg        [2:0]    _zz_io_ctrl_rsp_payload_fragment_context;
  wire                when_Stream_l342;
  wire                mapper_askWrite;
  wire                mapper_askRead;
  wire                io_ctrl_cmd_fire;
  wire                mapper_doWrite;
  wire                io_ctrl_cmd_fire_1;
  wire                mapper_doRead;
  reg                 _zz_io_config_autoRefresh;
  reg                 _zz_io_config_noActive;
  reg        [0:0]    _zz_io_config_phase_write;
  reg        [0:0]    _zz_io_config_phase_read;
  reg        [0:0]    _zz_io_config_phase_active;
  reg        [0:0]    _zz_io_config_phase_precharge;
  reg        [1:0]    _zz_io_config_readLatency = 2'b00;
  reg        [15:0]   _zz_io_config_REF = 16'b0000000000000000;
  reg        [3:0]    _zz_io_config_RAS = 4'b0000;
  reg        [3:0]    _zz_io_config_RP = 4'b0000;
  reg        [6:0]    _zz_io_config_RFC = 7'b0000000;
  reg        [3:0]    _zz_io_config_RRD = 4'b0000;
  reg        [3:0]    _zz_io_config_RCD = 4'b0000;
  reg        [3:0]    _zz_io_config_RTW = 4'b0000;
  reg        [3:0]    _zz_io_config_RTP = 4'b0000;
  reg        [3:0]    _zz_io_config_WTR = 4'b0000;
  reg        [3:0]    _zz_io_config_WR = 4'b0000;
  reg                 _zz_io_soft_cmd_valid;
  reg                 _zz_io_soft_cmd_valid_1;
  reg                 _zz_io_soft_cmd_payload_CSn;
  reg                 _zz_io_soft_cmd_payload_RASn;
  reg                 _zz_io_soft_cmd_payload_CASn;
  reg                 _zz_io_soft_cmd_payload_WEn;
  reg        [12:0]   _zz_io_soft_cmd_payload_ADDR;
  reg        [1:0]    _zz_io_soft_cmd_payload_BA;
  reg                 _zz_io_soft_CKE;

  BmbAdapter bmbAdapter_0 (
    .io_refresh                                (core_1_io_refresh                                      ), //i
    .io_input_cmd_valid                        (io_bmb_0_cmd_valid                                     ), //i
    .io_input_cmd_ready                        (bmbAdapter_0_io_input_cmd_ready                        ), //o
    .io_input_cmd_payload_last                 (io_bmb_0_cmd_payload_last                              ), //i
    .io_input_cmd_payload_fragment_source      (io_bmb_0_cmd_payload_fragment_source                   ), //i
    .io_input_cmd_payload_fragment_opcode      (io_bmb_0_cmd_payload_fragment_opcode                   ), //i
    .io_input_cmd_payload_fragment_address     (io_bmb_0_cmd_payload_fragment_address[24:0]            ), //i
    .io_input_cmd_payload_fragment_length      (io_bmb_0_cmd_payload_fragment_length[4:0]              ), //i
    .io_input_cmd_payload_fragment_data        (io_bmb_0_cmd_payload_fragment_data[31:0]               ), //i
    .io_input_cmd_payload_fragment_mask        (io_bmb_0_cmd_payload_fragment_mask[3:0]                ), //i
    .io_input_cmd_payload_fragment_context     (io_bmb_0_cmd_payload_fragment_context                  ), //i
    .io_input_rsp_valid                        (bmbAdapter_0_io_input_rsp_valid                        ), //o
    .io_input_rsp_ready                        (io_bmb_0_rsp_ready                                     ), //i
    .io_input_rsp_payload_last                 (bmbAdapter_0_io_input_rsp_payload_last                 ), //o
    .io_input_rsp_payload_fragment_source      (bmbAdapter_0_io_input_rsp_payload_fragment_source      ), //o
    .io_input_rsp_payload_fragment_opcode      (bmbAdapter_0_io_input_rsp_payload_fragment_opcode      ), //o
    .io_input_rsp_payload_fragment_data        (bmbAdapter_0_io_input_rsp_payload_fragment_data[31:0]  ), //o
    .io_input_rsp_payload_fragment_context     (bmbAdapter_0_io_input_rsp_payload_fragment_context     ), //o
    .io_output_cmd_valid                       (bmbAdapter_0_io_output_cmd_valid                       ), //o
    .io_output_cmd_ready                       (core_1_io_ports_0_cmd_ready                            ), //i
    .io_output_cmd_payload_write               (bmbAdapter_0_io_output_cmd_payload_write               ), //o
    .io_output_cmd_payload_address             (bmbAdapter_0_io_output_cmd_payload_address[24:0]       ), //o
    .io_output_cmd_payload_context             (bmbAdapter_0_io_output_cmd_payload_context[3:0]        ), //o
    .io_output_cmd_payload_burstLast           (bmbAdapter_0_io_output_cmd_payload_burstLast           ), //o
    .io_output_cmd_payload_length              (bmbAdapter_0_io_output_cmd_payload_length[3:0]         ), //o
    .io_output_writeData_valid                 (bmbAdapter_0_io_output_writeData_valid                 ), //o
    .io_output_writeData_ready                 (core_1_io_ports_0_writeData_ready                      ), //i
    .io_output_writeData_payload_data          (bmbAdapter_0_io_output_writeData_payload_data[31:0]    ), //o
    .io_output_writeData_payload_mask          (bmbAdapter_0_io_output_writeData_payload_mask[3:0]     ), //o
    .io_output_writeDataTocken                 (bmbAdapter_0_io_output_writeDataTocken                 ), //o
    .io_output_rsp_valid                       (core_1_io_ports_0_rsp_valid                            ), //i
    .io_output_rsp_ready                       (bmbAdapter_0_io_output_rsp_ready                       ), //o
    .io_output_rsp_payload_last                (core_1_io_ports_0_rsp_payload_last                     ), //i
    .io_output_rsp_payload_fragment_data       (core_1_io_ports_0_rsp_payload_fragment_data[31:0]      ), //i
    .io_output_rsp_payload_fragment_context    (core_1_io_ports_0_rsp_payload_fragment_context[3:0]    ), //i
    .io_output_writeDataAdded                  (bmbAdapter_0_io_output_writeDataAdded                  ), //o
    .clkout_system                             (clkout_system                                          ), //i
    .systemCdCtrl_logic_outputReset            (systemCdCtrl_logic_outputReset                         )  //i
  );
  Core core_1 (
    .io_config_readLatency                      (_zz_io_config_readLatency[1:0]                       ), //i
    .io_config_RAS                              (_zz_io_config_RAS[3:0]                               ), //i
    .io_config_RP                               (_zz_io_config_RP[3:0]                                ), //i
    .io_config_WR                               (_zz_io_config_WR[3:0]                                ), //i
    .io_config_RCD                              (_zz_io_config_RCD[3:0]                               ), //i
    .io_config_WTR                              (_zz_io_config_WTR[3:0]                               ), //i
    .io_config_RTP                              (_zz_io_config_RTP[3:0]                               ), //i
    .io_config_RRD                              (_zz_io_config_RRD[3:0]                               ), //i
    .io_config_RTW                              (_zz_io_config_RTW[3:0]                               ), //i
    .io_config_RFC                              (_zz_io_config_RFC[6:0]                               ), //i
    .io_config_REF                              (_zz_io_config_REF[15:0]                              ), //i
    .io_config_autoRefresh                      (_zz_io_config_autoRefresh                            ), //i
    .io_config_noActive                         (_zz_io_config_noActive                               ), //i
    .io_config_phase_active                     (_zz_io_config_phase_active                           ), //i
    .io_config_phase_precharge                  (_zz_io_config_phase_precharge                        ), //i
    .io_config_phase_read                       (_zz_io_config_phase_read                             ), //i
    .io_config_phase_write                      (_zz_io_config_phase_write                            ), //i
    .io_soft_cmd_valid                          (_zz_io_soft_cmd_valid_1                              ), //i
    .io_soft_cmd_payload_ADDR                   (_zz_io_soft_cmd_payload_ADDR[12:0]                   ), //i
    .io_soft_cmd_payload_BA                     (_zz_io_soft_cmd_payload_BA[1:0]                      ), //i
    .io_soft_cmd_payload_CASn                   (_zz_io_soft_cmd_payload_CASn                         ), //i
    .io_soft_cmd_payload_CSn                    (_zz_io_soft_cmd_payload_CSn                          ), //i
    .io_soft_cmd_payload_RASn                   (_zz_io_soft_cmd_payload_RASn                         ), //i
    .io_soft_cmd_payload_WEn                    (_zz_io_soft_cmd_payload_WEn                          ), //i
    .io_soft_CKE                                (_zz_io_soft_CKE                                      ), //i
    .io_ports_0_cmd_valid                       (bmbAdapter_0_io_output_cmd_valid                     ), //i
    .io_ports_0_cmd_ready                       (core_1_io_ports_0_cmd_ready                          ), //o
    .io_ports_0_cmd_payload_write               (bmbAdapter_0_io_output_cmd_payload_write             ), //i
    .io_ports_0_cmd_payload_address             (bmbAdapter_0_io_output_cmd_payload_address[24:0]     ), //i
    .io_ports_0_cmd_payload_context             (bmbAdapter_0_io_output_cmd_payload_context[3:0]      ), //i
    .io_ports_0_cmd_payload_burstLast           (bmbAdapter_0_io_output_cmd_payload_burstLast         ), //i
    .io_ports_0_cmd_payload_length              (bmbAdapter_0_io_output_cmd_payload_length[3:0]       ), //i
    .io_ports_0_writeData_valid                 (bmbAdapter_0_io_output_writeData_valid               ), //i
    .io_ports_0_writeData_ready                 (core_1_io_ports_0_writeData_ready                    ), //o
    .io_ports_0_writeData_payload_data          (bmbAdapter_0_io_output_writeData_payload_data[31:0]  ), //i
    .io_ports_0_writeData_payload_mask          (bmbAdapter_0_io_output_writeData_payload_mask[3:0]   ), //i
    .io_ports_0_writeDataTocken                 (bmbAdapter_0_io_output_writeDataTocken               ), //i
    .io_ports_0_rsp_valid                       (core_1_io_ports_0_rsp_valid                          ), //o
    .io_ports_0_rsp_ready                       (bmbAdapter_0_io_output_rsp_ready                     ), //i
    .io_ports_0_rsp_payload_last                (core_1_io_ports_0_rsp_payload_last                   ), //o
    .io_ports_0_rsp_payload_fragment_data       (core_1_io_ports_0_rsp_payload_fragment_data[31:0]    ), //o
    .io_ports_0_rsp_payload_fragment_context    (core_1_io_ports_0_rsp_payload_fragment_context[3:0]  ), //o
    .io_ports_0_writeDataAdded                  (bmbAdapter_0_io_output_writeDataAdded                ), //i
    .io_phy_phases_0_CASn                       (core_1_io_phy_phases_0_CASn                          ), //o
    .io_phy_phases_0_CKE                        (core_1_io_phy_phases_0_CKE                           ), //o
    .io_phy_phases_0_CSn                        (core_1_io_phy_phases_0_CSn                           ), //o
    .io_phy_phases_0_RASn                       (core_1_io_phy_phases_0_RASn                          ), //o
    .io_phy_phases_0_WEn                        (core_1_io_phy_phases_0_WEn                           ), //o
    .io_phy_phases_0_DM_0                       (core_1_io_phy_phases_0_DM_0[1:0]                     ), //o
    .io_phy_phases_0_DQw_0                      (core_1_io_phy_phases_0_DQw_0[15:0]                   ), //o
    .io_phy_phases_0_DQr_0                      (io_phy_phases_0_DQr_0[15:0]                          ), //i
    .io_phy_phases_1_CASn                       (core_1_io_phy_phases_1_CASn                          ), //o
    .io_phy_phases_1_CKE                        (core_1_io_phy_phases_1_CKE                           ), //o
    .io_phy_phases_1_CSn                        (core_1_io_phy_phases_1_CSn                           ), //o
    .io_phy_phases_1_RASn                       (core_1_io_phy_phases_1_RASn                          ), //o
    .io_phy_phases_1_WEn                        (core_1_io_phy_phases_1_WEn                           ), //o
    .io_phy_phases_1_DM_0                       (core_1_io_phy_phases_1_DM_0[1:0]                     ), //o
    .io_phy_phases_1_DQw_0                      (core_1_io_phy_phases_1_DQw_0[15:0]                   ), //o
    .io_phy_phases_1_DQr_0                      (io_phy_phases_1_DQr_0[15:0]                          ), //i
    .io_phy_ADDR                                (core_1_io_phy_ADDR[12:0]                             ), //o
    .io_phy_BA                                  (core_1_io_phy_BA[1:0]                                ), //o
    .io_phy_writeEnable                         (core_1_io_phy_writeEnable                            ), //o
    .io_phy_readEnable                          (core_1_io_phy_readEnable                             ), //o
    .io_phy_readValid                           (io_phy_readValid                                     ), //i
    .io_refresh                                 (core_1_io_refresh                                    ), //o
    .clkout_system                              (clkout_system                                        ), //i
    .systemCdCtrl_logic_outputReset             (systemCdCtrl_logic_outputReset                       )  //i
  );
  assign io_bmb_0_cmd_ready = bmbAdapter_0_io_input_cmd_ready;
  assign io_bmb_0_rsp_valid = bmbAdapter_0_io_input_rsp_valid;
  assign io_bmb_0_rsp_payload_last = bmbAdapter_0_io_input_rsp_payload_last;
  assign io_bmb_0_rsp_payload_fragment_source = bmbAdapter_0_io_input_rsp_payload_fragment_source;
  assign io_bmb_0_rsp_payload_fragment_opcode = bmbAdapter_0_io_input_rsp_payload_fragment_opcode;
  assign io_bmb_0_rsp_payload_fragment_data = bmbAdapter_0_io_input_rsp_payload_fragment_data;
  assign io_bmb_0_rsp_payload_fragment_context = bmbAdapter_0_io_input_rsp_payload_fragment_context;
  assign io_phy_phases_0_CASn = core_1_io_phy_phases_0_CASn;
  assign io_phy_phases_0_CKE = core_1_io_phy_phases_0_CKE;
  assign io_phy_phases_0_CSn = core_1_io_phy_phases_0_CSn;
  assign io_phy_phases_0_RASn = core_1_io_phy_phases_0_RASn;
  assign io_phy_phases_0_WEn = core_1_io_phy_phases_0_WEn;
  assign io_phy_phases_0_DM_0 = core_1_io_phy_phases_0_DM_0;
  assign io_phy_phases_0_DQw_0 = core_1_io_phy_phases_0_DQw_0;
  assign io_phy_phases_1_CASn = core_1_io_phy_phases_1_CASn;
  assign io_phy_phases_1_CKE = core_1_io_phy_phases_1_CKE;
  assign io_phy_phases_1_CSn = core_1_io_phy_phases_1_CSn;
  assign io_phy_phases_1_RASn = core_1_io_phy_phases_1_RASn;
  assign io_phy_phases_1_WEn = core_1_io_phy_phases_1_WEn;
  assign io_phy_phases_1_DM_0 = core_1_io_phy_phases_1_DM_0;
  assign io_phy_phases_1_DQw_0 = core_1_io_phy_phases_1_DQw_0;
  assign io_phy_ADDR = core_1_io_phy_ADDR;
  assign io_phy_BA = core_1_io_phy_BA;
  assign io_phy_writeEnable = core_1_io_phy_writeEnable;
  assign io_phy_readEnable = core_1_io_phy_readEnable;
  assign mapper_readHaltTrigger = 1'b0;
  assign mapper_writeHaltTrigger = 1'b0;
  assign _zz_io_ctrl_rsp_valid = (! (mapper_readHaltTrigger || mapper_writeHaltTrigger));
  assign mapper_rsp_ready = (_zz_mapper_rsp_ready && _zz_io_ctrl_rsp_valid);
  always @(*) begin
    _zz_mapper_rsp_ready = io_ctrl_rsp_ready;
    if(when_Stream_l342) begin
      _zz_mapper_rsp_ready = 1'b1;
    end
  end

  assign when_Stream_l342 = (! _zz_io_ctrl_rsp_valid_1);
  assign _zz_io_ctrl_rsp_valid_1 = _zz_io_ctrl_rsp_valid_2;
  assign io_ctrl_rsp_valid = _zz_io_ctrl_rsp_valid_1;
  assign io_ctrl_rsp_payload_last = _zz_io_ctrl_rsp_payload_last;
  assign io_ctrl_rsp_payload_fragment_opcode = _zz_io_ctrl_rsp_payload_fragment_opcode;
  assign io_ctrl_rsp_payload_fragment_data = _zz_io_ctrl_rsp_payload_fragment_data;
  assign io_ctrl_rsp_payload_fragment_context = _zz_io_ctrl_rsp_payload_fragment_context;
  assign mapper_askWrite = (io_ctrl_cmd_valid && (io_ctrl_cmd_payload_fragment_opcode == 1'b1));
  assign mapper_askRead = (io_ctrl_cmd_valid && (io_ctrl_cmd_payload_fragment_opcode == 1'b0));
  assign io_ctrl_cmd_fire = (io_ctrl_cmd_valid && io_ctrl_cmd_ready);
  assign mapper_doWrite = (io_ctrl_cmd_fire && (io_ctrl_cmd_payload_fragment_opcode == 1'b1));
  assign io_ctrl_cmd_fire_1 = (io_ctrl_cmd_valid && io_ctrl_cmd_ready);
  assign mapper_doRead = (io_ctrl_cmd_fire_1 && (io_ctrl_cmd_payload_fragment_opcode == 1'b0));
  assign mapper_rsp_valid = io_ctrl_cmd_valid;
  assign io_ctrl_cmd_ready = mapper_rsp_ready;
  assign mapper_rsp_payload_last = 1'b1;
  assign mapper_rsp_payload_fragment_opcode = 1'b0;
  assign mapper_rsp_payload_fragment_data = 32'h0;
  assign mapper_rsp_payload_fragment_context = io_ctrl_cmd_payload_fragment_context;
  always @(*) begin
    _zz_io_soft_cmd_valid = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h100 : begin
        if(mapper_doWrite) begin
          _zz_io_soft_cmd_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      _zz_io_ctrl_rsp_valid_2 <= 1'b0;
      _zz_io_config_autoRefresh <= 1'b0;
      _zz_io_config_noActive <= 1'b0;
      _zz_io_soft_cmd_valid_1 <= 1'b0;
      _zz_io_soft_CKE <= 1'b0;
    end else begin
      if(_zz_mapper_rsp_ready) begin
        _zz_io_ctrl_rsp_valid_2 <= (mapper_rsp_valid && _zz_io_ctrl_rsp_valid);
      end
      _zz_io_soft_cmd_valid_1 <= _zz_io_soft_cmd_valid;
      case(io_ctrl_cmd_payload_fragment_address)
        12'h0 : begin
          if(mapper_doWrite) begin
            _zz_io_config_autoRefresh <= io_ctrl_cmd_payload_fragment_data[0];
            _zz_io_config_noActive <= io_ctrl_cmd_payload_fragment_data[1];
          end
        end
        12'h110 : begin
          if(mapper_doWrite) begin
            _zz_io_soft_CKE <= io_ctrl_cmd_payload_fragment_data[1];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clkout_system) begin
    if(_zz_mapper_rsp_ready) begin
      _zz_io_ctrl_rsp_payload_last <= mapper_rsp_payload_last;
      _zz_io_ctrl_rsp_payload_fragment_opcode <= mapper_rsp_payload_fragment_opcode;
      _zz_io_ctrl_rsp_payload_fragment_data <= mapper_rsp_payload_fragment_data;
      _zz_io_ctrl_rsp_payload_fragment_context <= mapper_rsp_payload_fragment_context;
    end
    case(io_ctrl_cmd_payload_fragment_address)
      12'h004 : begin
        if(mapper_doWrite) begin
          _zz_io_config_phase_write <= io_ctrl_cmd_payload_fragment_data[0 : 0];
          _zz_io_config_phase_read <= io_ctrl_cmd_payload_fragment_data[8 : 8];
          _zz_io_config_phase_active <= io_ctrl_cmd_payload_fragment_data[16 : 16];
          _zz_io_config_phase_precharge <= io_ctrl_cmd_payload_fragment_data[24 : 24];
        end
      end
      12'h00c : begin
        if(mapper_doWrite) begin
          _zz_io_config_readLatency <= io_ctrl_cmd_payload_fragment_data[1 : 0];
        end
      end
      12'h010 : begin
        if(mapper_doWrite) begin
          _zz_io_config_REF <= io_ctrl_cmd_payload_fragment_data[15 : 0];
        end
      end
      12'h020 : begin
        if(mapper_doWrite) begin
          _zz_io_config_RAS <= io_ctrl_cmd_payload_fragment_data[3 : 0];
          _zz_io_config_RP <= io_ctrl_cmd_payload_fragment_data[11 : 8];
          _zz_io_config_RFC <= io_ctrl_cmd_payload_fragment_data[22 : 16];
          _zz_io_config_RRD <= io_ctrl_cmd_payload_fragment_data[27 : 24];
        end
      end
      12'h024 : begin
        if(mapper_doWrite) begin
          _zz_io_config_RCD <= io_ctrl_cmd_payload_fragment_data[3 : 0];
        end
      end
      12'h028 : begin
        if(mapper_doWrite) begin
          _zz_io_config_RTW <= io_ctrl_cmd_payload_fragment_data[3 : 0];
          _zz_io_config_RTP <= io_ctrl_cmd_payload_fragment_data[11 : 8];
          _zz_io_config_WTR <= io_ctrl_cmd_payload_fragment_data[19 : 16];
          _zz_io_config_WR <= io_ctrl_cmd_payload_fragment_data[27 : 24];
        end
      end
      12'h104 : begin
        if(mapper_doWrite) begin
          _zz_io_soft_cmd_payload_CSn <= io_ctrl_cmd_payload_fragment_data[1];
          _zz_io_soft_cmd_payload_RASn <= io_ctrl_cmd_payload_fragment_data[2];
          _zz_io_soft_cmd_payload_CASn <= io_ctrl_cmd_payload_fragment_data[3];
          _zz_io_soft_cmd_payload_WEn <= io_ctrl_cmd_payload_fragment_data[4];
        end
      end
      12'h108 : begin
        if(mapper_doWrite) begin
          _zz_io_soft_cmd_payload_ADDR <= io_ctrl_cmd_payload_fragment_data[12 : 0];
        end
      end
      12'h10c : begin
        if(mapper_doWrite) begin
          _zz_io_soft_cmd_payload_BA <= io_ctrl_cmd_payload_fragment_data[1 : 0];
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module BmbClint (
  input               io_bus_cmd_valid,
  output              io_bus_cmd_ready,
  input               io_bus_cmd_payload_last,
  input      [0:0]    io_bus_cmd_payload_fragment_opcode,
  input      [15:0]   io_bus_cmd_payload_fragment_address,
  input      [1:0]    io_bus_cmd_payload_fragment_length,
  input      [31:0]   io_bus_cmd_payload_fragment_data,
  input      [2:0]    io_bus_cmd_payload_fragment_context,
  output              io_bus_rsp_valid,
  input               io_bus_rsp_ready,
  output              io_bus_rsp_payload_last,
  output     [0:0]    io_bus_rsp_payload_fragment_opcode,
  output     [31:0]   io_bus_rsp_payload_fragment_data,
  output     [2:0]    io_bus_rsp_payload_fragment_context,
  output     [0:0]    io_timerInterrupt,
  output     [0:0]    io_softwareInterrupt,
  output     [63:0]   io_time,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [31:0]   _zz_logic_harts_0_cmp;
  wire       [31:0]   _zz_logic_harts_0_cmp_1;
  wire       [31:0]   _zz_logic_harts_0_cmp_2;
  wire       [31:0]   _zz_logic_harts_0_cmp_3;
  wire                factory_readHaltTrigger;
  wire                factory_writeHaltTrigger;
  wire                factory_rsp_valid;
  wire                factory_rsp_ready;
  wire                factory_rsp_payload_last;
  wire       [0:0]    factory_rsp_payload_fragment_opcode;
  reg        [31:0]   factory_rsp_payload_fragment_data;
  wire       [2:0]    factory_rsp_payload_fragment_context;
  wire                _zz_io_bus_rsp_valid;
  reg                 _zz_factory_rsp_ready;
  wire                _zz_io_bus_rsp_valid_1;
  reg                 _zz_io_bus_rsp_valid_2;
  reg                 _zz_io_bus_rsp_payload_last;
  reg        [0:0]    _zz_io_bus_rsp_payload_fragment_opcode;
  reg        [31:0]   _zz_io_bus_rsp_payload_fragment_data;
  reg        [2:0]    _zz_io_bus_rsp_payload_fragment_context;
  wire                when_Stream_l342;
  wire                factory_askWrite;
  wire                factory_askRead;
  wire                io_bus_cmd_fire;
  wire                factory_doWrite;
  wire                io_bus_cmd_fire_1;
  wire                factory_doRead;
  reg        [63:0]   logic_time;
  reg        [63:0]   logic_harts_0_cmp;
  reg                 logic_harts_0_timerInterrupt;
  reg                 logic_harts_0_softwareInterrupt;
  wire       [63:0]   _zz_factory_rsp_payload_fragment_data;
  wire                when_BmbSlaveFactory_l71;
  wire                when_BmbSlaveFactory_l71_1;
  wire                when_BmbSlaveFactory_l71_2;
  wire                when_BmbSlaveFactory_l71_3;

  assign _zz_logic_harts_0_cmp_1 = io_bus_cmd_payload_fragment_data[31 : 0];
  assign _zz_logic_harts_0_cmp = _zz_logic_harts_0_cmp_1;
  assign _zz_logic_harts_0_cmp_3 = io_bus_cmd_payload_fragment_data[31 : 0];
  assign _zz_logic_harts_0_cmp_2 = _zz_logic_harts_0_cmp_3;
  assign factory_readHaltTrigger = 1'b0;
  assign factory_writeHaltTrigger = 1'b0;
  assign _zz_io_bus_rsp_valid = (! (factory_readHaltTrigger || factory_writeHaltTrigger));
  assign factory_rsp_ready = (_zz_factory_rsp_ready && _zz_io_bus_rsp_valid);
  always @(*) begin
    _zz_factory_rsp_ready = io_bus_rsp_ready;
    if(when_Stream_l342) begin
      _zz_factory_rsp_ready = 1'b1;
    end
  end

  assign when_Stream_l342 = (! _zz_io_bus_rsp_valid_1);
  assign _zz_io_bus_rsp_valid_1 = _zz_io_bus_rsp_valid_2;
  assign io_bus_rsp_valid = _zz_io_bus_rsp_valid_1;
  assign io_bus_rsp_payload_last = _zz_io_bus_rsp_payload_last;
  assign io_bus_rsp_payload_fragment_opcode = _zz_io_bus_rsp_payload_fragment_opcode;
  assign io_bus_rsp_payload_fragment_data = _zz_io_bus_rsp_payload_fragment_data;
  assign io_bus_rsp_payload_fragment_context = _zz_io_bus_rsp_payload_fragment_context;
  assign factory_askWrite = (io_bus_cmd_valid && (io_bus_cmd_payload_fragment_opcode == 1'b1));
  assign factory_askRead = (io_bus_cmd_valid && (io_bus_cmd_payload_fragment_opcode == 1'b0));
  assign io_bus_cmd_fire = (io_bus_cmd_valid && io_bus_cmd_ready);
  assign factory_doWrite = (io_bus_cmd_fire && (io_bus_cmd_payload_fragment_opcode == 1'b1));
  assign io_bus_cmd_fire_1 = (io_bus_cmd_valid && io_bus_cmd_ready);
  assign factory_doRead = (io_bus_cmd_fire_1 && (io_bus_cmd_payload_fragment_opcode == 1'b0));
  assign factory_rsp_valid = io_bus_cmd_valid;
  assign io_bus_cmd_ready = factory_rsp_ready;
  assign factory_rsp_payload_last = 1'b1;
  assign factory_rsp_payload_fragment_opcode = 1'b0;
  always @(*) begin
    factory_rsp_payload_fragment_data = 32'h0;
    case(io_bus_cmd_payload_fragment_address)
      16'h0 : begin
        factory_rsp_payload_fragment_data[0 : 0] = logic_harts_0_softwareInterrupt;
      end
      default : begin
      end
    endcase
    if(when_BmbSlaveFactory_l71) begin
      factory_rsp_payload_fragment_data[31 : 0] = _zz_factory_rsp_payload_fragment_data[31 : 0];
    end
    if(when_BmbSlaveFactory_l71_1) begin
      factory_rsp_payload_fragment_data[31 : 0] = _zz_factory_rsp_payload_fragment_data[63 : 32];
    end
  end

  assign factory_rsp_payload_fragment_context = io_bus_cmd_payload_fragment_context;
  assign _zz_factory_rsp_payload_fragment_data = logic_time;
  assign io_timerInterrupt[0] = logic_harts_0_timerInterrupt;
  assign io_softwareInterrupt[0] = logic_harts_0_softwareInterrupt;
  assign io_time = logic_time;
  assign when_BmbSlaveFactory_l71 = ((io_bus_cmd_payload_fragment_address & (~ 16'h0003)) == 16'hbff8);
  assign when_BmbSlaveFactory_l71_1 = ((io_bus_cmd_payload_fragment_address & (~ 16'h0003)) == 16'hbffc);
  assign when_BmbSlaveFactory_l71_2 = ((io_bus_cmd_payload_fragment_address & (~ 16'h0003)) == 16'h4000);
  assign when_BmbSlaveFactory_l71_3 = ((io_bus_cmd_payload_fragment_address & (~ 16'h0003)) == 16'h4004);
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      _zz_io_bus_rsp_valid_2 <= 1'b0;
      logic_time <= 64'h0;
      logic_harts_0_softwareInterrupt <= 1'b0;
    end else begin
      if(_zz_factory_rsp_ready) begin
        _zz_io_bus_rsp_valid_2 <= (factory_rsp_valid && _zz_io_bus_rsp_valid);
      end
      logic_time <= (logic_time + 64'h0000000000000001);
      case(io_bus_cmd_payload_fragment_address)
        16'h0 : begin
          if(factory_doWrite) begin
            logic_harts_0_softwareInterrupt <= io_bus_cmd_payload_fragment_data[0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clkout_system) begin
    if(_zz_factory_rsp_ready) begin
      _zz_io_bus_rsp_payload_last <= factory_rsp_payload_last;
      _zz_io_bus_rsp_payload_fragment_opcode <= factory_rsp_payload_fragment_opcode;
      _zz_io_bus_rsp_payload_fragment_data <= factory_rsp_payload_fragment_data;
      _zz_io_bus_rsp_payload_fragment_context <= factory_rsp_payload_fragment_context;
    end
    logic_harts_0_timerInterrupt <= (logic_harts_0_cmp <= logic_time);
    if(when_BmbSlaveFactory_l71_2) begin
      if(factory_doWrite) begin
        logic_harts_0_cmp[31 : 0] <= _zz_logic_harts_0_cmp;
      end
    end
    if(when_BmbSlaveFactory_l71_3) begin
      if(factory_doWrite) begin
        logic_harts_0_cmp[63 : 32] <= _zz_logic_harts_0_cmp_2;
      end
    end
  end


endmodule

module BmbDecoder_2 (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [23:0]   io_input_cmd_payload_fragment_address,
  input      [1:0]    io_input_cmd_payload_fragment_length,
  input      [31:0]   io_input_cmd_payload_fragment_data,
  input      [3:0]    io_input_cmd_payload_fragment_mask,
  input      [2:0]    io_input_cmd_payload_fragment_context,
  output reg          io_input_rsp_valid,
  input               io_input_rsp_ready,
  output reg          io_input_rsp_payload_last,
  output reg [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output reg [2:0]    io_input_rsp_payload_fragment_context,
  output reg          io_outputs_0_cmd_valid,
  input               io_outputs_0_cmd_ready,
  output              io_outputs_0_cmd_payload_last,
  output     [0:0]    io_outputs_0_cmd_payload_fragment_opcode,
  output     [23:0]   io_outputs_0_cmd_payload_fragment_address,
  output     [1:0]    io_outputs_0_cmd_payload_fragment_length,
  output     [31:0]   io_outputs_0_cmd_payload_fragment_data,
  output     [3:0]    io_outputs_0_cmd_payload_fragment_mask,
  output     [2:0]    io_outputs_0_cmd_payload_fragment_context,
  input               io_outputs_0_rsp_valid,
  output              io_outputs_0_rsp_ready,
  input               io_outputs_0_rsp_payload_last,
  input      [0:0]    io_outputs_0_rsp_payload_fragment_opcode,
  input      [31:0]   io_outputs_0_rsp_payload_fragment_data,
  input      [2:0]    io_outputs_0_rsp_payload_fragment_context,
  output reg          io_outputs_1_cmd_valid,
  input               io_outputs_1_cmd_ready,
  output              io_outputs_1_cmd_payload_last,
  output     [0:0]    io_outputs_1_cmd_payload_fragment_opcode,
  output     [23:0]   io_outputs_1_cmd_payload_fragment_address,
  output     [1:0]    io_outputs_1_cmd_payload_fragment_length,
  output     [31:0]   io_outputs_1_cmd_payload_fragment_data,
  output     [3:0]    io_outputs_1_cmd_payload_fragment_mask,
  output     [2:0]    io_outputs_1_cmd_payload_fragment_context,
  input               io_outputs_1_rsp_valid,
  output              io_outputs_1_rsp_ready,
  input               io_outputs_1_rsp_payload_last,
  input      [0:0]    io_outputs_1_rsp_payload_fragment_opcode,
  input      [31:0]   io_outputs_1_rsp_payload_fragment_data,
  input      [2:0]    io_outputs_1_rsp_payload_fragment_context,
  output reg          io_outputs_2_cmd_valid,
  input               io_outputs_2_cmd_ready,
  output              io_outputs_2_cmd_payload_last,
  output     [0:0]    io_outputs_2_cmd_payload_fragment_opcode,
  output     [23:0]   io_outputs_2_cmd_payload_fragment_address,
  output     [1:0]    io_outputs_2_cmd_payload_fragment_length,
  output     [31:0]   io_outputs_2_cmd_payload_fragment_data,
  output     [3:0]    io_outputs_2_cmd_payload_fragment_mask,
  output     [2:0]    io_outputs_2_cmd_payload_fragment_context,
  input               io_outputs_2_rsp_valid,
  output              io_outputs_2_rsp_ready,
  input               io_outputs_2_rsp_payload_last,
  input      [0:0]    io_outputs_2_rsp_payload_fragment_opcode,
  input      [31:0]   io_outputs_2_rsp_payload_fragment_data,
  input      [2:0]    io_outputs_2_rsp_payload_fragment_context,
  output reg          io_outputs_3_cmd_valid,
  input               io_outputs_3_cmd_ready,
  output              io_outputs_3_cmd_payload_last,
  output     [0:0]    io_outputs_3_cmd_payload_fragment_opcode,
  output     [23:0]   io_outputs_3_cmd_payload_fragment_address,
  output     [1:0]    io_outputs_3_cmd_payload_fragment_length,
  output     [31:0]   io_outputs_3_cmd_payload_fragment_data,
  output     [3:0]    io_outputs_3_cmd_payload_fragment_mask,
  output     [2:0]    io_outputs_3_cmd_payload_fragment_context,
  input               io_outputs_3_rsp_valid,
  output              io_outputs_3_rsp_ready,
  input               io_outputs_3_rsp_payload_last,
  input      [0:0]    io_outputs_3_rsp_payload_fragment_opcode,
  input      [31:0]   io_outputs_3_rsp_payload_fragment_data,
  input      [2:0]    io_outputs_3_rsp_payload_fragment_context,
  output reg          io_outputs_4_cmd_valid,
  input               io_outputs_4_cmd_ready,
  output              io_outputs_4_cmd_payload_last,
  output     [0:0]    io_outputs_4_cmd_payload_fragment_opcode,
  output     [23:0]   io_outputs_4_cmd_payload_fragment_address,
  output     [1:0]    io_outputs_4_cmd_payload_fragment_length,
  output     [31:0]   io_outputs_4_cmd_payload_fragment_data,
  output     [3:0]    io_outputs_4_cmd_payload_fragment_mask,
  output     [2:0]    io_outputs_4_cmd_payload_fragment_context,
  input               io_outputs_4_rsp_valid,
  output              io_outputs_4_rsp_ready,
  input               io_outputs_4_rsp_payload_last,
  input      [0:0]    io_outputs_4_rsp_payload_fragment_opcode,
  input      [31:0]   io_outputs_4_rsp_payload_fragment_data,
  input      [2:0]    io_outputs_4_rsp_payload_fragment_context,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [3:0]    _zz_logic_rspPendingCounter;
  wire       [3:0]    _zz_logic_rspPendingCounter_1;
  wire       [0:0]    _zz_logic_rspPendingCounter_2;
  wire       [3:0]    _zz_logic_rspPendingCounter_3;
  wire       [0:0]    _zz_logic_rspPendingCounter_4;
  reg                 _zz_io_input_rsp_payload_last_3;
  reg        [0:0]    _zz_io_input_rsp_payload_fragment_opcode;
  reg        [31:0]   _zz_io_input_rsp_payload_fragment_data;
  reg        [2:0]    _zz_io_input_rsp_payload_fragment_context;
  wire                io_input_cmd_input_valid;
  reg                 io_input_cmd_input_ready;
  wire                io_input_cmd_input_payload_last;
  wire       [0:0]    io_input_cmd_input_payload_fragment_opcode;
  wire       [23:0]   io_input_cmd_input_payload_fragment_address;
  wire       [1:0]    io_input_cmd_input_payload_fragment_length;
  wire       [31:0]   io_input_cmd_input_payload_fragment_data;
  wire       [3:0]    io_input_cmd_input_payload_fragment_mask;
  wire       [2:0]    io_input_cmd_input_payload_fragment_context;
  reg                 io_input_cmd_rValid;
  wire                io_input_cmd_input_fire;
  reg                 io_input_cmd_rData_last;
  reg        [0:0]    io_input_cmd_rData_fragment_opcode;
  reg        [23:0]   io_input_cmd_rData_fragment_address;
  reg        [1:0]    io_input_cmd_rData_fragment_length;
  reg        [31:0]   io_input_cmd_rData_fragment_data;
  reg        [3:0]    io_input_cmd_rData_fragment_mask;
  reg        [2:0]    io_input_cmd_rData_fragment_context;
  wire                logic_hitsS0_0;
  wire                logic_hitsS0_1;
  wire                logic_hitsS0_2;
  wire                logic_hitsS0_3;
  wire                logic_hitsS0_4;
  wire                logic_noHitS0;
  wire                io_input_cmd_fire;
  reg                 logic_hitsS1_0;
  reg                 logic_hitsS1_1;
  reg                 logic_hitsS1_2;
  reg                 logic_hitsS1_3;
  reg                 logic_hitsS1_4;
  wire                io_input_cmd_fire_1;
  reg                 logic_noHitS1;
  wire                _zz_io_outputs_0_cmd_payload_last;
  wire                _zz_io_outputs_1_cmd_payload_last;
  wire                _zz_io_outputs_2_cmd_payload_last;
  wire                _zz_io_outputs_3_cmd_payload_last;
  wire                _zz_io_outputs_4_cmd_payload_last;
  reg        [3:0]    logic_rspPendingCounter;
  wire                io_input_cmd_input_fire_1;
  wire                io_input_rsp_fire;
  wire                logic_cmdWait;
  wire                when_BmbDecoder_l56;
  reg                 logic_rspHits_0;
  reg                 logic_rspHits_1;
  reg                 logic_rspHits_2;
  reg                 logic_rspHits_3;
  reg                 logic_rspHits_4;
  wire                logic_rspPending;
  wire                logic_rspNoHitValid;
  reg                 logic_rspNoHit_doIt;
  wire                io_input_rsp_fire_1;
  wire                when_BmbDecoder_l60;
  wire                io_input_cmd_input_fire_2;
  wire                when_BmbDecoder_l60_1;
  wire                io_input_cmd_input_fire_3;
  reg                 logic_rspNoHit_singleBeatRsp;
  wire                io_input_cmd_input_fire_4;
  wire                io_input_cmd_input_fire_5;
  reg        [2:0]    logic_rspNoHit_context;
  wire                io_input_cmd_input_fire_6;
  wire                _zz_io_input_rsp_payload_last;
  wire                _zz_io_input_rsp_payload_last_1;
  wire       [2:0]    _zz_io_input_rsp_payload_last_2;

  assign _zz_logic_rspPendingCounter = (logic_rspPendingCounter + _zz_logic_rspPendingCounter_1);
  assign _zz_logic_rspPendingCounter_2 = (io_input_cmd_input_fire_1 && io_input_cmd_input_payload_last);
  assign _zz_logic_rspPendingCounter_1 = {3'd0, _zz_logic_rspPendingCounter_2};
  assign _zz_logic_rspPendingCounter_4 = (io_input_rsp_fire && io_input_rsp_payload_last);
  assign _zz_logic_rspPendingCounter_3 = {3'd0, _zz_logic_rspPendingCounter_4};
  always @(*) begin
    case(_zz_io_input_rsp_payload_last_2)
      3'b000 : begin
        _zz_io_input_rsp_payload_last_3 = io_outputs_0_rsp_payload_last;
        _zz_io_input_rsp_payload_fragment_opcode = io_outputs_0_rsp_payload_fragment_opcode;
        _zz_io_input_rsp_payload_fragment_data = io_outputs_0_rsp_payload_fragment_data;
        _zz_io_input_rsp_payload_fragment_context = io_outputs_0_rsp_payload_fragment_context;
      end
      3'b001 : begin
        _zz_io_input_rsp_payload_last_3 = io_outputs_1_rsp_payload_last;
        _zz_io_input_rsp_payload_fragment_opcode = io_outputs_1_rsp_payload_fragment_opcode;
        _zz_io_input_rsp_payload_fragment_data = io_outputs_1_rsp_payload_fragment_data;
        _zz_io_input_rsp_payload_fragment_context = io_outputs_1_rsp_payload_fragment_context;
      end
      3'b010 : begin
        _zz_io_input_rsp_payload_last_3 = io_outputs_2_rsp_payload_last;
        _zz_io_input_rsp_payload_fragment_opcode = io_outputs_2_rsp_payload_fragment_opcode;
        _zz_io_input_rsp_payload_fragment_data = io_outputs_2_rsp_payload_fragment_data;
        _zz_io_input_rsp_payload_fragment_context = io_outputs_2_rsp_payload_fragment_context;
      end
      3'b011 : begin
        _zz_io_input_rsp_payload_last_3 = io_outputs_3_rsp_payload_last;
        _zz_io_input_rsp_payload_fragment_opcode = io_outputs_3_rsp_payload_fragment_opcode;
        _zz_io_input_rsp_payload_fragment_data = io_outputs_3_rsp_payload_fragment_data;
        _zz_io_input_rsp_payload_fragment_context = io_outputs_3_rsp_payload_fragment_context;
      end
      default : begin
        _zz_io_input_rsp_payload_last_3 = io_outputs_4_rsp_payload_last;
        _zz_io_input_rsp_payload_fragment_opcode = io_outputs_4_rsp_payload_fragment_opcode;
        _zz_io_input_rsp_payload_fragment_data = io_outputs_4_rsp_payload_fragment_data;
        _zz_io_input_rsp_payload_fragment_context = io_outputs_4_rsp_payload_fragment_context;
      end
    endcase
  end

  assign io_input_cmd_input_fire = (io_input_cmd_input_valid && io_input_cmd_input_ready);
  assign io_input_cmd_ready = (! io_input_cmd_rValid);
  assign io_input_cmd_input_valid = io_input_cmd_rValid;
  assign io_input_cmd_input_payload_last = io_input_cmd_rData_last;
  assign io_input_cmd_input_payload_fragment_opcode = io_input_cmd_rData_fragment_opcode;
  assign io_input_cmd_input_payload_fragment_address = io_input_cmd_rData_fragment_address;
  assign io_input_cmd_input_payload_fragment_length = io_input_cmd_rData_fragment_length;
  assign io_input_cmd_input_payload_fragment_data = io_input_cmd_rData_fragment_data;
  assign io_input_cmd_input_payload_fragment_mask = io_input_cmd_rData_fragment_mask;
  assign io_input_cmd_input_payload_fragment_context = io_input_cmd_rData_fragment_context;
  assign logic_noHitS0 = (! ({logic_hitsS0_4,{logic_hitsS0_3,{logic_hitsS0_2,{logic_hitsS0_1,logic_hitsS0_0}}}} != 5'h0));
  assign io_input_cmd_fire = (io_input_cmd_valid && io_input_cmd_ready);
  assign io_input_cmd_fire_1 = (io_input_cmd_valid && io_input_cmd_ready);
  assign logic_hitsS0_0 = ((io_input_cmd_payload_fragment_address & (~ 24'h3fffff)) == 24'hc00000);
  always @(*) begin
    io_outputs_0_cmd_valid = (io_input_cmd_input_valid && logic_hitsS1_0);
    if(logic_cmdWait) begin
      io_outputs_0_cmd_valid = 1'b0;
    end
  end

  assign _zz_io_outputs_0_cmd_payload_last = io_input_cmd_input_payload_last;
  assign io_outputs_0_cmd_payload_last = _zz_io_outputs_0_cmd_payload_last;
  assign io_outputs_0_cmd_payload_fragment_opcode = io_input_cmd_input_payload_fragment_opcode;
  assign io_outputs_0_cmd_payload_fragment_address = io_input_cmd_input_payload_fragment_address;
  assign io_outputs_0_cmd_payload_fragment_length = io_input_cmd_input_payload_fragment_length;
  assign io_outputs_0_cmd_payload_fragment_data = io_input_cmd_input_payload_fragment_data;
  assign io_outputs_0_cmd_payload_fragment_mask = io_input_cmd_input_payload_fragment_mask;
  assign io_outputs_0_cmd_payload_fragment_context = io_input_cmd_input_payload_fragment_context;
  assign logic_hitsS0_1 = ((io_input_cmd_payload_fragment_address & (~ 24'h00ffff)) == 24'hb00000);
  always @(*) begin
    io_outputs_1_cmd_valid = (io_input_cmd_input_valid && logic_hitsS1_1);
    if(logic_cmdWait) begin
      io_outputs_1_cmd_valid = 1'b0;
    end
  end

  assign _zz_io_outputs_1_cmd_payload_last = io_input_cmd_input_payload_last;
  assign io_outputs_1_cmd_payload_last = _zz_io_outputs_1_cmd_payload_last;
  assign io_outputs_1_cmd_payload_fragment_opcode = io_input_cmd_input_payload_fragment_opcode;
  assign io_outputs_1_cmd_payload_fragment_address = io_input_cmd_input_payload_fragment_address;
  assign io_outputs_1_cmd_payload_fragment_length = io_input_cmd_input_payload_fragment_length;
  assign io_outputs_1_cmd_payload_fragment_data = io_input_cmd_input_payload_fragment_data;
  assign io_outputs_1_cmd_payload_fragment_mask = io_input_cmd_input_payload_fragment_mask;
  assign io_outputs_1_cmd_payload_fragment_context = io_input_cmd_input_payload_fragment_context;
  assign logic_hitsS0_2 = ((io_input_cmd_payload_fragment_address & (~ 24'h000fff)) == 24'h100000);
  always @(*) begin
    io_outputs_2_cmd_valid = (io_input_cmd_input_valid && logic_hitsS1_2);
    if(logic_cmdWait) begin
      io_outputs_2_cmd_valid = 1'b0;
    end
  end

  assign _zz_io_outputs_2_cmd_payload_last = io_input_cmd_input_payload_last;
  assign io_outputs_2_cmd_payload_last = _zz_io_outputs_2_cmd_payload_last;
  assign io_outputs_2_cmd_payload_fragment_opcode = io_input_cmd_input_payload_fragment_opcode;
  assign io_outputs_2_cmd_payload_fragment_address = io_input_cmd_input_payload_fragment_address;
  assign io_outputs_2_cmd_payload_fragment_length = io_input_cmd_input_payload_fragment_length;
  assign io_outputs_2_cmd_payload_fragment_data = io_input_cmd_input_payload_fragment_data;
  assign io_outputs_2_cmd_payload_fragment_mask = io_input_cmd_input_payload_fragment_mask;
  assign io_outputs_2_cmd_payload_fragment_context = io_input_cmd_input_payload_fragment_context;
  assign logic_hitsS0_3 = ((io_input_cmd_payload_fragment_address & (~ 24'h0000ff)) == 24'h0);
  always @(*) begin
    io_outputs_3_cmd_valid = (io_input_cmd_input_valid && logic_hitsS1_3);
    if(logic_cmdWait) begin
      io_outputs_3_cmd_valid = 1'b0;
    end
  end

  assign _zz_io_outputs_3_cmd_payload_last = io_input_cmd_input_payload_last;
  assign io_outputs_3_cmd_payload_last = _zz_io_outputs_3_cmd_payload_last;
  assign io_outputs_3_cmd_payload_fragment_opcode = io_input_cmd_input_payload_fragment_opcode;
  assign io_outputs_3_cmd_payload_fragment_address = io_input_cmd_input_payload_fragment_address;
  assign io_outputs_3_cmd_payload_fragment_length = io_input_cmd_input_payload_fragment_length;
  assign io_outputs_3_cmd_payload_fragment_data = io_input_cmd_input_payload_fragment_data;
  assign io_outputs_3_cmd_payload_fragment_mask = io_input_cmd_input_payload_fragment_mask;
  assign io_outputs_3_cmd_payload_fragment_context = io_input_cmd_input_payload_fragment_context;
  assign logic_hitsS0_4 = ((io_input_cmd_payload_fragment_address & (~ 24'h00003f)) == 24'h010000);
  always @(*) begin
    io_outputs_4_cmd_valid = (io_input_cmd_input_valid && logic_hitsS1_4);
    if(logic_cmdWait) begin
      io_outputs_4_cmd_valid = 1'b0;
    end
  end

  assign _zz_io_outputs_4_cmd_payload_last = io_input_cmd_input_payload_last;
  assign io_outputs_4_cmd_payload_last = _zz_io_outputs_4_cmd_payload_last;
  assign io_outputs_4_cmd_payload_fragment_opcode = io_input_cmd_input_payload_fragment_opcode;
  assign io_outputs_4_cmd_payload_fragment_address = io_input_cmd_input_payload_fragment_address;
  assign io_outputs_4_cmd_payload_fragment_length = io_input_cmd_input_payload_fragment_length;
  assign io_outputs_4_cmd_payload_fragment_data = io_input_cmd_input_payload_fragment_data;
  assign io_outputs_4_cmd_payload_fragment_mask = io_input_cmd_input_payload_fragment_mask;
  assign io_outputs_4_cmd_payload_fragment_context = io_input_cmd_input_payload_fragment_context;
  always @(*) begin
    io_input_cmd_input_ready = (({(logic_hitsS1_4 && io_outputs_4_cmd_ready),{(logic_hitsS1_3 && io_outputs_3_cmd_ready),{(logic_hitsS1_2 && io_outputs_2_cmd_ready),{(logic_hitsS1_1 && io_outputs_1_cmd_ready),(logic_hitsS1_0 && io_outputs_0_cmd_ready)}}}} != 5'h0) || logic_noHitS1);
    if(logic_cmdWait) begin
      io_input_cmd_input_ready = 1'b0;
    end
  end

  assign io_input_cmd_input_fire_1 = (io_input_cmd_input_valid && io_input_cmd_input_ready);
  assign io_input_rsp_fire = (io_input_rsp_valid && io_input_rsp_ready);
  assign when_BmbDecoder_l56 = (io_input_cmd_input_valid && (! logic_cmdWait));
  assign logic_rspPending = (logic_rspPendingCounter != 4'b0000);
  assign logic_rspNoHitValid = (! ({logic_rspHits_4,{logic_rspHits_3,{logic_rspHits_2,{logic_rspHits_1,logic_rspHits_0}}}} != 5'h0));
  assign io_input_rsp_fire_1 = (io_input_rsp_valid && io_input_rsp_ready);
  assign when_BmbDecoder_l60 = (io_input_rsp_fire_1 && io_input_rsp_payload_last);
  assign io_input_cmd_input_fire_2 = (io_input_cmd_input_valid && io_input_cmd_input_ready);
  assign when_BmbDecoder_l60_1 = ((io_input_cmd_input_fire_2 && logic_noHitS1) && io_input_cmd_input_payload_last);
  assign io_input_cmd_input_fire_3 = (io_input_cmd_input_valid && io_input_cmd_input_ready);
  assign io_input_cmd_input_fire_4 = (io_input_cmd_input_valid && io_input_cmd_input_ready);
  assign io_input_cmd_input_fire_5 = (io_input_cmd_input_valid && io_input_cmd_input_ready);
  assign io_input_cmd_input_fire_6 = (io_input_cmd_input_valid && io_input_cmd_input_ready);
  always @(*) begin
    io_input_rsp_valid = (({io_outputs_4_rsp_valid,{io_outputs_3_rsp_valid,{io_outputs_2_rsp_valid,{io_outputs_1_rsp_valid,io_outputs_0_rsp_valid}}}} != 5'h0) || (logic_rspPending && logic_rspNoHitValid));
    if(logic_rspNoHit_doIt) begin
      io_input_rsp_valid = 1'b1;
    end
  end

  assign _zz_io_input_rsp_payload_last = (logic_rspHits_1 || logic_rspHits_3);
  assign _zz_io_input_rsp_payload_last_1 = (logic_rspHits_2 || logic_rspHits_3);
  assign _zz_io_input_rsp_payload_last_2 = {logic_rspHits_4,{_zz_io_input_rsp_payload_last_1,_zz_io_input_rsp_payload_last}};
  always @(*) begin
    io_input_rsp_payload_last = _zz_io_input_rsp_payload_last_3;
    if(logic_rspNoHit_doIt) begin
      io_input_rsp_payload_last = 1'b1;
    end
  end

  always @(*) begin
    io_input_rsp_payload_fragment_opcode = _zz_io_input_rsp_payload_fragment_opcode;
    if(logic_rspNoHit_doIt) begin
      io_input_rsp_payload_fragment_opcode = 1'b1;
    end
  end

  assign io_input_rsp_payload_fragment_data = _zz_io_input_rsp_payload_fragment_data;
  always @(*) begin
    io_input_rsp_payload_fragment_context = _zz_io_input_rsp_payload_fragment_context;
    if(logic_rspNoHit_doIt) begin
      io_input_rsp_payload_fragment_context = logic_rspNoHit_context;
    end
  end

  assign io_outputs_0_rsp_ready = io_input_rsp_ready;
  assign io_outputs_1_rsp_ready = io_input_rsp_ready;
  assign io_outputs_2_rsp_ready = io_input_rsp_ready;
  assign io_outputs_3_rsp_ready = io_input_rsp_ready;
  assign io_outputs_4_rsp_ready = io_input_rsp_ready;
  assign logic_cmdWait = ((logic_rspPending && ((((((logic_hitsS1_0 != logic_rspHits_0) || (logic_hitsS1_1 != logic_rspHits_1)) || (logic_hitsS1_2 != logic_rspHits_2)) || (logic_hitsS1_3 != logic_rspHits_3)) || (logic_hitsS1_4 != logic_rspHits_4)) || logic_rspNoHitValid)) || (logic_rspPendingCounter == 4'b1000));
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      io_input_cmd_rValid <= 1'b0;
      logic_rspPendingCounter <= 4'b0000;
      logic_rspNoHit_doIt <= 1'b0;
    end else begin
      if(io_input_cmd_valid) begin
        io_input_cmd_rValid <= 1'b1;
      end
      if(io_input_cmd_input_fire) begin
        io_input_cmd_rValid <= 1'b0;
      end
      logic_rspPendingCounter <= (_zz_logic_rspPendingCounter - _zz_logic_rspPendingCounter_3);
      if(when_BmbDecoder_l60) begin
        logic_rspNoHit_doIt <= 1'b0;
      end
      if(when_BmbDecoder_l60_1) begin
        logic_rspNoHit_doIt <= 1'b1;
      end
    end
  end

  always @(posedge clkout_system) begin
    if(io_input_cmd_ready) begin
      io_input_cmd_rData_last <= io_input_cmd_payload_last;
      io_input_cmd_rData_fragment_opcode <= io_input_cmd_payload_fragment_opcode;
      io_input_cmd_rData_fragment_address <= io_input_cmd_payload_fragment_address;
      io_input_cmd_rData_fragment_length <= io_input_cmd_payload_fragment_length;
      io_input_cmd_rData_fragment_data <= io_input_cmd_payload_fragment_data;
      io_input_cmd_rData_fragment_mask <= io_input_cmd_payload_fragment_mask;
      io_input_cmd_rData_fragment_context <= io_input_cmd_payload_fragment_context;
    end
    if(io_input_cmd_fire) begin
      logic_hitsS1_0 <= logic_hitsS0_0;
      logic_hitsS1_1 <= logic_hitsS0_1;
      logic_hitsS1_2 <= logic_hitsS0_2;
      logic_hitsS1_3 <= logic_hitsS0_3;
      logic_hitsS1_4 <= logic_hitsS0_4;
    end
    if(io_input_cmd_fire_1) begin
      logic_noHitS1 <= logic_noHitS0;
    end
    if(when_BmbDecoder_l56) begin
      logic_rspHits_0 <= logic_hitsS1_0;
      logic_rspHits_1 <= logic_hitsS1_1;
      logic_rspHits_2 <= logic_hitsS1_2;
      logic_rspHits_3 <= logic_hitsS1_3;
      logic_rspHits_4 <= logic_hitsS1_4;
    end
    if(io_input_cmd_input_fire_3) begin
      logic_rspNoHit_singleBeatRsp <= (io_input_cmd_input_payload_fragment_opcode == 1'b1);
    end
    if(io_input_cmd_input_fire_5) begin
      logic_rspNoHit_context <= io_input_cmd_input_payload_fragment_context;
    end
  end


endmodule

module BmbUnburstify_2 (
  input               io_input_cmd_valid,
  output reg          io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [4:0]    io_input_cmd_payload_fragment_length,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output reg          io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output reg [0:0]    io_output_cmd_payload_fragment_opcode,
  output reg [31:0]   io_output_cmd_payload_fragment_address,
  output reg [1:0]    io_output_cmd_payload_fragment_length,
  output     [1:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output reg          io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [1:0]    io_output_rsp_payload_fragment_context,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [11:0]   _zz_buffer_addressIncr;
  wire       [11:0]   _zz_buffer_addressIncr_1;
  wire       [11:0]   _zz_buffer_addressIncr_2;
  wire                doResult;
  reg                 buffer_valid;
  reg        [0:0]    buffer_opcode;
  reg        [31:0]   buffer_address;
  reg        [2:0]    buffer_beat;
  wire                buffer_last;
  wire       [31:0]   buffer_addressIncr;
  wire                buffer_isWrite;
  wire                io_output_cmd_fire;
  wire       [2:0]    cmdTransferBeatCount;
  wire                requireBuffer;
  reg                 cmdContext_drop;
  reg                 cmdContext_last;
  wire                io_output_cmd_fire_1;
  wire                rspContext_drop;
  wire                rspContext_last;
  wire       [1:0]    _zz_rspContext_drop;
  wire                when_Stream_l408;
  reg                 io_output_rsp_thrown_valid;
  wire                io_output_rsp_thrown_ready;
  wire                io_output_rsp_thrown_payload_last;
  wire       [0:0]    io_output_rsp_thrown_payload_fragment_opcode;
  wire       [31:0]   io_output_rsp_thrown_payload_fragment_data;
  wire       [1:0]    io_output_rsp_thrown_payload_fragment_context;

  assign _zz_buffer_addressIncr = (_zz_buffer_addressIncr_1 + 12'h004);
  assign _zz_buffer_addressIncr_2 = buffer_address[11 : 0];
  assign _zz_buffer_addressIncr_1 = _zz_buffer_addressIncr_2;
  assign buffer_last = (buffer_beat == 3'b001);
  assign buffer_addressIncr = {buffer_address[31 : 12],(_zz_buffer_addressIncr & (~ 12'h003))};
  assign buffer_isWrite = (buffer_opcode == 1'b1);
  assign io_output_cmd_fire = (io_output_cmd_valid && io_output_cmd_ready);
  assign cmdTransferBeatCount = io_input_cmd_payload_fragment_length[4 : 2];
  assign requireBuffer = (cmdTransferBeatCount != 3'b000);
  assign io_output_cmd_payload_last = 1'b1;
  assign io_output_cmd_payload_fragment_context = {cmdContext_last,cmdContext_drop};
  always @(*) begin
    if(buffer_valid) begin
      io_output_cmd_payload_fragment_address = buffer_addressIncr;
    end else begin
      io_output_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
      if(requireBuffer) begin
        io_output_cmd_payload_fragment_address[1 : 0] = 2'b00;
      end
    end
  end

  always @(*) begin
    if(buffer_valid) begin
      io_output_cmd_payload_fragment_opcode = buffer_opcode;
    end else begin
      io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
    end
  end

  always @(*) begin
    if(buffer_valid) begin
      io_output_cmd_payload_fragment_length = 2'b11;
    end else begin
      if(requireBuffer) begin
        io_output_cmd_payload_fragment_length = 2'b11;
      end else begin
        io_output_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length[1:0];
      end
    end
  end

  always @(*) begin
    io_input_cmd_ready = 1'b0;
    if(buffer_valid) begin
      io_input_cmd_ready = (buffer_isWrite && io_output_cmd_ready);
    end else begin
      io_input_cmd_ready = io_output_cmd_ready;
    end
  end

  always @(*) begin
    if(buffer_valid) begin
      io_output_cmd_valid = (! (buffer_isWrite && (! io_input_cmd_valid)));
    end else begin
      io_output_cmd_valid = io_input_cmd_valid;
    end
  end

  always @(*) begin
    if(buffer_valid) begin
      cmdContext_last = buffer_last;
    end else begin
      cmdContext_last = (! requireBuffer);
    end
  end

  always @(*) begin
    if(buffer_valid) begin
      cmdContext_drop = buffer_isWrite;
    end else begin
      cmdContext_drop = (io_input_cmd_payload_fragment_opcode == 1'b1);
    end
  end

  assign io_output_cmd_fire_1 = (io_output_cmd_valid && io_output_cmd_ready);
  assign _zz_rspContext_drop = io_output_rsp_payload_fragment_context;
  assign rspContext_drop = _zz_rspContext_drop[0];
  assign rspContext_last = _zz_rspContext_drop[1];
  assign when_Stream_l408 = (! (rspContext_last || (! rspContext_drop)));
  always @(*) begin
    io_output_rsp_thrown_valid = io_output_rsp_valid;
    if(when_Stream_l408) begin
      io_output_rsp_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    io_output_rsp_ready = io_output_rsp_thrown_ready;
    if(when_Stream_l408) begin
      io_output_rsp_ready = 1'b1;
    end
  end

  assign io_output_rsp_thrown_payload_last = io_output_rsp_payload_last;
  assign io_output_rsp_thrown_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_output_rsp_thrown_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_output_rsp_thrown_payload_fragment_context = io_output_rsp_payload_fragment_context;
  assign io_input_rsp_valid = io_output_rsp_thrown_valid;
  assign io_output_rsp_thrown_ready = io_input_rsp_ready;
  assign io_input_rsp_payload_last = rspContext_last;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      buffer_valid <= 1'b0;
    end else begin
      if(io_output_cmd_fire) begin
        if(buffer_last) begin
          buffer_valid <= 1'b0;
        end
      end
      if(!buffer_valid) begin
        buffer_valid <= (requireBuffer && io_output_cmd_fire_1);
      end
    end
  end

  always @(posedge clkout_system) begin
    if(io_output_cmd_fire) begin
      buffer_beat <= (buffer_beat - 3'b001);
      buffer_address[11 : 0] <= buffer_addressIncr[11 : 0];
    end
    if(!buffer_valid) begin
      buffer_opcode <= io_input_cmd_payload_fragment_opcode;
      buffer_address <= io_input_cmd_payload_fragment_address;
      buffer_beat <= cmdTransferBeatCount;
    end
  end


endmodule

//BmbUnburstify replaced by BmbUnburstify

module BmbArbiter (
  input               io_inputs_0_cmd_valid,
  output              io_inputs_0_cmd_ready,
  input               io_inputs_0_cmd_payload_last,
  input      [0:0]    io_inputs_0_cmd_payload_fragment_opcode,
  input      [15:0]   io_inputs_0_cmd_payload_fragment_address,
  input      [1:0]    io_inputs_0_cmd_payload_fragment_length,
  input      [31:0]   io_inputs_0_cmd_payload_fragment_data,
  input      [3:0]    io_inputs_0_cmd_payload_fragment_mask,
  input      [2:0]    io_inputs_0_cmd_payload_fragment_context,
  output              io_inputs_0_rsp_valid,
  input               io_inputs_0_rsp_ready,
  output              io_inputs_0_rsp_payload_last,
  output     [0:0]    io_inputs_0_rsp_payload_fragment_opcode,
  output     [31:0]   io_inputs_0_rsp_payload_fragment_data,
  output     [2:0]    io_inputs_0_rsp_payload_fragment_context,
  input               io_inputs_1_cmd_valid,
  output              io_inputs_1_cmd_ready,
  input               io_inputs_1_cmd_payload_last,
  input      [0:0]    io_inputs_1_cmd_payload_fragment_opcode,
  input      [15:0]   io_inputs_1_cmd_payload_fragment_address,
  input      [1:0]    io_inputs_1_cmd_payload_fragment_length,
  input      [31:0]   io_inputs_1_cmd_payload_fragment_data,
  input      [3:0]    io_inputs_1_cmd_payload_fragment_mask,
  input      [1:0]    io_inputs_1_cmd_payload_fragment_context,
  output              io_inputs_1_rsp_valid,
  input               io_inputs_1_rsp_ready,
  output              io_inputs_1_rsp_payload_last,
  output     [0:0]    io_inputs_1_rsp_payload_fragment_opcode,
  output     [31:0]   io_inputs_1_rsp_payload_fragment_data,
  output     [1:0]    io_inputs_1_rsp_payload_fragment_context,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_source,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [15:0]   io_output_cmd_payload_fragment_address,
  output     [1:0]    io_output_cmd_payload_fragment_length,
  output     [31:0]   io_output_cmd_payload_fragment_data,
  output     [3:0]    io_output_cmd_payload_fragment_mask,
  output     [2:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_source,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [2:0]    io_output_rsp_payload_fragment_context,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [2:0]    memory_arbiter_io_inputs_1_payload_fragment_context;
  wire                memory_arbiter_io_inputs_0_ready;
  wire                memory_arbiter_io_inputs_1_ready;
  wire                memory_arbiter_io_output_valid;
  wire                memory_arbiter_io_output_payload_last;
  wire       [0:0]    memory_arbiter_io_output_payload_fragment_source;
  wire       [0:0]    memory_arbiter_io_output_payload_fragment_opcode;
  wire       [15:0]   memory_arbiter_io_output_payload_fragment_address;
  wire       [1:0]    memory_arbiter_io_output_payload_fragment_length;
  wire       [31:0]   memory_arbiter_io_output_payload_fragment_data;
  wire       [3:0]    memory_arbiter_io_output_payload_fragment_mask;
  wire       [2:0]    memory_arbiter_io_output_payload_fragment_context;
  wire       [0:0]    memory_arbiter_io_chosen;
  wire       [1:0]    memory_arbiter_io_chosenOH;
  wire       [1:0]    _zz_io_output_cmd_payload_fragment_source;
  reg                 _zz_io_output_rsp_ready;
  wire       [0:0]    memory_rspSel;

  assign _zz_io_output_cmd_payload_fragment_source = {memory_arbiter_io_output_payload_fragment_source,memory_arbiter_io_chosen};
  StreamArbiter memory_arbiter (
    .io_inputs_0_valid                       (io_inputs_0_cmd_valid                                     ), //i
    .io_inputs_0_ready                       (memory_arbiter_io_inputs_0_ready                          ), //o
    .io_inputs_0_payload_last                (io_inputs_0_cmd_payload_last                              ), //i
    .io_inputs_0_payload_fragment_source     (1'b0                                                      ), //i
    .io_inputs_0_payload_fragment_opcode     (io_inputs_0_cmd_payload_fragment_opcode                   ), //i
    .io_inputs_0_payload_fragment_address    (io_inputs_0_cmd_payload_fragment_address[15:0]            ), //i
    .io_inputs_0_payload_fragment_length     (io_inputs_0_cmd_payload_fragment_length[1:0]              ), //i
    .io_inputs_0_payload_fragment_data       (io_inputs_0_cmd_payload_fragment_data[31:0]               ), //i
    .io_inputs_0_payload_fragment_mask       (io_inputs_0_cmd_payload_fragment_mask[3:0]                ), //i
    .io_inputs_0_payload_fragment_context    (io_inputs_0_cmd_payload_fragment_context[2:0]             ), //i
    .io_inputs_1_valid                       (io_inputs_1_cmd_valid                                     ), //i
    .io_inputs_1_ready                       (memory_arbiter_io_inputs_1_ready                          ), //o
    .io_inputs_1_payload_last                (io_inputs_1_cmd_payload_last                              ), //i
    .io_inputs_1_payload_fragment_source     (1'b0                                                      ), //i
    .io_inputs_1_payload_fragment_opcode     (io_inputs_1_cmd_payload_fragment_opcode                   ), //i
    .io_inputs_1_payload_fragment_address    (io_inputs_1_cmd_payload_fragment_address[15:0]            ), //i
    .io_inputs_1_payload_fragment_length     (io_inputs_1_cmd_payload_fragment_length[1:0]              ), //i
    .io_inputs_1_payload_fragment_data       (io_inputs_1_cmd_payload_fragment_data[31:0]               ), //i
    .io_inputs_1_payload_fragment_mask       (io_inputs_1_cmd_payload_fragment_mask[3:0]                ), //i
    .io_inputs_1_payload_fragment_context    (memory_arbiter_io_inputs_1_payload_fragment_context[2:0]  ), //i
    .io_output_valid                         (memory_arbiter_io_output_valid                            ), //o
    .io_output_ready                         (io_output_cmd_ready                                       ), //i
    .io_output_payload_last                  (memory_arbiter_io_output_payload_last                     ), //o
    .io_output_payload_fragment_source       (memory_arbiter_io_output_payload_fragment_source          ), //o
    .io_output_payload_fragment_opcode       (memory_arbiter_io_output_payload_fragment_opcode          ), //o
    .io_output_payload_fragment_address      (memory_arbiter_io_output_payload_fragment_address[15:0]   ), //o
    .io_output_payload_fragment_length       (memory_arbiter_io_output_payload_fragment_length[1:0]     ), //o
    .io_output_payload_fragment_data         (memory_arbiter_io_output_payload_fragment_data[31:0]      ), //o
    .io_output_payload_fragment_mask         (memory_arbiter_io_output_payload_fragment_mask[3:0]       ), //o
    .io_output_payload_fragment_context      (memory_arbiter_io_output_payload_fragment_context[2:0]    ), //o
    .io_chosen                               (memory_arbiter_io_chosen                                  ), //o
    .io_chosenOH                             (memory_arbiter_io_chosenOH[1:0]                           ), //o
    .clkout_system                           (clkout_system                                             ), //i
    .systemCdCtrl_logic_outputReset          (systemCdCtrl_logic_outputReset                            )  //i
  );
  always @(*) begin
    case(memory_rspSel)
      1'b0 : begin
        _zz_io_output_rsp_ready = io_inputs_0_rsp_ready;
      end
      default : begin
        _zz_io_output_rsp_ready = io_inputs_1_rsp_ready;
      end
    endcase
  end

  assign io_inputs_0_cmd_ready = memory_arbiter_io_inputs_0_ready;
  assign io_inputs_1_cmd_ready = memory_arbiter_io_inputs_1_ready;
  assign memory_arbiter_io_inputs_1_payload_fragment_context = {1'd0, io_inputs_1_cmd_payload_fragment_context};
  assign io_output_cmd_valid = memory_arbiter_io_output_valid;
  assign io_output_cmd_payload_last = memory_arbiter_io_output_payload_last;
  assign io_output_cmd_payload_fragment_opcode = memory_arbiter_io_output_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = memory_arbiter_io_output_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = memory_arbiter_io_output_payload_fragment_length;
  assign io_output_cmd_payload_fragment_data = memory_arbiter_io_output_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = memory_arbiter_io_output_payload_fragment_mask;
  assign io_output_cmd_payload_fragment_context = memory_arbiter_io_output_payload_fragment_context;
  assign io_output_cmd_payload_fragment_source = _zz_io_output_cmd_payload_fragment_source[0:0];
  assign memory_rspSel = io_output_rsp_payload_fragment_source[0 : 0];
  assign io_inputs_0_rsp_valid = (io_output_rsp_valid && (memory_rspSel == 1'b0));
  assign io_inputs_0_rsp_payload_last = io_output_rsp_payload_last;
  assign io_inputs_0_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_inputs_0_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_inputs_0_rsp_payload_fragment_context = io_output_rsp_payload_fragment_context;
  assign io_inputs_1_rsp_valid = (io_output_rsp_valid && (memory_rspSel == 1'b1));
  assign io_inputs_1_rsp_payload_last = io_output_rsp_payload_last;
  assign io_inputs_1_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_inputs_1_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_inputs_1_rsp_payload_fragment_context = io_output_rsp_payload_fragment_context[1:0];
  assign io_output_rsp_ready = _zz_io_output_rsp_ready;

endmodule

module BmbUnburstify (
  input               io_input_cmd_valid,
  output reg          io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [4:0]    io_input_cmd_payload_fragment_length,
  input      [31:0]   io_input_cmd_payload_fragment_data,
  input      [3:0]    io_input_cmd_payload_fragment_mask,
  input      [0:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output     [0:0]    io_input_rsp_payload_fragment_context,
  output reg          io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output reg [0:0]    io_output_cmd_payload_fragment_opcode,
  output reg [31:0]   io_output_cmd_payload_fragment_address,
  output reg [1:0]    io_output_cmd_payload_fragment_length,
  output     [31:0]   io_output_cmd_payload_fragment_data,
  output     [3:0]    io_output_cmd_payload_fragment_mask,
  output     [2:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output reg          io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [2:0]    io_output_rsp_payload_fragment_context,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [11:0]   _zz_buffer_addressIncr;
  wire       [11:0]   _zz_buffer_addressIncr_1;
  wire       [11:0]   _zz_buffer_addressIncr_2;
  wire                doResult;
  reg                 buffer_valid;
  reg        [0:0]    buffer_opcode;
  reg        [31:0]   buffer_address;
  reg        [0:0]    buffer_context;
  reg        [2:0]    buffer_beat;
  wire                buffer_last;
  wire       [31:0]   buffer_addressIncr;
  wire                buffer_isWrite;
  wire                io_output_cmd_fire;
  wire       [2:0]    cmdTransferBeatCount;
  wire                requireBuffer;
  reg                 cmdContext_drop;
  reg                 cmdContext_last;
  reg        [0:0]    cmdContext_context;
  wire                io_output_cmd_fire_1;
  wire                rspContext_drop;
  wire                rspContext_last;
  wire       [0:0]    rspContext_context;
  wire       [2:0]    _zz_rspContext_drop;
  wire                when_Stream_l408;
  reg                 io_output_rsp_thrown_valid;
  wire                io_output_rsp_thrown_ready;
  wire                io_output_rsp_thrown_payload_last;
  wire       [0:0]    io_output_rsp_thrown_payload_fragment_opcode;
  wire       [31:0]   io_output_rsp_thrown_payload_fragment_data;
  wire       [2:0]    io_output_rsp_thrown_payload_fragment_context;

  assign _zz_buffer_addressIncr = (_zz_buffer_addressIncr_1 + 12'h004);
  assign _zz_buffer_addressIncr_2 = buffer_address[11 : 0];
  assign _zz_buffer_addressIncr_1 = _zz_buffer_addressIncr_2;
  assign buffer_last = (buffer_beat == 3'b001);
  assign buffer_addressIncr = {buffer_address[31 : 12],(_zz_buffer_addressIncr & (~ 12'h003))};
  assign buffer_isWrite = (buffer_opcode == 1'b1);
  assign io_output_cmd_fire = (io_output_cmd_valid && io_output_cmd_ready);
  assign cmdTransferBeatCount = io_input_cmd_payload_fragment_length[4 : 2];
  assign requireBuffer = (cmdTransferBeatCount != 3'b000);
  assign io_output_cmd_payload_fragment_data = io_input_cmd_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = io_input_cmd_payload_fragment_mask;
  assign io_output_cmd_payload_last = 1'b1;
  assign io_output_cmd_payload_fragment_context = {cmdContext_context,{cmdContext_last,cmdContext_drop}};
  always @(*) begin
    if(buffer_valid) begin
      io_output_cmd_payload_fragment_address = buffer_addressIncr;
    end else begin
      io_output_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
      if(requireBuffer) begin
        io_output_cmd_payload_fragment_address[1 : 0] = 2'b00;
      end
    end
  end

  always @(*) begin
    if(buffer_valid) begin
      io_output_cmd_payload_fragment_opcode = buffer_opcode;
    end else begin
      io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
    end
  end

  always @(*) begin
    if(buffer_valid) begin
      io_output_cmd_payload_fragment_length = 2'b11;
    end else begin
      if(requireBuffer) begin
        io_output_cmd_payload_fragment_length = 2'b11;
      end else begin
        io_output_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length[1:0];
      end
    end
  end

  always @(*) begin
    if(buffer_valid) begin
      cmdContext_context = buffer_context;
    end else begin
      cmdContext_context = io_input_cmd_payload_fragment_context;
    end
  end

  always @(*) begin
    io_input_cmd_ready = 1'b0;
    if(buffer_valid) begin
      io_input_cmd_ready = (buffer_isWrite && io_output_cmd_ready);
    end else begin
      io_input_cmd_ready = io_output_cmd_ready;
    end
  end

  always @(*) begin
    if(buffer_valid) begin
      io_output_cmd_valid = (! (buffer_isWrite && (! io_input_cmd_valid)));
    end else begin
      io_output_cmd_valid = io_input_cmd_valid;
    end
  end

  always @(*) begin
    if(buffer_valid) begin
      cmdContext_last = buffer_last;
    end else begin
      cmdContext_last = (! requireBuffer);
    end
  end

  always @(*) begin
    if(buffer_valid) begin
      cmdContext_drop = buffer_isWrite;
    end else begin
      cmdContext_drop = (io_input_cmd_payload_fragment_opcode == 1'b1);
    end
  end

  assign io_output_cmd_fire_1 = (io_output_cmd_valid && io_output_cmd_ready);
  assign _zz_rspContext_drop = io_output_rsp_payload_fragment_context;
  assign rspContext_drop = _zz_rspContext_drop[0];
  assign rspContext_last = _zz_rspContext_drop[1];
  assign rspContext_context = _zz_rspContext_drop[2 : 2];
  assign when_Stream_l408 = (! (rspContext_last || (! rspContext_drop)));
  always @(*) begin
    io_output_rsp_thrown_valid = io_output_rsp_valid;
    if(when_Stream_l408) begin
      io_output_rsp_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    io_output_rsp_ready = io_output_rsp_thrown_ready;
    if(when_Stream_l408) begin
      io_output_rsp_ready = 1'b1;
    end
  end

  assign io_output_rsp_thrown_payload_last = io_output_rsp_payload_last;
  assign io_output_rsp_thrown_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_output_rsp_thrown_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_output_rsp_thrown_payload_fragment_context = io_output_rsp_payload_fragment_context;
  assign io_input_rsp_valid = io_output_rsp_thrown_valid;
  assign io_output_rsp_thrown_ready = io_input_rsp_ready;
  assign io_input_rsp_payload_last = rspContext_last;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = rspContext_context;
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      buffer_valid <= 1'b0;
    end else begin
      if(io_output_cmd_fire) begin
        if(buffer_last) begin
          buffer_valid <= 1'b0;
        end
      end
      if(!buffer_valid) begin
        buffer_valid <= (requireBuffer && io_output_cmd_fire_1);
      end
    end
  end

  always @(posedge clkout_system) begin
    if(io_output_cmd_fire) begin
      buffer_beat <= (buffer_beat - 3'b001);
      buffer_address[11 : 0] <= buffer_addressIncr[11 : 0];
    end
    if(!buffer_valid) begin
      buffer_opcode <= io_input_cmd_payload_fragment_opcode;
      buffer_address <= io_input_cmd_payload_fragment_address;
      buffer_context <= io_input_cmd_payload_fragment_context;
      buffer_beat <= cmdTransferBeatCount;
    end
  end


endmodule

module BmbOnChipRam (
  input               io_bus_cmd_valid,
  output              io_bus_cmd_ready,
  input               io_bus_cmd_payload_last,
  input      [0:0]    io_bus_cmd_payload_fragment_source,
  input      [0:0]    io_bus_cmd_payload_fragment_opcode,
  input      [15:0]   io_bus_cmd_payload_fragment_address,
  input      [1:0]    io_bus_cmd_payload_fragment_length,
  input      [31:0]   io_bus_cmd_payload_fragment_data,
  input      [3:0]    io_bus_cmd_payload_fragment_mask,
  input      [2:0]    io_bus_cmd_payload_fragment_context,
  output              io_bus_rsp_valid,
  input               io_bus_rsp_ready,
  output              io_bus_rsp_payload_last,
  output     [0:0]    io_bus_rsp_payload_fragment_source,
  output     [0:0]    io_bus_rsp_payload_fragment_opcode,
  output     [31:0]   io_bus_rsp_payload_fragment_data,
  output     [2:0]    io_bus_rsp_payload_fragment_context,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  reg        [31:0]   _zz_ram_port0;
  wire                io_bus_rsp_isStall;
  reg                 io_bus_cmd_valid_regNextWhen;
  reg        [0:0]    io_bus_cmd_payload_fragment_source_regNextWhen;
  reg        [2:0]    io_bus_cmd_payload_fragment_context_regNextWhen;
  wire       [13:0]   _zz_io_bus_rsp_payload_fragment_data;
  wire                io_bus_cmd_fire;
  wire                _zz_io_bus_rsp_payload_fragment_data_1;
  wire       [31:0]   _zz_io_bus_rsp_payload_fragment_data_2;
  reg [7:0] ram_symbol0 [0:16383];
  reg [7:0] ram_symbol1 [0:16383];
  reg [7:0] ram_symbol2 [0:16383];
  reg [7:0] ram_symbol3 [0:16383];
  reg [7:0] _zz_ramsymbol_read;
  reg [7:0] _zz_ramsymbol_read_1;
  reg [7:0] _zz_ramsymbol_read_2;
  reg [7:0] _zz_ramsymbol_read_3;

  initial begin
    $readmemh("saxon/progmem0.hex",ram_symbol0);
    $readmemh("saxon/progmem1.hex",ram_symbol1);
    $readmemh("saxon/progmem2.hex",ram_symbol2);
    $readmemh("saxon/progmem3.hex",ram_symbol3);
  end
  always @(*) begin
    _zz_ram_port0 = {_zz_ramsymbol_read_3, _zz_ramsymbol_read_2, _zz_ramsymbol_read_1, _zz_ramsymbol_read};
  end
  always @(posedge clkout_system) begin
    if(io_bus_cmd_fire) begin
      _zz_ramsymbol_read <= ram_symbol0[_zz_io_bus_rsp_payload_fragment_data];
      _zz_ramsymbol_read_1 <= ram_symbol1[_zz_io_bus_rsp_payload_fragment_data];
      _zz_ramsymbol_read_2 <= ram_symbol2[_zz_io_bus_rsp_payload_fragment_data];
      _zz_ramsymbol_read_3 <= ram_symbol3[_zz_io_bus_rsp_payload_fragment_data];
    end
  end

  always @(posedge clkout_system) begin
    if(io_bus_cmd_payload_fragment_mask[0] && io_bus_cmd_fire && _zz_io_bus_rsp_payload_fragment_data_1 ) begin
      ram_symbol0[_zz_io_bus_rsp_payload_fragment_data] <= _zz_io_bus_rsp_payload_fragment_data_2[7 : 0];
    end
    if(io_bus_cmd_payload_fragment_mask[1] && io_bus_cmd_fire && _zz_io_bus_rsp_payload_fragment_data_1 ) begin
      ram_symbol1[_zz_io_bus_rsp_payload_fragment_data] <= _zz_io_bus_rsp_payload_fragment_data_2[15 : 8];
    end
    if(io_bus_cmd_payload_fragment_mask[2] && io_bus_cmd_fire && _zz_io_bus_rsp_payload_fragment_data_1 ) begin
      ram_symbol2[_zz_io_bus_rsp_payload_fragment_data] <= _zz_io_bus_rsp_payload_fragment_data_2[23 : 16];
    end
    if(io_bus_cmd_payload_fragment_mask[3] && io_bus_cmd_fire && _zz_io_bus_rsp_payload_fragment_data_1 ) begin
      ram_symbol3[_zz_io_bus_rsp_payload_fragment_data] <= _zz_io_bus_rsp_payload_fragment_data_2[31 : 24];
    end
  end

  assign io_bus_rsp_isStall = (io_bus_rsp_valid && (! io_bus_rsp_ready));
  assign io_bus_cmd_ready = (! io_bus_rsp_isStall);
  assign io_bus_rsp_valid = io_bus_cmd_valid_regNextWhen;
  assign io_bus_rsp_payload_fragment_source = io_bus_cmd_payload_fragment_source_regNextWhen;
  assign io_bus_rsp_payload_fragment_context = io_bus_cmd_payload_fragment_context_regNextWhen;
  assign _zz_io_bus_rsp_payload_fragment_data = (io_bus_cmd_payload_fragment_address >>> 2);
  assign io_bus_cmd_fire = (io_bus_cmd_valid && io_bus_cmd_ready);
  assign _zz_io_bus_rsp_payload_fragment_data_1 = (io_bus_cmd_payload_fragment_opcode == 1'b1);
  assign _zz_io_bus_rsp_payload_fragment_data_2 = io_bus_cmd_payload_fragment_data;
  assign io_bus_rsp_payload_fragment_data = _zz_ram_port0;
  assign io_bus_rsp_payload_fragment_opcode = 1'b0;
  assign io_bus_rsp_payload_last = 1'b1;
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      io_bus_cmd_valid_regNextWhen <= 1'b0;
    end else begin
      if(io_bus_cmd_ready) begin
        io_bus_cmd_valid_regNextWhen <= io_bus_cmd_valid;
      end
    end
  end

  always @(posedge clkout_system) begin
    if(io_bus_cmd_ready) begin
      io_bus_cmd_payload_fragment_source_regNextWhen <= io_bus_cmd_payload_fragment_source;
    end
    if(io_bus_cmd_ready) begin
      io_bus_cmd_payload_fragment_context_regNextWhen <= io_bus_cmd_payload_fragment_context;
    end
  end


endmodule

module BmbDecoder_1 (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [4:0]    io_input_cmd_payload_fragment_length,
  input      [31:0]   io_input_cmd_payload_fragment_data,
  input      [3:0]    io_input_cmd_payload_fragment_mask,
  input      [0:0]    io_input_cmd_payload_fragment_context,
  output reg          io_input_rsp_valid,
  input               io_input_rsp_ready,
  output reg          io_input_rsp_payload_last,
  output reg [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output reg [0:0]    io_input_rsp_payload_fragment_context,
  output reg          io_outputs_0_cmd_valid,
  input               io_outputs_0_cmd_ready,
  output              io_outputs_0_cmd_payload_last,
  output     [0:0]    io_outputs_0_cmd_payload_fragment_opcode,
  output     [31:0]   io_outputs_0_cmd_payload_fragment_address,
  output     [4:0]    io_outputs_0_cmd_payload_fragment_length,
  output     [31:0]   io_outputs_0_cmd_payload_fragment_data,
  output     [3:0]    io_outputs_0_cmd_payload_fragment_mask,
  output     [0:0]    io_outputs_0_cmd_payload_fragment_context,
  input               io_outputs_0_rsp_valid,
  output              io_outputs_0_rsp_ready,
  input               io_outputs_0_rsp_payload_last,
  input      [0:0]    io_outputs_0_rsp_payload_fragment_opcode,
  input      [31:0]   io_outputs_0_rsp_payload_fragment_data,
  input      [0:0]    io_outputs_0_rsp_payload_fragment_context,
  output reg          io_outputs_1_cmd_valid,
  input               io_outputs_1_cmd_ready,
  output              io_outputs_1_cmd_payload_last,
  output     [0:0]    io_outputs_1_cmd_payload_fragment_opcode,
  output     [31:0]   io_outputs_1_cmd_payload_fragment_address,
  output     [4:0]    io_outputs_1_cmd_payload_fragment_length,
  output     [31:0]   io_outputs_1_cmd_payload_fragment_data,
  output     [3:0]    io_outputs_1_cmd_payload_fragment_mask,
  output     [0:0]    io_outputs_1_cmd_payload_fragment_context,
  input               io_outputs_1_rsp_valid,
  output              io_outputs_1_rsp_ready,
  input               io_outputs_1_rsp_payload_last,
  input      [0:0]    io_outputs_1_rsp_payload_fragment_opcode,
  input      [31:0]   io_outputs_1_rsp_payload_fragment_data,
  input      [0:0]    io_outputs_1_rsp_payload_fragment_context,
  output reg          io_outputs_2_cmd_valid,
  input               io_outputs_2_cmd_ready,
  output              io_outputs_2_cmd_payload_last,
  output     [0:0]    io_outputs_2_cmd_payload_fragment_opcode,
  output     [31:0]   io_outputs_2_cmd_payload_fragment_address,
  output     [4:0]    io_outputs_2_cmd_payload_fragment_length,
  output     [31:0]   io_outputs_2_cmd_payload_fragment_data,
  output     [3:0]    io_outputs_2_cmd_payload_fragment_mask,
  output     [0:0]    io_outputs_2_cmd_payload_fragment_context,
  input               io_outputs_2_rsp_valid,
  output              io_outputs_2_rsp_ready,
  input               io_outputs_2_rsp_payload_last,
  input      [0:0]    io_outputs_2_rsp_payload_fragment_opcode,
  input      [31:0]   io_outputs_2_rsp_payload_fragment_data,
  input      [0:0]    io_outputs_2_rsp_payload_fragment_context,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [6:0]    _zz_logic_rspPendingCounter;
  wire       [6:0]    _zz_logic_rspPendingCounter_1;
  wire       [0:0]    _zz_logic_rspPendingCounter_2;
  wire       [6:0]    _zz_logic_rspPendingCounter_3;
  wire       [0:0]    _zz_logic_rspPendingCounter_4;
  reg                 _zz_io_input_rsp_payload_last_1;
  reg        [0:0]    _zz_io_input_rsp_payload_fragment_opcode;
  reg        [31:0]   _zz_io_input_rsp_payload_fragment_data;
  reg        [0:0]    _zz_io_input_rsp_payload_fragment_context;
  wire                logic_input_valid;
  reg                 logic_input_ready;
  wire                logic_input_payload_last;
  wire       [0:0]    logic_input_payload_fragment_opcode;
  wire       [31:0]   logic_input_payload_fragment_address;
  wire       [4:0]    logic_input_payload_fragment_length;
  wire       [31:0]   logic_input_payload_fragment_data;
  wire       [3:0]    logic_input_payload_fragment_mask;
  wire       [0:0]    logic_input_payload_fragment_context;
  wire                logic_hitsS0_0;
  wire                logic_hitsS0_1;
  wire                logic_hitsS0_2;
  wire                logic_noHitS0;
  wire                _zz_io_outputs_0_cmd_payload_last;
  wire                _zz_io_outputs_1_cmd_payload_last;
  wire                _zz_io_outputs_2_cmd_payload_last;
  reg        [6:0]    logic_rspPendingCounter;
  wire                logic_input_fire;
  wire                io_input_rsp_fire;
  wire                logic_cmdWait;
  wire                when_BmbDecoder_l56;
  reg                 logic_rspHits_0;
  reg                 logic_rspHits_1;
  reg                 logic_rspHits_2;
  wire                logic_rspPending;
  wire                logic_rspNoHitValid;
  reg                 logic_rspNoHit_doIt;
  wire                io_input_rsp_fire_1;
  wire                when_BmbDecoder_l60;
  wire                logic_input_fire_1;
  wire                when_BmbDecoder_l60_1;
  wire                logic_input_fire_2;
  reg                 logic_rspNoHit_singleBeatRsp;
  wire                logic_input_fire_3;
  wire                logic_input_fire_4;
  reg        [0:0]    logic_rspNoHit_context;
  wire                logic_input_fire_5;
  reg        [2:0]    logic_rspNoHit_counter;
  wire       [1:0]    _zz_io_input_rsp_payload_last;
  wire                when_BmbDecoder_l81;
  wire                io_input_rsp_fire_2;

  assign _zz_logic_rspPendingCounter = (logic_rspPendingCounter + _zz_logic_rspPendingCounter_1);
  assign _zz_logic_rspPendingCounter_2 = (logic_input_fire && logic_input_payload_last);
  assign _zz_logic_rspPendingCounter_1 = {6'd0, _zz_logic_rspPendingCounter_2};
  assign _zz_logic_rspPendingCounter_4 = (io_input_rsp_fire && io_input_rsp_payload_last);
  assign _zz_logic_rspPendingCounter_3 = {6'd0, _zz_logic_rspPendingCounter_4};
  always @(*) begin
    case(_zz_io_input_rsp_payload_last)
      2'b00 : begin
        _zz_io_input_rsp_payload_last_1 = io_outputs_0_rsp_payload_last;
        _zz_io_input_rsp_payload_fragment_opcode = io_outputs_0_rsp_payload_fragment_opcode;
        _zz_io_input_rsp_payload_fragment_data = io_outputs_0_rsp_payload_fragment_data;
        _zz_io_input_rsp_payload_fragment_context = io_outputs_0_rsp_payload_fragment_context;
      end
      2'b01 : begin
        _zz_io_input_rsp_payload_last_1 = io_outputs_1_rsp_payload_last;
        _zz_io_input_rsp_payload_fragment_opcode = io_outputs_1_rsp_payload_fragment_opcode;
        _zz_io_input_rsp_payload_fragment_data = io_outputs_1_rsp_payload_fragment_data;
        _zz_io_input_rsp_payload_fragment_context = io_outputs_1_rsp_payload_fragment_context;
      end
      default : begin
        _zz_io_input_rsp_payload_last_1 = io_outputs_2_rsp_payload_last;
        _zz_io_input_rsp_payload_fragment_opcode = io_outputs_2_rsp_payload_fragment_opcode;
        _zz_io_input_rsp_payload_fragment_data = io_outputs_2_rsp_payload_fragment_data;
        _zz_io_input_rsp_payload_fragment_context = io_outputs_2_rsp_payload_fragment_context;
      end
    endcase
  end

  assign logic_input_valid = io_input_cmd_valid;
  assign io_input_cmd_ready = logic_input_ready;
  assign logic_input_payload_last = io_input_cmd_payload_last;
  assign logic_input_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign logic_input_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign logic_input_payload_fragment_length = io_input_cmd_payload_fragment_length;
  assign logic_input_payload_fragment_data = io_input_cmd_payload_fragment_data;
  assign logic_input_payload_fragment_mask = io_input_cmd_payload_fragment_mask;
  assign logic_input_payload_fragment_context = io_input_cmd_payload_fragment_context;
  assign logic_noHitS0 = (! ({logic_hitsS0_2,{logic_hitsS0_1,logic_hitsS0_0}} != 3'b000));
  assign logic_hitsS0_0 = ((io_input_cmd_payload_fragment_address & (~ 32'h01ffffff)) == 32'h40000000);
  always @(*) begin
    io_outputs_0_cmd_valid = (logic_input_valid && logic_hitsS0_0);
    if(logic_cmdWait) begin
      io_outputs_0_cmd_valid = 1'b0;
    end
  end

  assign _zz_io_outputs_0_cmd_payload_last = logic_input_payload_last;
  assign io_outputs_0_cmd_payload_last = _zz_io_outputs_0_cmd_payload_last;
  assign io_outputs_0_cmd_payload_fragment_opcode = logic_input_payload_fragment_opcode;
  assign io_outputs_0_cmd_payload_fragment_address = logic_input_payload_fragment_address;
  assign io_outputs_0_cmd_payload_fragment_length = logic_input_payload_fragment_length;
  assign io_outputs_0_cmd_payload_fragment_data = logic_input_payload_fragment_data;
  assign io_outputs_0_cmd_payload_fragment_mask = logic_input_payload_fragment_mask;
  assign io_outputs_0_cmd_payload_fragment_context = logic_input_payload_fragment_context;
  assign logic_hitsS0_1 = ((io_input_cmd_payload_fragment_address & (~ 32'h0000ffff)) == 32'h80000000);
  always @(*) begin
    io_outputs_1_cmd_valid = (logic_input_valid && logic_hitsS0_1);
    if(logic_cmdWait) begin
      io_outputs_1_cmd_valid = 1'b0;
    end
  end

  assign _zz_io_outputs_1_cmd_payload_last = logic_input_payload_last;
  assign io_outputs_1_cmd_payload_last = _zz_io_outputs_1_cmd_payload_last;
  assign io_outputs_1_cmd_payload_fragment_opcode = logic_input_payload_fragment_opcode;
  assign io_outputs_1_cmd_payload_fragment_address = logic_input_payload_fragment_address;
  assign io_outputs_1_cmd_payload_fragment_length = logic_input_payload_fragment_length;
  assign io_outputs_1_cmd_payload_fragment_data = logic_input_payload_fragment_data;
  assign io_outputs_1_cmd_payload_fragment_mask = logic_input_payload_fragment_mask;
  assign io_outputs_1_cmd_payload_fragment_context = logic_input_payload_fragment_context;
  assign logic_hitsS0_2 = ((io_input_cmd_payload_fragment_address & (~ 32'h00ffffff)) == 32'hf0000000);
  always @(*) begin
    io_outputs_2_cmd_valid = (logic_input_valid && logic_hitsS0_2);
    if(logic_cmdWait) begin
      io_outputs_2_cmd_valid = 1'b0;
    end
  end

  assign _zz_io_outputs_2_cmd_payload_last = logic_input_payload_last;
  assign io_outputs_2_cmd_payload_last = _zz_io_outputs_2_cmd_payload_last;
  assign io_outputs_2_cmd_payload_fragment_opcode = logic_input_payload_fragment_opcode;
  assign io_outputs_2_cmd_payload_fragment_address = logic_input_payload_fragment_address;
  assign io_outputs_2_cmd_payload_fragment_length = logic_input_payload_fragment_length;
  assign io_outputs_2_cmd_payload_fragment_data = logic_input_payload_fragment_data;
  assign io_outputs_2_cmd_payload_fragment_mask = logic_input_payload_fragment_mask;
  assign io_outputs_2_cmd_payload_fragment_context = logic_input_payload_fragment_context;
  always @(*) begin
    logic_input_ready = (({(logic_hitsS0_2 && io_outputs_2_cmd_ready),{(logic_hitsS0_1 && io_outputs_1_cmd_ready),(logic_hitsS0_0 && io_outputs_0_cmd_ready)}} != 3'b000) || logic_noHitS0);
    if(logic_cmdWait) begin
      logic_input_ready = 1'b0;
    end
  end

  assign logic_input_fire = (logic_input_valid && logic_input_ready);
  assign io_input_rsp_fire = (io_input_rsp_valid && io_input_rsp_ready);
  assign when_BmbDecoder_l56 = (logic_input_valid && (! logic_cmdWait));
  assign logic_rspPending = (logic_rspPendingCounter != 7'h0);
  assign logic_rspNoHitValid = (! ({logic_rspHits_2,{logic_rspHits_1,logic_rspHits_0}} != 3'b000));
  assign io_input_rsp_fire_1 = (io_input_rsp_valid && io_input_rsp_ready);
  assign when_BmbDecoder_l60 = (io_input_rsp_fire_1 && io_input_rsp_payload_last);
  assign logic_input_fire_1 = (logic_input_valid && logic_input_ready);
  assign when_BmbDecoder_l60_1 = ((logic_input_fire_1 && logic_noHitS0) && logic_input_payload_last);
  assign logic_input_fire_2 = (logic_input_valid && logic_input_ready);
  assign logic_input_fire_3 = (logic_input_valid && logic_input_ready);
  assign logic_input_fire_4 = (logic_input_valid && logic_input_ready);
  assign logic_input_fire_5 = (logic_input_valid && logic_input_ready);
  always @(*) begin
    io_input_rsp_valid = (({io_outputs_2_rsp_valid,{io_outputs_1_rsp_valid,io_outputs_0_rsp_valid}} != 3'b000) || (logic_rspPending && logic_rspNoHitValid));
    if(logic_rspNoHit_doIt) begin
      io_input_rsp_valid = 1'b1;
    end
  end

  assign _zz_io_input_rsp_payload_last = {logic_rspHits_2,logic_rspHits_1};
  always @(*) begin
    io_input_rsp_payload_last = _zz_io_input_rsp_payload_last_1;
    if(logic_rspNoHit_doIt) begin
      io_input_rsp_payload_last = 1'b0;
      if(when_BmbDecoder_l81) begin
        io_input_rsp_payload_last = 1'b1;
      end
      if(logic_rspNoHit_singleBeatRsp) begin
        io_input_rsp_payload_last = 1'b1;
      end
    end
  end

  always @(*) begin
    io_input_rsp_payload_fragment_opcode = _zz_io_input_rsp_payload_fragment_opcode;
    if(logic_rspNoHit_doIt) begin
      io_input_rsp_payload_fragment_opcode = 1'b1;
    end
  end

  assign io_input_rsp_payload_fragment_data = _zz_io_input_rsp_payload_fragment_data;
  always @(*) begin
    io_input_rsp_payload_fragment_context = _zz_io_input_rsp_payload_fragment_context;
    if(logic_rspNoHit_doIt) begin
      io_input_rsp_payload_fragment_context = logic_rspNoHit_context;
    end
  end

  assign when_BmbDecoder_l81 = (logic_rspNoHit_counter == 3'b000);
  assign io_input_rsp_fire_2 = (io_input_rsp_valid && io_input_rsp_ready);
  assign io_outputs_0_rsp_ready = io_input_rsp_ready;
  assign io_outputs_1_rsp_ready = io_input_rsp_ready;
  assign io_outputs_2_rsp_ready = io_input_rsp_ready;
  assign logic_cmdWait = ((logic_rspPending && ((((logic_hitsS0_0 != logic_rspHits_0) || (logic_hitsS0_1 != logic_rspHits_1)) || (logic_hitsS0_2 != logic_rspHits_2)) || logic_rspNoHitValid)) || (logic_rspPendingCounter == 7'h40));
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      logic_rspPendingCounter <= 7'h0;
      logic_rspNoHit_doIt <= 1'b0;
    end else begin
      logic_rspPendingCounter <= (_zz_logic_rspPendingCounter - _zz_logic_rspPendingCounter_3);
      if(when_BmbDecoder_l60) begin
        logic_rspNoHit_doIt <= 1'b0;
      end
      if(when_BmbDecoder_l60_1) begin
        logic_rspNoHit_doIt <= 1'b1;
      end
    end
  end

  always @(posedge clkout_system) begin
    if(when_BmbDecoder_l56) begin
      logic_rspHits_0 <= logic_hitsS0_0;
      logic_rspHits_1 <= logic_hitsS0_1;
      logic_rspHits_2 <= logic_hitsS0_2;
    end
    if(logic_input_fire_2) begin
      logic_rspNoHit_singleBeatRsp <= (logic_input_payload_fragment_opcode == 1'b1);
    end
    if(logic_input_fire_4) begin
      logic_rspNoHit_context <= logic_input_payload_fragment_context;
    end
    if(logic_input_fire_5) begin
      logic_rspNoHit_counter <= logic_input_payload_fragment_length[4 : 2];
    end
    if(logic_rspNoHit_doIt) begin
      if(io_input_rsp_fire_2) begin
        logic_rspNoHit_counter <= (logic_rspNoHit_counter - 3'b001);
      end
    end
  end


endmodule

module BufferCC_4 (
  input               io_dataIn,
  output              io_dataOut,
  input               clkout_system,
  input               system_cpu_debugReset
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clkout_system or posedge system_cpu_debugReset) begin
    if(system_cpu_debugReset) begin
      buffers_0 <= 1'b1;
      buffers_1 <= 1'b1;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BmbDecoder (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [4:0]    io_input_cmd_payload_fragment_length,
  output reg          io_input_rsp_valid,
  input               io_input_rsp_ready,
  output reg          io_input_rsp_payload_last,
  output reg [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output reg          io_outputs_0_cmd_valid,
  input               io_outputs_0_cmd_ready,
  output              io_outputs_0_cmd_payload_last,
  output     [0:0]    io_outputs_0_cmd_payload_fragment_opcode,
  output     [31:0]   io_outputs_0_cmd_payload_fragment_address,
  output     [4:0]    io_outputs_0_cmd_payload_fragment_length,
  input               io_outputs_0_rsp_valid,
  output              io_outputs_0_rsp_ready,
  input               io_outputs_0_rsp_payload_last,
  input      [0:0]    io_outputs_0_rsp_payload_fragment_opcode,
  input      [31:0]   io_outputs_0_rsp_payload_fragment_data,
  output reg          io_outputs_1_cmd_valid,
  input               io_outputs_1_cmd_ready,
  output              io_outputs_1_cmd_payload_last,
  output     [0:0]    io_outputs_1_cmd_payload_fragment_opcode,
  output     [31:0]   io_outputs_1_cmd_payload_fragment_address,
  output     [4:0]    io_outputs_1_cmd_payload_fragment_length,
  input               io_outputs_1_rsp_valid,
  output              io_outputs_1_rsp_ready,
  input               io_outputs_1_rsp_payload_last,
  input      [0:0]    io_outputs_1_rsp_payload_fragment_opcode,
  input      [31:0]   io_outputs_1_rsp_payload_fragment_data,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [6:0]    _zz_logic_rspPendingCounter;
  wire       [6:0]    _zz_logic_rspPendingCounter_1;
  wire       [0:0]    _zz_logic_rspPendingCounter_2;
  wire       [6:0]    _zz_logic_rspPendingCounter_3;
  wire       [0:0]    _zz_logic_rspPendingCounter_4;
  reg                 _zz_io_input_rsp_payload_last_1;
  reg        [0:0]    _zz_io_input_rsp_payload_fragment_opcode;
  reg        [31:0]   _zz_io_input_rsp_payload_fragment_data;
  wire                logic_input_valid;
  reg                 logic_input_ready;
  wire                logic_input_payload_last;
  wire       [0:0]    logic_input_payload_fragment_opcode;
  wire       [31:0]   logic_input_payload_fragment_address;
  wire       [4:0]    logic_input_payload_fragment_length;
  wire                logic_hitsS0_0;
  wire                logic_hitsS0_1;
  wire                logic_noHitS0;
  wire                _zz_io_outputs_0_cmd_payload_last;
  wire                _zz_io_outputs_1_cmd_payload_last;
  reg        [6:0]    logic_rspPendingCounter;
  wire                logic_input_fire;
  wire                io_input_rsp_fire;
  wire                logic_cmdWait;
  wire                when_BmbDecoder_l56;
  reg                 logic_rspHits_0;
  reg                 logic_rspHits_1;
  wire                logic_rspPending;
  wire                logic_rspNoHitValid;
  reg                 logic_rspNoHit_doIt;
  wire                io_input_rsp_fire_1;
  wire                when_BmbDecoder_l60;
  wire                logic_input_fire_1;
  wire                when_BmbDecoder_l60_1;
  wire                logic_input_fire_2;
  reg                 logic_rspNoHit_singleBeatRsp;
  wire                logic_input_fire_3;
  wire                logic_input_fire_4;
  wire                logic_input_fire_5;
  reg        [2:0]    logic_rspNoHit_counter;
  wire       [0:0]    _zz_io_input_rsp_payload_last;
  wire                when_BmbDecoder_l81;
  wire                io_input_rsp_fire_2;

  assign _zz_logic_rspPendingCounter = (logic_rspPendingCounter + _zz_logic_rspPendingCounter_1);
  assign _zz_logic_rspPendingCounter_2 = (logic_input_fire && logic_input_payload_last);
  assign _zz_logic_rspPendingCounter_1 = {6'd0, _zz_logic_rspPendingCounter_2};
  assign _zz_logic_rspPendingCounter_4 = (io_input_rsp_fire && io_input_rsp_payload_last);
  assign _zz_logic_rspPendingCounter_3 = {6'd0, _zz_logic_rspPendingCounter_4};
  always @(*) begin
    case(_zz_io_input_rsp_payload_last)
      1'b0 : begin
        _zz_io_input_rsp_payload_last_1 = io_outputs_0_rsp_payload_last;
        _zz_io_input_rsp_payload_fragment_opcode = io_outputs_0_rsp_payload_fragment_opcode;
        _zz_io_input_rsp_payload_fragment_data = io_outputs_0_rsp_payload_fragment_data;
      end
      default : begin
        _zz_io_input_rsp_payload_last_1 = io_outputs_1_rsp_payload_last;
        _zz_io_input_rsp_payload_fragment_opcode = io_outputs_1_rsp_payload_fragment_opcode;
        _zz_io_input_rsp_payload_fragment_data = io_outputs_1_rsp_payload_fragment_data;
      end
    endcase
  end

  assign logic_input_valid = io_input_cmd_valid;
  assign io_input_cmd_ready = logic_input_ready;
  assign logic_input_payload_last = io_input_cmd_payload_last;
  assign logic_input_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign logic_input_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign logic_input_payload_fragment_length = io_input_cmd_payload_fragment_length;
  assign logic_noHitS0 = (! ({logic_hitsS0_1,logic_hitsS0_0} != 2'b00));
  assign logic_hitsS0_0 = ((io_input_cmd_payload_fragment_address & (~ 32'h01ffffff)) == 32'h40000000);
  always @(*) begin
    io_outputs_0_cmd_valid = (logic_input_valid && logic_hitsS0_0);
    if(logic_cmdWait) begin
      io_outputs_0_cmd_valid = 1'b0;
    end
  end

  assign _zz_io_outputs_0_cmd_payload_last = logic_input_payload_last;
  assign io_outputs_0_cmd_payload_last = _zz_io_outputs_0_cmd_payload_last;
  assign io_outputs_0_cmd_payload_fragment_opcode = logic_input_payload_fragment_opcode;
  assign io_outputs_0_cmd_payload_fragment_address = logic_input_payload_fragment_address;
  assign io_outputs_0_cmd_payload_fragment_length = logic_input_payload_fragment_length;
  assign logic_hitsS0_1 = ((io_input_cmd_payload_fragment_address & (~ 32'h0000ffff)) == 32'h80000000);
  always @(*) begin
    io_outputs_1_cmd_valid = (logic_input_valid && logic_hitsS0_1);
    if(logic_cmdWait) begin
      io_outputs_1_cmd_valid = 1'b0;
    end
  end

  assign _zz_io_outputs_1_cmd_payload_last = logic_input_payload_last;
  assign io_outputs_1_cmd_payload_last = _zz_io_outputs_1_cmd_payload_last;
  assign io_outputs_1_cmd_payload_fragment_opcode = logic_input_payload_fragment_opcode;
  assign io_outputs_1_cmd_payload_fragment_address = logic_input_payload_fragment_address;
  assign io_outputs_1_cmd_payload_fragment_length = logic_input_payload_fragment_length;
  always @(*) begin
    logic_input_ready = (({(logic_hitsS0_1 && io_outputs_1_cmd_ready),(logic_hitsS0_0 && io_outputs_0_cmd_ready)} != 2'b00) || logic_noHitS0);
    if(logic_cmdWait) begin
      logic_input_ready = 1'b0;
    end
  end

  assign logic_input_fire = (logic_input_valid && logic_input_ready);
  assign io_input_rsp_fire = (io_input_rsp_valid && io_input_rsp_ready);
  assign when_BmbDecoder_l56 = (logic_input_valid && (! logic_cmdWait));
  assign logic_rspPending = (logic_rspPendingCounter != 7'h0);
  assign logic_rspNoHitValid = (! ({logic_rspHits_1,logic_rspHits_0} != 2'b00));
  assign io_input_rsp_fire_1 = (io_input_rsp_valid && io_input_rsp_ready);
  assign when_BmbDecoder_l60 = (io_input_rsp_fire_1 && io_input_rsp_payload_last);
  assign logic_input_fire_1 = (logic_input_valid && logic_input_ready);
  assign when_BmbDecoder_l60_1 = ((logic_input_fire_1 && logic_noHitS0) && logic_input_payload_last);
  assign logic_input_fire_2 = (logic_input_valid && logic_input_ready);
  assign logic_input_fire_3 = (logic_input_valid && logic_input_ready);
  assign logic_input_fire_4 = (logic_input_valid && logic_input_ready);
  assign logic_input_fire_5 = (logic_input_valid && logic_input_ready);
  always @(*) begin
    io_input_rsp_valid = (({io_outputs_1_rsp_valid,io_outputs_0_rsp_valid} != 2'b00) || (logic_rspPending && logic_rspNoHitValid));
    if(logic_rspNoHit_doIt) begin
      io_input_rsp_valid = 1'b1;
    end
  end

  assign _zz_io_input_rsp_payload_last = logic_rspHits_1;
  always @(*) begin
    io_input_rsp_payload_last = _zz_io_input_rsp_payload_last_1;
    if(logic_rspNoHit_doIt) begin
      io_input_rsp_payload_last = 1'b0;
      if(when_BmbDecoder_l81) begin
        io_input_rsp_payload_last = 1'b1;
      end
    end
  end

  always @(*) begin
    io_input_rsp_payload_fragment_opcode = _zz_io_input_rsp_payload_fragment_opcode;
    if(logic_rspNoHit_doIt) begin
      io_input_rsp_payload_fragment_opcode = 1'b1;
    end
  end

  assign io_input_rsp_payload_fragment_data = _zz_io_input_rsp_payload_fragment_data;
  assign when_BmbDecoder_l81 = (logic_rspNoHit_counter == 3'b000);
  assign io_input_rsp_fire_2 = (io_input_rsp_valid && io_input_rsp_ready);
  assign io_outputs_0_rsp_ready = io_input_rsp_ready;
  assign io_outputs_1_rsp_ready = io_input_rsp_ready;
  assign logic_cmdWait = ((logic_rspPending && (((logic_hitsS0_0 != logic_rspHits_0) || (logic_hitsS0_1 != logic_rspHits_1)) || logic_rspNoHitValid)) || (logic_rspPendingCounter == 7'h40));
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      logic_rspPendingCounter <= 7'h0;
      logic_rspNoHit_doIt <= 1'b0;
    end else begin
      logic_rspPendingCounter <= (_zz_logic_rspPendingCounter - _zz_logic_rspPendingCounter_3);
      if(when_BmbDecoder_l60) begin
        logic_rspNoHit_doIt <= 1'b0;
      end
      if(when_BmbDecoder_l60_1) begin
        logic_rspNoHit_doIt <= 1'b1;
      end
    end
  end

  always @(posedge clkout_system) begin
    if(when_BmbDecoder_l56) begin
      logic_rspHits_0 <= logic_hitsS0_0;
      logic_rspHits_1 <= logic_hitsS0_1;
    end
    if(logic_input_fire_2) begin
      logic_rspNoHit_singleBeatRsp <= (logic_input_payload_fragment_opcode == 1'b1);
    end
    if(logic_input_fire_5) begin
      logic_rspNoHit_counter <= logic_input_payload_fragment_length[4 : 2];
    end
    if(logic_rspNoHit_doIt) begin
      if(io_input_rsp_fire_2) begin
        logic_rspNoHit_counter <= (logic_rspNoHit_counter - 3'b001);
      end
    end
  end


endmodule

module SystemDebugger (
  input               io_remote_cmd_valid,
  output              io_remote_cmd_ready,
  input               io_remote_cmd_payload_last,
  input      [0:0]    io_remote_cmd_payload_fragment,
  output              io_remote_rsp_valid,
  input               io_remote_rsp_ready,
  output              io_remote_rsp_payload_error,
  output     [31:0]   io_remote_rsp_payload_data,
  output              io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [31:0]   io_mem_cmd_payload_address,
  output     [31:0]   io_mem_cmd_payload_data,
  output              io_mem_cmd_payload_wr,
  output     [1:0]    io_mem_cmd_payload_size,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload,
  input               clkout_system,
  input               debugCdCtrl_logic_outputReset
);

  reg        [66:0]   dispatcher_dataShifter;
  reg                 dispatcher_dataLoaded;
  reg        [7:0]    dispatcher_headerShifter;
  wire       [7:0]    dispatcher_header;
  reg                 dispatcher_headerLoaded;
  reg        [2:0]    dispatcher_counter;
  wire                when_Fragment_l346;
  wire                when_Fragment_l349;
  wire       [66:0]   _zz_io_mem_cmd_payload_address;
  wire                io_mem_cmd_isStall;
  wire                when_Fragment_l372;

  assign dispatcher_header = dispatcher_headerShifter[7 : 0];
  assign when_Fragment_l346 = (dispatcher_headerLoaded == 1'b0);
  assign when_Fragment_l349 = (dispatcher_counter == 3'b111);
  assign io_remote_cmd_ready = (! dispatcher_dataLoaded);
  assign _zz_io_mem_cmd_payload_address = dispatcher_dataShifter[66 : 0];
  assign io_mem_cmd_payload_address = _zz_io_mem_cmd_payload_address[31 : 0];
  assign io_mem_cmd_payload_data = _zz_io_mem_cmd_payload_address[63 : 32];
  assign io_mem_cmd_payload_wr = _zz_io_mem_cmd_payload_address[64];
  assign io_mem_cmd_payload_size = _zz_io_mem_cmd_payload_address[66 : 65];
  assign io_mem_cmd_valid = (dispatcher_dataLoaded && (dispatcher_header == 8'h0));
  assign io_mem_cmd_isStall = (io_mem_cmd_valid && (! io_mem_cmd_ready));
  assign when_Fragment_l372 = ((dispatcher_headerLoaded && dispatcher_dataLoaded) && (! io_mem_cmd_isStall));
  assign io_remote_rsp_valid = io_mem_rsp_valid;
  assign io_remote_rsp_payload_error = 1'b0;
  assign io_remote_rsp_payload_data = io_mem_rsp_payload;
  always @(posedge clkout_system) begin
    if(debugCdCtrl_logic_outputReset) begin
      dispatcher_dataLoaded <= 1'b0;
      dispatcher_headerLoaded <= 1'b0;
      dispatcher_counter <= 3'b000;
    end else begin
      if(io_remote_cmd_valid) begin
        if(when_Fragment_l346) begin
          dispatcher_counter <= (dispatcher_counter + 3'b001);
          if(when_Fragment_l349) begin
            dispatcher_headerLoaded <= 1'b1;
          end
        end
        if(io_remote_cmd_payload_last) begin
          dispatcher_headerLoaded <= 1'b1;
          dispatcher_dataLoaded <= 1'b1;
          dispatcher_counter <= 3'b000;
        end
      end
      if(when_Fragment_l372) begin
        dispatcher_headerLoaded <= 1'b0;
        dispatcher_dataLoaded <= 1'b0;
      end
    end
  end

  always @(posedge clkout_system) begin
    if(io_remote_cmd_valid) begin
      if(when_Fragment_l346) begin
        dispatcher_headerShifter <= ({io_remote_cmd_payload_fragment,dispatcher_headerShifter} >>> 1);
      end else begin
        dispatcher_dataShifter <= ({io_remote_cmd_payload_fragment,dispatcher_dataShifter} >>> 1);
      end
    end
  end


endmodule

module JtagBridge (
  input               io_jtag_tms,
  input               io_jtag_tdi,
  output              io_jtag_tdo,
  input               io_jtag_tck,
  output              io_remote_cmd_valid,
  input               io_remote_cmd_ready,
  output              io_remote_cmd_payload_last,
  output     [0:0]    io_remote_cmd_payload_fragment,
  input               io_remote_rsp_valid,
  output              io_remote_rsp_ready,
  input               io_remote_rsp_payload_error,
  input      [31:0]   io_remote_rsp_payload_data,
  input               clkout_system,
  input               debugCdCtrl_logic_outputReset
);
  localparam JtagState_RESET = 4'd0;
  localparam JtagState_IDLE = 4'd1;
  localparam JtagState_IR_SELECT = 4'd2;
  localparam JtagState_IR_CAPTURE = 4'd3;
  localparam JtagState_IR_SHIFT = 4'd4;
  localparam JtagState_IR_EXIT1 = 4'd5;
  localparam JtagState_IR_PAUSE = 4'd6;
  localparam JtagState_IR_EXIT2 = 4'd7;
  localparam JtagState_IR_UPDATE = 4'd8;
  localparam JtagState_DR_SELECT = 4'd9;
  localparam JtagState_DR_CAPTURE = 4'd10;
  localparam JtagState_DR_SHIFT = 4'd11;
  localparam JtagState_DR_EXIT1 = 4'd12;
  localparam JtagState_DR_PAUSE = 4'd13;
  localparam JtagState_DR_EXIT2 = 4'd14;
  localparam JtagState_DR_UPDATE = 4'd15;

  wire                flowCCByToggle_1_io_input_payload_last;
  wire                flowCCByToggle_1_io_output_valid;
  wire                flowCCByToggle_1_io_output_payload_last;
  wire       [0:0]    flowCCByToggle_1_io_output_payload_fragment;
  wire       [3:0]    _zz_jtag_tap_isBypass;
  wire       [3:0]    _zz_jtag_tap_isBypass_1;
  wire       [1:0]    _zz_jtag_tap_instructionShift;
  wire                system_cmd_valid;
  wire                system_cmd_payload_last;
  wire       [0:0]    system_cmd_payload_fragment;
  (* async_reg = "true" *) reg                 system_rsp_valid;
  (* async_reg = "true" *) reg                 system_rsp_payload_error;
  (* async_reg = "true" *) reg        [31:0]   system_rsp_payload_data;
  wire                io_remote_rsp_fire;
  wire       [3:0]    jtag_tap_fsm_stateNext;
  reg        [3:0]    jtag_tap_fsm_state = JtagState_RESET;
  reg        [3:0]    _zz_jtag_tap_fsm_stateNext;
  reg        [3:0]    jtag_tap_instruction;
  reg        [3:0]    jtag_tap_instructionShift;
  reg                 jtag_tap_bypass;
  reg                 jtag_tap_tdoUnbufferd;
  reg                 jtag_tap_tdoDr;
  wire                jtag_tap_tdoIr;
  wire                jtag_tap_isBypass;
  reg                 jtag_tap_tdoUnbufferd_regNext;
  wire                _zz_1;
  reg        [31:0]   _zz_jtag_tap_tdoDr;
  wire                when_JtagTap_l120;
  wire                _zz_io_input_valid;
  wire                _zz_io_input_valid_1;
  wire       [0:0]    _zz_io_input_payload_fragment;
  reg                 _zz_io_input_valid_2;
  reg                 _zz_io_input_payload_fragment_1;
  wire                _zz_2;
  reg        [33:0]   _zz_jtag_tap_tdoDr_1;
  `ifndef SYNTHESIS
  reg [79:0] jtag_tap_fsm_stateNext_string;
  reg [79:0] jtag_tap_fsm_state_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_string;
  `endif


  assign _zz_jtag_tap_isBypass = jtag_tap_instruction;
  assign _zz_jtag_tap_isBypass_1 = 4'b1111;
  assign _zz_jtag_tap_instructionShift = 2'b01;
  FlowCCByToggle flowCCByToggle_1 (
    .io_input_valid                   (_zz_io_input_valid_2                         ), //i
    .io_input_payload_last            (flowCCByToggle_1_io_input_payload_last       ), //i
    .io_input_payload_fragment        (_zz_io_input_payload_fragment                ), //i
    .io_output_valid                  (flowCCByToggle_1_io_output_valid             ), //o
    .io_output_payload_last           (flowCCByToggle_1_io_output_payload_last      ), //o
    .io_output_payload_fragment       (flowCCByToggle_1_io_output_payload_fragment  ), //o
    .io_jtag_tck                      (io_jtag_tck                                  ), //i
    .clkout_system                    (clkout_system                                ), //i
    .debugCdCtrl_logic_outputReset    (debugCdCtrl_logic_outputReset                )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(jtag_tap_fsm_stateNext)
      JtagState_RESET : jtag_tap_fsm_stateNext_string = "RESET     ";
      JtagState_IDLE : jtag_tap_fsm_stateNext_string = "IDLE      ";
      JtagState_IR_SELECT : jtag_tap_fsm_stateNext_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : jtag_tap_fsm_stateNext_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : jtag_tap_fsm_stateNext_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : jtag_tap_fsm_stateNext_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : jtag_tap_fsm_stateNext_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : jtag_tap_fsm_stateNext_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : jtag_tap_fsm_stateNext_string = "IR_UPDATE ";
      JtagState_DR_SELECT : jtag_tap_fsm_stateNext_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : jtag_tap_fsm_stateNext_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : jtag_tap_fsm_stateNext_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : jtag_tap_fsm_stateNext_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : jtag_tap_fsm_stateNext_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : jtag_tap_fsm_stateNext_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : jtag_tap_fsm_stateNext_string = "DR_UPDATE ";
      default : jtag_tap_fsm_stateNext_string = "??????????";
    endcase
  end
  always @(*) begin
    case(jtag_tap_fsm_state)
      JtagState_RESET : jtag_tap_fsm_state_string = "RESET     ";
      JtagState_IDLE : jtag_tap_fsm_state_string = "IDLE      ";
      JtagState_IR_SELECT : jtag_tap_fsm_state_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : jtag_tap_fsm_state_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : jtag_tap_fsm_state_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : jtag_tap_fsm_state_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : jtag_tap_fsm_state_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : jtag_tap_fsm_state_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : jtag_tap_fsm_state_string = "IR_UPDATE ";
      JtagState_DR_SELECT : jtag_tap_fsm_state_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : jtag_tap_fsm_state_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : jtag_tap_fsm_state_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : jtag_tap_fsm_state_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : jtag_tap_fsm_state_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : jtag_tap_fsm_state_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : jtag_tap_fsm_state_string = "DR_UPDATE ";
      default : jtag_tap_fsm_state_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_string = "??????????";
    endcase
  end
  `endif

  assign io_remote_cmd_valid = system_cmd_valid;
  assign io_remote_cmd_payload_last = system_cmd_payload_last;
  assign io_remote_cmd_payload_fragment = system_cmd_payload_fragment;
  assign io_remote_rsp_fire = (io_remote_rsp_valid && io_remote_rsp_ready);
  assign io_remote_rsp_ready = 1'b1;
  always @(*) begin
    case(jtag_tap_fsm_state)
      JtagState_IDLE : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_DR_SELECT : JtagState_IDLE);
      end
      JtagState_IR_SELECT : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_RESET : JtagState_IR_CAPTURE);
      end
      JtagState_IR_CAPTURE : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_IR_EXIT1 : JtagState_IR_SHIFT);
      end
      JtagState_IR_SHIFT : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_IR_EXIT1 : JtagState_IR_SHIFT);
      end
      JtagState_IR_EXIT1 : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_IR_UPDATE : JtagState_IR_PAUSE);
      end
      JtagState_IR_PAUSE : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_IR_EXIT2 : JtagState_IR_PAUSE);
      end
      JtagState_IR_EXIT2 : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_IR_UPDATE : JtagState_IR_SHIFT);
      end
      JtagState_IR_UPDATE : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_DR_SELECT : JtagState_IDLE);
      end
      JtagState_DR_SELECT : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_IR_SELECT : JtagState_DR_CAPTURE);
      end
      JtagState_DR_CAPTURE : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_DR_EXIT1 : JtagState_DR_SHIFT);
      end
      JtagState_DR_SHIFT : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_DR_EXIT1 : JtagState_DR_SHIFT);
      end
      JtagState_DR_EXIT1 : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_DR_UPDATE : JtagState_DR_PAUSE);
      end
      JtagState_DR_PAUSE : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_DR_EXIT2 : JtagState_DR_PAUSE);
      end
      JtagState_DR_EXIT2 : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_DR_UPDATE : JtagState_DR_SHIFT);
      end
      JtagState_DR_UPDATE : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_DR_SELECT : JtagState_IDLE);
      end
      default : begin
        _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_RESET : JtagState_IDLE);
      end
    endcase
  end

  assign jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext;
  always @(*) begin
    jtag_tap_tdoUnbufferd = jtag_tap_bypass;
    case(jtag_tap_fsm_state)
      JtagState_IR_SHIFT : begin
        jtag_tap_tdoUnbufferd = jtag_tap_tdoIr;
      end
      JtagState_DR_SHIFT : begin
        if(jtag_tap_isBypass) begin
          jtag_tap_tdoUnbufferd = jtag_tap_bypass;
        end else begin
          jtag_tap_tdoUnbufferd = jtag_tap_tdoDr;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    jtag_tap_tdoDr = 1'b0;
    if(_zz_1) begin
      jtag_tap_tdoDr = _zz_jtag_tap_tdoDr[0];
    end
    if(_zz_io_input_valid) begin
      jtag_tap_tdoDr = 1'b0;
    end
    if(_zz_2) begin
      jtag_tap_tdoDr = _zz_jtag_tap_tdoDr_1[0];
    end
  end

  assign jtag_tap_tdoIr = jtag_tap_instructionShift[0];
  assign jtag_tap_isBypass = ($signed(_zz_jtag_tap_isBypass) == $signed(_zz_jtag_tap_isBypass_1));
  assign io_jtag_tdo = jtag_tap_tdoUnbufferd_regNext;
  assign _zz_1 = (jtag_tap_instruction == 4'b0001);
  assign when_JtagTap_l120 = (jtag_tap_fsm_state == JtagState_RESET);
  assign _zz_io_input_payload_fragment[0] = _zz_io_input_payload_fragment_1;
  assign flowCCByToggle_1_io_input_payload_last = (! (_zz_io_input_valid && _zz_io_input_valid_1));
  assign system_cmd_valid = flowCCByToggle_1_io_output_valid;
  assign system_cmd_payload_last = flowCCByToggle_1_io_output_payload_last;
  assign system_cmd_payload_fragment = flowCCByToggle_1_io_output_payload_fragment;
  assign _zz_io_input_valid = (jtag_tap_instruction == 4'b0010);
  assign _zz_io_input_valid_1 = (jtag_tap_fsm_state == JtagState_DR_SHIFT);
  assign _zz_2 = (jtag_tap_instruction == 4'b0011);
  always @(posedge clkout_system) begin
    if(io_remote_cmd_valid) begin
      system_rsp_valid <= 1'b0;
    end
    if(io_remote_rsp_fire) begin
      system_rsp_valid <= 1'b1;
      system_rsp_payload_error <= io_remote_rsp_payload_error;
      system_rsp_payload_data <= io_remote_rsp_payload_data;
    end
  end

  always @(posedge io_jtag_tck) begin
    jtag_tap_fsm_state <= jtag_tap_fsm_stateNext;
    jtag_tap_bypass <= io_jtag_tdi;
    case(jtag_tap_fsm_state)
      JtagState_IR_CAPTURE : begin
        jtag_tap_instructionShift <= {2'd0, _zz_jtag_tap_instructionShift};
      end
      JtagState_IR_SHIFT : begin
        jtag_tap_instructionShift <= ({io_jtag_tdi,jtag_tap_instructionShift} >>> 1);
      end
      JtagState_IR_UPDATE : begin
        jtag_tap_instruction <= jtag_tap_instructionShift;
      end
      JtagState_DR_SHIFT : begin
        jtag_tap_instructionShift <= ({io_jtag_tdi,jtag_tap_instructionShift} >>> 1);
      end
      default : begin
      end
    endcase
    if(_zz_1) begin
      if((jtag_tap_fsm_state == JtagState_DR_SHIFT)) begin
        _zz_jtag_tap_tdoDr <= ({io_jtag_tdi,_zz_jtag_tap_tdoDr} >>> 1);
      end
    end
    if((jtag_tap_fsm_state == JtagState_DR_CAPTURE)) begin
      _zz_jtag_tap_tdoDr <= 32'h10001fff;
    end
    if(when_JtagTap_l120) begin
      jtag_tap_instruction <= 4'b0001;
    end
    _zz_io_input_valid_2 <= (_zz_io_input_valid && _zz_io_input_valid_1);
    _zz_io_input_payload_fragment_1 <= io_jtag_tdi;
    if(_zz_2) begin
      if((jtag_tap_fsm_state == JtagState_DR_CAPTURE)) begin
        _zz_jtag_tap_tdoDr_1 <= {{system_rsp_payload_data,system_rsp_payload_error},system_rsp_valid};
      end
      if((jtag_tap_fsm_state == JtagState_DR_SHIFT)) begin
        _zz_jtag_tap_tdoDr_1 <= ({io_jtag_tdi,_zz_jtag_tap_tdoDr_1} >>> 1);
      end
    end
  end

  always @(negedge io_jtag_tck) begin
    jtag_tap_tdoUnbufferd_regNext <= jtag_tap_tdoUnbufferd;
  end


endmodule

module VexRiscv (
  output              dBus_cmd_valid,
  input               dBus_cmd_ready,
  output              dBus_cmd_payload_wr,
  output              dBus_cmd_payload_uncached,
  output     [31:0]   dBus_cmd_payload_address,
  output     [31:0]   dBus_cmd_payload_data,
  output     [3:0]    dBus_cmd_payload_mask,
  output     [2:0]    dBus_cmd_payload_size,
  output              dBus_cmd_payload_last,
  input               dBus_rsp_valid,
  input               dBus_rsp_payload_last,
  input      [31:0]   dBus_rsp_payload_data,
  input               dBus_rsp_payload_error,
  input               timerInterrupt,
  input               externalInterrupt,
  input               softwareInterrupt,
  input               debug_bus_cmd_valid,
  output reg          debug_bus_cmd_ready,
  input               debug_bus_cmd_payload_wr,
  input      [7:0]    debug_bus_cmd_payload_address,
  input      [31:0]   debug_bus_cmd_payload_data,
  output reg [31:0]   debug_bus_rsp_data,
  output              debug_resetOut,
  output              iBus_cmd_valid,
  input               iBus_cmd_ready,
  output reg [31:0]   iBus_cmd_payload_address,
  output     [2:0]    iBus_cmd_payload_size,
  input               iBus_rsp_valid,
  input      [31:0]   iBus_rsp_payload_data,
  input               iBus_rsp_payload_error,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset,
  input               debugCdCtrl_logic_outputReset
);
  localparam ShiftCtrlEnum_DISABLE_1 = 2'd0;
  localparam ShiftCtrlEnum_SLL_1 = 2'd1;
  localparam ShiftCtrlEnum_SRL_1 = 2'd2;
  localparam ShiftCtrlEnum_SRA_1 = 2'd3;
  localparam EnvCtrlEnum_NONE = 2'd0;
  localparam EnvCtrlEnum_XRET = 2'd1;
  localparam EnvCtrlEnum_ECALL = 2'd2;
  localparam BranchCtrlEnum_INC = 2'd0;
  localparam BranchCtrlEnum_B = 2'd1;
  localparam BranchCtrlEnum_JAL = 2'd2;
  localparam BranchCtrlEnum_JALR = 2'd3;
  localparam AluBitwiseCtrlEnum_XOR_1 = 2'd0;
  localparam AluBitwiseCtrlEnum_OR_1 = 2'd1;
  localparam AluBitwiseCtrlEnum_AND_1 = 2'd2;
  localparam Src2CtrlEnum_RS = 2'd0;
  localparam Src2CtrlEnum_IMI = 2'd1;
  localparam Src2CtrlEnum_IMS = 2'd2;
  localparam Src2CtrlEnum_PC = 2'd3;
  localparam AluCtrlEnum_ADD_SUB = 2'd0;
  localparam AluCtrlEnum_SLT_SLTU = 2'd1;
  localparam AluCtrlEnum_BITWISE = 2'd2;
  localparam Src1CtrlEnum_RS = 2'd0;
  localparam Src1CtrlEnum_IMU = 2'd1;
  localparam Src1CtrlEnum_PC_INCREMENT = 2'd2;
  localparam Src1CtrlEnum_URS1 = 2'd3;

  wire                IBusCachedPlugin_cache_io_flush;
  wire                IBusCachedPlugin_cache_io_cpu_prefetch_isValid;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_isValid;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_isStuck;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_isRemoved;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_isUser;
  wire                IBusCachedPlugin_cache_io_cpu_decode_isValid;
  wire                IBusCachedPlugin_cache_io_cpu_decode_isStuck;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_pc;
  reg                 IBusCachedPlugin_cache_io_cpu_fill_valid;
  wire                dataCache_1_io_cpu_execute_isValid;
  wire       [31:0]   dataCache_1_io_cpu_execute_address;
  wire                dataCache_1_io_cpu_memory_isValid;
  wire       [31:0]   dataCache_1_io_cpu_memory_address;
  reg                 dataCache_1_io_cpu_memory_mmuRsp_isIoAccess;
  reg                 dataCache_1_io_cpu_writeBack_isValid;
  wire                dataCache_1_io_cpu_writeBack_isUser;
  wire       [31:0]   dataCache_1_io_cpu_writeBack_storeData;
  wire       [31:0]   dataCache_1_io_cpu_writeBack_address;
  wire                dataCache_1_io_cpu_writeBack_fence_SW;
  wire                dataCache_1_io_cpu_writeBack_fence_SR;
  wire                dataCache_1_io_cpu_writeBack_fence_SO;
  wire                dataCache_1_io_cpu_writeBack_fence_SI;
  wire                dataCache_1_io_cpu_writeBack_fence_PW;
  wire                dataCache_1_io_cpu_writeBack_fence_PR;
  wire                dataCache_1_io_cpu_writeBack_fence_PO;
  wire                dataCache_1_io_cpu_writeBack_fence_PI;
  wire       [3:0]    dataCache_1_io_cpu_writeBack_fence_FM;
  wire                dataCache_1_io_cpu_flush_valid;
  wire       [31:0]   _zz_RegFilePlugin_regFile_port0;
  wire       [31:0]   _zz_RegFilePlugin_regFile_port1;
  wire                IBusCachedPlugin_cache_io_cpu_prefetch_haltIt;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_error;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_mmuRefilling;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_mmuException;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_data;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_cacheMiss;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_data;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_physicalAddress;
  wire                IBusCachedPlugin_cache_io_mem_cmd_valid;
  wire       [31:0]   IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  wire       [2:0]    IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  wire                dataCache_1_io_cpu_execute_haltIt;
  wire                dataCache_1_io_cpu_execute_refilling;
  wire                dataCache_1_io_cpu_memory_isWrite;
  wire                dataCache_1_io_cpu_writeBack_haltIt;
  wire       [31:0]   dataCache_1_io_cpu_writeBack_data;
  wire                dataCache_1_io_cpu_writeBack_mmuException;
  wire                dataCache_1_io_cpu_writeBack_unalignedAccess;
  wire                dataCache_1_io_cpu_writeBack_accessError;
  wire                dataCache_1_io_cpu_writeBack_isWrite;
  wire                dataCache_1_io_cpu_writeBack_keepMemRspData;
  wire                dataCache_1_io_cpu_writeBack_exclusiveOk;
  wire                dataCache_1_io_cpu_flush_ready;
  wire                dataCache_1_io_cpu_redo;
  wire                dataCache_1_io_mem_cmd_valid;
  wire                dataCache_1_io_mem_cmd_payload_wr;
  wire                dataCache_1_io_mem_cmd_payload_uncached;
  wire       [31:0]   dataCache_1_io_mem_cmd_payload_address;
  wire       [31:0]   dataCache_1_io_mem_cmd_payload_data;
  wire       [3:0]    dataCache_1_io_mem_cmd_payload_mask;
  wire       [2:0]    dataCache_1_io_mem_cmd_payload_size;
  wire                dataCache_1_io_mem_cmd_payload_last;
  wire       [51:0]   _zz_memory_MUL_LOW;
  wire       [51:0]   _zz_memory_MUL_LOW_1;
  wire       [51:0]   _zz_memory_MUL_LOW_2;
  wire       [51:0]   _zz_memory_MUL_LOW_3;
  wire       [32:0]   _zz_memory_MUL_LOW_4;
  wire       [51:0]   _zz_memory_MUL_LOW_5;
  wire       [49:0]   _zz_memory_MUL_LOW_6;
  wire       [51:0]   _zz_memory_MUL_LOW_7;
  wire       [49:0]   _zz_memory_MUL_LOW_8;
  wire       [31:0]   _zz_execute_SHIFT_RIGHT;
  wire       [32:0]   _zz_execute_SHIFT_RIGHT_1;
  wire       [32:0]   _zz_execute_SHIFT_RIGHT_2;
  wire       [31:0]   _zz_decode_FORMAL_PC_NEXT;
  wire       [2:0]    _zz_decode_FORMAL_PC_NEXT_1;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_1;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_2;
  wire                _zz_decode_LEGAL_INSTRUCTION_3;
  wire       [0:0]    _zz_decode_LEGAL_INSTRUCTION_4;
  wire       [12:0]   _zz_decode_LEGAL_INSTRUCTION_5;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_6;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_7;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_8;
  wire                _zz_decode_LEGAL_INSTRUCTION_9;
  wire       [0:0]    _zz_decode_LEGAL_INSTRUCTION_10;
  wire       [6:0]    _zz_decode_LEGAL_INSTRUCTION_11;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_12;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_13;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_14;
  wire                _zz_decode_LEGAL_INSTRUCTION_15;
  wire       [0:0]    _zz_decode_LEGAL_INSTRUCTION_16;
  wire       [0:0]    _zz_decode_LEGAL_INSTRUCTION_17;
  wire       [3:0]    _zz__zz_IBusCachedPlugin_jump_pcLoad_payload_1;
  reg        [31:0]   _zz_IBusCachedPlugin_jump_pcLoad_payload_5;
  wire       [1:0]    _zz_IBusCachedPlugin_jump_pcLoad_payload_6;
  wire       [31:0]   _zz_IBusCachedPlugin_fetchPc_pc;
  wire       [2:0]    _zz_IBusCachedPlugin_fetchPc_pc_1;
  wire       [31:0]   _zz_IBusCachedPlugin_decodePc_pcPlus;
  wire       [2:0]    _zz_IBusCachedPlugin_decodePc_pcPlus_1;
  wire       [31:0]   _zz_IBusCachedPlugin_decompressor_decompressed_27;
  wire                _zz_IBusCachedPlugin_decompressor_decompressed_28;
  wire                _zz_IBusCachedPlugin_decompressor_decompressed_29;
  wire       [6:0]    _zz_IBusCachedPlugin_decompressor_decompressed_30;
  wire       [4:0]    _zz_IBusCachedPlugin_decompressor_decompressed_31;
  wire                _zz_IBusCachedPlugin_decompressor_decompressed_32;
  wire       [4:0]    _zz_IBusCachedPlugin_decompressor_decompressed_33;
  wire       [11:0]   _zz_IBusCachedPlugin_decompressor_decompressed_34;
  wire       [11:0]   _zz_IBusCachedPlugin_decompressor_decompressed_35;
  wire       [11:0]   _zz__zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  wire       [31:0]   _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_2;
  wire       [19:0]   _zz__zz_IBusCachedPlugin_predictionJumpInterface_payload;
  wire       [11:0]   _zz__zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
  wire       [0:0]    _zz_IBusCachedPlugin_predictionJumpInterface_payload_4;
  wire       [7:0]    _zz_IBusCachedPlugin_predictionJumpInterface_payload_5;
  wire                _zz_IBusCachedPlugin_predictionJumpInterface_payload_6;
  wire       [0:0]    _zz_IBusCachedPlugin_predictionJumpInterface_payload_7;
  wire       [0:0]    _zz_IBusCachedPlugin_predictionJumpInterface_payload_8;
  wire       [2:0]    _zz_DBusCachedPlugin_exceptionBus_payload_code;
  wire       [2:0]    _zz_DBusCachedPlugin_exceptionBus_payload_code_1;
  reg        [7:0]    _zz_writeBack_DBusCachedPlugin_rspShifted;
  wire       [1:0]    _zz_writeBack_DBusCachedPlugin_rspShifted_1;
  reg        [7:0]    _zz_writeBack_DBusCachedPlugin_rspShifted_2;
  wire       [0:0]    _zz_writeBack_DBusCachedPlugin_rspShifted_3;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_1;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_2;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_3;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_4;
  wire       [1:0]    _zz__zz_decode_ENV_CTRL_2_5;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_6;
  wire                _zz__zz_decode_ENV_CTRL_2_7;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_8;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_9;
  wire       [25:0]   _zz__zz_decode_ENV_CTRL_2_10;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_11;
  wire                _zz__zz_decode_ENV_CTRL_2_12;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_13;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_14;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_15;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_16;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_17;
  wire       [21:0]   _zz__zz_decode_ENV_CTRL_2_18;
  wire                _zz__zz_decode_ENV_CTRL_2_19;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_20;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_21;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_22;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_23;
  wire                _zz__zz_decode_ENV_CTRL_2_24;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_25;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_26;
  wire                _zz__zz_decode_ENV_CTRL_2_27;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_28;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_29;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_30;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_31;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_32;
  wire       [16:0]   _zz__zz_decode_ENV_CTRL_2_33;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_34;
  wire                _zz__zz_decode_ENV_CTRL_2_35;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_36;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_37;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_38;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_39;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_40;
  wire                _zz__zz_decode_ENV_CTRL_2_41;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_42;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_43;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_44;
  wire       [13:0]   _zz__zz_decode_ENV_CTRL_2_45;
  wire                _zz__zz_decode_ENV_CTRL_2_46;
  wire       [4:0]    _zz__zz_decode_ENV_CTRL_2_47;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_48;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_49;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_50;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_51;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_52;
  wire       [1:0]    _zz__zz_decode_ENV_CTRL_2_53;
  wire                _zz__zz_decode_ENV_CTRL_2_54;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_55;
  wire                _zz__zz_decode_ENV_CTRL_2_56;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_57;
  wire                _zz__zz_decode_ENV_CTRL_2_58;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_59;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_60;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_61;
  wire       [2:0]    _zz__zz_decode_ENV_CTRL_2_62;
  wire                _zz__zz_decode_ENV_CTRL_2_63;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_64;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_65;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_66;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_67;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_68;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_69;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_70;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_71;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_72;
  wire       [4:0]    _zz__zz_decode_ENV_CTRL_2_73;
  wire                _zz__zz_decode_ENV_CTRL_2_74;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_75;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_76;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_77;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_78;
  wire       [2:0]    _zz__zz_decode_ENV_CTRL_2_79;
  wire                _zz__zz_decode_ENV_CTRL_2_80;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_81;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_82;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_83;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_84;
  wire       [9:0]    _zz__zz_decode_ENV_CTRL_2_85;
  wire       [1:0]    _zz__zz_decode_ENV_CTRL_2_86;
  wire                _zz__zz_decode_ENV_CTRL_2_87;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_88;
  wire                _zz__zz_decode_ENV_CTRL_2_89;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_90;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_91;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_92;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_93;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_94;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_95;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_96;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_97;
  wire       [6:0]    _zz__zz_decode_ENV_CTRL_2_98;
  wire                _zz__zz_decode_ENV_CTRL_2_99;
  wire                _zz__zz_decode_ENV_CTRL_2_100;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_101;
  wire       [3:0]    _zz__zz_decode_ENV_CTRL_2_102;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_103;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_104;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_105;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_106;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_107;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_108;
  wire       [4:0]    _zz__zz_decode_ENV_CTRL_2_109;
  wire                _zz__zz_decode_ENV_CTRL_2_110;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_111;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_112;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_113;
  wire       [0:0]    _zz__zz_decode_ENV_CTRL_2_114;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_115;
  wire       [1:0]    _zz__zz_decode_ENV_CTRL_2_116;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_117;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_118;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_119;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_120;
  wire       [2:0]    _zz__zz_decode_ENV_CTRL_2_121;
  wire       [1:0]    _zz__zz_decode_ENV_CTRL_2_122;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_123;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_124;
  wire                _zz__zz_decode_ENV_CTRL_2_125;
  wire                _zz__zz_decode_ENV_CTRL_2_126;
  wire                _zz__zz_decode_ENV_CTRL_2_127;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_128;
  wire       [31:0]   _zz__zz_decode_ENV_CTRL_2_129;
  wire       [0:0]    _zz__zz_execute_REGFILE_WRITE_DATA;
  wire       [2:0]    _zz__zz_execute_SRC1;
  wire       [4:0]    _zz__zz_execute_SRC1_1;
  wire       [11:0]   _zz__zz_execute_SRC2_3;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_1;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_2;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_3;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_4;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_5;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_6;
  wire       [65:0]   _zz_writeBack_MulPlugin_result;
  wire       [65:0]   _zz_writeBack_MulPlugin_result_1;
  wire       [31:0]   _zz__zz_decode_RS2_2;
  wire       [31:0]   _zz__zz_decode_RS2_2_1;
  wire       [5:0]    _zz_memory_DivPlugin_div_counter_valueNext;
  wire       [0:0]    _zz_memory_DivPlugin_div_counter_valueNext_1;
  wire       [32:0]   _zz_memory_DivPlugin_div_stage_0_remainderMinusDenominator;
  wire       [31:0]   _zz_memory_DivPlugin_div_stage_0_outRemainder;
  wire       [31:0]   _zz_memory_DivPlugin_div_stage_0_outRemainder_1;
  wire       [32:0]   _zz_memory_DivPlugin_div_stage_0_outNumerator;
  wire       [32:0]   _zz_memory_DivPlugin_div_result_1;
  wire       [32:0]   _zz_memory_DivPlugin_div_result_2;
  wire       [32:0]   _zz_memory_DivPlugin_div_result_3;
  wire       [32:0]   _zz_memory_DivPlugin_div_result_4;
  wire       [0:0]    _zz_memory_DivPlugin_div_result_5;
  wire       [32:0]   _zz_memory_DivPlugin_rs1_2;
  wire       [0:0]    _zz_memory_DivPlugin_rs1_3;
  wire       [31:0]   _zz_memory_DivPlugin_rs2_1;
  wire       [0:0]    _zz_memory_DivPlugin_rs2_2;
  wire       [19:0]   _zz__zz_execute_BranchPlugin_branch_src2_2;
  wire       [11:0]   _zz__zz_execute_BranchPlugin_branch_src2_4;
  wire                _zz_execute_BranchPlugin_branch_src2_6;
  wire                _zz_execute_BranchPlugin_branch_src2_7;
  wire                _zz_execute_BranchPlugin_branch_src2_8;
  wire       [2:0]    _zz_execute_BranchPlugin_branch_src2_9;
  wire       [1:0]    _zz__zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1;
  wire       [1:0]    _zz__zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1_1;
  wire                _zz_when;
  wire       [51:0]   memory_MUL_LOW;
  wire       [31:0]   execute_BRANCH_CALC;
  wire                execute_BRANCH_DO;
  wire       [33:0]   memory_MUL_HH;
  wire       [33:0]   execute_MUL_HH;
  wire       [33:0]   execute_MUL_HL;
  wire       [33:0]   execute_MUL_LH;
  wire       [31:0]   execute_MUL_LL;
  wire       [31:0]   execute_SHIFT_RIGHT;
  wire       [31:0]   execute_REGFILE_WRITE_DATA;
  wire       [31:0]   memory_MEMORY_STORE_DATA_RF;
  wire       [31:0]   execute_MEMORY_STORE_DATA_RF;
  wire                decode_DO_EBREAK;
  wire                decode_CSR_READ_OPCODE;
  wire                decode_CSR_WRITE_OPCODE;
  wire                decode_PREDICTION_HAD_BRANCHED2;
  wire                decode_SRC2_FORCE_ZERO;
  wire       [1:0]    _zz_memory_to_writeBack_ENV_CTRL;
  wire       [1:0]    _zz_memory_to_writeBack_ENV_CTRL_1;
  wire       [1:0]    _zz_execute_to_memory_ENV_CTRL;
  wire       [1:0]    _zz_execute_to_memory_ENV_CTRL_1;
  wire       [1:0]    decode_ENV_CTRL;
  wire       [1:0]    _zz_decode_ENV_CTRL;
  wire       [1:0]    _zz_decode_to_execute_ENV_CTRL;
  wire       [1:0]    _zz_decode_to_execute_ENV_CTRL_1;
  wire                decode_IS_CSR;
  wire       [1:0]    _zz_decode_to_execute_BRANCH_CTRL;
  wire       [1:0]    _zz_decode_to_execute_BRANCH_CTRL_1;
  wire                decode_IS_RS2_SIGNED;
  wire                decode_IS_RS1_SIGNED;
  wire                decode_IS_DIV;
  wire                memory_IS_MUL;
  wire                execute_IS_MUL;
  wire                decode_IS_MUL;
  wire       [1:0]    _zz_execute_to_memory_SHIFT_CTRL;
  wire       [1:0]    _zz_execute_to_memory_SHIFT_CTRL_1;
  wire       [1:0]    decode_SHIFT_CTRL;
  wire       [1:0]    _zz_decode_SHIFT_CTRL;
  wire       [1:0]    _zz_decode_to_execute_SHIFT_CTRL;
  wire       [1:0]    _zz_decode_to_execute_SHIFT_CTRL_1;
  wire       [1:0]    decode_ALU_BITWISE_CTRL;
  wire       [1:0]    _zz_decode_ALU_BITWISE_CTRL;
  wire       [1:0]    _zz_decode_to_execute_ALU_BITWISE_CTRL;
  wire       [1:0]    _zz_decode_to_execute_ALU_BITWISE_CTRL_1;
  wire                decode_SRC_LESS_UNSIGNED;
  wire                decode_MEMORY_MANAGMENT;
  wire                memory_MEMORY_WR;
  wire                decode_MEMORY_WR;
  wire                execute_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_EXECUTE_STAGE;
  wire       [1:0]    decode_SRC2_CTRL;
  wire       [1:0]    _zz_decode_SRC2_CTRL;
  wire       [1:0]    _zz_decode_to_execute_SRC2_CTRL;
  wire       [1:0]    _zz_decode_to_execute_SRC2_CTRL_1;
  wire       [1:0]    decode_ALU_CTRL;
  wire       [1:0]    _zz_decode_ALU_CTRL;
  wire       [1:0]    _zz_decode_to_execute_ALU_CTRL;
  wire       [1:0]    _zz_decode_to_execute_ALU_CTRL_1;
  wire       [1:0]    decode_SRC1_CTRL;
  wire       [1:0]    _zz_decode_SRC1_CTRL;
  wire       [1:0]    _zz_decode_to_execute_SRC1_CTRL;
  wire       [1:0]    _zz_decode_to_execute_SRC1_CTRL_1;
  wire                decode_MEMORY_FORCE_CONSTISTENCY;
  wire       [31:0]   writeBack_FORMAL_PC_NEXT;
  wire       [31:0]   memory_FORMAL_PC_NEXT;
  wire       [31:0]   execute_FORMAL_PC_NEXT;
  wire       [31:0]   decode_FORMAL_PC_NEXT;
  wire       [31:0]   memory_PC;
  wire                execute_DO_EBREAK;
  wire                decode_IS_EBREAK;
  wire                execute_CSR_READ_OPCODE;
  wire                execute_CSR_WRITE_OPCODE;
  wire                execute_IS_CSR;
  wire       [1:0]    memory_ENV_CTRL;
  wire       [1:0]    _zz_memory_ENV_CTRL;
  wire       [1:0]    execute_ENV_CTRL;
  wire       [1:0]    _zz_execute_ENV_CTRL;
  wire       [1:0]    writeBack_ENV_CTRL;
  wire       [1:0]    _zz_writeBack_ENV_CTRL;
  wire       [31:0]   memory_BRANCH_CALC;
  wire                memory_BRANCH_DO;
  wire       [31:0]   execute_PC;
  wire                execute_BRANCH_COND_RESULT;
  wire                execute_PREDICTION_HAD_BRANCHED2;
  wire       [1:0]    execute_BRANCH_CTRL;
  wire       [1:0]    _zz_execute_BRANCH_CTRL;
  wire                decode_RS2_USE;
  wire                decode_RS1_USE;
  reg        [31:0]   _zz_decode_RS2;
  wire                execute_REGFILE_WRITE_VALID;
  wire                execute_BYPASSABLE_EXECUTE_STAGE;
  wire                memory_REGFILE_WRITE_VALID;
  wire                memory_BYPASSABLE_MEMORY_STAGE;
  wire                writeBack_REGFILE_WRITE_VALID;
  reg        [31:0]   decode_RS2;
  reg        [31:0]   decode_RS1;
  wire                execute_IS_RS1_SIGNED;
  wire                execute_IS_DIV;
  wire                execute_IS_RS2_SIGNED;
  wire       [31:0]   memory_INSTRUCTION;
  wire                memory_IS_DIV;
  wire                writeBack_IS_MUL;
  wire       [33:0]   writeBack_MUL_HH;
  wire       [51:0]   writeBack_MUL_LOW;
  wire       [33:0]   memory_MUL_HL;
  wire       [33:0]   memory_MUL_LH;
  wire       [31:0]   memory_MUL_LL;
  (* keep , syn_keep *) wire       [31:0]   execute_RS1 /* synthesis syn_keep = 1 */ ;
  wire       [31:0]   memory_SHIFT_RIGHT;
  reg        [31:0]   _zz_decode_RS2_1;
  wire       [1:0]    memory_SHIFT_CTRL;
  wire       [1:0]    _zz_memory_SHIFT_CTRL;
  wire       [1:0]    execute_SHIFT_CTRL;
  wire       [1:0]    _zz_execute_SHIFT_CTRL;
  wire                execute_SRC_LESS_UNSIGNED;
  wire                execute_SRC2_FORCE_ZERO;
  wire                execute_SRC_USE_SUB_LESS;
  wire       [31:0]   _zz_execute_SRC2;
  wire       [1:0]    execute_SRC2_CTRL;
  wire       [1:0]    _zz_execute_SRC2_CTRL;
  wire                execute_IS_RVC;
  wire       [1:0]    execute_SRC1_CTRL;
  wire       [1:0]    _zz_execute_SRC1_CTRL;
  wire                decode_SRC_USE_SUB_LESS;
  wire                decode_SRC_ADD_ZERO;
  wire       [31:0]   execute_SRC_ADD_SUB;
  wire                execute_SRC_LESS;
  wire       [1:0]    execute_ALU_CTRL;
  wire       [1:0]    _zz_execute_ALU_CTRL;
  wire       [31:0]   execute_SRC2;
  wire       [31:0]   execute_SRC1;
  wire       [1:0]    execute_ALU_BITWISE_CTRL;
  wire       [1:0]    _zz_execute_ALU_BITWISE_CTRL;
  wire       [31:0]   _zz_lastStageRegFileWrite_payload_address;
  wire                _zz_lastStageRegFileWrite_valid;
  reg                 _zz_1;
  reg                 decode_REGFILE_WRITE_VALID;
  wire                decode_LEGAL_INSTRUCTION;
  wire       [1:0]    _zz_decode_ENV_CTRL_1;
  wire       [1:0]    _zz_decode_BRANCH_CTRL;
  wire       [1:0]    _zz_decode_SHIFT_CTRL_1;
  wire       [1:0]    _zz_decode_ALU_BITWISE_CTRL_1;
  wire       [1:0]    _zz_decode_SRC2_CTRL_1;
  wire       [1:0]    _zz_decode_ALU_CTRL_1;
  wire       [1:0]    _zz_decode_SRC1_CTRL_1;
  reg        [31:0]   _zz_decode_RS2_2;
  wire                writeBack_MEMORY_WR;
  wire       [31:0]   writeBack_MEMORY_STORE_DATA_RF;
  wire       [31:0]   writeBack_REGFILE_WRITE_DATA;
  wire                writeBack_MEMORY_ENABLE;
  wire       [31:0]   memory_REGFILE_WRITE_DATA;
  wire                memory_MEMORY_ENABLE;
  wire                execute_MEMORY_FORCE_CONSTISTENCY;
  wire                execute_MEMORY_MANAGMENT;
  (* keep , syn_keep *) wire       [31:0]   execute_RS2 /* synthesis syn_keep = 1 */ ;
  wire                execute_MEMORY_WR;
  wire       [31:0]   execute_SRC_ADD;
  wire                execute_MEMORY_ENABLE;
  wire       [31:0]   execute_INSTRUCTION;
  wire                decode_MEMORY_ENABLE;
  wire                decode_FLUSH_ALL;
  reg                 IBusCachedPlugin_rsp_issueDetected_4;
  reg                 IBusCachedPlugin_rsp_issueDetected_3;
  reg                 IBusCachedPlugin_rsp_issueDetected_2;
  reg                 IBusCachedPlugin_rsp_issueDetected_1;
  wire       [1:0]    decode_BRANCH_CTRL;
  wire       [1:0]    _zz_decode_BRANCH_CTRL_1;
  reg        [31:0]   _zz_memory_to_writeBack_FORMAL_PC_NEXT;
  reg        [31:0]   _zz_decode_to_execute_FORMAL_PC_NEXT;
  wire       [31:0]   decode_PC;
  wire       [31:0]   decode_INSTRUCTION;
  wire                decode_IS_RVC;
  wire       [31:0]   writeBack_PC;
  wire       [31:0]   writeBack_INSTRUCTION;
  reg                 decode_arbitration_haltItself;
  reg                 decode_arbitration_haltByOther;
  reg                 decode_arbitration_removeIt;
  wire                decode_arbitration_flushIt;
  reg                 decode_arbitration_flushNext;
  reg                 decode_arbitration_isValid;
  wire                decode_arbitration_isStuck;
  wire                decode_arbitration_isStuckByOthers;
  wire                decode_arbitration_isFlushed;
  wire                decode_arbitration_isMoving;
  wire                decode_arbitration_isFiring;
  reg                 execute_arbitration_haltItself;
  reg                 execute_arbitration_haltByOther;
  reg                 execute_arbitration_removeIt;
  reg                 execute_arbitration_flushIt;
  reg                 execute_arbitration_flushNext;
  reg                 execute_arbitration_isValid;
  wire                execute_arbitration_isStuck;
  wire                execute_arbitration_isStuckByOthers;
  wire                execute_arbitration_isFlushed;
  wire                execute_arbitration_isMoving;
  wire                execute_arbitration_isFiring;
  reg                 memory_arbitration_haltItself;
  wire                memory_arbitration_haltByOther;
  reg                 memory_arbitration_removeIt;
  wire                memory_arbitration_flushIt;
  reg                 memory_arbitration_flushNext;
  reg                 memory_arbitration_isValid;
  wire                memory_arbitration_isStuck;
  wire                memory_arbitration_isStuckByOthers;
  wire                memory_arbitration_isFlushed;
  wire                memory_arbitration_isMoving;
  wire                memory_arbitration_isFiring;
  reg                 writeBack_arbitration_haltItself;
  wire                writeBack_arbitration_haltByOther;
  reg                 writeBack_arbitration_removeIt;
  reg                 writeBack_arbitration_flushIt;
  reg                 writeBack_arbitration_flushNext;
  reg                 writeBack_arbitration_isValid;
  wire                writeBack_arbitration_isStuck;
  wire                writeBack_arbitration_isStuckByOthers;
  wire                writeBack_arbitration_isFlushed;
  wire                writeBack_arbitration_isMoving;
  wire                writeBack_arbitration_isFiring;
  wire       [31:0]   lastStageInstruction /* verilator public */ ;
  wire       [31:0]   lastStagePc /* verilator public */ ;
  wire                lastStageIsValid /* verilator public */ ;
  wire                lastStageIsFiring /* verilator public */ ;
  reg                 IBusCachedPlugin_fetcherHalt;
  reg                 IBusCachedPlugin_incomingInstruction;
  wire                IBusCachedPlugin_predictionJumpInterface_valid;
  (* keep , syn_keep *) wire       [31:0]   IBusCachedPlugin_predictionJumpInterface_payload /* synthesis syn_keep = 1 */ ;
  wire                IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  wire                IBusCachedPlugin_decodePrediction_rsp_wasWrong;
  wire                IBusCachedPlugin_pcValids_0;
  wire                IBusCachedPlugin_pcValids_1;
  wire                IBusCachedPlugin_pcValids_2;
  wire                IBusCachedPlugin_pcValids_3;
  reg                 IBusCachedPlugin_decodeExceptionPort_valid;
  reg        [3:0]    IBusCachedPlugin_decodeExceptionPort_payload_code;
  wire       [31:0]   IBusCachedPlugin_decodeExceptionPort_payload_badAddr;
  wire                IBusCachedPlugin_mmuBus_cmd_0_isValid;
  wire                IBusCachedPlugin_mmuBus_cmd_0_isStuck;
  wire       [31:0]   IBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  wire                IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation;
  wire       [31:0]   IBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                IBusCachedPlugin_mmuBus_rsp_isIoAccess;
  wire                IBusCachedPlugin_mmuBus_rsp_isPaging;
  wire                IBusCachedPlugin_mmuBus_rsp_allowRead;
  wire                IBusCachedPlugin_mmuBus_rsp_allowWrite;
  wire                IBusCachedPlugin_mmuBus_rsp_allowExecute;
  wire                IBusCachedPlugin_mmuBus_rsp_exception;
  wire                IBusCachedPlugin_mmuBus_rsp_refilling;
  wire                IBusCachedPlugin_mmuBus_rsp_bypassTranslation;
  wire                IBusCachedPlugin_mmuBus_end;
  wire                IBusCachedPlugin_mmuBus_busy;
  wire                DBusCachedPlugin_mmuBus_cmd_0_isValid;
  wire                DBusCachedPlugin_mmuBus_cmd_0_isStuck;
  wire       [31:0]   DBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  wire                DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation;
  wire       [31:0]   DBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                DBusCachedPlugin_mmuBus_rsp_isIoAccess;
  wire                DBusCachedPlugin_mmuBus_rsp_isPaging;
  wire                DBusCachedPlugin_mmuBus_rsp_allowRead;
  wire                DBusCachedPlugin_mmuBus_rsp_allowWrite;
  wire                DBusCachedPlugin_mmuBus_rsp_allowExecute;
  wire                DBusCachedPlugin_mmuBus_rsp_exception;
  wire                DBusCachedPlugin_mmuBus_rsp_refilling;
  wire                DBusCachedPlugin_mmuBus_rsp_bypassTranslation;
  wire                DBusCachedPlugin_mmuBus_end;
  wire                DBusCachedPlugin_mmuBus_busy;
  reg                 DBusCachedPlugin_redoBranch_valid;
  wire       [31:0]   DBusCachedPlugin_redoBranch_payload;
  reg                 DBusCachedPlugin_exceptionBus_valid;
  reg        [3:0]    DBusCachedPlugin_exceptionBus_payload_code;
  wire       [31:0]   DBusCachedPlugin_exceptionBus_payload_badAddr;
  reg                 _zz_when_DBusCachedPlugin_l390;
  wire                decodeExceptionPort_valid;
  wire       [3:0]    decodeExceptionPort_payload_code;
  wire       [31:0]   decodeExceptionPort_payload_badAddr;
  wire                BranchPlugin_jumpInterface_valid;
  wire       [31:0]   BranchPlugin_jumpInterface_payload;
  wire       [31:0]   CsrPlugin_csrMapping_readDataSignal;
  wire       [31:0]   CsrPlugin_csrMapping_readDataInit;
  wire       [31:0]   CsrPlugin_csrMapping_writeDataSignal;
  wire                CsrPlugin_csrMapping_allowCsrSignal;
  wire                CsrPlugin_csrMapping_hazardFree;
  wire                CsrPlugin_inWfi /* verilator public */ ;
  reg                 CsrPlugin_thirdPartyWake;
  reg                 CsrPlugin_jumpInterface_valid;
  reg        [31:0]   CsrPlugin_jumpInterface_payload;
  wire                CsrPlugin_exceptionPendings_0;
  wire                CsrPlugin_exceptionPendings_1;
  wire                CsrPlugin_exceptionPendings_2;
  wire                CsrPlugin_exceptionPendings_3;
  wire                contextSwitching;
  reg        [1:0]    CsrPlugin_privilege;
  reg                 CsrPlugin_forceMachineWire;
  reg                 CsrPlugin_selfException_valid;
  reg        [3:0]    CsrPlugin_selfException_payload_code;
  wire       [31:0]   CsrPlugin_selfException_payload_badAddr;
  reg                 CsrPlugin_allowInterrupts;
  reg                 CsrPlugin_allowException;
  reg                 CsrPlugin_allowEbreakException;
  reg                 IBusCachedPlugin_injectionPort_valid;
  reg                 IBusCachedPlugin_injectionPort_ready;
  wire       [31:0]   IBusCachedPlugin_injectionPort_payload;
  wire                IBusCachedPlugin_externalFlush;
  wire                IBusCachedPlugin_jump_pcLoad_valid;
  wire       [31:0]   IBusCachedPlugin_jump_pcLoad_payload;
  wire       [3:0]    _zz_IBusCachedPlugin_jump_pcLoad_payload;
  wire       [3:0]    _zz_IBusCachedPlugin_jump_pcLoad_payload_1;
  wire                _zz_IBusCachedPlugin_jump_pcLoad_payload_2;
  wire                _zz_IBusCachedPlugin_jump_pcLoad_payload_3;
  wire                _zz_IBusCachedPlugin_jump_pcLoad_payload_4;
  wire                IBusCachedPlugin_fetchPc_output_valid;
  wire                IBusCachedPlugin_fetchPc_output_ready;
  wire       [31:0]   IBusCachedPlugin_fetchPc_output_payload;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pcReg /* verilator public */ ;
  reg                 IBusCachedPlugin_fetchPc_correction;
  reg                 IBusCachedPlugin_fetchPc_correctionReg;
  wire                IBusCachedPlugin_fetchPc_output_fire;
  wire                IBusCachedPlugin_fetchPc_corrected;
  reg                 IBusCachedPlugin_fetchPc_pcRegPropagate;
  reg                 IBusCachedPlugin_fetchPc_booted;
  reg                 IBusCachedPlugin_fetchPc_inc;
  wire                when_Fetcher_l131;
  wire                IBusCachedPlugin_fetchPc_output_fire_1;
  wire                when_Fetcher_l131_1;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pc;
  wire                IBusCachedPlugin_fetchPc_redo_valid;
  reg        [31:0]   IBusCachedPlugin_fetchPc_redo_payload;
  reg                 IBusCachedPlugin_fetchPc_flushed;
  wire                when_Fetcher_l158;
  reg                 IBusCachedPlugin_decodePc_flushed;
  reg        [31:0]   IBusCachedPlugin_decodePc_pcReg /* verilator public */ ;
  wire       [31:0]   IBusCachedPlugin_decodePc_pcPlus;
  reg                 IBusCachedPlugin_decodePc_injectedDecode;
  wire                when_Fetcher_l180;
  wire                when_Fetcher_l192;
  reg                 IBusCachedPlugin_iBusRsp_redoFetch;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_0_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_1_halt;
  wire                _zz_IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  wire                _zz_IBusCachedPlugin_iBusRsp_stages_1_input_ready;
  wire                IBusCachedPlugin_iBusRsp_flush;
  wire                _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready;
  wire                _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_1;
  reg                 _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_2;
  reg                 IBusCachedPlugin_iBusRsp_readyForError;
  wire                IBusCachedPlugin_iBusRsp_output_valid;
  wire                IBusCachedPlugin_iBusRsp_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_pc;
  wire                IBusCachedPlugin_iBusRsp_output_payload_rsp_error;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  wire                IBusCachedPlugin_iBusRsp_output_payload_isRvc;
  wire                IBusCachedPlugin_decompressor_input_valid;
  wire                IBusCachedPlugin_decompressor_input_ready;
  wire       [31:0]   IBusCachedPlugin_decompressor_input_payload_pc;
  wire                IBusCachedPlugin_decompressor_input_payload_rsp_error;
  wire       [31:0]   IBusCachedPlugin_decompressor_input_payload_rsp_inst;
  wire                IBusCachedPlugin_decompressor_input_payload_isRvc;
  wire                IBusCachedPlugin_decompressor_output_valid;
  wire                IBusCachedPlugin_decompressor_output_ready;
  wire       [31:0]   IBusCachedPlugin_decompressor_output_payload_pc;
  wire                IBusCachedPlugin_decompressor_output_payload_rsp_error;
  wire       [31:0]   IBusCachedPlugin_decompressor_output_payload_rsp_inst;
  wire                IBusCachedPlugin_decompressor_output_payload_isRvc;
  wire                IBusCachedPlugin_decompressor_flushNext;
  wire                IBusCachedPlugin_decompressor_consumeCurrent;
  reg                 IBusCachedPlugin_decompressor_bufferValid;
  reg        [15:0]   IBusCachedPlugin_decompressor_bufferData;
  wire                IBusCachedPlugin_decompressor_isInputLowRvc;
  wire                IBusCachedPlugin_decompressor_isInputHighRvc;
  reg                 IBusCachedPlugin_decompressor_throw2BytesReg;
  wire                IBusCachedPlugin_decompressor_throw2Bytes;
  wire                IBusCachedPlugin_decompressor_unaligned;
  reg                 IBusCachedPlugin_decompressor_bufferValidLatch;
  reg                 IBusCachedPlugin_decompressor_throw2BytesLatch;
  wire                IBusCachedPlugin_decompressor_bufferValidPatched;
  wire                IBusCachedPlugin_decompressor_throw2BytesPatched;
  wire       [31:0]   IBusCachedPlugin_decompressor_raw;
  wire                IBusCachedPlugin_decompressor_isRvc;
  wire       [15:0]   _zz_IBusCachedPlugin_decompressor_decompressed;
  reg        [31:0]   IBusCachedPlugin_decompressor_decompressed;
  wire       [4:0]    _zz_IBusCachedPlugin_decompressor_decompressed_1;
  wire       [4:0]    _zz_IBusCachedPlugin_decompressor_decompressed_2;
  wire       [11:0]   _zz_IBusCachedPlugin_decompressor_decompressed_3;
  wire                _zz_IBusCachedPlugin_decompressor_decompressed_4;
  reg        [11:0]   _zz_IBusCachedPlugin_decompressor_decompressed_5;
  wire                _zz_IBusCachedPlugin_decompressor_decompressed_6;
  reg        [9:0]    _zz_IBusCachedPlugin_decompressor_decompressed_7;
  wire       [20:0]   _zz_IBusCachedPlugin_decompressor_decompressed_8;
  wire                _zz_IBusCachedPlugin_decompressor_decompressed_9;
  reg        [14:0]   _zz_IBusCachedPlugin_decompressor_decompressed_10;
  wire                _zz_IBusCachedPlugin_decompressor_decompressed_11;
  reg        [2:0]    _zz_IBusCachedPlugin_decompressor_decompressed_12;
  wire                _zz_IBusCachedPlugin_decompressor_decompressed_13;
  reg        [9:0]    _zz_IBusCachedPlugin_decompressor_decompressed_14;
  wire       [20:0]   _zz_IBusCachedPlugin_decompressor_decompressed_15;
  wire                _zz_IBusCachedPlugin_decompressor_decompressed_16;
  reg        [4:0]    _zz_IBusCachedPlugin_decompressor_decompressed_17;
  wire       [12:0]   _zz_IBusCachedPlugin_decompressor_decompressed_18;
  wire       [4:0]    _zz_IBusCachedPlugin_decompressor_decompressed_19;
  wire       [4:0]    _zz_IBusCachedPlugin_decompressor_decompressed_20;
  wire       [4:0]    _zz_IBusCachedPlugin_decompressor_decompressed_21;
  wire       [4:0]    switch_Misc_l44;
  wire                _zz_IBusCachedPlugin_decompressor_decompressed_22;
  wire       [1:0]    switch_Misc_l202;
  wire       [1:0]    switch_Misc_l202_1;
  reg        [2:0]    _zz_IBusCachedPlugin_decompressor_decompressed_23;
  reg        [2:0]    _zz_IBusCachedPlugin_decompressor_decompressed_24;
  wire                _zz_IBusCachedPlugin_decompressor_decompressed_25;
  reg        [6:0]    _zz_IBusCachedPlugin_decompressor_decompressed_26;
  wire                IBusCachedPlugin_decompressor_output_fire;
  wire                IBusCachedPlugin_decompressor_bufferFill;
  wire                when_Fetcher_l283;
  wire                when_Fetcher_l286;
  wire                when_Fetcher_l291;
  wire                IBusCachedPlugin_injector_decodeInput_valid;
  wire                IBusCachedPlugin_injector_decodeInput_ready;
  wire       [31:0]   IBusCachedPlugin_injector_decodeInput_payload_pc;
  wire                IBusCachedPlugin_injector_decodeInput_payload_rsp_error;
  wire       [31:0]   IBusCachedPlugin_injector_decodeInput_payload_rsp_inst;
  wire                IBusCachedPlugin_injector_decodeInput_payload_isRvc;
  reg                 _zz_IBusCachedPlugin_injector_decodeInput_valid;
  reg        [31:0]   _zz_IBusCachedPlugin_injector_decodeInput_payload_pc;
  reg                 _zz_IBusCachedPlugin_injector_decodeInput_payload_rsp_error;
  reg        [31:0]   _zz_IBusCachedPlugin_injector_decodeInput_payload_rsp_inst;
  reg                 _zz_IBusCachedPlugin_injector_decodeInput_payload_isRvc;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_0;
  wire                when_Fetcher_l329;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_1;
  wire                when_Fetcher_l329_1;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_2;
  wire                when_Fetcher_l329_2;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_3;
  wire                when_Fetcher_l329_3;
  reg        [31:0]   IBusCachedPlugin_injector_formal_rawInDecode;
  wire                _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  reg        [18:0]   _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1;
  wire                _zz_IBusCachedPlugin_predictionJumpInterface_payload;
  reg        [10:0]   _zz_IBusCachedPlugin_predictionJumpInterface_payload_1;
  wire                _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
  reg        [18:0]   _zz_IBusCachedPlugin_predictionJumpInterface_payload_3;
  wire       [31:0]   _zz_IBusCachedPlugin_rspCounter;
  reg        [31:0]   IBusCachedPlugin_rspCounter;
  wire                IBusCachedPlugin_s0_tightlyCoupledHit;
  reg                 IBusCachedPlugin_s1_tightlyCoupledHit;
  wire                IBusCachedPlugin_rsp_iBusRspOutputHalt;
  wire                IBusCachedPlugin_rsp_issueDetected;
  reg                 IBusCachedPlugin_rsp_redoFetch;
  wire                when_IBusCachedPlugin_l239;
  wire                when_IBusCachedPlugin_l244;
  wire                when_IBusCachedPlugin_l250;
  wire                when_IBusCachedPlugin_l256;
  wire                when_IBusCachedPlugin_l267;
  wire       [31:0]   _zz_DBusCachedPlugin_rspCounter;
  reg        [31:0]   DBusCachedPlugin_rspCounter;
  wire                when_DBusCachedPlugin_l307;
  wire       [1:0]    execute_DBusCachedPlugin_size;
  reg        [31:0]   _zz_execute_MEMORY_STORE_DATA_RF;
  wire                dataCache_1_io_cpu_flush_isStall;
  wire                when_DBusCachedPlugin_l347;
  wire                when_DBusCachedPlugin_l363;
  wire                when_DBusCachedPlugin_l390;
  wire                when_DBusCachedPlugin_l442;
  wire                when_DBusCachedPlugin_l462;
  wire       [7:0]    writeBack_DBusCachedPlugin_rspSplits_0;
  wire       [7:0]    writeBack_DBusCachedPlugin_rspSplits_1;
  wire       [7:0]    writeBack_DBusCachedPlugin_rspSplits_2;
  wire       [7:0]    writeBack_DBusCachedPlugin_rspSplits_3;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspShifted;
  wire       [31:0]   writeBack_DBusCachedPlugin_rspRf;
  wire       [1:0]    switch_Misc_l202_2;
  wire                _zz_writeBack_DBusCachedPlugin_rspFormated;
  reg        [31:0]   _zz_writeBack_DBusCachedPlugin_rspFormated_1;
  wire                _zz_writeBack_DBusCachedPlugin_rspFormated_2;
  reg        [31:0]   _zz_writeBack_DBusCachedPlugin_rspFormated_3;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspFormated;
  wire                when_DBusCachedPlugin_l488;
  wire       [32:0]   _zz_decode_ENV_CTRL_2;
  wire                _zz_decode_ENV_CTRL_3;
  wire                _zz_decode_ENV_CTRL_4;
  wire                _zz_decode_ENV_CTRL_5;
  wire                _zz_decode_ENV_CTRL_6;
  wire                _zz_decode_ENV_CTRL_7;
  wire       [1:0]    _zz_decode_SRC1_CTRL_2;
  wire       [1:0]    _zz_decode_ALU_CTRL_2;
  wire       [1:0]    _zz_decode_SRC2_CTRL_2;
  wire       [1:0]    _zz_decode_ALU_BITWISE_CTRL_2;
  wire       [1:0]    _zz_decode_SHIFT_CTRL_2;
  wire       [1:0]    _zz_decode_BRANCH_CTRL_2;
  wire       [1:0]    _zz_decode_ENV_CTRL_8;
  wire                when_RegFilePlugin_l63;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress1;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress2;
  wire       [31:0]   decode_RegFilePlugin_rs1Data;
  wire       [31:0]   decode_RegFilePlugin_rs2Data;
  reg                 lastStageRegFileWrite_valid /* verilator public */ ;
  reg        [4:0]    lastStageRegFileWrite_payload_address /* verilator public */ ;
  reg        [31:0]   lastStageRegFileWrite_payload_data /* verilator public */ ;
  reg                 _zz_2;
  reg        [31:0]   execute_IntAluPlugin_bitwise;
  reg        [31:0]   _zz_execute_REGFILE_WRITE_DATA;
  reg        [31:0]   _zz_execute_SRC1;
  wire                _zz_execute_SRC2_1;
  reg        [19:0]   _zz_execute_SRC2_2;
  wire                _zz_execute_SRC2_3;
  reg        [19:0]   _zz_execute_SRC2_4;
  reg        [31:0]   _zz_execute_SRC2_5;
  reg        [31:0]   execute_SrcPlugin_addSub;
  wire                execute_SrcPlugin_less;
  wire       [4:0]    execute_FullBarrelShifterPlugin_amplitude;
  reg        [31:0]   _zz_execute_FullBarrelShifterPlugin_reversed;
  wire       [31:0]   execute_FullBarrelShifterPlugin_reversed;
  reg        [31:0]   _zz_decode_RS2_3;
  reg                 execute_MulPlugin_aSigned;
  reg                 execute_MulPlugin_bSigned;
  wire       [31:0]   execute_MulPlugin_a;
  wire       [31:0]   execute_MulPlugin_b;
  wire       [1:0]    switch_MulPlugin_l87;
  wire       [15:0]   execute_MulPlugin_aULow;
  wire       [15:0]   execute_MulPlugin_bULow;
  wire       [16:0]   execute_MulPlugin_aSLow;
  wire       [16:0]   execute_MulPlugin_bSLow;
  wire       [16:0]   execute_MulPlugin_aHigh;
  wire       [16:0]   execute_MulPlugin_bHigh;
  wire       [65:0]   writeBack_MulPlugin_result;
  wire                when_MulPlugin_l147;
  wire       [1:0]    switch_MulPlugin_l148;
  reg        [32:0]   memory_DivPlugin_rs1;
  reg        [31:0]   memory_DivPlugin_rs2;
  reg        [64:0]   memory_DivPlugin_accumulator;
  wire                memory_DivPlugin_frontendOk;
  reg                 memory_DivPlugin_div_needRevert;
  reg                 memory_DivPlugin_div_counter_willIncrement;
  reg                 memory_DivPlugin_div_counter_willClear;
  reg        [5:0]    memory_DivPlugin_div_counter_valueNext;
  reg        [5:0]    memory_DivPlugin_div_counter_value;
  wire                memory_DivPlugin_div_counter_willOverflowIfInc;
  wire                memory_DivPlugin_div_counter_willOverflow;
  reg                 memory_DivPlugin_div_done;
  wire                when_MulDivIterativePlugin_l126;
  wire                when_MulDivIterativePlugin_l126_1;
  reg        [31:0]   memory_DivPlugin_div_result;
  wire                when_MulDivIterativePlugin_l128;
  wire                when_MulDivIterativePlugin_l129;
  wire                when_MulDivIterativePlugin_l132;
  wire       [31:0]   _zz_memory_DivPlugin_div_stage_0_remainderShifted;
  wire       [32:0]   memory_DivPlugin_div_stage_0_remainderShifted;
  wire       [32:0]   memory_DivPlugin_div_stage_0_remainderMinusDenominator;
  wire       [31:0]   memory_DivPlugin_div_stage_0_outRemainder;
  wire       [31:0]   memory_DivPlugin_div_stage_0_outNumerator;
  wire                when_MulDivIterativePlugin_l151;
  wire       [31:0]   _zz_memory_DivPlugin_div_result;
  wire                when_MulDivIterativePlugin_l162;
  wire                _zz_memory_DivPlugin_rs2;
  wire                _zz_memory_DivPlugin_rs1;
  reg        [32:0]   _zz_memory_DivPlugin_rs1_1;
  reg                 HazardSimplePlugin_src0Hazard;
  reg                 HazardSimplePlugin_src1Hazard;
  wire                HazardSimplePlugin_writeBackWrites_valid;
  wire       [4:0]    HazardSimplePlugin_writeBackWrites_payload_address;
  wire       [31:0]   HazardSimplePlugin_writeBackWrites_payload_data;
  reg                 HazardSimplePlugin_writeBackBuffer_valid;
  reg        [4:0]    HazardSimplePlugin_writeBackBuffer_payload_address;
  reg        [31:0]   HazardSimplePlugin_writeBackBuffer_payload_data;
  wire                HazardSimplePlugin_addr0Match;
  wire                HazardSimplePlugin_addr1Match;
  wire                when_HazardSimplePlugin_l47;
  wire                when_HazardSimplePlugin_l48;
  wire                when_HazardSimplePlugin_l51;
  wire                when_HazardSimplePlugin_l45;
  wire                when_HazardSimplePlugin_l57;
  wire                when_HazardSimplePlugin_l58;
  wire                when_HazardSimplePlugin_l48_1;
  wire                when_HazardSimplePlugin_l51_1;
  wire                when_HazardSimplePlugin_l45_1;
  wire                when_HazardSimplePlugin_l57_1;
  wire                when_HazardSimplePlugin_l58_1;
  wire                when_HazardSimplePlugin_l48_2;
  wire                when_HazardSimplePlugin_l51_2;
  wire                when_HazardSimplePlugin_l45_2;
  wire                when_HazardSimplePlugin_l57_2;
  wire                when_HazardSimplePlugin_l58_2;
  wire                when_HazardSimplePlugin_l105;
  wire                when_HazardSimplePlugin_l108;
  wire                when_HazardSimplePlugin_l113;
  wire                execute_BranchPlugin_eq;
  wire       [2:0]    switch_Misc_l202_3;
  reg                 _zz_execute_BRANCH_COND_RESULT;
  reg                 _zz_execute_BRANCH_COND_RESULT_1;
  wire                execute_BranchPlugin_missAlignedTarget;
  reg        [31:0]   execute_BranchPlugin_branch_src1;
  reg        [31:0]   execute_BranchPlugin_branch_src2;
  wire                _zz_execute_BranchPlugin_branch_src2;
  reg        [19:0]   _zz_execute_BranchPlugin_branch_src2_1;
  wire                _zz_execute_BranchPlugin_branch_src2_2;
  reg        [10:0]   _zz_execute_BranchPlugin_branch_src2_3;
  wire                _zz_execute_BranchPlugin_branch_src2_4;
  reg        [18:0]   _zz_execute_BranchPlugin_branch_src2_5;
  wire       [31:0]   execute_BranchPlugin_branchAdder;
  wire       [1:0]    CsrPlugin_misa_base;
  wire       [25:0]   CsrPlugin_misa_extensions;
  wire       [1:0]    CsrPlugin_mtvec_mode;
  wire       [29:0]   CsrPlugin_mtvec_base;
  reg        [31:0]   CsrPlugin_mepc;
  reg                 CsrPlugin_mstatus_MIE;
  reg                 CsrPlugin_mstatus_MPIE;
  reg        [1:0]    CsrPlugin_mstatus_MPP;
  reg                 CsrPlugin_mip_MEIP;
  reg                 CsrPlugin_mip_MTIP;
  reg                 CsrPlugin_mip_MSIP;
  reg                 CsrPlugin_mie_MEIE;
  reg                 CsrPlugin_mie_MTIE;
  reg                 CsrPlugin_mie_MSIE;
  reg                 CsrPlugin_mcause_interrupt;
  reg        [3:0]    CsrPlugin_mcause_exceptionCode;
  reg        [31:0]   CsrPlugin_mtval;
  reg        [63:0]   CsrPlugin_mcycle = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  reg        [63:0]   CsrPlugin_minstret = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  wire                _zz_when_CsrPlugin_l952;
  wire                _zz_when_CsrPlugin_l952_1;
  wire                _zz_when_CsrPlugin_l952_2;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  reg        [3:0]    CsrPlugin_exceptionPortCtrl_exceptionContext_code;
  reg        [31:0]   CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
  wire       [1:0]    _zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code;
  wire                _zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1;
  wire                when_CsrPlugin_l909;
  wire                when_CsrPlugin_l909_1;
  wire                when_CsrPlugin_l909_2;
  wire                when_CsrPlugin_l909_3;
  wire                when_CsrPlugin_l922;
  reg                 CsrPlugin_interrupt_valid;
  reg        [3:0]    CsrPlugin_interrupt_code /* verilator public */ ;
  reg        [1:0]    CsrPlugin_interrupt_targetPrivilege;
  wire                when_CsrPlugin_l946;
  wire                when_CsrPlugin_l952;
  wire                when_CsrPlugin_l952_1;
  wire                when_CsrPlugin_l952_2;
  wire                CsrPlugin_exception;
  wire                CsrPlugin_lastStageWasWfi;
  reg                 CsrPlugin_pipelineLiberator_pcValids_0;
  reg                 CsrPlugin_pipelineLiberator_pcValids_1;
  reg                 CsrPlugin_pipelineLiberator_pcValids_2;
  wire                CsrPlugin_pipelineLiberator_active;
  wire                when_CsrPlugin_l980;
  wire                when_CsrPlugin_l980_1;
  wire                when_CsrPlugin_l980_2;
  wire                when_CsrPlugin_l985;
  reg                 CsrPlugin_pipelineLiberator_done;
  wire                when_CsrPlugin_l991;
  wire                CsrPlugin_interruptJump /* verilator public */ ;
  reg                 CsrPlugin_hadException /* verilator public */ ;
  reg        [1:0]    CsrPlugin_targetPrivilege;
  reg        [3:0]    CsrPlugin_trapCause;
  reg        [1:0]    CsrPlugin_xtvec_mode;
  reg        [29:0]   CsrPlugin_xtvec_base;
  wire                when_CsrPlugin_l1019;
  wire                when_CsrPlugin_l1064;
  wire       [1:0]    switch_CsrPlugin_l1068;
  reg                 execute_CsrPlugin_wfiWake;
  wire                when_CsrPlugin_l1116;
  wire                execute_CsrPlugin_blockedBySideEffects;
  reg                 execute_CsrPlugin_illegalAccess;
  reg                 execute_CsrPlugin_illegalInstruction;
  wire                when_CsrPlugin_l1136;
  wire                when_CsrPlugin_l1137;
  wire                when_CsrPlugin_l1144;
  reg                 execute_CsrPlugin_writeInstruction;
  reg                 execute_CsrPlugin_readInstruction;
  wire                execute_CsrPlugin_writeEnable;
  wire                execute_CsrPlugin_readEnable;
  wire       [31:0]   execute_CsrPlugin_readToWriteData;
  wire                switch_Misc_l202_4;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_writeDataSignal;
  wire                when_CsrPlugin_l1176;
  wire                when_CsrPlugin_l1180;
  wire       [11:0]   execute_CsrPlugin_csrAddress;
  reg                 DebugPlugin_firstCycle;
  reg                 DebugPlugin_secondCycle;
  reg                 DebugPlugin_resetIt;
  reg                 DebugPlugin_haltIt;
  reg                 DebugPlugin_stepIt;
  reg                 DebugPlugin_isPipBusy;
  reg                 DebugPlugin_godmode;
  wire                when_DebugPlugin_l225;
  reg                 DebugPlugin_haltedByBreak;
  reg                 DebugPlugin_debugUsed /* verilator public */ ;
  reg                 DebugPlugin_disableEbreak;
  wire                DebugPlugin_allowEBreak;
  reg        [31:0]   DebugPlugin_busReadDataReg;
  reg                 _zz_when_DebugPlugin_l244;
  wire                when_DebugPlugin_l244;
  wire       [5:0]    switch_DebugPlugin_l256;
  wire                when_DebugPlugin_l260;
  wire                when_DebugPlugin_l260_1;
  wire                when_DebugPlugin_l261;
  wire                when_DebugPlugin_l261_1;
  wire                when_DebugPlugin_l262;
  wire                when_DebugPlugin_l263;
  wire                when_DebugPlugin_l264;
  wire                when_DebugPlugin_l264_1;
  wire                when_DebugPlugin_l284;
  wire                when_DebugPlugin_l287;
  wire                when_DebugPlugin_l300;
  reg                 _zz_3;
  reg                 DebugPlugin_resetIt_regNext;
  wire                when_DebugPlugin_l316;
  wire                when_Pipeline_l124;
  reg        [31:0]   decode_to_execute_PC;
  wire                when_Pipeline_l124_1;
  reg        [31:0]   execute_to_memory_PC;
  wire                when_Pipeline_l124_2;
  reg        [31:0]   memory_to_writeBack_PC;
  wire                when_Pipeline_l124_3;
  reg        [31:0]   decode_to_execute_INSTRUCTION;
  wire                when_Pipeline_l124_4;
  reg        [31:0]   execute_to_memory_INSTRUCTION;
  wire                when_Pipeline_l124_5;
  reg        [31:0]   memory_to_writeBack_INSTRUCTION;
  wire                when_Pipeline_l124_6;
  reg                 decode_to_execute_IS_RVC;
  wire                when_Pipeline_l124_7;
  reg        [31:0]   decode_to_execute_FORMAL_PC_NEXT;
  wire                when_Pipeline_l124_8;
  reg        [31:0]   execute_to_memory_FORMAL_PC_NEXT;
  wire                when_Pipeline_l124_9;
  reg        [31:0]   memory_to_writeBack_FORMAL_PC_NEXT;
  wire                when_Pipeline_l124_10;
  reg                 decode_to_execute_MEMORY_FORCE_CONSTISTENCY;
  wire                when_Pipeline_l124_11;
  reg        [1:0]    decode_to_execute_SRC1_CTRL;
  wire                when_Pipeline_l124_12;
  reg                 decode_to_execute_SRC_USE_SUB_LESS;
  wire                when_Pipeline_l124_13;
  reg                 decode_to_execute_MEMORY_ENABLE;
  wire                when_Pipeline_l124_14;
  reg                 execute_to_memory_MEMORY_ENABLE;
  wire                when_Pipeline_l124_15;
  reg                 memory_to_writeBack_MEMORY_ENABLE;
  wire                when_Pipeline_l124_16;
  reg        [1:0]    decode_to_execute_ALU_CTRL;
  wire                when_Pipeline_l124_17;
  reg        [1:0]    decode_to_execute_SRC2_CTRL;
  wire                when_Pipeline_l124_18;
  reg                 decode_to_execute_REGFILE_WRITE_VALID;
  wire                when_Pipeline_l124_19;
  reg                 execute_to_memory_REGFILE_WRITE_VALID;
  wire                when_Pipeline_l124_20;
  reg                 memory_to_writeBack_REGFILE_WRITE_VALID;
  wire                when_Pipeline_l124_21;
  reg                 decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  wire                when_Pipeline_l124_22;
  reg                 decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  wire                when_Pipeline_l124_23;
  reg                 execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  wire                when_Pipeline_l124_24;
  reg                 decode_to_execute_MEMORY_WR;
  wire                when_Pipeline_l124_25;
  reg                 execute_to_memory_MEMORY_WR;
  wire                when_Pipeline_l124_26;
  reg                 memory_to_writeBack_MEMORY_WR;
  wire                when_Pipeline_l124_27;
  reg                 decode_to_execute_MEMORY_MANAGMENT;
  wire                when_Pipeline_l124_28;
  reg                 decode_to_execute_SRC_LESS_UNSIGNED;
  wire                when_Pipeline_l124_29;
  reg        [1:0]    decode_to_execute_ALU_BITWISE_CTRL;
  wire                when_Pipeline_l124_30;
  reg        [1:0]    decode_to_execute_SHIFT_CTRL;
  wire                when_Pipeline_l124_31;
  reg        [1:0]    execute_to_memory_SHIFT_CTRL;
  wire                when_Pipeline_l124_32;
  reg                 decode_to_execute_IS_MUL;
  wire                when_Pipeline_l124_33;
  reg                 execute_to_memory_IS_MUL;
  wire                when_Pipeline_l124_34;
  reg                 memory_to_writeBack_IS_MUL;
  wire                when_Pipeline_l124_35;
  reg                 decode_to_execute_IS_DIV;
  wire                when_Pipeline_l124_36;
  reg                 execute_to_memory_IS_DIV;
  wire                when_Pipeline_l124_37;
  reg                 decode_to_execute_IS_RS1_SIGNED;
  wire                when_Pipeline_l124_38;
  reg                 decode_to_execute_IS_RS2_SIGNED;
  wire                when_Pipeline_l124_39;
  reg        [1:0]    decode_to_execute_BRANCH_CTRL;
  wire                when_Pipeline_l124_40;
  reg                 decode_to_execute_IS_CSR;
  wire                when_Pipeline_l124_41;
  reg        [1:0]    decode_to_execute_ENV_CTRL;
  wire                when_Pipeline_l124_42;
  reg        [1:0]    execute_to_memory_ENV_CTRL;
  wire                when_Pipeline_l124_43;
  reg        [1:0]    memory_to_writeBack_ENV_CTRL;
  wire                when_Pipeline_l124_44;
  reg        [31:0]   decode_to_execute_RS1;
  wire                when_Pipeline_l124_45;
  reg        [31:0]   decode_to_execute_RS2;
  wire                when_Pipeline_l124_46;
  reg                 decode_to_execute_SRC2_FORCE_ZERO;
  wire                when_Pipeline_l124_47;
  reg                 decode_to_execute_PREDICTION_HAD_BRANCHED2;
  wire                when_Pipeline_l124_48;
  reg                 decode_to_execute_CSR_WRITE_OPCODE;
  wire                when_Pipeline_l124_49;
  reg                 decode_to_execute_CSR_READ_OPCODE;
  wire                when_Pipeline_l124_50;
  reg                 decode_to_execute_DO_EBREAK;
  wire                when_Pipeline_l124_51;
  reg        [31:0]   execute_to_memory_MEMORY_STORE_DATA_RF;
  wire                when_Pipeline_l124_52;
  reg        [31:0]   memory_to_writeBack_MEMORY_STORE_DATA_RF;
  wire                when_Pipeline_l124_53;
  reg        [31:0]   execute_to_memory_REGFILE_WRITE_DATA;
  wire                when_Pipeline_l124_54;
  reg        [31:0]   memory_to_writeBack_REGFILE_WRITE_DATA;
  wire                when_Pipeline_l124_55;
  reg        [31:0]   execute_to_memory_SHIFT_RIGHT;
  wire                when_Pipeline_l124_56;
  reg        [31:0]   execute_to_memory_MUL_LL;
  wire                when_Pipeline_l124_57;
  reg        [33:0]   execute_to_memory_MUL_LH;
  wire                when_Pipeline_l124_58;
  reg        [33:0]   execute_to_memory_MUL_HL;
  wire                when_Pipeline_l124_59;
  reg        [33:0]   execute_to_memory_MUL_HH;
  wire                when_Pipeline_l124_60;
  reg        [33:0]   memory_to_writeBack_MUL_HH;
  wire                when_Pipeline_l124_61;
  reg                 execute_to_memory_BRANCH_DO;
  wire                when_Pipeline_l124_62;
  reg        [31:0]   execute_to_memory_BRANCH_CALC;
  wire                when_Pipeline_l124_63;
  reg        [51:0]   memory_to_writeBack_MUL_LOW;
  wire                when_Pipeline_l151;
  wire                when_Pipeline_l154;
  wire                when_Pipeline_l151_1;
  wire                when_Pipeline_l154_1;
  wire                when_Pipeline_l151_2;
  wire                when_Pipeline_l154_2;
  reg        [2:0]    switch_Fetcher_l362;
  wire                when_Fetcher_l360;
  wire                when_Fetcher_l378;
  wire                when_Fetcher_l398;
  wire                when_CsrPlugin_l1264;
  reg                 execute_CsrPlugin_csr_768;
  wire                when_CsrPlugin_l1264_1;
  reg                 execute_CsrPlugin_csr_836;
  wire                when_CsrPlugin_l1264_2;
  reg                 execute_CsrPlugin_csr_772;
  wire                when_CsrPlugin_l1264_3;
  reg                 execute_CsrPlugin_csr_833;
  wire                when_CsrPlugin_l1264_4;
  reg                 execute_CsrPlugin_csr_834;
  wire                when_CsrPlugin_l1264_5;
  reg                 execute_CsrPlugin_csr_835;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_1;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_2;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_3;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_4;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_5;
  wire                when_CsrPlugin_l1297;
  wire                when_CsrPlugin_l1302;
  `ifndef SYNTHESIS
  reg [39:0] _zz_memory_to_writeBack_ENV_CTRL_string;
  reg [39:0] _zz_memory_to_writeBack_ENV_CTRL_1_string;
  reg [39:0] _zz_execute_to_memory_ENV_CTRL_string;
  reg [39:0] _zz_execute_to_memory_ENV_CTRL_1_string;
  reg [39:0] decode_ENV_CTRL_string;
  reg [39:0] _zz_decode_ENV_CTRL_string;
  reg [39:0] _zz_decode_to_execute_ENV_CTRL_string;
  reg [39:0] _zz_decode_to_execute_ENV_CTRL_1_string;
  reg [31:0] _zz_decode_to_execute_BRANCH_CTRL_string;
  reg [31:0] _zz_decode_to_execute_BRANCH_CTRL_1_string;
  reg [71:0] _zz_execute_to_memory_SHIFT_CTRL_string;
  reg [71:0] _zz_execute_to_memory_SHIFT_CTRL_1_string;
  reg [71:0] decode_SHIFT_CTRL_string;
  reg [71:0] _zz_decode_SHIFT_CTRL_string;
  reg [71:0] _zz_decode_to_execute_SHIFT_CTRL_string;
  reg [71:0] _zz_decode_to_execute_SHIFT_CTRL_1_string;
  reg [39:0] decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_decode_to_execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string;
  reg [23:0] decode_SRC2_CTRL_string;
  reg [23:0] _zz_decode_SRC2_CTRL_string;
  reg [23:0] _zz_decode_to_execute_SRC2_CTRL_string;
  reg [23:0] _zz_decode_to_execute_SRC2_CTRL_1_string;
  reg [63:0] decode_ALU_CTRL_string;
  reg [63:0] _zz_decode_ALU_CTRL_string;
  reg [63:0] _zz_decode_to_execute_ALU_CTRL_string;
  reg [63:0] _zz_decode_to_execute_ALU_CTRL_1_string;
  reg [95:0] decode_SRC1_CTRL_string;
  reg [95:0] _zz_decode_SRC1_CTRL_string;
  reg [95:0] _zz_decode_to_execute_SRC1_CTRL_string;
  reg [95:0] _zz_decode_to_execute_SRC1_CTRL_1_string;
  reg [39:0] memory_ENV_CTRL_string;
  reg [39:0] _zz_memory_ENV_CTRL_string;
  reg [39:0] execute_ENV_CTRL_string;
  reg [39:0] _zz_execute_ENV_CTRL_string;
  reg [39:0] writeBack_ENV_CTRL_string;
  reg [39:0] _zz_writeBack_ENV_CTRL_string;
  reg [31:0] execute_BRANCH_CTRL_string;
  reg [31:0] _zz_execute_BRANCH_CTRL_string;
  reg [71:0] memory_SHIFT_CTRL_string;
  reg [71:0] _zz_memory_SHIFT_CTRL_string;
  reg [71:0] execute_SHIFT_CTRL_string;
  reg [71:0] _zz_execute_SHIFT_CTRL_string;
  reg [23:0] execute_SRC2_CTRL_string;
  reg [23:0] _zz_execute_SRC2_CTRL_string;
  reg [95:0] execute_SRC1_CTRL_string;
  reg [95:0] _zz_execute_SRC1_CTRL_string;
  reg [63:0] execute_ALU_CTRL_string;
  reg [63:0] _zz_execute_ALU_CTRL_string;
  reg [39:0] execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_decode_ENV_CTRL_1_string;
  reg [31:0] _zz_decode_BRANCH_CTRL_string;
  reg [71:0] _zz_decode_SHIFT_CTRL_1_string;
  reg [39:0] _zz_decode_ALU_BITWISE_CTRL_1_string;
  reg [23:0] _zz_decode_SRC2_CTRL_1_string;
  reg [63:0] _zz_decode_ALU_CTRL_1_string;
  reg [95:0] _zz_decode_SRC1_CTRL_1_string;
  reg [31:0] decode_BRANCH_CTRL_string;
  reg [31:0] _zz_decode_BRANCH_CTRL_1_string;
  reg [95:0] _zz_decode_SRC1_CTRL_2_string;
  reg [63:0] _zz_decode_ALU_CTRL_2_string;
  reg [23:0] _zz_decode_SRC2_CTRL_2_string;
  reg [39:0] _zz_decode_ALU_BITWISE_CTRL_2_string;
  reg [71:0] _zz_decode_SHIFT_CTRL_2_string;
  reg [31:0] _zz_decode_BRANCH_CTRL_2_string;
  reg [39:0] _zz_decode_ENV_CTRL_8_string;
  reg [95:0] decode_to_execute_SRC1_CTRL_string;
  reg [63:0] decode_to_execute_ALU_CTRL_string;
  reg [23:0] decode_to_execute_SRC2_CTRL_string;
  reg [39:0] decode_to_execute_ALU_BITWISE_CTRL_string;
  reg [71:0] decode_to_execute_SHIFT_CTRL_string;
  reg [71:0] execute_to_memory_SHIFT_CTRL_string;
  reg [31:0] decode_to_execute_BRANCH_CTRL_string;
  reg [39:0] decode_to_execute_ENV_CTRL_string;
  reg [39:0] execute_to_memory_ENV_CTRL_string;
  reg [39:0] memory_to_writeBack_ENV_CTRL_string;
  `endif

  (* ram_style = "distributed" *) reg [31:0] RegFilePlugin_regFile [0:31] /* verilator public */ ;

  assign _zz_when = ({decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid} != 2'b00);
  assign _zz_memory_MUL_LOW = ($signed(_zz_memory_MUL_LOW_1) + $signed(_zz_memory_MUL_LOW_5));
  assign _zz_memory_MUL_LOW_1 = ($signed(_zz_memory_MUL_LOW_2) + $signed(_zz_memory_MUL_LOW_3));
  assign _zz_memory_MUL_LOW_2 = 52'h0;
  assign _zz_memory_MUL_LOW_4 = {1'b0,memory_MUL_LL};
  assign _zz_memory_MUL_LOW_3 = {{19{_zz_memory_MUL_LOW_4[32]}}, _zz_memory_MUL_LOW_4};
  assign _zz_memory_MUL_LOW_6 = ({16'd0,memory_MUL_LH} <<< 16);
  assign _zz_memory_MUL_LOW_5 = {{2{_zz_memory_MUL_LOW_6[49]}}, _zz_memory_MUL_LOW_6};
  assign _zz_memory_MUL_LOW_8 = ({16'd0,memory_MUL_HL} <<< 16);
  assign _zz_memory_MUL_LOW_7 = {{2{_zz_memory_MUL_LOW_8[49]}}, _zz_memory_MUL_LOW_8};
  assign _zz_execute_SHIFT_RIGHT_1 = ($signed(_zz_execute_SHIFT_RIGHT_2) >>> execute_FullBarrelShifterPlugin_amplitude);
  assign _zz_execute_SHIFT_RIGHT = _zz_execute_SHIFT_RIGHT_1[31 : 0];
  assign _zz_execute_SHIFT_RIGHT_2 = {((execute_SHIFT_CTRL == ShiftCtrlEnum_SRA_1) && execute_FullBarrelShifterPlugin_reversed[31]),execute_FullBarrelShifterPlugin_reversed};
  assign _zz_decode_FORMAL_PC_NEXT_1 = (decode_IS_RVC ? 3'b010 : 3'b100);
  assign _zz_decode_FORMAL_PC_NEXT = {29'd0, _zz_decode_FORMAL_PC_NEXT_1};
  assign _zz__zz_IBusCachedPlugin_jump_pcLoad_payload_1 = (_zz_IBusCachedPlugin_jump_pcLoad_payload - 4'b0001);
  assign _zz_IBusCachedPlugin_fetchPc_pc_1 = {IBusCachedPlugin_fetchPc_inc,2'b00};
  assign _zz_IBusCachedPlugin_fetchPc_pc = {29'd0, _zz_IBusCachedPlugin_fetchPc_pc_1};
  assign _zz_IBusCachedPlugin_decodePc_pcPlus_1 = (decode_IS_RVC ? 3'b010 : 3'b100);
  assign _zz_IBusCachedPlugin_decodePc_pcPlus = {29'd0, _zz_IBusCachedPlugin_decodePc_pcPlus_1};
  assign _zz_IBusCachedPlugin_decompressor_decompressed_27 = {{_zz_IBusCachedPlugin_decompressor_decompressed_10,_zz_IBusCachedPlugin_decompressor_decompressed[6 : 2]},12'h0};
  assign _zz_IBusCachedPlugin_decompressor_decompressed_34 = {{{4'b0000,_zz_IBusCachedPlugin_decompressor_decompressed[8 : 7]},_zz_IBusCachedPlugin_decompressor_decompressed[12 : 9]},2'b00};
  assign _zz_IBusCachedPlugin_decompressor_decompressed_35 = {{{4'b0000,_zz_IBusCachedPlugin_decompressor_decompressed[8 : 7]},_zz_IBusCachedPlugin_decompressor_decompressed[12 : 9]},2'b00};
  assign _zz__zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_2 = {{_zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz__zz_IBusCachedPlugin_predictionJumpInterface_payload = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]};
  assign _zz__zz_IBusCachedPlugin_predictionJumpInterface_payload_2 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_DBusCachedPlugin_exceptionBus_payload_code = (writeBack_MEMORY_WR ? 3'b111 : 3'b101);
  assign _zz_DBusCachedPlugin_exceptionBus_payload_code_1 = (writeBack_MEMORY_WR ? 3'b110 : 3'b100);
  assign _zz__zz_execute_REGFILE_WRITE_DATA = execute_SRC_LESS;
  assign _zz__zz_execute_SRC1 = (execute_IS_RVC ? 3'b010 : 3'b100);
  assign _zz__zz_execute_SRC1_1 = execute_INSTRUCTION[19 : 15];
  assign _zz__zz_execute_SRC2_3 = {execute_INSTRUCTION[31 : 25],execute_INSTRUCTION[11 : 7]};
  assign _zz_execute_SrcPlugin_addSub = ($signed(_zz_execute_SrcPlugin_addSub_1) + $signed(_zz_execute_SrcPlugin_addSub_4));
  assign _zz_execute_SrcPlugin_addSub_1 = ($signed(_zz_execute_SrcPlugin_addSub_2) + $signed(_zz_execute_SrcPlugin_addSub_3));
  assign _zz_execute_SrcPlugin_addSub_2 = execute_SRC1;
  assign _zz_execute_SrcPlugin_addSub_3 = (execute_SRC_USE_SUB_LESS ? (~ execute_SRC2) : execute_SRC2);
  assign _zz_execute_SrcPlugin_addSub_4 = (execute_SRC_USE_SUB_LESS ? _zz_execute_SrcPlugin_addSub_5 : _zz_execute_SrcPlugin_addSub_6);
  assign _zz_execute_SrcPlugin_addSub_5 = 32'h00000001;
  assign _zz_execute_SrcPlugin_addSub_6 = 32'h0;
  assign _zz_writeBack_MulPlugin_result = {{14{writeBack_MUL_LOW[51]}}, writeBack_MUL_LOW};
  assign _zz_writeBack_MulPlugin_result_1 = ({32'd0,writeBack_MUL_HH} <<< 32);
  assign _zz__zz_decode_RS2_2 = writeBack_MUL_LOW[31 : 0];
  assign _zz__zz_decode_RS2_2_1 = writeBack_MulPlugin_result[63 : 32];
  assign _zz_memory_DivPlugin_div_counter_valueNext_1 = memory_DivPlugin_div_counter_willIncrement;
  assign _zz_memory_DivPlugin_div_counter_valueNext = {5'd0, _zz_memory_DivPlugin_div_counter_valueNext_1};
  assign _zz_memory_DivPlugin_div_stage_0_remainderMinusDenominator = {1'd0, memory_DivPlugin_rs2};
  assign _zz_memory_DivPlugin_div_stage_0_outRemainder = memory_DivPlugin_div_stage_0_remainderMinusDenominator[31:0];
  assign _zz_memory_DivPlugin_div_stage_0_outRemainder_1 = memory_DivPlugin_div_stage_0_remainderShifted[31:0];
  assign _zz_memory_DivPlugin_div_stage_0_outNumerator = {_zz_memory_DivPlugin_div_stage_0_remainderShifted,(! memory_DivPlugin_div_stage_0_remainderMinusDenominator[32])};
  assign _zz_memory_DivPlugin_div_result_1 = _zz_memory_DivPlugin_div_result_2;
  assign _zz_memory_DivPlugin_div_result_2 = _zz_memory_DivPlugin_div_result_3;
  assign _zz_memory_DivPlugin_div_result_3 = ({memory_DivPlugin_div_needRevert,(memory_DivPlugin_div_needRevert ? (~ _zz_memory_DivPlugin_div_result) : _zz_memory_DivPlugin_div_result)} + _zz_memory_DivPlugin_div_result_4);
  assign _zz_memory_DivPlugin_div_result_5 = memory_DivPlugin_div_needRevert;
  assign _zz_memory_DivPlugin_div_result_4 = {32'd0, _zz_memory_DivPlugin_div_result_5};
  assign _zz_memory_DivPlugin_rs1_3 = _zz_memory_DivPlugin_rs1;
  assign _zz_memory_DivPlugin_rs1_2 = {32'd0, _zz_memory_DivPlugin_rs1_3};
  assign _zz_memory_DivPlugin_rs2_2 = _zz_memory_DivPlugin_rs2;
  assign _zz_memory_DivPlugin_rs2_1 = {31'd0, _zz_memory_DivPlugin_rs2_2};
  assign _zz__zz_execute_BranchPlugin_branch_src2_2 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz__zz_execute_BranchPlugin_branch_src2_4 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_execute_BranchPlugin_branch_src2_9 = (execute_IS_RVC ? 3'b010 : 3'b100);
  assign _zz__zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1 = (_zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code & (~ _zz__zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1_1));
  assign _zz__zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1_1 = (_zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code - 2'b01);
  assign _zz_IBusCachedPlugin_jump_pcLoad_payload_6 = {_zz_IBusCachedPlugin_jump_pcLoad_payload_4,_zz_IBusCachedPlugin_jump_pcLoad_payload_3};
  assign _zz_writeBack_DBusCachedPlugin_rspShifted_1 = dataCache_1_io_cpu_writeBack_address[1 : 0];
  assign _zz_writeBack_DBusCachedPlugin_rspShifted_3 = dataCache_1_io_cpu_writeBack_address[1 : 1];
  assign _zz_decode_LEGAL_INSTRUCTION = 32'h0000107f;
  assign _zz_decode_LEGAL_INSTRUCTION_1 = (decode_INSTRUCTION & 32'h0000207f);
  assign _zz_decode_LEGAL_INSTRUCTION_2 = 32'h00002073;
  assign _zz_decode_LEGAL_INSTRUCTION_3 = ((decode_INSTRUCTION & 32'h0000407f) == 32'h00004063);
  assign _zz_decode_LEGAL_INSTRUCTION_4 = ((decode_INSTRUCTION & 32'h0000207f) == 32'h00002013);
  assign _zz_decode_LEGAL_INSTRUCTION_5 = {((decode_INSTRUCTION & 32'h0000603f) == 32'h00000023),{((decode_INSTRUCTION & 32'h0000207f) == 32'h00000003),{((decode_INSTRUCTION & _zz_decode_LEGAL_INSTRUCTION_6) == 32'h00000003),{(_zz_decode_LEGAL_INSTRUCTION_7 == _zz_decode_LEGAL_INSTRUCTION_8),{_zz_decode_LEGAL_INSTRUCTION_9,{_zz_decode_LEGAL_INSTRUCTION_10,_zz_decode_LEGAL_INSTRUCTION_11}}}}}};
  assign _zz_decode_LEGAL_INSTRUCTION_6 = 32'h0000505f;
  assign _zz_decode_LEGAL_INSTRUCTION_7 = (decode_INSTRUCTION & 32'h0000707b);
  assign _zz_decode_LEGAL_INSTRUCTION_8 = 32'h00000063;
  assign _zz_decode_LEGAL_INSTRUCTION_9 = ((decode_INSTRUCTION & 32'h0000607f) == 32'h0000000f);
  assign _zz_decode_LEGAL_INSTRUCTION_10 = ((decode_INSTRUCTION & 32'hfc00007f) == 32'h00000033);
  assign _zz_decode_LEGAL_INSTRUCTION_11 = {((decode_INSTRUCTION & 32'h01f0707f) == 32'h0000500f),{((decode_INSTRUCTION & 32'hbc00707f) == 32'h00005013),{((decode_INSTRUCTION & _zz_decode_LEGAL_INSTRUCTION_12) == 32'h00001013),{(_zz_decode_LEGAL_INSTRUCTION_13 == _zz_decode_LEGAL_INSTRUCTION_14),{_zz_decode_LEGAL_INSTRUCTION_15,{_zz_decode_LEGAL_INSTRUCTION_16,_zz_decode_LEGAL_INSTRUCTION_17}}}}}};
  assign _zz_decode_LEGAL_INSTRUCTION_12 = 32'hfc00307f;
  assign _zz_decode_LEGAL_INSTRUCTION_13 = (decode_INSTRUCTION & 32'hbe00707f);
  assign _zz_decode_LEGAL_INSTRUCTION_14 = 32'h00005033;
  assign _zz_decode_LEGAL_INSTRUCTION_15 = ((decode_INSTRUCTION & 32'hbe00707f) == 32'h00000033);
  assign _zz_decode_LEGAL_INSTRUCTION_16 = ((decode_INSTRUCTION & 32'hdfffffff) == 32'h10200073);
  assign _zz_decode_LEGAL_INSTRUCTION_17 = ((decode_INSTRUCTION & 32'hffefffff) == 32'h00000073);
  assign _zz_IBusCachedPlugin_decompressor_decompressed_28 = (_zz_IBusCachedPlugin_decompressor_decompressed[11 : 10] == 2'b01);
  assign _zz_IBusCachedPlugin_decompressor_decompressed_29 = ((_zz_IBusCachedPlugin_decompressor_decompressed[11 : 10] == 2'b11) && (_zz_IBusCachedPlugin_decompressor_decompressed[6 : 5] == 2'b00));
  assign _zz_IBusCachedPlugin_decompressor_decompressed_30 = 7'h0;
  assign _zz_IBusCachedPlugin_decompressor_decompressed_31 = _zz_IBusCachedPlugin_decompressor_decompressed[6 : 2];
  assign _zz_IBusCachedPlugin_decompressor_decompressed_32 = _zz_IBusCachedPlugin_decompressor_decompressed[12];
  assign _zz_IBusCachedPlugin_decompressor_decompressed_33 = _zz_IBusCachedPlugin_decompressor_decompressed[11 : 7];
  assign _zz_IBusCachedPlugin_predictionJumpInterface_payload_4 = decode_INSTRUCTION[31];
  assign _zz_IBusCachedPlugin_predictionJumpInterface_payload_5 = decode_INSTRUCTION[19 : 12];
  assign _zz_IBusCachedPlugin_predictionJumpInterface_payload_6 = decode_INSTRUCTION[20];
  assign _zz_IBusCachedPlugin_predictionJumpInterface_payload_7 = decode_INSTRUCTION[31];
  assign _zz_IBusCachedPlugin_predictionJumpInterface_payload_8 = decode_INSTRUCTION[7];
  assign _zz__zz_decode_ENV_CTRL_2 = 32'h10103050;
  assign _zz__zz_decode_ENV_CTRL_2_1 = (decode_INSTRUCTION & 32'h10003050);
  assign _zz__zz_decode_ENV_CTRL_2_2 = 32'h10000050;
  assign _zz__zz_decode_ENV_CTRL_2_3 = ((decode_INSTRUCTION & 32'h00001050) == 32'h00001050);
  assign _zz__zz_decode_ENV_CTRL_2_4 = ((decode_INSTRUCTION & 32'h00002050) == 32'h00002050);
  assign _zz__zz_decode_ENV_CTRL_2_5 = {_zz_decode_ENV_CTRL_6,((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_6) == 32'h00000004)};
  assign _zz__zz_decode_ENV_CTRL_2_7 = (|((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_8) == 32'h00000040));
  assign _zz__zz_decode_ENV_CTRL_2_9 = (|_zz_decode_ENV_CTRL_7);
  assign _zz__zz_decode_ENV_CTRL_2_10 = {(|_zz_decode_ENV_CTRL_7),{(|_zz__zz_decode_ENV_CTRL_2_11),{_zz__zz_decode_ENV_CTRL_2_12,{_zz__zz_decode_ENV_CTRL_2_13,_zz__zz_decode_ENV_CTRL_2_18}}}};
  assign _zz__zz_decode_ENV_CTRL_2_6 = 32'h0000001c;
  assign _zz__zz_decode_ENV_CTRL_2_8 = 32'h00000058;
  assign _zz__zz_decode_ENV_CTRL_2_11 = ((decode_INSTRUCTION & 32'h02004064) == 32'h02004020);
  assign _zz__zz_decode_ENV_CTRL_2_12 = (|((decode_INSTRUCTION & 32'h02004074) == 32'h02000030));
  assign _zz__zz_decode_ENV_CTRL_2_13 = (|{(_zz__zz_decode_ENV_CTRL_2_14 == _zz__zz_decode_ENV_CTRL_2_15),(_zz__zz_decode_ENV_CTRL_2_16 == _zz__zz_decode_ENV_CTRL_2_17)});
  assign _zz__zz_decode_ENV_CTRL_2_18 = {(|{_zz__zz_decode_ENV_CTRL_2_19,{_zz__zz_decode_ENV_CTRL_2_20,_zz__zz_decode_ENV_CTRL_2_22}}),{(|_zz__zz_decode_ENV_CTRL_2_24),{(|_zz__zz_decode_ENV_CTRL_2_25),{_zz__zz_decode_ENV_CTRL_2_27,{_zz__zz_decode_ENV_CTRL_2_30,_zz__zz_decode_ENV_CTRL_2_33}}}}};
  assign _zz__zz_decode_ENV_CTRL_2_14 = (decode_INSTRUCTION & 32'h00007034);
  assign _zz__zz_decode_ENV_CTRL_2_15 = 32'h00005010;
  assign _zz__zz_decode_ENV_CTRL_2_16 = (decode_INSTRUCTION & 32'h02007064);
  assign _zz__zz_decode_ENV_CTRL_2_17 = 32'h00005020;
  assign _zz__zz_decode_ENV_CTRL_2_19 = ((decode_INSTRUCTION & 32'h40003054) == 32'h40001010);
  assign _zz__zz_decode_ENV_CTRL_2_20 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_21) == 32'h00001010);
  assign _zz__zz_decode_ENV_CTRL_2_22 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_23) == 32'h00001010);
  assign _zz__zz_decode_ENV_CTRL_2_24 = ((decode_INSTRUCTION & 32'h00000064) == 32'h00000024);
  assign _zz__zz_decode_ENV_CTRL_2_25 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_26) == 32'h00001000);
  assign _zz__zz_decode_ENV_CTRL_2_27 = (|(_zz__zz_decode_ENV_CTRL_2_28 == _zz__zz_decode_ENV_CTRL_2_29));
  assign _zz__zz_decode_ENV_CTRL_2_30 = (|{_zz__zz_decode_ENV_CTRL_2_31,_zz__zz_decode_ENV_CTRL_2_32});
  assign _zz__zz_decode_ENV_CTRL_2_33 = {(|_zz__zz_decode_ENV_CTRL_2_34),{_zz__zz_decode_ENV_CTRL_2_35,{_zz__zz_decode_ENV_CTRL_2_40,_zz__zz_decode_ENV_CTRL_2_45}}};
  assign _zz__zz_decode_ENV_CTRL_2_21 = 32'h00007034;
  assign _zz__zz_decode_ENV_CTRL_2_23 = 32'h02007054;
  assign _zz__zz_decode_ENV_CTRL_2_26 = 32'h00001000;
  assign _zz__zz_decode_ENV_CTRL_2_28 = (decode_INSTRUCTION & 32'h00003000);
  assign _zz__zz_decode_ENV_CTRL_2_29 = 32'h00002000;
  assign _zz__zz_decode_ENV_CTRL_2_31 = ((decode_INSTRUCTION & 32'h00002010) == 32'h00002000);
  assign _zz__zz_decode_ENV_CTRL_2_32 = ((decode_INSTRUCTION & 32'h00005000) == 32'h00001000);
  assign _zz__zz_decode_ENV_CTRL_2_34 = ((decode_INSTRUCTION & 32'h00004048) == 32'h00004008);
  assign _zz__zz_decode_ENV_CTRL_2_35 = (|{(_zz__zz_decode_ENV_CTRL_2_36 == _zz__zz_decode_ENV_CTRL_2_37),(_zz__zz_decode_ENV_CTRL_2_38 == _zz__zz_decode_ENV_CTRL_2_39)});
  assign _zz__zz_decode_ENV_CTRL_2_40 = (|{_zz__zz_decode_ENV_CTRL_2_41,{_zz__zz_decode_ENV_CTRL_2_42,_zz__zz_decode_ENV_CTRL_2_43}});
  assign _zz__zz_decode_ENV_CTRL_2_45 = {(|_zz__zz_decode_ENV_CTRL_2_46),{(|_zz__zz_decode_ENV_CTRL_2_47),{_zz__zz_decode_ENV_CTRL_2_58,{_zz__zz_decode_ENV_CTRL_2_71,_zz__zz_decode_ENV_CTRL_2_85}}}};
  assign _zz__zz_decode_ENV_CTRL_2_36 = (decode_INSTRUCTION & 32'h00000034);
  assign _zz__zz_decode_ENV_CTRL_2_37 = 32'h00000020;
  assign _zz__zz_decode_ENV_CTRL_2_38 = (decode_INSTRUCTION & 32'h00000064);
  assign _zz__zz_decode_ENV_CTRL_2_39 = 32'h00000020;
  assign _zz__zz_decode_ENV_CTRL_2_41 = ((decode_INSTRUCTION & 32'h00000050) == 32'h00000040);
  assign _zz__zz_decode_ENV_CTRL_2_42 = _zz_decode_ENV_CTRL_4;
  assign _zz__zz_decode_ENV_CTRL_2_43 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_44) == 32'h00000040);
  assign _zz__zz_decode_ENV_CTRL_2_46 = ((decode_INSTRUCTION & 32'h00000020) == 32'h00000020);
  assign _zz__zz_decode_ENV_CTRL_2_47 = {(_zz__zz_decode_ENV_CTRL_2_48 == _zz__zz_decode_ENV_CTRL_2_49),{_zz_decode_ENV_CTRL_5,{_zz__zz_decode_ENV_CTRL_2_50,_zz__zz_decode_ENV_CTRL_2_53}}};
  assign _zz__zz_decode_ENV_CTRL_2_58 = (|{_zz_decode_ENV_CTRL_5,{_zz__zz_decode_ENV_CTRL_2_59,_zz__zz_decode_ENV_CTRL_2_62}});
  assign _zz__zz_decode_ENV_CTRL_2_71 = (|{_zz__zz_decode_ENV_CTRL_2_72,_zz__zz_decode_ENV_CTRL_2_73});
  assign _zz__zz_decode_ENV_CTRL_2_85 = {(|_zz__zz_decode_ENV_CTRL_2_86),{_zz__zz_decode_ENV_CTRL_2_89,{_zz__zz_decode_ENV_CTRL_2_94,_zz__zz_decode_ENV_CTRL_2_98}}};
  assign _zz__zz_decode_ENV_CTRL_2_44 = 32'h00103040;
  assign _zz__zz_decode_ENV_CTRL_2_48 = (decode_INSTRUCTION & 32'h00000040);
  assign _zz__zz_decode_ENV_CTRL_2_49 = 32'h00000040;
  assign _zz__zz_decode_ENV_CTRL_2_50 = (_zz__zz_decode_ENV_CTRL_2_51 == _zz__zz_decode_ENV_CTRL_2_52);
  assign _zz__zz_decode_ENV_CTRL_2_53 = {_zz__zz_decode_ENV_CTRL_2_54,_zz__zz_decode_ENV_CTRL_2_56};
  assign _zz__zz_decode_ENV_CTRL_2_59 = (_zz__zz_decode_ENV_CTRL_2_60 == _zz__zz_decode_ENV_CTRL_2_61);
  assign _zz__zz_decode_ENV_CTRL_2_62 = {_zz__zz_decode_ENV_CTRL_2_63,{_zz__zz_decode_ENV_CTRL_2_65,_zz__zz_decode_ENV_CTRL_2_68}};
  assign _zz__zz_decode_ENV_CTRL_2_72 = _zz_decode_ENV_CTRL_6;
  assign _zz__zz_decode_ENV_CTRL_2_73 = {_zz__zz_decode_ENV_CTRL_2_74,{_zz__zz_decode_ENV_CTRL_2_76,_zz__zz_decode_ENV_CTRL_2_79}};
  assign _zz__zz_decode_ENV_CTRL_2_86 = {_zz_decode_ENV_CTRL_5,_zz__zz_decode_ENV_CTRL_2_87};
  assign _zz__zz_decode_ENV_CTRL_2_89 = (|{_zz__zz_decode_ENV_CTRL_2_90,_zz__zz_decode_ENV_CTRL_2_91});
  assign _zz__zz_decode_ENV_CTRL_2_94 = (|_zz__zz_decode_ENV_CTRL_2_95);
  assign _zz__zz_decode_ENV_CTRL_2_98 = {_zz__zz_decode_ENV_CTRL_2_99,{_zz__zz_decode_ENV_CTRL_2_101,_zz__zz_decode_ENV_CTRL_2_109}};
  assign _zz__zz_decode_ENV_CTRL_2_51 = (decode_INSTRUCTION & 32'h00004020);
  assign _zz__zz_decode_ENV_CTRL_2_52 = 32'h00004020;
  assign _zz__zz_decode_ENV_CTRL_2_54 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_55) == 32'h00000010);
  assign _zz__zz_decode_ENV_CTRL_2_56 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_57) == 32'h00000020);
  assign _zz__zz_decode_ENV_CTRL_2_60 = (decode_INSTRUCTION & 32'h00002030);
  assign _zz__zz_decode_ENV_CTRL_2_61 = 32'h00002010;
  assign _zz__zz_decode_ENV_CTRL_2_63 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_64) == 32'h00000010);
  assign _zz__zz_decode_ENV_CTRL_2_65 = (_zz__zz_decode_ENV_CTRL_2_66 == _zz__zz_decode_ENV_CTRL_2_67);
  assign _zz__zz_decode_ENV_CTRL_2_68 = (_zz__zz_decode_ENV_CTRL_2_69 == _zz__zz_decode_ENV_CTRL_2_70);
  assign _zz__zz_decode_ENV_CTRL_2_74 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_75) == 32'h00001010);
  assign _zz__zz_decode_ENV_CTRL_2_76 = (_zz__zz_decode_ENV_CTRL_2_77 == _zz__zz_decode_ENV_CTRL_2_78);
  assign _zz__zz_decode_ENV_CTRL_2_79 = {_zz__zz_decode_ENV_CTRL_2_80,{_zz__zz_decode_ENV_CTRL_2_81,_zz__zz_decode_ENV_CTRL_2_83}};
  assign _zz__zz_decode_ENV_CTRL_2_87 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_88) == 32'h00000020);
  assign _zz__zz_decode_ENV_CTRL_2_90 = _zz_decode_ENV_CTRL_5;
  assign _zz__zz_decode_ENV_CTRL_2_91 = (_zz__zz_decode_ENV_CTRL_2_92 == _zz__zz_decode_ENV_CTRL_2_93);
  assign _zz__zz_decode_ENV_CTRL_2_95 = (_zz__zz_decode_ENV_CTRL_2_96 == _zz__zz_decode_ENV_CTRL_2_97);
  assign _zz__zz_decode_ENV_CTRL_2_99 = (|_zz__zz_decode_ENV_CTRL_2_100);
  assign _zz__zz_decode_ENV_CTRL_2_101 = (|_zz__zz_decode_ENV_CTRL_2_102);
  assign _zz__zz_decode_ENV_CTRL_2_109 = {_zz__zz_decode_ENV_CTRL_2_110,{_zz__zz_decode_ENV_CTRL_2_113,_zz__zz_decode_ENV_CTRL_2_121}};
  assign _zz__zz_decode_ENV_CTRL_2_55 = 32'h00000030;
  assign _zz__zz_decode_ENV_CTRL_2_57 = 32'h02000020;
  assign _zz__zz_decode_ENV_CTRL_2_64 = 32'h00001030;
  assign _zz__zz_decode_ENV_CTRL_2_66 = (decode_INSTRUCTION & 32'h02002060);
  assign _zz__zz_decode_ENV_CTRL_2_67 = 32'h00002020;
  assign _zz__zz_decode_ENV_CTRL_2_69 = (decode_INSTRUCTION & 32'h02003020);
  assign _zz__zz_decode_ENV_CTRL_2_70 = 32'h00000020;
  assign _zz__zz_decode_ENV_CTRL_2_75 = 32'h00001010;
  assign _zz__zz_decode_ENV_CTRL_2_77 = (decode_INSTRUCTION & 32'h00002010);
  assign _zz__zz_decode_ENV_CTRL_2_78 = 32'h00002010;
  assign _zz__zz_decode_ENV_CTRL_2_80 = ((decode_INSTRUCTION & 32'h00000050) == 32'h00000010);
  assign _zz__zz_decode_ENV_CTRL_2_81 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_82) == 32'h00000004);
  assign _zz__zz_decode_ENV_CTRL_2_83 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_84) == 32'h0);
  assign _zz__zz_decode_ENV_CTRL_2_88 = 32'h00000070;
  assign _zz__zz_decode_ENV_CTRL_2_92 = (decode_INSTRUCTION & 32'h00000020);
  assign _zz__zz_decode_ENV_CTRL_2_93 = 32'h0;
  assign _zz__zz_decode_ENV_CTRL_2_96 = (decode_INSTRUCTION & 32'h00004014);
  assign _zz__zz_decode_ENV_CTRL_2_97 = 32'h00004010;
  assign _zz__zz_decode_ENV_CTRL_2_100 = ((decode_INSTRUCTION & 32'h00006014) == 32'h00002010);
  assign _zz__zz_decode_ENV_CTRL_2_102 = {(_zz__zz_decode_ENV_CTRL_2_103 == _zz__zz_decode_ENV_CTRL_2_104),{_zz_decode_ENV_CTRL_4,{_zz__zz_decode_ENV_CTRL_2_105,_zz__zz_decode_ENV_CTRL_2_107}}};
  assign _zz__zz_decode_ENV_CTRL_2_110 = (|(_zz__zz_decode_ENV_CTRL_2_111 == _zz__zz_decode_ENV_CTRL_2_112));
  assign _zz__zz_decode_ENV_CTRL_2_113 = (|{_zz__zz_decode_ENV_CTRL_2_114,_zz__zz_decode_ENV_CTRL_2_116});
  assign _zz__zz_decode_ENV_CTRL_2_121 = {(|_zz__zz_decode_ENV_CTRL_2_122),{_zz__zz_decode_ENV_CTRL_2_125,_zz__zz_decode_ENV_CTRL_2_127}};
  assign _zz__zz_decode_ENV_CTRL_2_82 = 32'h0000000c;
  assign _zz__zz_decode_ENV_CTRL_2_84 = 32'h00000028;
  assign _zz__zz_decode_ENV_CTRL_2_103 = (decode_INSTRUCTION & 32'h00000044);
  assign _zz__zz_decode_ENV_CTRL_2_104 = 32'h0;
  assign _zz__zz_decode_ENV_CTRL_2_105 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_106) == 32'h00002000);
  assign _zz__zz_decode_ENV_CTRL_2_107 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_108) == 32'h00001000);
  assign _zz__zz_decode_ENV_CTRL_2_111 = (decode_INSTRUCTION & 32'h00000058);
  assign _zz__zz_decode_ENV_CTRL_2_112 = 32'h0;
  assign _zz__zz_decode_ENV_CTRL_2_114 = ((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2_115) == 32'h00000040);
  assign _zz__zz_decode_ENV_CTRL_2_116 = {(_zz__zz_decode_ENV_CTRL_2_117 == _zz__zz_decode_ENV_CTRL_2_118),(_zz__zz_decode_ENV_CTRL_2_119 == _zz__zz_decode_ENV_CTRL_2_120)};
  assign _zz__zz_decode_ENV_CTRL_2_122 = {(_zz__zz_decode_ENV_CTRL_2_123 == _zz__zz_decode_ENV_CTRL_2_124),_zz_decode_ENV_CTRL_3};
  assign _zz__zz_decode_ENV_CTRL_2_125 = (|{_zz__zz_decode_ENV_CTRL_2_126,_zz_decode_ENV_CTRL_3});
  assign _zz__zz_decode_ENV_CTRL_2_127 = (|(_zz__zz_decode_ENV_CTRL_2_128 == _zz__zz_decode_ENV_CTRL_2_129));
  assign _zz__zz_decode_ENV_CTRL_2_106 = 32'h00006004;
  assign _zz__zz_decode_ENV_CTRL_2_108 = 32'h00005004;
  assign _zz__zz_decode_ENV_CTRL_2_115 = 32'h00000044;
  assign _zz__zz_decode_ENV_CTRL_2_117 = (decode_INSTRUCTION & 32'h00002014);
  assign _zz__zz_decode_ENV_CTRL_2_118 = 32'h00002010;
  assign _zz__zz_decode_ENV_CTRL_2_119 = (decode_INSTRUCTION & 32'h40000034);
  assign _zz__zz_decode_ENV_CTRL_2_120 = 32'h40000030;
  assign _zz__zz_decode_ENV_CTRL_2_123 = (decode_INSTRUCTION & 32'h00000014);
  assign _zz__zz_decode_ENV_CTRL_2_124 = 32'h00000004;
  assign _zz__zz_decode_ENV_CTRL_2_126 = ((decode_INSTRUCTION & 32'h00000044) == 32'h00000004);
  assign _zz__zz_decode_ENV_CTRL_2_128 = (decode_INSTRUCTION & 32'h00005048);
  assign _zz__zz_decode_ENV_CTRL_2_129 = 32'h00001008;
  assign _zz_execute_BranchPlugin_branch_src2_6 = execute_INSTRUCTION[31];
  assign _zz_execute_BranchPlugin_branch_src2_7 = execute_INSTRUCTION[31];
  assign _zz_execute_BranchPlugin_branch_src2_8 = execute_INSTRUCTION[7];
  assign _zz_RegFilePlugin_regFile_port0 = RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress1];
  assign _zz_RegFilePlugin_regFile_port1 = RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress2];
  always @(posedge clkout_system) begin
    if(_zz_1) begin
      RegFilePlugin_regFile[lastStageRegFileWrite_payload_address] <= lastStageRegFileWrite_payload_data;
    end
  end

  InstructionCache IBusCachedPlugin_cache (
    .io_flush                                 (IBusCachedPlugin_cache_io_flush                             ), //i
    .io_cpu_prefetch_isValid                  (IBusCachedPlugin_cache_io_cpu_prefetch_isValid              ), //i
    .io_cpu_prefetch_haltIt                   (IBusCachedPlugin_cache_io_cpu_prefetch_haltIt               ), //o
    .io_cpu_prefetch_pc                       (IBusCachedPlugin_iBusRsp_stages_0_input_payload[31:0]       ), //i
    .io_cpu_fetch_isValid                     (IBusCachedPlugin_cache_io_cpu_fetch_isValid                 ), //i
    .io_cpu_fetch_isStuck                     (IBusCachedPlugin_cache_io_cpu_fetch_isStuck                 ), //i
    .io_cpu_fetch_isRemoved                   (IBusCachedPlugin_cache_io_cpu_fetch_isRemoved               ), //i
    .io_cpu_fetch_pc                          (IBusCachedPlugin_iBusRsp_stages_1_input_payload[31:0]       ), //i
    .io_cpu_fetch_data                        (IBusCachedPlugin_cache_io_cpu_fetch_data[31:0]              ), //o
    .io_cpu_fetch_mmuRsp_physicalAddress      (IBusCachedPlugin_mmuBus_rsp_physicalAddress[31:0]           ), //i
    .io_cpu_fetch_mmuRsp_isIoAccess           (IBusCachedPlugin_mmuBus_rsp_isIoAccess                      ), //i
    .io_cpu_fetch_mmuRsp_isPaging             (IBusCachedPlugin_mmuBus_rsp_isPaging                        ), //i
    .io_cpu_fetch_mmuRsp_allowRead            (IBusCachedPlugin_mmuBus_rsp_allowRead                       ), //i
    .io_cpu_fetch_mmuRsp_allowWrite           (IBusCachedPlugin_mmuBus_rsp_allowWrite                      ), //i
    .io_cpu_fetch_mmuRsp_allowExecute         (IBusCachedPlugin_mmuBus_rsp_allowExecute                    ), //i
    .io_cpu_fetch_mmuRsp_exception            (IBusCachedPlugin_mmuBus_rsp_exception                       ), //i
    .io_cpu_fetch_mmuRsp_refilling            (IBusCachedPlugin_mmuBus_rsp_refilling                       ), //i
    .io_cpu_fetch_mmuRsp_bypassTranslation    (IBusCachedPlugin_mmuBus_rsp_bypassTranslation               ), //i
    .io_cpu_fetch_physicalAddress             (IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress[31:0]   ), //o
    .io_cpu_fetch_cacheMiss                   (IBusCachedPlugin_cache_io_cpu_fetch_cacheMiss               ), //o
    .io_cpu_fetch_error                       (IBusCachedPlugin_cache_io_cpu_fetch_error                   ), //o
    .io_cpu_fetch_mmuRefilling                (IBusCachedPlugin_cache_io_cpu_fetch_mmuRefilling            ), //o
    .io_cpu_fetch_mmuException                (IBusCachedPlugin_cache_io_cpu_fetch_mmuException            ), //o
    .io_cpu_fetch_isUser                      (IBusCachedPlugin_cache_io_cpu_fetch_isUser                  ), //i
    .io_cpu_decode_isValid                    (IBusCachedPlugin_cache_io_cpu_decode_isValid                ), //i
    .io_cpu_decode_isStuck                    (IBusCachedPlugin_cache_io_cpu_decode_isStuck                ), //i
    .io_cpu_decode_pc                         (IBusCachedPlugin_cache_io_cpu_decode_pc[31:0]               ), //i
    .io_cpu_decode_physicalAddress            (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]  ), //o
    .io_cpu_decode_data                       (IBusCachedPlugin_cache_io_cpu_decode_data[31:0]             ), //o
    .io_cpu_fill_valid                        (IBusCachedPlugin_cache_io_cpu_fill_valid                    ), //i
    .io_cpu_fill_payload                      (IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress[31:0]   ), //i
    .io_mem_cmd_valid                         (IBusCachedPlugin_cache_io_mem_cmd_valid                     ), //o
    .io_mem_cmd_ready                         (iBus_cmd_ready                                              ), //i
    .io_mem_cmd_payload_address               (IBusCachedPlugin_cache_io_mem_cmd_payload_address[31:0]     ), //o
    .io_mem_cmd_payload_size                  (IBusCachedPlugin_cache_io_mem_cmd_payload_size[2:0]         ), //o
    .io_mem_rsp_valid                         (iBus_rsp_valid                                              ), //i
    .io_mem_rsp_payload_data                  (iBus_rsp_payload_data[31:0]                                 ), //i
    .io_mem_rsp_payload_error                 (iBus_rsp_payload_error                                      ), //i
    .clkout_system                            (clkout_system                                               ), //i
    .systemCdCtrl_logic_outputReset           (systemCdCtrl_logic_outputReset                              )  //i
  );
  DataCache dataCache_1 (
    .io_cpu_execute_isValid                    (dataCache_1_io_cpu_execute_isValid                 ), //i
    .io_cpu_execute_address                    (dataCache_1_io_cpu_execute_address[31:0]           ), //i
    .io_cpu_execute_haltIt                     (dataCache_1_io_cpu_execute_haltIt                  ), //o
    .io_cpu_execute_args_wr                    (execute_MEMORY_WR                                  ), //i
    .io_cpu_execute_args_size                  (execute_DBusCachedPlugin_size[1:0]                 ), //i
    .io_cpu_execute_args_totalyConsistent      (execute_MEMORY_FORCE_CONSTISTENCY                  ), //i
    .io_cpu_execute_refilling                  (dataCache_1_io_cpu_execute_refilling               ), //o
    .io_cpu_memory_isValid                     (dataCache_1_io_cpu_memory_isValid                  ), //i
    .io_cpu_memory_isStuck                     (memory_arbitration_isStuck                         ), //i
    .io_cpu_memory_isWrite                     (dataCache_1_io_cpu_memory_isWrite                  ), //o
    .io_cpu_memory_address                     (dataCache_1_io_cpu_memory_address[31:0]            ), //i
    .io_cpu_memory_mmuRsp_physicalAddress      (DBusCachedPlugin_mmuBus_rsp_physicalAddress[31:0]  ), //i
    .io_cpu_memory_mmuRsp_isIoAccess           (dataCache_1_io_cpu_memory_mmuRsp_isIoAccess        ), //i
    .io_cpu_memory_mmuRsp_isPaging             (DBusCachedPlugin_mmuBus_rsp_isPaging               ), //i
    .io_cpu_memory_mmuRsp_allowRead            (DBusCachedPlugin_mmuBus_rsp_allowRead              ), //i
    .io_cpu_memory_mmuRsp_allowWrite           (DBusCachedPlugin_mmuBus_rsp_allowWrite             ), //i
    .io_cpu_memory_mmuRsp_allowExecute         (DBusCachedPlugin_mmuBus_rsp_allowExecute           ), //i
    .io_cpu_memory_mmuRsp_exception            (DBusCachedPlugin_mmuBus_rsp_exception              ), //i
    .io_cpu_memory_mmuRsp_refilling            (DBusCachedPlugin_mmuBus_rsp_refilling              ), //i
    .io_cpu_memory_mmuRsp_bypassTranslation    (DBusCachedPlugin_mmuBus_rsp_bypassTranslation      ), //i
    .io_cpu_writeBack_isValid                  (dataCache_1_io_cpu_writeBack_isValid               ), //i
    .io_cpu_writeBack_isStuck                  (writeBack_arbitration_isStuck                      ), //i
    .io_cpu_writeBack_isUser                   (dataCache_1_io_cpu_writeBack_isUser                ), //i
    .io_cpu_writeBack_haltIt                   (dataCache_1_io_cpu_writeBack_haltIt                ), //o
    .io_cpu_writeBack_isWrite                  (dataCache_1_io_cpu_writeBack_isWrite               ), //o
    .io_cpu_writeBack_storeData                (dataCache_1_io_cpu_writeBack_storeData[31:0]       ), //i
    .io_cpu_writeBack_data                     (dataCache_1_io_cpu_writeBack_data[31:0]            ), //o
    .io_cpu_writeBack_address                  (dataCache_1_io_cpu_writeBack_address[31:0]         ), //i
    .io_cpu_writeBack_mmuException             (dataCache_1_io_cpu_writeBack_mmuException          ), //o
    .io_cpu_writeBack_unalignedAccess          (dataCache_1_io_cpu_writeBack_unalignedAccess       ), //o
    .io_cpu_writeBack_accessError              (dataCache_1_io_cpu_writeBack_accessError           ), //o
    .io_cpu_writeBack_keepMemRspData           (dataCache_1_io_cpu_writeBack_keepMemRspData        ), //o
    .io_cpu_writeBack_fence_SW                 (dataCache_1_io_cpu_writeBack_fence_SW              ), //i
    .io_cpu_writeBack_fence_SR                 (dataCache_1_io_cpu_writeBack_fence_SR              ), //i
    .io_cpu_writeBack_fence_SO                 (dataCache_1_io_cpu_writeBack_fence_SO              ), //i
    .io_cpu_writeBack_fence_SI                 (dataCache_1_io_cpu_writeBack_fence_SI              ), //i
    .io_cpu_writeBack_fence_PW                 (dataCache_1_io_cpu_writeBack_fence_PW              ), //i
    .io_cpu_writeBack_fence_PR                 (dataCache_1_io_cpu_writeBack_fence_PR              ), //i
    .io_cpu_writeBack_fence_PO                 (dataCache_1_io_cpu_writeBack_fence_PO              ), //i
    .io_cpu_writeBack_fence_PI                 (dataCache_1_io_cpu_writeBack_fence_PI              ), //i
    .io_cpu_writeBack_fence_FM                 (dataCache_1_io_cpu_writeBack_fence_FM[3:0]         ), //i
    .io_cpu_writeBack_exclusiveOk              (dataCache_1_io_cpu_writeBack_exclusiveOk           ), //o
    .io_cpu_redo                               (dataCache_1_io_cpu_redo                            ), //o
    .io_cpu_flush_valid                        (dataCache_1_io_cpu_flush_valid                     ), //i
    .io_cpu_flush_ready                        (dataCache_1_io_cpu_flush_ready                     ), //o
    .io_mem_cmd_valid                          (dataCache_1_io_mem_cmd_valid                       ), //o
    .io_mem_cmd_ready                          (dBus_cmd_ready                                     ), //i
    .io_mem_cmd_payload_wr                     (dataCache_1_io_mem_cmd_payload_wr                  ), //o
    .io_mem_cmd_payload_uncached               (dataCache_1_io_mem_cmd_payload_uncached            ), //o
    .io_mem_cmd_payload_address                (dataCache_1_io_mem_cmd_payload_address[31:0]       ), //o
    .io_mem_cmd_payload_data                   (dataCache_1_io_mem_cmd_payload_data[31:0]          ), //o
    .io_mem_cmd_payload_mask                   (dataCache_1_io_mem_cmd_payload_mask[3:0]           ), //o
    .io_mem_cmd_payload_size                   (dataCache_1_io_mem_cmd_payload_size[2:0]           ), //o
    .io_mem_cmd_payload_last                   (dataCache_1_io_mem_cmd_payload_last                ), //o
    .io_mem_rsp_valid                          (dBus_rsp_valid                                     ), //i
    .io_mem_rsp_payload_last                   (dBus_rsp_payload_last                              ), //i
    .io_mem_rsp_payload_data                   (dBus_rsp_payload_data[31:0]                        ), //i
    .io_mem_rsp_payload_error                  (dBus_rsp_payload_error                             ), //i
    .clkout_system                             (clkout_system                                      ), //i
    .systemCdCtrl_logic_outputReset            (systemCdCtrl_logic_outputReset                     )  //i
  );
  always @(*) begin
    case(_zz_IBusCachedPlugin_jump_pcLoad_payload_6)
      2'b00 : begin
        _zz_IBusCachedPlugin_jump_pcLoad_payload_5 = DBusCachedPlugin_redoBranch_payload;
      end
      2'b01 : begin
        _zz_IBusCachedPlugin_jump_pcLoad_payload_5 = CsrPlugin_jumpInterface_payload;
      end
      2'b10 : begin
        _zz_IBusCachedPlugin_jump_pcLoad_payload_5 = BranchPlugin_jumpInterface_payload;
      end
      default : begin
        _zz_IBusCachedPlugin_jump_pcLoad_payload_5 = IBusCachedPlugin_predictionJumpInterface_payload;
      end
    endcase
  end

  always @(*) begin
    case(_zz_writeBack_DBusCachedPlugin_rspShifted_1)
      2'b00 : begin
        _zz_writeBack_DBusCachedPlugin_rspShifted = writeBack_DBusCachedPlugin_rspSplits_0;
      end
      2'b01 : begin
        _zz_writeBack_DBusCachedPlugin_rspShifted = writeBack_DBusCachedPlugin_rspSplits_1;
      end
      2'b10 : begin
        _zz_writeBack_DBusCachedPlugin_rspShifted = writeBack_DBusCachedPlugin_rspSplits_2;
      end
      default : begin
        _zz_writeBack_DBusCachedPlugin_rspShifted = writeBack_DBusCachedPlugin_rspSplits_3;
      end
    endcase
  end

  always @(*) begin
    case(_zz_writeBack_DBusCachedPlugin_rspShifted_3)
      1'b0 : begin
        _zz_writeBack_DBusCachedPlugin_rspShifted_2 = writeBack_DBusCachedPlugin_rspSplits_1;
      end
      default : begin
        _zz_writeBack_DBusCachedPlugin_rspShifted_2 = writeBack_DBusCachedPlugin_rspSplits_3;
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(_zz_memory_to_writeBack_ENV_CTRL)
      EnvCtrlEnum_NONE : _zz_memory_to_writeBack_ENV_CTRL_string = "NONE ";
      EnvCtrlEnum_XRET : _zz_memory_to_writeBack_ENV_CTRL_string = "XRET ";
      EnvCtrlEnum_ECALL : _zz_memory_to_writeBack_ENV_CTRL_string = "ECALL";
      default : _zz_memory_to_writeBack_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_memory_to_writeBack_ENV_CTRL_1)
      EnvCtrlEnum_NONE : _zz_memory_to_writeBack_ENV_CTRL_1_string = "NONE ";
      EnvCtrlEnum_XRET : _zz_memory_to_writeBack_ENV_CTRL_1_string = "XRET ";
      EnvCtrlEnum_ECALL : _zz_memory_to_writeBack_ENV_CTRL_1_string = "ECALL";
      default : _zz_memory_to_writeBack_ENV_CTRL_1_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_to_memory_ENV_CTRL)
      EnvCtrlEnum_NONE : _zz_execute_to_memory_ENV_CTRL_string = "NONE ";
      EnvCtrlEnum_XRET : _zz_execute_to_memory_ENV_CTRL_string = "XRET ";
      EnvCtrlEnum_ECALL : _zz_execute_to_memory_ENV_CTRL_string = "ECALL";
      default : _zz_execute_to_memory_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_to_memory_ENV_CTRL_1)
      EnvCtrlEnum_NONE : _zz_execute_to_memory_ENV_CTRL_1_string = "NONE ";
      EnvCtrlEnum_XRET : _zz_execute_to_memory_ENV_CTRL_1_string = "XRET ";
      EnvCtrlEnum_ECALL : _zz_execute_to_memory_ENV_CTRL_1_string = "ECALL";
      default : _zz_execute_to_memory_ENV_CTRL_1_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_ENV_CTRL)
      EnvCtrlEnum_NONE : decode_ENV_CTRL_string = "NONE ";
      EnvCtrlEnum_XRET : decode_ENV_CTRL_string = "XRET ";
      EnvCtrlEnum_ECALL : decode_ENV_CTRL_string = "ECALL";
      default : decode_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ENV_CTRL)
      EnvCtrlEnum_NONE : _zz_decode_ENV_CTRL_string = "NONE ";
      EnvCtrlEnum_XRET : _zz_decode_ENV_CTRL_string = "XRET ";
      EnvCtrlEnum_ECALL : _zz_decode_ENV_CTRL_string = "ECALL";
      default : _zz_decode_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ENV_CTRL)
      EnvCtrlEnum_NONE : _zz_decode_to_execute_ENV_CTRL_string = "NONE ";
      EnvCtrlEnum_XRET : _zz_decode_to_execute_ENV_CTRL_string = "XRET ";
      EnvCtrlEnum_ECALL : _zz_decode_to_execute_ENV_CTRL_string = "ECALL";
      default : _zz_decode_to_execute_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ENV_CTRL_1)
      EnvCtrlEnum_NONE : _zz_decode_to_execute_ENV_CTRL_1_string = "NONE ";
      EnvCtrlEnum_XRET : _zz_decode_to_execute_ENV_CTRL_1_string = "XRET ";
      EnvCtrlEnum_ECALL : _zz_decode_to_execute_ENV_CTRL_1_string = "ECALL";
      default : _zz_decode_to_execute_ENV_CTRL_1_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : _zz_decode_to_execute_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_to_execute_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_to_execute_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_to_execute_BRANCH_CTRL_string = "JALR";
      default : _zz_decode_to_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_BRANCH_CTRL_1)
      BranchCtrlEnum_INC : _zz_decode_to_execute_BRANCH_CTRL_1_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_to_execute_BRANCH_CTRL_1_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_to_execute_BRANCH_CTRL_1_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_to_execute_BRANCH_CTRL_1_string = "JALR";
      default : _zz_decode_to_execute_BRANCH_CTRL_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_to_memory_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_execute_to_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_to_memory_SHIFT_CTRL_1)
      ShiftCtrlEnum_DISABLE_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "SRA_1    ";
      default : _zz_execute_to_memory_SHIFT_CTRL_1_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : decode_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : decode_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : decode_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : decode_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_decode_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_decode_to_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SHIFT_CTRL_1)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "SRA_1    ";
      default : _zz_decode_to_execute_SHIFT_CTRL_1_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : decode_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : decode_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : decode_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_ALU_BITWISE_CTRL_string = "AND_1";
      default : _zz_decode_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_BITWISE_CTRL_1)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "AND_1";
      default : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_SRC2_CTRL)
      Src2CtrlEnum_RS : decode_SRC2_CTRL_string = "RS ";
      Src2CtrlEnum_IMI : decode_SRC2_CTRL_string = "IMI";
      Src2CtrlEnum_IMS : decode_SRC2_CTRL_string = "IMS";
      Src2CtrlEnum_PC : decode_SRC2_CTRL_string = "PC ";
      default : decode_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC2_CTRL)
      Src2CtrlEnum_RS : _zz_decode_SRC2_CTRL_string = "RS ";
      Src2CtrlEnum_IMI : _zz_decode_SRC2_CTRL_string = "IMI";
      Src2CtrlEnum_IMS : _zz_decode_SRC2_CTRL_string = "IMS";
      Src2CtrlEnum_PC : _zz_decode_SRC2_CTRL_string = "PC ";
      default : _zz_decode_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SRC2_CTRL)
      Src2CtrlEnum_RS : _zz_decode_to_execute_SRC2_CTRL_string = "RS ";
      Src2CtrlEnum_IMI : _zz_decode_to_execute_SRC2_CTRL_string = "IMI";
      Src2CtrlEnum_IMS : _zz_decode_to_execute_SRC2_CTRL_string = "IMS";
      Src2CtrlEnum_PC : _zz_decode_to_execute_SRC2_CTRL_string = "PC ";
      default : _zz_decode_to_execute_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SRC2_CTRL_1)
      Src2CtrlEnum_RS : _zz_decode_to_execute_SRC2_CTRL_1_string = "RS ";
      Src2CtrlEnum_IMI : _zz_decode_to_execute_SRC2_CTRL_1_string = "IMI";
      Src2CtrlEnum_IMS : _zz_decode_to_execute_SRC2_CTRL_1_string = "IMS";
      Src2CtrlEnum_PC : _zz_decode_to_execute_SRC2_CTRL_1_string = "PC ";
      default : _zz_decode_to_execute_SRC2_CTRL_1_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : decode_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : decode_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : decode_ALU_CTRL_string = "BITWISE ";
      default : decode_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : _zz_decode_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_ALU_CTRL_string = "BITWISE ";
      default : _zz_decode_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : _zz_decode_to_execute_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_to_execute_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_to_execute_ALU_CTRL_string = "BITWISE ";
      default : _zz_decode_to_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_CTRL_1)
      AluCtrlEnum_ADD_SUB : _zz_decode_to_execute_ALU_CTRL_1_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_to_execute_ALU_CTRL_1_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_to_execute_ALU_CTRL_1_string = "BITWISE ";
      default : _zz_decode_to_execute_ALU_CTRL_1_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_SRC1_CTRL)
      Src1CtrlEnum_RS : decode_SRC1_CTRL_string = "RS          ";
      Src1CtrlEnum_IMU : decode_SRC1_CTRL_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : decode_SRC1_CTRL_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : decode_SRC1_CTRL_string = "URS1        ";
      default : decode_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC1_CTRL)
      Src1CtrlEnum_RS : _zz_decode_SRC1_CTRL_string = "RS          ";
      Src1CtrlEnum_IMU : _zz_decode_SRC1_CTRL_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : _zz_decode_SRC1_CTRL_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : _zz_decode_SRC1_CTRL_string = "URS1        ";
      default : _zz_decode_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SRC1_CTRL)
      Src1CtrlEnum_RS : _zz_decode_to_execute_SRC1_CTRL_string = "RS          ";
      Src1CtrlEnum_IMU : _zz_decode_to_execute_SRC1_CTRL_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : _zz_decode_to_execute_SRC1_CTRL_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : _zz_decode_to_execute_SRC1_CTRL_string = "URS1        ";
      default : _zz_decode_to_execute_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SRC1_CTRL_1)
      Src1CtrlEnum_RS : _zz_decode_to_execute_SRC1_CTRL_1_string = "RS          ";
      Src1CtrlEnum_IMU : _zz_decode_to_execute_SRC1_CTRL_1_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : _zz_decode_to_execute_SRC1_CTRL_1_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : _zz_decode_to_execute_SRC1_CTRL_1_string = "URS1        ";
      default : _zz_decode_to_execute_SRC1_CTRL_1_string = "????????????";
    endcase
  end
  always @(*) begin
    case(memory_ENV_CTRL)
      EnvCtrlEnum_NONE : memory_ENV_CTRL_string = "NONE ";
      EnvCtrlEnum_XRET : memory_ENV_CTRL_string = "XRET ";
      EnvCtrlEnum_ECALL : memory_ENV_CTRL_string = "ECALL";
      default : memory_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_memory_ENV_CTRL)
      EnvCtrlEnum_NONE : _zz_memory_ENV_CTRL_string = "NONE ";
      EnvCtrlEnum_XRET : _zz_memory_ENV_CTRL_string = "XRET ";
      EnvCtrlEnum_ECALL : _zz_memory_ENV_CTRL_string = "ECALL";
      default : _zz_memory_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_ENV_CTRL)
      EnvCtrlEnum_NONE : execute_ENV_CTRL_string = "NONE ";
      EnvCtrlEnum_XRET : execute_ENV_CTRL_string = "XRET ";
      EnvCtrlEnum_ECALL : execute_ENV_CTRL_string = "ECALL";
      default : execute_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ENV_CTRL)
      EnvCtrlEnum_NONE : _zz_execute_ENV_CTRL_string = "NONE ";
      EnvCtrlEnum_XRET : _zz_execute_ENV_CTRL_string = "XRET ";
      EnvCtrlEnum_ECALL : _zz_execute_ENV_CTRL_string = "ECALL";
      default : _zz_execute_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(writeBack_ENV_CTRL)
      EnvCtrlEnum_NONE : writeBack_ENV_CTRL_string = "NONE ";
      EnvCtrlEnum_XRET : writeBack_ENV_CTRL_string = "XRET ";
      EnvCtrlEnum_ECALL : writeBack_ENV_CTRL_string = "ECALL";
      default : writeBack_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_writeBack_ENV_CTRL)
      EnvCtrlEnum_NONE : _zz_writeBack_ENV_CTRL_string = "NONE ";
      EnvCtrlEnum_XRET : _zz_writeBack_ENV_CTRL_string = "XRET ";
      EnvCtrlEnum_ECALL : _zz_writeBack_ENV_CTRL_string = "ECALL";
      default : _zz_writeBack_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : execute_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : execute_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : execute_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : execute_BRANCH_CTRL_string = "JALR";
      default : execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : _zz_execute_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : _zz_execute_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : _zz_execute_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_execute_BRANCH_CTRL_string = "JALR";
      default : _zz_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(memory_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : memory_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : memory_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : memory_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : memory_SHIFT_CTRL_string = "SRA_1    ";
      default : memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_memory_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_memory_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_memory_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_memory_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : execute_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : execute_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : execute_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : execute_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_execute_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_execute_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_execute_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_SRC2_CTRL)
      Src2CtrlEnum_RS : execute_SRC2_CTRL_string = "RS ";
      Src2CtrlEnum_IMI : execute_SRC2_CTRL_string = "IMI";
      Src2CtrlEnum_IMS : execute_SRC2_CTRL_string = "IMS";
      Src2CtrlEnum_PC : execute_SRC2_CTRL_string = "PC ";
      default : execute_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_execute_SRC2_CTRL)
      Src2CtrlEnum_RS : _zz_execute_SRC2_CTRL_string = "RS ";
      Src2CtrlEnum_IMI : _zz_execute_SRC2_CTRL_string = "IMI";
      Src2CtrlEnum_IMS : _zz_execute_SRC2_CTRL_string = "IMS";
      Src2CtrlEnum_PC : _zz_execute_SRC2_CTRL_string = "PC ";
      default : _zz_execute_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(execute_SRC1_CTRL)
      Src1CtrlEnum_RS : execute_SRC1_CTRL_string = "RS          ";
      Src1CtrlEnum_IMU : execute_SRC1_CTRL_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : execute_SRC1_CTRL_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : execute_SRC1_CTRL_string = "URS1        ";
      default : execute_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_SRC1_CTRL)
      Src1CtrlEnum_RS : _zz_execute_SRC1_CTRL_string = "RS          ";
      Src1CtrlEnum_IMU : _zz_execute_SRC1_CTRL_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : _zz_execute_SRC1_CTRL_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : _zz_execute_SRC1_CTRL_string = "URS1        ";
      default : _zz_execute_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : execute_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : execute_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : execute_ALU_CTRL_string = "BITWISE ";
      default : execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : _zz_execute_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_execute_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_execute_ALU_CTRL_string = "BITWISE ";
      default : _zz_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : execute_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : _zz_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : _zz_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ENV_CTRL_1)
      EnvCtrlEnum_NONE : _zz_decode_ENV_CTRL_1_string = "NONE ";
      EnvCtrlEnum_XRET : _zz_decode_ENV_CTRL_1_string = "XRET ";
      EnvCtrlEnum_ECALL : _zz_decode_ENV_CTRL_1_string = "ECALL";
      default : _zz_decode_ENV_CTRL_1_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_BRANCH_CTRL)
      BranchCtrlEnum_INC : _zz_decode_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_BRANCH_CTRL_string = "JALR";
      default : _zz_decode_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SHIFT_CTRL_1)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_SHIFT_CTRL_1_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_SHIFT_CTRL_1_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_SHIFT_CTRL_1_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_SHIFT_CTRL_1_string = "SRA_1    ";
      default : _zz_decode_SHIFT_CTRL_1_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_BITWISE_CTRL_1)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_ALU_BITWISE_CTRL_1_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_ALU_BITWISE_CTRL_1_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_ALU_BITWISE_CTRL_1_string = "AND_1";
      default : _zz_decode_ALU_BITWISE_CTRL_1_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC2_CTRL_1)
      Src2CtrlEnum_RS : _zz_decode_SRC2_CTRL_1_string = "RS ";
      Src2CtrlEnum_IMI : _zz_decode_SRC2_CTRL_1_string = "IMI";
      Src2CtrlEnum_IMS : _zz_decode_SRC2_CTRL_1_string = "IMS";
      Src2CtrlEnum_PC : _zz_decode_SRC2_CTRL_1_string = "PC ";
      default : _zz_decode_SRC2_CTRL_1_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_CTRL_1)
      AluCtrlEnum_ADD_SUB : _zz_decode_ALU_CTRL_1_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_ALU_CTRL_1_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_ALU_CTRL_1_string = "BITWISE ";
      default : _zz_decode_ALU_CTRL_1_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC1_CTRL_1)
      Src1CtrlEnum_RS : _zz_decode_SRC1_CTRL_1_string = "RS          ";
      Src1CtrlEnum_IMU : _zz_decode_SRC1_CTRL_1_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : _zz_decode_SRC1_CTRL_1_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : _zz_decode_SRC1_CTRL_1_string = "URS1        ";
      default : _zz_decode_SRC1_CTRL_1_string = "????????????";
    endcase
  end
  always @(*) begin
    case(decode_BRANCH_CTRL)
      BranchCtrlEnum_INC : decode_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : decode_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : decode_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : decode_BRANCH_CTRL_string = "JALR";
      default : decode_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_BRANCH_CTRL_1)
      BranchCtrlEnum_INC : _zz_decode_BRANCH_CTRL_1_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_BRANCH_CTRL_1_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_BRANCH_CTRL_1_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_BRANCH_CTRL_1_string = "JALR";
      default : _zz_decode_BRANCH_CTRL_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC1_CTRL_2)
      Src1CtrlEnum_RS : _zz_decode_SRC1_CTRL_2_string = "RS          ";
      Src1CtrlEnum_IMU : _zz_decode_SRC1_CTRL_2_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : _zz_decode_SRC1_CTRL_2_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : _zz_decode_SRC1_CTRL_2_string = "URS1        ";
      default : _zz_decode_SRC1_CTRL_2_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_CTRL_2)
      AluCtrlEnum_ADD_SUB : _zz_decode_ALU_CTRL_2_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_ALU_CTRL_2_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_ALU_CTRL_2_string = "BITWISE ";
      default : _zz_decode_ALU_CTRL_2_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC2_CTRL_2)
      Src2CtrlEnum_RS : _zz_decode_SRC2_CTRL_2_string = "RS ";
      Src2CtrlEnum_IMI : _zz_decode_SRC2_CTRL_2_string = "IMI";
      Src2CtrlEnum_IMS : _zz_decode_SRC2_CTRL_2_string = "IMS";
      Src2CtrlEnum_PC : _zz_decode_SRC2_CTRL_2_string = "PC ";
      default : _zz_decode_SRC2_CTRL_2_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_BITWISE_CTRL_2)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_ALU_BITWISE_CTRL_2_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_ALU_BITWISE_CTRL_2_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_ALU_BITWISE_CTRL_2_string = "AND_1";
      default : _zz_decode_ALU_BITWISE_CTRL_2_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SHIFT_CTRL_2)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_SHIFT_CTRL_2_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_SHIFT_CTRL_2_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_SHIFT_CTRL_2_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_SHIFT_CTRL_2_string = "SRA_1    ";
      default : _zz_decode_SHIFT_CTRL_2_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_BRANCH_CTRL_2)
      BranchCtrlEnum_INC : _zz_decode_BRANCH_CTRL_2_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_BRANCH_CTRL_2_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_BRANCH_CTRL_2_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_BRANCH_CTRL_2_string = "JALR";
      default : _zz_decode_BRANCH_CTRL_2_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ENV_CTRL_8)
      EnvCtrlEnum_NONE : _zz_decode_ENV_CTRL_8_string = "NONE ";
      EnvCtrlEnum_XRET : _zz_decode_ENV_CTRL_8_string = "XRET ";
      EnvCtrlEnum_ECALL : _zz_decode_ENV_CTRL_8_string = "ECALL";
      default : _zz_decode_ENV_CTRL_8_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SRC1_CTRL)
      Src1CtrlEnum_RS : decode_to_execute_SRC1_CTRL_string = "RS          ";
      Src1CtrlEnum_IMU : decode_to_execute_SRC1_CTRL_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : decode_to_execute_SRC1_CTRL_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : decode_to_execute_SRC1_CTRL_string = "URS1        ";
      default : decode_to_execute_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : decode_to_execute_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : decode_to_execute_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : decode_to_execute_ALU_CTRL_string = "BITWISE ";
      default : decode_to_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SRC2_CTRL)
      Src2CtrlEnum_RS : decode_to_execute_SRC2_CTRL_string = "RS ";
      Src2CtrlEnum_IMI : decode_to_execute_SRC2_CTRL_string = "IMI";
      Src2CtrlEnum_IMS : decode_to_execute_SRC2_CTRL_string = "IMS";
      Src2CtrlEnum_PC : decode_to_execute_SRC2_CTRL_string = "PC ";
      default : decode_to_execute_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_to_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : decode_to_execute_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : decode_to_execute_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : decode_to_execute_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : decode_to_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_to_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : execute_to_memory_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : execute_to_memory_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : execute_to_memory_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : execute_to_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_to_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : decode_to_execute_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : decode_to_execute_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : decode_to_execute_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : decode_to_execute_BRANCH_CTRL_string = "JALR";
      default : decode_to_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ENV_CTRL)
      EnvCtrlEnum_NONE : decode_to_execute_ENV_CTRL_string = "NONE ";
      EnvCtrlEnum_XRET : decode_to_execute_ENV_CTRL_string = "XRET ";
      EnvCtrlEnum_ECALL : decode_to_execute_ENV_CTRL_string = "ECALL";
      default : decode_to_execute_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_ENV_CTRL)
      EnvCtrlEnum_NONE : execute_to_memory_ENV_CTRL_string = "NONE ";
      EnvCtrlEnum_XRET : execute_to_memory_ENV_CTRL_string = "XRET ";
      EnvCtrlEnum_ECALL : execute_to_memory_ENV_CTRL_string = "ECALL";
      default : execute_to_memory_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(memory_to_writeBack_ENV_CTRL)
      EnvCtrlEnum_NONE : memory_to_writeBack_ENV_CTRL_string = "NONE ";
      EnvCtrlEnum_XRET : memory_to_writeBack_ENV_CTRL_string = "XRET ";
      EnvCtrlEnum_ECALL : memory_to_writeBack_ENV_CTRL_string = "ECALL";
      default : memory_to_writeBack_ENV_CTRL_string = "?????";
    endcase
  end
  `endif

  assign memory_MUL_LOW = ($signed(_zz_memory_MUL_LOW) + $signed(_zz_memory_MUL_LOW_7));
  assign execute_BRANCH_CALC = {execute_BranchPlugin_branchAdder[31 : 1],1'b0};
  assign execute_BRANCH_DO = ((execute_PREDICTION_HAD_BRANCHED2 != execute_BRANCH_COND_RESULT) || execute_BranchPlugin_missAlignedTarget);
  assign memory_MUL_HH = execute_to_memory_MUL_HH;
  assign execute_MUL_HH = ($signed(execute_MulPlugin_aHigh) * $signed(execute_MulPlugin_bHigh));
  assign execute_MUL_HL = ($signed(execute_MulPlugin_aHigh) * $signed(execute_MulPlugin_bSLow));
  assign execute_MUL_LH = ($signed(execute_MulPlugin_aSLow) * $signed(execute_MulPlugin_bHigh));
  assign execute_MUL_LL = (execute_MulPlugin_aULow * execute_MulPlugin_bULow);
  assign execute_SHIFT_RIGHT = _zz_execute_SHIFT_RIGHT;
  assign execute_REGFILE_WRITE_DATA = _zz_execute_REGFILE_WRITE_DATA;
  assign memory_MEMORY_STORE_DATA_RF = execute_to_memory_MEMORY_STORE_DATA_RF;
  assign execute_MEMORY_STORE_DATA_RF = _zz_execute_MEMORY_STORE_DATA_RF;
  assign decode_DO_EBREAK = (((! DebugPlugin_haltIt) && (decode_IS_EBREAK || 1'b0)) && DebugPlugin_allowEBreak);
  assign decode_CSR_READ_OPCODE = (decode_INSTRUCTION[13 : 7] != 7'h20);
  assign decode_CSR_WRITE_OPCODE = (! (((decode_INSTRUCTION[14 : 13] == 2'b01) && (decode_INSTRUCTION[19 : 15] == 5'h0)) || ((decode_INSTRUCTION[14 : 13] == 2'b11) && (decode_INSTRUCTION[19 : 15] == 5'h0))));
  assign decode_PREDICTION_HAD_BRANCHED2 = IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  assign decode_SRC2_FORCE_ZERO = (decode_SRC_ADD_ZERO && (! decode_SRC_USE_SUB_LESS));
  assign _zz_memory_to_writeBack_ENV_CTRL = _zz_memory_to_writeBack_ENV_CTRL_1;
  assign _zz_execute_to_memory_ENV_CTRL = _zz_execute_to_memory_ENV_CTRL_1;
  assign decode_ENV_CTRL = _zz_decode_ENV_CTRL;
  assign _zz_decode_to_execute_ENV_CTRL = _zz_decode_to_execute_ENV_CTRL_1;
  assign decode_IS_CSR = _zz_decode_ENV_CTRL_2[29];
  assign _zz_decode_to_execute_BRANCH_CTRL = _zz_decode_to_execute_BRANCH_CTRL_1;
  assign decode_IS_RS2_SIGNED = _zz_decode_ENV_CTRL_2[26];
  assign decode_IS_RS1_SIGNED = _zz_decode_ENV_CTRL_2[25];
  assign decode_IS_DIV = _zz_decode_ENV_CTRL_2[24];
  assign memory_IS_MUL = execute_to_memory_IS_MUL;
  assign execute_IS_MUL = decode_to_execute_IS_MUL;
  assign decode_IS_MUL = _zz_decode_ENV_CTRL_2[23];
  assign _zz_execute_to_memory_SHIFT_CTRL = _zz_execute_to_memory_SHIFT_CTRL_1;
  assign decode_SHIFT_CTRL = _zz_decode_SHIFT_CTRL;
  assign _zz_decode_to_execute_SHIFT_CTRL = _zz_decode_to_execute_SHIFT_CTRL_1;
  assign decode_ALU_BITWISE_CTRL = _zz_decode_ALU_BITWISE_CTRL;
  assign _zz_decode_to_execute_ALU_BITWISE_CTRL = _zz_decode_to_execute_ALU_BITWISE_CTRL_1;
  assign decode_SRC_LESS_UNSIGNED = _zz_decode_ENV_CTRL_2[17];
  assign decode_MEMORY_MANAGMENT = _zz_decode_ENV_CTRL_2[16];
  assign memory_MEMORY_WR = execute_to_memory_MEMORY_WR;
  assign decode_MEMORY_WR = _zz_decode_ENV_CTRL_2[13];
  assign execute_BYPASSABLE_MEMORY_STAGE = decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  assign decode_BYPASSABLE_MEMORY_STAGE = _zz_decode_ENV_CTRL_2[12];
  assign decode_BYPASSABLE_EXECUTE_STAGE = _zz_decode_ENV_CTRL_2[11];
  assign decode_SRC2_CTRL = _zz_decode_SRC2_CTRL;
  assign _zz_decode_to_execute_SRC2_CTRL = _zz_decode_to_execute_SRC2_CTRL_1;
  assign decode_ALU_CTRL = _zz_decode_ALU_CTRL;
  assign _zz_decode_to_execute_ALU_CTRL = _zz_decode_to_execute_ALU_CTRL_1;
  assign decode_SRC1_CTRL = _zz_decode_SRC1_CTRL;
  assign _zz_decode_to_execute_SRC1_CTRL = _zz_decode_to_execute_SRC1_CTRL_1;
  assign decode_MEMORY_FORCE_CONSTISTENCY = 1'b0;
  assign writeBack_FORMAL_PC_NEXT = memory_to_writeBack_FORMAL_PC_NEXT;
  assign memory_FORMAL_PC_NEXT = execute_to_memory_FORMAL_PC_NEXT;
  assign execute_FORMAL_PC_NEXT = decode_to_execute_FORMAL_PC_NEXT;
  assign decode_FORMAL_PC_NEXT = (decode_PC + _zz_decode_FORMAL_PC_NEXT);
  assign memory_PC = execute_to_memory_PC;
  assign execute_DO_EBREAK = decode_to_execute_DO_EBREAK;
  assign decode_IS_EBREAK = _zz_decode_ENV_CTRL_2[32];
  assign execute_CSR_READ_OPCODE = decode_to_execute_CSR_READ_OPCODE;
  assign execute_CSR_WRITE_OPCODE = decode_to_execute_CSR_WRITE_OPCODE;
  assign execute_IS_CSR = decode_to_execute_IS_CSR;
  assign memory_ENV_CTRL = _zz_memory_ENV_CTRL;
  assign execute_ENV_CTRL = _zz_execute_ENV_CTRL;
  assign writeBack_ENV_CTRL = _zz_writeBack_ENV_CTRL;
  assign memory_BRANCH_CALC = execute_to_memory_BRANCH_CALC;
  assign memory_BRANCH_DO = execute_to_memory_BRANCH_DO;
  assign execute_PC = decode_to_execute_PC;
  assign execute_BRANCH_COND_RESULT = _zz_execute_BRANCH_COND_RESULT_1;
  assign execute_PREDICTION_HAD_BRANCHED2 = decode_to_execute_PREDICTION_HAD_BRANCHED2;
  assign execute_BRANCH_CTRL = _zz_execute_BRANCH_CTRL;
  assign decode_RS2_USE = _zz_decode_ENV_CTRL_2[15];
  assign decode_RS1_USE = _zz_decode_ENV_CTRL_2[5];
  always @(*) begin
    _zz_decode_RS2 = execute_REGFILE_WRITE_DATA;
    if(when_CsrPlugin_l1176) begin
      _zz_decode_RS2 = CsrPlugin_csrMapping_readDataSignal;
    end
  end

  assign execute_REGFILE_WRITE_VALID = decode_to_execute_REGFILE_WRITE_VALID;
  assign execute_BYPASSABLE_EXECUTE_STAGE = decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  assign memory_REGFILE_WRITE_VALID = execute_to_memory_REGFILE_WRITE_VALID;
  assign memory_BYPASSABLE_MEMORY_STAGE = execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  assign writeBack_REGFILE_WRITE_VALID = memory_to_writeBack_REGFILE_WRITE_VALID;
  always @(*) begin
    decode_RS2 = decode_RegFilePlugin_rs2Data;
    if(HazardSimplePlugin_writeBackBuffer_valid) begin
      if(HazardSimplePlugin_addr1Match) begin
        decode_RS2 = HazardSimplePlugin_writeBackBuffer_payload_data;
      end
    end
    if(when_HazardSimplePlugin_l45) begin
      if(when_HazardSimplePlugin_l47) begin
        if(when_HazardSimplePlugin_l51) begin
          decode_RS2 = _zz_decode_RS2_2;
        end
      end
    end
    if(when_HazardSimplePlugin_l45_1) begin
      if(memory_BYPASSABLE_MEMORY_STAGE) begin
        if(when_HazardSimplePlugin_l51_1) begin
          decode_RS2 = _zz_decode_RS2_1;
        end
      end
    end
    if(when_HazardSimplePlugin_l45_2) begin
      if(execute_BYPASSABLE_EXECUTE_STAGE) begin
        if(when_HazardSimplePlugin_l51_2) begin
          decode_RS2 = _zz_decode_RS2;
        end
      end
    end
  end

  always @(*) begin
    decode_RS1 = decode_RegFilePlugin_rs1Data;
    if(HazardSimplePlugin_writeBackBuffer_valid) begin
      if(HazardSimplePlugin_addr0Match) begin
        decode_RS1 = HazardSimplePlugin_writeBackBuffer_payload_data;
      end
    end
    if(when_HazardSimplePlugin_l45) begin
      if(when_HazardSimplePlugin_l47) begin
        if(when_HazardSimplePlugin_l48) begin
          decode_RS1 = _zz_decode_RS2_2;
        end
      end
    end
    if(when_HazardSimplePlugin_l45_1) begin
      if(memory_BYPASSABLE_MEMORY_STAGE) begin
        if(when_HazardSimplePlugin_l48_1) begin
          decode_RS1 = _zz_decode_RS2_1;
        end
      end
    end
    if(when_HazardSimplePlugin_l45_2) begin
      if(execute_BYPASSABLE_EXECUTE_STAGE) begin
        if(when_HazardSimplePlugin_l48_2) begin
          decode_RS1 = _zz_decode_RS2;
        end
      end
    end
  end

  assign execute_IS_RS1_SIGNED = decode_to_execute_IS_RS1_SIGNED;
  assign execute_IS_DIV = decode_to_execute_IS_DIV;
  assign execute_IS_RS2_SIGNED = decode_to_execute_IS_RS2_SIGNED;
  assign memory_INSTRUCTION = execute_to_memory_INSTRUCTION;
  assign memory_IS_DIV = execute_to_memory_IS_DIV;
  assign writeBack_IS_MUL = memory_to_writeBack_IS_MUL;
  assign writeBack_MUL_HH = memory_to_writeBack_MUL_HH;
  assign writeBack_MUL_LOW = memory_to_writeBack_MUL_LOW;
  assign memory_MUL_HL = execute_to_memory_MUL_HL;
  assign memory_MUL_LH = execute_to_memory_MUL_LH;
  assign memory_MUL_LL = execute_to_memory_MUL_LL;
  assign execute_RS1 = decode_to_execute_RS1;
  assign memory_SHIFT_RIGHT = execute_to_memory_SHIFT_RIGHT;
  always @(*) begin
    _zz_decode_RS2_1 = memory_REGFILE_WRITE_DATA;
    if(memory_arbitration_isValid) begin
      case(memory_SHIFT_CTRL)
        ShiftCtrlEnum_SLL_1 : begin
          _zz_decode_RS2_1 = _zz_decode_RS2_3;
        end
        ShiftCtrlEnum_SRL_1, ShiftCtrlEnum_SRA_1 : begin
          _zz_decode_RS2_1 = memory_SHIFT_RIGHT;
        end
        default : begin
        end
      endcase
    end
    if(when_MulDivIterativePlugin_l128) begin
      _zz_decode_RS2_1 = memory_DivPlugin_div_result;
    end
  end

  assign memory_SHIFT_CTRL = _zz_memory_SHIFT_CTRL;
  assign execute_SHIFT_CTRL = _zz_execute_SHIFT_CTRL;
  assign execute_SRC_LESS_UNSIGNED = decode_to_execute_SRC_LESS_UNSIGNED;
  assign execute_SRC2_FORCE_ZERO = decode_to_execute_SRC2_FORCE_ZERO;
  assign execute_SRC_USE_SUB_LESS = decode_to_execute_SRC_USE_SUB_LESS;
  assign _zz_execute_SRC2 = execute_PC;
  assign execute_SRC2_CTRL = _zz_execute_SRC2_CTRL;
  assign execute_IS_RVC = decode_to_execute_IS_RVC;
  assign execute_SRC1_CTRL = _zz_execute_SRC1_CTRL;
  assign decode_SRC_USE_SUB_LESS = _zz_decode_ENV_CTRL_2[3];
  assign decode_SRC_ADD_ZERO = _zz_decode_ENV_CTRL_2[20];
  assign execute_SRC_ADD_SUB = execute_SrcPlugin_addSub;
  assign execute_SRC_LESS = execute_SrcPlugin_less;
  assign execute_ALU_CTRL = _zz_execute_ALU_CTRL;
  assign execute_SRC2 = _zz_execute_SRC2_5;
  assign execute_SRC1 = _zz_execute_SRC1;
  assign execute_ALU_BITWISE_CTRL = _zz_execute_ALU_BITWISE_CTRL;
  assign _zz_lastStageRegFileWrite_payload_address = writeBack_INSTRUCTION;
  assign _zz_lastStageRegFileWrite_valid = writeBack_REGFILE_WRITE_VALID;
  always @(*) begin
    _zz_1 = 1'b0;
    if(lastStageRegFileWrite_valid) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    decode_REGFILE_WRITE_VALID = _zz_decode_ENV_CTRL_2[10];
    if(when_RegFilePlugin_l63) begin
      decode_REGFILE_WRITE_VALID = 1'b0;
    end
  end

  assign decode_LEGAL_INSTRUCTION = (|{((decode_INSTRUCTION & 32'h0000005f) == 32'h00000017),{((decode_INSTRUCTION & 32'h0000007f) == 32'h0000006f),{((decode_INSTRUCTION & 32'h0000106f) == 32'h00000003),{((decode_INSTRUCTION & _zz_decode_LEGAL_INSTRUCTION) == 32'h00001073),{(_zz_decode_LEGAL_INSTRUCTION_1 == _zz_decode_LEGAL_INSTRUCTION_2),{_zz_decode_LEGAL_INSTRUCTION_3,{_zz_decode_LEGAL_INSTRUCTION_4,_zz_decode_LEGAL_INSTRUCTION_5}}}}}}});
  always @(*) begin
    _zz_decode_RS2_2 = writeBack_REGFILE_WRITE_DATA;
    if(when_DBusCachedPlugin_l488) begin
      _zz_decode_RS2_2 = writeBack_DBusCachedPlugin_rspFormated;
    end
    if(when_MulPlugin_l147) begin
      case(switch_MulPlugin_l148)
        2'b00 : begin
          _zz_decode_RS2_2 = _zz__zz_decode_RS2_2;
        end
        default : begin
          _zz_decode_RS2_2 = _zz__zz_decode_RS2_2_1;
        end
      endcase
    end
  end

  assign writeBack_MEMORY_WR = memory_to_writeBack_MEMORY_WR;
  assign writeBack_MEMORY_STORE_DATA_RF = memory_to_writeBack_MEMORY_STORE_DATA_RF;
  assign writeBack_REGFILE_WRITE_DATA = memory_to_writeBack_REGFILE_WRITE_DATA;
  assign writeBack_MEMORY_ENABLE = memory_to_writeBack_MEMORY_ENABLE;
  assign memory_REGFILE_WRITE_DATA = execute_to_memory_REGFILE_WRITE_DATA;
  assign memory_MEMORY_ENABLE = execute_to_memory_MEMORY_ENABLE;
  assign execute_MEMORY_FORCE_CONSTISTENCY = decode_to_execute_MEMORY_FORCE_CONSTISTENCY;
  assign execute_MEMORY_MANAGMENT = decode_to_execute_MEMORY_MANAGMENT;
  assign execute_RS2 = decode_to_execute_RS2;
  assign execute_MEMORY_WR = decode_to_execute_MEMORY_WR;
  assign execute_SRC_ADD = execute_SrcPlugin_addSub;
  assign execute_MEMORY_ENABLE = decode_to_execute_MEMORY_ENABLE;
  assign execute_INSTRUCTION = decode_to_execute_INSTRUCTION;
  assign decode_MEMORY_ENABLE = _zz_decode_ENV_CTRL_2[4];
  assign decode_FLUSH_ALL = _zz_decode_ENV_CTRL_2[0];
  always @(*) begin
    IBusCachedPlugin_rsp_issueDetected_4 = IBusCachedPlugin_rsp_issueDetected_3;
    if(when_IBusCachedPlugin_l256) begin
      IBusCachedPlugin_rsp_issueDetected_4 = 1'b1;
    end
  end

  always @(*) begin
    IBusCachedPlugin_rsp_issueDetected_3 = IBusCachedPlugin_rsp_issueDetected_2;
    if(when_IBusCachedPlugin_l250) begin
      IBusCachedPlugin_rsp_issueDetected_3 = 1'b1;
    end
  end

  always @(*) begin
    IBusCachedPlugin_rsp_issueDetected_2 = IBusCachedPlugin_rsp_issueDetected_1;
    if(when_IBusCachedPlugin_l244) begin
      IBusCachedPlugin_rsp_issueDetected_2 = 1'b1;
    end
  end

  always @(*) begin
    IBusCachedPlugin_rsp_issueDetected_1 = IBusCachedPlugin_rsp_issueDetected;
    if(when_IBusCachedPlugin_l239) begin
      IBusCachedPlugin_rsp_issueDetected_1 = 1'b1;
    end
  end

  assign decode_BRANCH_CTRL = _zz_decode_BRANCH_CTRL_1;
  always @(*) begin
    _zz_memory_to_writeBack_FORMAL_PC_NEXT = memory_FORMAL_PC_NEXT;
    if(BranchPlugin_jumpInterface_valid) begin
      _zz_memory_to_writeBack_FORMAL_PC_NEXT = BranchPlugin_jumpInterface_payload;
    end
  end

  always @(*) begin
    _zz_decode_to_execute_FORMAL_PC_NEXT = decode_FORMAL_PC_NEXT;
    if(IBusCachedPlugin_predictionJumpInterface_valid) begin
      _zz_decode_to_execute_FORMAL_PC_NEXT = IBusCachedPlugin_predictionJumpInterface_payload;
    end
  end

  assign decode_PC = IBusCachedPlugin_decodePc_pcReg;
  assign decode_INSTRUCTION = IBusCachedPlugin_injector_decodeInput_payload_rsp_inst;
  assign decode_IS_RVC = IBusCachedPlugin_injector_decodeInput_payload_isRvc;
  assign writeBack_PC = memory_to_writeBack_PC;
  assign writeBack_INSTRUCTION = memory_to_writeBack_INSTRUCTION;
  always @(*) begin
    decode_arbitration_haltItself = 1'b0;
    if(when_DBusCachedPlugin_l307) begin
      decode_arbitration_haltItself = 1'b1;
    end
    case(switch_Fetcher_l362)
      3'b010 : begin
        decode_arbitration_haltItself = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    decode_arbitration_haltByOther = 1'b0;
    if(when_HazardSimplePlugin_l113) begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(CsrPlugin_pipelineLiberator_active) begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(when_CsrPlugin_l1116) begin
      decode_arbitration_haltByOther = 1'b1;
    end
  end

  always @(*) begin
    decode_arbitration_removeIt = 1'b0;
    if(_zz_when) begin
      decode_arbitration_removeIt = 1'b1;
    end
    if(decode_arbitration_isFlushed) begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_flushIt = 1'b0;
  always @(*) begin
    decode_arbitration_flushNext = 1'b0;
    if(IBusCachedPlugin_predictionJumpInterface_valid) begin
      decode_arbitration_flushNext = 1'b1;
    end
    if(_zz_when) begin
      decode_arbitration_flushNext = 1'b1;
    end
  end

  always @(*) begin
    execute_arbitration_haltItself = 1'b0;
    if(when_DBusCachedPlugin_l347) begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(when_CsrPlugin_l1180) begin
      if(execute_CsrPlugin_blockedBySideEffects) begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
  end

  always @(*) begin
    execute_arbitration_haltByOther = 1'b0;
    if(when_DBusCachedPlugin_l363) begin
      execute_arbitration_haltByOther = 1'b1;
    end
    if(when_DebugPlugin_l284) begin
      execute_arbitration_haltByOther = 1'b1;
    end
  end

  always @(*) begin
    execute_arbitration_removeIt = 1'b0;
    if(CsrPlugin_selfException_valid) begin
      execute_arbitration_removeIt = 1'b1;
    end
    if(execute_arbitration_isFlushed) begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  always @(*) begin
    execute_arbitration_flushIt = 1'b0;
    if(when_DebugPlugin_l284) begin
      if(when_DebugPlugin_l287) begin
        execute_arbitration_flushIt = 1'b1;
      end
    end
  end

  always @(*) begin
    execute_arbitration_flushNext = 1'b0;
    if(CsrPlugin_selfException_valid) begin
      execute_arbitration_flushNext = 1'b1;
    end
    if(when_DebugPlugin_l284) begin
      if(when_DebugPlugin_l287) begin
        execute_arbitration_flushNext = 1'b1;
      end
    end
    if(_zz_3) begin
      execute_arbitration_flushNext = 1'b1;
    end
  end

  always @(*) begin
    memory_arbitration_haltItself = 1'b0;
    if(when_MulDivIterativePlugin_l128) begin
      if(when_MulDivIterativePlugin_l129) begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
  end

  assign memory_arbitration_haltByOther = 1'b0;
  always @(*) begin
    memory_arbitration_removeIt = 1'b0;
    if(memory_arbitration_isFlushed) begin
      memory_arbitration_removeIt = 1'b1;
    end
  end

  assign memory_arbitration_flushIt = 1'b0;
  always @(*) begin
    memory_arbitration_flushNext = 1'b0;
    if(BranchPlugin_jumpInterface_valid) begin
      memory_arbitration_flushNext = 1'b1;
    end
  end

  always @(*) begin
    writeBack_arbitration_haltItself = 1'b0;
    if(when_DBusCachedPlugin_l462) begin
      writeBack_arbitration_haltItself = 1'b1;
    end
  end

  assign writeBack_arbitration_haltByOther = 1'b0;
  always @(*) begin
    writeBack_arbitration_removeIt = 1'b0;
    if(DBusCachedPlugin_exceptionBus_valid) begin
      writeBack_arbitration_removeIt = 1'b1;
    end
    if(writeBack_arbitration_isFlushed) begin
      writeBack_arbitration_removeIt = 1'b1;
    end
  end

  always @(*) begin
    writeBack_arbitration_flushIt = 1'b0;
    if(DBusCachedPlugin_redoBranch_valid) begin
      writeBack_arbitration_flushIt = 1'b1;
    end
  end

  always @(*) begin
    writeBack_arbitration_flushNext = 1'b0;
    if(DBusCachedPlugin_redoBranch_valid) begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(DBusCachedPlugin_exceptionBus_valid) begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(when_CsrPlugin_l1019) begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(when_CsrPlugin_l1064) begin
      writeBack_arbitration_flushNext = 1'b1;
    end
  end

  assign lastStageInstruction = writeBack_INSTRUCTION;
  assign lastStagePc = writeBack_PC;
  assign lastStageIsValid = writeBack_arbitration_isValid;
  assign lastStageIsFiring = writeBack_arbitration_isFiring;
  always @(*) begin
    IBusCachedPlugin_fetcherHalt = 1'b0;
    if(when_CsrPlugin_l922) begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(when_CsrPlugin_l1019) begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(when_CsrPlugin_l1064) begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(when_DebugPlugin_l284) begin
      if(when_DebugPlugin_l287) begin
        IBusCachedPlugin_fetcherHalt = 1'b1;
      end
    end
    if(DebugPlugin_haltIt) begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(when_DebugPlugin_l300) begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
  end

  always @(*) begin
    IBusCachedPlugin_incomingInstruction = 1'b0;
    if(IBusCachedPlugin_iBusRsp_stages_1_input_valid) begin
      IBusCachedPlugin_incomingInstruction = 1'b1;
    end
    if(IBusCachedPlugin_injector_decodeInput_valid) begin
      IBusCachedPlugin_incomingInstruction = 1'b1;
    end
  end

  always @(*) begin
    _zz_when_DBusCachedPlugin_l390 = 1'b0;
    if(DebugPlugin_godmode) begin
      _zz_when_DBusCachedPlugin_l390 = 1'b1;
    end
  end

  assign CsrPlugin_csrMapping_allowCsrSignal = 1'b0;
  assign CsrPlugin_csrMapping_readDataSignal = CsrPlugin_csrMapping_readDataInit;
  assign CsrPlugin_inWfi = 1'b0;
  always @(*) begin
    CsrPlugin_thirdPartyWake = 1'b0;
    if(DebugPlugin_haltIt) begin
      CsrPlugin_thirdPartyWake = 1'b1;
    end
  end

  always @(*) begin
    CsrPlugin_jumpInterface_valid = 1'b0;
    if(when_CsrPlugin_l1019) begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
    if(when_CsrPlugin_l1064) begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
  end

  always @(*) begin
    CsrPlugin_jumpInterface_payload = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    if(when_CsrPlugin_l1019) begin
      CsrPlugin_jumpInterface_payload = {CsrPlugin_xtvec_base,2'b00};
    end
    if(when_CsrPlugin_l1064) begin
      case(switch_CsrPlugin_l1068)
        2'b11 : begin
          CsrPlugin_jumpInterface_payload = CsrPlugin_mepc;
        end
        default : begin
        end
      endcase
    end
  end

  always @(*) begin
    CsrPlugin_forceMachineWire = 1'b0;
    if(DebugPlugin_godmode) begin
      CsrPlugin_forceMachineWire = 1'b1;
    end
  end

  always @(*) begin
    CsrPlugin_allowInterrupts = 1'b1;
    if(when_DebugPlugin_l316) begin
      CsrPlugin_allowInterrupts = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_allowException = 1'b1;
    if(DebugPlugin_godmode) begin
      CsrPlugin_allowException = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_allowEbreakException = 1'b1;
    if(DebugPlugin_allowEBreak) begin
      CsrPlugin_allowEbreakException = 1'b0;
    end
  end

  assign IBusCachedPlugin_externalFlush = ({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,{execute_arbitration_flushNext,decode_arbitration_flushNext}}} != 4'b0000);
  assign IBusCachedPlugin_jump_pcLoad_valid = ({CsrPlugin_jumpInterface_valid,{BranchPlugin_jumpInterface_valid,{DBusCachedPlugin_redoBranch_valid,IBusCachedPlugin_predictionJumpInterface_valid}}} != 4'b0000);
  assign _zz_IBusCachedPlugin_jump_pcLoad_payload = {IBusCachedPlugin_predictionJumpInterface_valid,{BranchPlugin_jumpInterface_valid,{CsrPlugin_jumpInterface_valid,DBusCachedPlugin_redoBranch_valid}}};
  assign _zz_IBusCachedPlugin_jump_pcLoad_payload_1 = (_zz_IBusCachedPlugin_jump_pcLoad_payload & (~ _zz__zz_IBusCachedPlugin_jump_pcLoad_payload_1));
  assign _zz_IBusCachedPlugin_jump_pcLoad_payload_2 = _zz_IBusCachedPlugin_jump_pcLoad_payload_1[3];
  assign _zz_IBusCachedPlugin_jump_pcLoad_payload_3 = (_zz_IBusCachedPlugin_jump_pcLoad_payload_1[1] || _zz_IBusCachedPlugin_jump_pcLoad_payload_2);
  assign _zz_IBusCachedPlugin_jump_pcLoad_payload_4 = (_zz_IBusCachedPlugin_jump_pcLoad_payload_1[2] || _zz_IBusCachedPlugin_jump_pcLoad_payload_2);
  assign IBusCachedPlugin_jump_pcLoad_payload = _zz_IBusCachedPlugin_jump_pcLoad_payload_5;
  always @(*) begin
    IBusCachedPlugin_fetchPc_correction = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid) begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid) begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
  end

  assign IBusCachedPlugin_fetchPc_output_fire = (IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready);
  assign IBusCachedPlugin_fetchPc_corrected = (IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_correctionReg);
  always @(*) begin
    IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b0;
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready) begin
      IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b1;
    end
  end

  assign when_Fetcher_l131 = (IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_pcRegPropagate);
  assign IBusCachedPlugin_fetchPc_output_fire_1 = (IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready);
  assign when_Fetcher_l131_1 = ((! IBusCachedPlugin_fetchPc_output_valid) && IBusCachedPlugin_fetchPc_output_ready);
  always @(*) begin
    IBusCachedPlugin_fetchPc_pc = (IBusCachedPlugin_fetchPc_pcReg + _zz_IBusCachedPlugin_fetchPc_pc);
    if(IBusCachedPlugin_fetchPc_inc) begin
      IBusCachedPlugin_fetchPc_pc[1] = 1'b0;
    end
    if(IBusCachedPlugin_fetchPc_redo_valid) begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_fetchPc_redo_payload;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid) begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_jump_pcLoad_payload;
    end
    IBusCachedPlugin_fetchPc_pc[0] = 1'b0;
  end

  always @(*) begin
    IBusCachedPlugin_fetchPc_flushed = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid) begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid) begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
  end

  assign when_Fetcher_l158 = (IBusCachedPlugin_fetchPc_booted && ((IBusCachedPlugin_fetchPc_output_ready || IBusCachedPlugin_fetchPc_correction) || IBusCachedPlugin_fetchPc_pcRegPropagate));
  assign IBusCachedPlugin_fetchPc_output_valid = ((! IBusCachedPlugin_fetcherHalt) && IBusCachedPlugin_fetchPc_booted);
  assign IBusCachedPlugin_fetchPc_output_payload = IBusCachedPlugin_fetchPc_pc;
  always @(*) begin
    IBusCachedPlugin_decodePc_flushed = 1'b0;
    if(when_Fetcher_l192) begin
      IBusCachedPlugin_decodePc_flushed = 1'b1;
    end
  end

  assign IBusCachedPlugin_decodePc_pcPlus = (IBusCachedPlugin_decodePc_pcReg + _zz_IBusCachedPlugin_decodePc_pcPlus);
  always @(*) begin
    IBusCachedPlugin_decodePc_injectedDecode = 1'b0;
    if(when_Fetcher_l360) begin
      IBusCachedPlugin_decodePc_injectedDecode = 1'b1;
    end
  end

  assign when_Fetcher_l180 = (decode_arbitration_isFiring && (! IBusCachedPlugin_decodePc_injectedDecode));
  assign when_Fetcher_l192 = (IBusCachedPlugin_jump_pcLoad_valid && ((! decode_arbitration_isStuck) || decode_arbitration_removeIt));
  always @(*) begin
    IBusCachedPlugin_iBusRsp_redoFetch = 1'b0;
    if(IBusCachedPlugin_rsp_redoFetch) begin
      IBusCachedPlugin_iBusRsp_redoFetch = 1'b1;
    end
  end

  assign IBusCachedPlugin_iBusRsp_stages_0_input_valid = IBusCachedPlugin_fetchPc_output_valid;
  assign IBusCachedPlugin_fetchPc_output_ready = IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  assign IBusCachedPlugin_iBusRsp_stages_0_input_payload = IBusCachedPlugin_fetchPc_output_payload;
  always @(*) begin
    IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b0;
    if(IBusCachedPlugin_cache_io_cpu_prefetch_haltIt) begin
      IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b1;
    end
  end

  assign _zz_IBusCachedPlugin_iBusRsp_stages_0_input_ready = (! IBusCachedPlugin_iBusRsp_stages_0_halt);
  assign IBusCachedPlugin_iBusRsp_stages_0_input_ready = (IBusCachedPlugin_iBusRsp_stages_0_output_ready && _zz_IBusCachedPlugin_iBusRsp_stages_0_input_ready);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_valid = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && _zz_IBusCachedPlugin_iBusRsp_stages_0_input_ready);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_payload = IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  always @(*) begin
    IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b0;
    if(IBusCachedPlugin_mmuBus_busy) begin
      IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b1;
    end
    if(when_IBusCachedPlugin_l267) begin
      IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b1;
    end
  end

  assign _zz_IBusCachedPlugin_iBusRsp_stages_1_input_ready = (! IBusCachedPlugin_iBusRsp_stages_1_halt);
  assign IBusCachedPlugin_iBusRsp_stages_1_input_ready = (IBusCachedPlugin_iBusRsp_stages_1_output_ready && _zz_IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_valid = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && _zz_IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_payload = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  assign IBusCachedPlugin_fetchPc_redo_valid = IBusCachedPlugin_iBusRsp_redoFetch;
  always @(*) begin
    IBusCachedPlugin_fetchPc_redo_payload = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
    if(IBusCachedPlugin_decompressor_throw2BytesReg) begin
      IBusCachedPlugin_fetchPc_redo_payload[1] = 1'b1;
    end
  end

  assign IBusCachedPlugin_iBusRsp_flush = (IBusCachedPlugin_externalFlush || IBusCachedPlugin_iBusRsp_redoFetch);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_ready = _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready;
  assign _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready = ((1'b0 && (! _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_1)) || IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_1 = _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_2;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_valid = _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_1;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_payload = IBusCachedPlugin_fetchPc_pcReg;
  always @(*) begin
    IBusCachedPlugin_iBusRsp_readyForError = 1'b1;
    if(IBusCachedPlugin_injector_decodeInput_valid) begin
      IBusCachedPlugin_iBusRsp_readyForError = 1'b0;
    end
  end

  assign IBusCachedPlugin_decompressor_input_valid = (IBusCachedPlugin_iBusRsp_output_valid && (! IBusCachedPlugin_iBusRsp_redoFetch));
  assign IBusCachedPlugin_decompressor_input_payload_pc = IBusCachedPlugin_iBusRsp_output_payload_pc;
  assign IBusCachedPlugin_decompressor_input_payload_rsp_error = IBusCachedPlugin_iBusRsp_output_payload_rsp_error;
  assign IBusCachedPlugin_decompressor_input_payload_rsp_inst = IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  assign IBusCachedPlugin_decompressor_input_payload_isRvc = IBusCachedPlugin_iBusRsp_output_payload_isRvc;
  assign IBusCachedPlugin_iBusRsp_output_ready = IBusCachedPlugin_decompressor_input_ready;
  assign IBusCachedPlugin_decompressor_flushNext = 1'b0;
  assign IBusCachedPlugin_decompressor_consumeCurrent = 1'b0;
  assign IBusCachedPlugin_decompressor_isInputLowRvc = (IBusCachedPlugin_decompressor_input_payload_rsp_inst[1 : 0] != 2'b11);
  assign IBusCachedPlugin_decompressor_isInputHighRvc = (IBusCachedPlugin_decompressor_input_payload_rsp_inst[17 : 16] != 2'b11);
  assign IBusCachedPlugin_decompressor_throw2Bytes = (IBusCachedPlugin_decompressor_throw2BytesReg || IBusCachedPlugin_decompressor_input_payload_pc[1]);
  assign IBusCachedPlugin_decompressor_unaligned = (IBusCachedPlugin_decompressor_throw2Bytes || IBusCachedPlugin_decompressor_bufferValid);
  assign IBusCachedPlugin_decompressor_bufferValidPatched = (IBusCachedPlugin_decompressor_input_valid ? IBusCachedPlugin_decompressor_bufferValid : IBusCachedPlugin_decompressor_bufferValidLatch);
  assign IBusCachedPlugin_decompressor_throw2BytesPatched = (IBusCachedPlugin_decompressor_input_valid ? IBusCachedPlugin_decompressor_throw2Bytes : IBusCachedPlugin_decompressor_throw2BytesLatch);
  assign IBusCachedPlugin_decompressor_raw = (IBusCachedPlugin_decompressor_bufferValidPatched ? {IBusCachedPlugin_decompressor_input_payload_rsp_inst[15 : 0],IBusCachedPlugin_decompressor_bufferData} : {IBusCachedPlugin_decompressor_input_payload_rsp_inst[31 : 16],(IBusCachedPlugin_decompressor_throw2BytesPatched ? IBusCachedPlugin_decompressor_input_payload_rsp_inst[31 : 16] : IBusCachedPlugin_decompressor_input_payload_rsp_inst[15 : 0])});
  assign IBusCachedPlugin_decompressor_isRvc = (IBusCachedPlugin_decompressor_raw[1 : 0] != 2'b11);
  assign _zz_IBusCachedPlugin_decompressor_decompressed = IBusCachedPlugin_decompressor_raw[15 : 0];
  always @(*) begin
    IBusCachedPlugin_decompressor_decompressed = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    case(switch_Misc_l44)
      5'h0 : begin
        IBusCachedPlugin_decompressor_decompressed = {{{{{{{{{2'b00,_zz_IBusCachedPlugin_decompressor_decompressed[10 : 7]},_zz_IBusCachedPlugin_decompressor_decompressed[12 : 11]},_zz_IBusCachedPlugin_decompressor_decompressed[5]},_zz_IBusCachedPlugin_decompressor_decompressed[6]},2'b00},5'h02},3'b000},_zz_IBusCachedPlugin_decompressor_decompressed_2},7'h13};
      end
      5'h02 : begin
        IBusCachedPlugin_decompressor_decompressed = {{{{_zz_IBusCachedPlugin_decompressor_decompressed_3,_zz_IBusCachedPlugin_decompressor_decompressed_1},3'b010},_zz_IBusCachedPlugin_decompressor_decompressed_2},7'h03};
      end
      5'h06 : begin
        IBusCachedPlugin_decompressor_decompressed = {{{{{_zz_IBusCachedPlugin_decompressor_decompressed_3[11 : 5],_zz_IBusCachedPlugin_decompressor_decompressed_2},_zz_IBusCachedPlugin_decompressor_decompressed_1},3'b010},_zz_IBusCachedPlugin_decompressor_decompressed_3[4 : 0]},7'h23};
      end
      5'h08 : begin
        IBusCachedPlugin_decompressor_decompressed = {{{{_zz_IBusCachedPlugin_decompressor_decompressed_5,_zz_IBusCachedPlugin_decompressor_decompressed[11 : 7]},3'b000},_zz_IBusCachedPlugin_decompressor_decompressed[11 : 7]},7'h13};
      end
      5'h09 : begin
        IBusCachedPlugin_decompressor_decompressed = {{{{{_zz_IBusCachedPlugin_decompressor_decompressed_8[20],_zz_IBusCachedPlugin_decompressor_decompressed_8[10 : 1]},_zz_IBusCachedPlugin_decompressor_decompressed_8[11]},_zz_IBusCachedPlugin_decompressor_decompressed_8[19 : 12]},_zz_IBusCachedPlugin_decompressor_decompressed_20},7'h6f};
      end
      5'h0a : begin
        IBusCachedPlugin_decompressor_decompressed = {{{{_zz_IBusCachedPlugin_decompressor_decompressed_5,5'h0},3'b000},_zz_IBusCachedPlugin_decompressor_decompressed[11 : 7]},7'h13};
      end
      5'h0b : begin
        IBusCachedPlugin_decompressor_decompressed = ((_zz_IBusCachedPlugin_decompressor_decompressed[11 : 7] == 5'h02) ? {{{{{{{{{_zz_IBusCachedPlugin_decompressor_decompressed_12,_zz_IBusCachedPlugin_decompressor_decompressed[4 : 3]},_zz_IBusCachedPlugin_decompressor_decompressed[5]},_zz_IBusCachedPlugin_decompressor_decompressed[2]},_zz_IBusCachedPlugin_decompressor_decompressed[6]},4'b0000},_zz_IBusCachedPlugin_decompressor_decompressed[11 : 7]},3'b000},_zz_IBusCachedPlugin_decompressor_decompressed[11 : 7]},7'h13} : {{_zz_IBusCachedPlugin_decompressor_decompressed_27[31 : 12],_zz_IBusCachedPlugin_decompressor_decompressed[11 : 7]},7'h37});
      end
      5'h0c : begin
        IBusCachedPlugin_decompressor_decompressed = {{{{{((_zz_IBusCachedPlugin_decompressor_decompressed[11 : 10] == 2'b10) ? _zz_IBusCachedPlugin_decompressor_decompressed_26 : {{1'b0,(_zz_IBusCachedPlugin_decompressor_decompressed_28 || _zz_IBusCachedPlugin_decompressor_decompressed_29)},5'h0}),(((! _zz_IBusCachedPlugin_decompressor_decompressed[11]) || _zz_IBusCachedPlugin_decompressor_decompressed_22) ? _zz_IBusCachedPlugin_decompressor_decompressed[6 : 2] : _zz_IBusCachedPlugin_decompressor_decompressed_2)},_zz_IBusCachedPlugin_decompressor_decompressed_1},_zz_IBusCachedPlugin_decompressor_decompressed_24},_zz_IBusCachedPlugin_decompressor_decompressed_1},(_zz_IBusCachedPlugin_decompressor_decompressed_22 ? 7'h13 : 7'h33)};
      end
      5'h0d : begin
        IBusCachedPlugin_decompressor_decompressed = {{{{{_zz_IBusCachedPlugin_decompressor_decompressed_15[20],_zz_IBusCachedPlugin_decompressor_decompressed_15[10 : 1]},_zz_IBusCachedPlugin_decompressor_decompressed_15[11]},_zz_IBusCachedPlugin_decompressor_decompressed_15[19 : 12]},_zz_IBusCachedPlugin_decompressor_decompressed_19},7'h6f};
      end
      5'h0e : begin
        IBusCachedPlugin_decompressor_decompressed = {{{{{{{_zz_IBusCachedPlugin_decompressor_decompressed_18[12],_zz_IBusCachedPlugin_decompressor_decompressed_18[10 : 5]},_zz_IBusCachedPlugin_decompressor_decompressed_19},_zz_IBusCachedPlugin_decompressor_decompressed_1},3'b000},_zz_IBusCachedPlugin_decompressor_decompressed_18[4 : 1]},_zz_IBusCachedPlugin_decompressor_decompressed_18[11]},7'h63};
      end
      5'h0f : begin
        IBusCachedPlugin_decompressor_decompressed = {{{{{{{_zz_IBusCachedPlugin_decompressor_decompressed_18[12],_zz_IBusCachedPlugin_decompressor_decompressed_18[10 : 5]},_zz_IBusCachedPlugin_decompressor_decompressed_19},_zz_IBusCachedPlugin_decompressor_decompressed_1},3'b001},_zz_IBusCachedPlugin_decompressor_decompressed_18[4 : 1]},_zz_IBusCachedPlugin_decompressor_decompressed_18[11]},7'h63};
      end
      5'h10 : begin
        IBusCachedPlugin_decompressor_decompressed = {{{{{7'h0,_zz_IBusCachedPlugin_decompressor_decompressed[6 : 2]},_zz_IBusCachedPlugin_decompressor_decompressed[11 : 7]},3'b001},_zz_IBusCachedPlugin_decompressor_decompressed[11 : 7]},7'h13};
      end
      5'h12 : begin
        IBusCachedPlugin_decompressor_decompressed = {{{{{{{{4'b0000,_zz_IBusCachedPlugin_decompressor_decompressed[3 : 2]},_zz_IBusCachedPlugin_decompressor_decompressed[12]},_zz_IBusCachedPlugin_decompressor_decompressed[6 : 4]},2'b00},_zz_IBusCachedPlugin_decompressor_decompressed_21},3'b010},_zz_IBusCachedPlugin_decompressor_decompressed[11 : 7]},7'h03};
      end
      5'h14 : begin
        IBusCachedPlugin_decompressor_decompressed = ((_zz_IBusCachedPlugin_decompressor_decompressed[12 : 2] == 11'h400) ? 32'h00100073 : ((_zz_IBusCachedPlugin_decompressor_decompressed[6 : 2] == 5'h0) ? {{{{12'h0,_zz_IBusCachedPlugin_decompressor_decompressed[11 : 7]},3'b000},(_zz_IBusCachedPlugin_decompressor_decompressed[12] ? _zz_IBusCachedPlugin_decompressor_decompressed_20 : _zz_IBusCachedPlugin_decompressor_decompressed_19)},7'h67} : {{{{{_zz_IBusCachedPlugin_decompressor_decompressed_30,_zz_IBusCachedPlugin_decompressor_decompressed_31},(_zz_IBusCachedPlugin_decompressor_decompressed_32 ? _zz_IBusCachedPlugin_decompressor_decompressed_33 : _zz_IBusCachedPlugin_decompressor_decompressed_19)},3'b000},_zz_IBusCachedPlugin_decompressor_decompressed[11 : 7]},7'h33}));
      end
      5'h16 : begin
        IBusCachedPlugin_decompressor_decompressed = {{{{{_zz_IBusCachedPlugin_decompressor_decompressed_34[11 : 5],_zz_IBusCachedPlugin_decompressor_decompressed[6 : 2]},_zz_IBusCachedPlugin_decompressor_decompressed_21},3'b010},_zz_IBusCachedPlugin_decompressor_decompressed_35[4 : 0]},7'h23};
      end
      default : begin
      end
    endcase
  end

  assign _zz_IBusCachedPlugin_decompressor_decompressed_1 = {2'b01,_zz_IBusCachedPlugin_decompressor_decompressed[9 : 7]};
  assign _zz_IBusCachedPlugin_decompressor_decompressed_2 = {2'b01,_zz_IBusCachedPlugin_decompressor_decompressed[4 : 2]};
  assign _zz_IBusCachedPlugin_decompressor_decompressed_3 = {{{{5'h0,_zz_IBusCachedPlugin_decompressor_decompressed[5]},_zz_IBusCachedPlugin_decompressor_decompressed[12 : 10]},_zz_IBusCachedPlugin_decompressor_decompressed[6]},2'b00};
  assign _zz_IBusCachedPlugin_decompressor_decompressed_4 = _zz_IBusCachedPlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusCachedPlugin_decompressor_decompressed_5[11] = _zz_IBusCachedPlugin_decompressor_decompressed_4;
    _zz_IBusCachedPlugin_decompressor_decompressed_5[10] = _zz_IBusCachedPlugin_decompressor_decompressed_4;
    _zz_IBusCachedPlugin_decompressor_decompressed_5[9] = _zz_IBusCachedPlugin_decompressor_decompressed_4;
    _zz_IBusCachedPlugin_decompressor_decompressed_5[8] = _zz_IBusCachedPlugin_decompressor_decompressed_4;
    _zz_IBusCachedPlugin_decompressor_decompressed_5[7] = _zz_IBusCachedPlugin_decompressor_decompressed_4;
    _zz_IBusCachedPlugin_decompressor_decompressed_5[6] = _zz_IBusCachedPlugin_decompressor_decompressed_4;
    _zz_IBusCachedPlugin_decompressor_decompressed_5[5] = _zz_IBusCachedPlugin_decompressor_decompressed_4;
    _zz_IBusCachedPlugin_decompressor_decompressed_5[4 : 0] = _zz_IBusCachedPlugin_decompressor_decompressed[6 : 2];
  end

  assign _zz_IBusCachedPlugin_decompressor_decompressed_6 = _zz_IBusCachedPlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusCachedPlugin_decompressor_decompressed_7[9] = _zz_IBusCachedPlugin_decompressor_decompressed_6;
    _zz_IBusCachedPlugin_decompressor_decompressed_7[8] = _zz_IBusCachedPlugin_decompressor_decompressed_6;
    _zz_IBusCachedPlugin_decompressor_decompressed_7[7] = _zz_IBusCachedPlugin_decompressor_decompressed_6;
    _zz_IBusCachedPlugin_decompressor_decompressed_7[6] = _zz_IBusCachedPlugin_decompressor_decompressed_6;
    _zz_IBusCachedPlugin_decompressor_decompressed_7[5] = _zz_IBusCachedPlugin_decompressor_decompressed_6;
    _zz_IBusCachedPlugin_decompressor_decompressed_7[4] = _zz_IBusCachedPlugin_decompressor_decompressed_6;
    _zz_IBusCachedPlugin_decompressor_decompressed_7[3] = _zz_IBusCachedPlugin_decompressor_decompressed_6;
    _zz_IBusCachedPlugin_decompressor_decompressed_7[2] = _zz_IBusCachedPlugin_decompressor_decompressed_6;
    _zz_IBusCachedPlugin_decompressor_decompressed_7[1] = _zz_IBusCachedPlugin_decompressor_decompressed_6;
    _zz_IBusCachedPlugin_decompressor_decompressed_7[0] = _zz_IBusCachedPlugin_decompressor_decompressed_6;
  end

  assign _zz_IBusCachedPlugin_decompressor_decompressed_8 = {{{{{{{{_zz_IBusCachedPlugin_decompressor_decompressed_7,_zz_IBusCachedPlugin_decompressor_decompressed[8]},_zz_IBusCachedPlugin_decompressor_decompressed[10 : 9]},_zz_IBusCachedPlugin_decompressor_decompressed[6]},_zz_IBusCachedPlugin_decompressor_decompressed[7]},_zz_IBusCachedPlugin_decompressor_decompressed[2]},_zz_IBusCachedPlugin_decompressor_decompressed[11]},_zz_IBusCachedPlugin_decompressor_decompressed[5 : 3]},1'b0};
  assign _zz_IBusCachedPlugin_decompressor_decompressed_9 = _zz_IBusCachedPlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusCachedPlugin_decompressor_decompressed_10[14] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
    _zz_IBusCachedPlugin_decompressor_decompressed_10[13] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
    _zz_IBusCachedPlugin_decompressor_decompressed_10[12] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
    _zz_IBusCachedPlugin_decompressor_decompressed_10[11] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
    _zz_IBusCachedPlugin_decompressor_decompressed_10[10] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
    _zz_IBusCachedPlugin_decompressor_decompressed_10[9] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
    _zz_IBusCachedPlugin_decompressor_decompressed_10[8] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
    _zz_IBusCachedPlugin_decompressor_decompressed_10[7] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
    _zz_IBusCachedPlugin_decompressor_decompressed_10[6] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
    _zz_IBusCachedPlugin_decompressor_decompressed_10[5] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
    _zz_IBusCachedPlugin_decompressor_decompressed_10[4] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
    _zz_IBusCachedPlugin_decompressor_decompressed_10[3] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
    _zz_IBusCachedPlugin_decompressor_decompressed_10[2] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
    _zz_IBusCachedPlugin_decompressor_decompressed_10[1] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
    _zz_IBusCachedPlugin_decompressor_decompressed_10[0] = _zz_IBusCachedPlugin_decompressor_decompressed_9;
  end

  assign _zz_IBusCachedPlugin_decompressor_decompressed_11 = _zz_IBusCachedPlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusCachedPlugin_decompressor_decompressed_12[2] = _zz_IBusCachedPlugin_decompressor_decompressed_11;
    _zz_IBusCachedPlugin_decompressor_decompressed_12[1] = _zz_IBusCachedPlugin_decompressor_decompressed_11;
    _zz_IBusCachedPlugin_decompressor_decompressed_12[0] = _zz_IBusCachedPlugin_decompressor_decompressed_11;
  end

  assign _zz_IBusCachedPlugin_decompressor_decompressed_13 = _zz_IBusCachedPlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusCachedPlugin_decompressor_decompressed_14[9] = _zz_IBusCachedPlugin_decompressor_decompressed_13;
    _zz_IBusCachedPlugin_decompressor_decompressed_14[8] = _zz_IBusCachedPlugin_decompressor_decompressed_13;
    _zz_IBusCachedPlugin_decompressor_decompressed_14[7] = _zz_IBusCachedPlugin_decompressor_decompressed_13;
    _zz_IBusCachedPlugin_decompressor_decompressed_14[6] = _zz_IBusCachedPlugin_decompressor_decompressed_13;
    _zz_IBusCachedPlugin_decompressor_decompressed_14[5] = _zz_IBusCachedPlugin_decompressor_decompressed_13;
    _zz_IBusCachedPlugin_decompressor_decompressed_14[4] = _zz_IBusCachedPlugin_decompressor_decompressed_13;
    _zz_IBusCachedPlugin_decompressor_decompressed_14[3] = _zz_IBusCachedPlugin_decompressor_decompressed_13;
    _zz_IBusCachedPlugin_decompressor_decompressed_14[2] = _zz_IBusCachedPlugin_decompressor_decompressed_13;
    _zz_IBusCachedPlugin_decompressor_decompressed_14[1] = _zz_IBusCachedPlugin_decompressor_decompressed_13;
    _zz_IBusCachedPlugin_decompressor_decompressed_14[0] = _zz_IBusCachedPlugin_decompressor_decompressed_13;
  end

  assign _zz_IBusCachedPlugin_decompressor_decompressed_15 = {{{{{{{{_zz_IBusCachedPlugin_decompressor_decompressed_14,_zz_IBusCachedPlugin_decompressor_decompressed[8]},_zz_IBusCachedPlugin_decompressor_decompressed[10 : 9]},_zz_IBusCachedPlugin_decompressor_decompressed[6]},_zz_IBusCachedPlugin_decompressor_decompressed[7]},_zz_IBusCachedPlugin_decompressor_decompressed[2]},_zz_IBusCachedPlugin_decompressor_decompressed[11]},_zz_IBusCachedPlugin_decompressor_decompressed[5 : 3]},1'b0};
  assign _zz_IBusCachedPlugin_decompressor_decompressed_16 = _zz_IBusCachedPlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusCachedPlugin_decompressor_decompressed_17[4] = _zz_IBusCachedPlugin_decompressor_decompressed_16;
    _zz_IBusCachedPlugin_decompressor_decompressed_17[3] = _zz_IBusCachedPlugin_decompressor_decompressed_16;
    _zz_IBusCachedPlugin_decompressor_decompressed_17[2] = _zz_IBusCachedPlugin_decompressor_decompressed_16;
    _zz_IBusCachedPlugin_decompressor_decompressed_17[1] = _zz_IBusCachedPlugin_decompressor_decompressed_16;
    _zz_IBusCachedPlugin_decompressor_decompressed_17[0] = _zz_IBusCachedPlugin_decompressor_decompressed_16;
  end

  assign _zz_IBusCachedPlugin_decompressor_decompressed_18 = {{{{{_zz_IBusCachedPlugin_decompressor_decompressed_17,_zz_IBusCachedPlugin_decompressor_decompressed[6 : 5]},_zz_IBusCachedPlugin_decompressor_decompressed[2]},_zz_IBusCachedPlugin_decompressor_decompressed[11 : 10]},_zz_IBusCachedPlugin_decompressor_decompressed[4 : 3]},1'b0};
  assign _zz_IBusCachedPlugin_decompressor_decompressed_19 = 5'h0;
  assign _zz_IBusCachedPlugin_decompressor_decompressed_20 = 5'h01;
  assign _zz_IBusCachedPlugin_decompressor_decompressed_21 = 5'h02;
  assign switch_Misc_l44 = {_zz_IBusCachedPlugin_decompressor_decompressed[1 : 0],_zz_IBusCachedPlugin_decompressor_decompressed[15 : 13]};
  assign _zz_IBusCachedPlugin_decompressor_decompressed_22 = (_zz_IBusCachedPlugin_decompressor_decompressed[11 : 10] != 2'b11);
  assign switch_Misc_l202 = _zz_IBusCachedPlugin_decompressor_decompressed[11 : 10];
  assign switch_Misc_l202_1 = _zz_IBusCachedPlugin_decompressor_decompressed[6 : 5];
  always @(*) begin
    case(switch_Misc_l202_1)
      2'b00 : begin
        _zz_IBusCachedPlugin_decompressor_decompressed_23 = 3'b000;
      end
      2'b01 : begin
        _zz_IBusCachedPlugin_decompressor_decompressed_23 = 3'b100;
      end
      2'b10 : begin
        _zz_IBusCachedPlugin_decompressor_decompressed_23 = 3'b110;
      end
      default : begin
        _zz_IBusCachedPlugin_decompressor_decompressed_23 = 3'b111;
      end
    endcase
  end

  always @(*) begin
    case(switch_Misc_l202)
      2'b00 : begin
        _zz_IBusCachedPlugin_decompressor_decompressed_24 = 3'b101;
      end
      2'b01 : begin
        _zz_IBusCachedPlugin_decompressor_decompressed_24 = 3'b101;
      end
      2'b10 : begin
        _zz_IBusCachedPlugin_decompressor_decompressed_24 = 3'b111;
      end
      default : begin
        _zz_IBusCachedPlugin_decompressor_decompressed_24 = _zz_IBusCachedPlugin_decompressor_decompressed_23;
      end
    endcase
  end

  assign _zz_IBusCachedPlugin_decompressor_decompressed_25 = _zz_IBusCachedPlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusCachedPlugin_decompressor_decompressed_26[6] = _zz_IBusCachedPlugin_decompressor_decompressed_25;
    _zz_IBusCachedPlugin_decompressor_decompressed_26[5] = _zz_IBusCachedPlugin_decompressor_decompressed_25;
    _zz_IBusCachedPlugin_decompressor_decompressed_26[4] = _zz_IBusCachedPlugin_decompressor_decompressed_25;
    _zz_IBusCachedPlugin_decompressor_decompressed_26[3] = _zz_IBusCachedPlugin_decompressor_decompressed_25;
    _zz_IBusCachedPlugin_decompressor_decompressed_26[2] = _zz_IBusCachedPlugin_decompressor_decompressed_25;
    _zz_IBusCachedPlugin_decompressor_decompressed_26[1] = _zz_IBusCachedPlugin_decompressor_decompressed_25;
    _zz_IBusCachedPlugin_decompressor_decompressed_26[0] = _zz_IBusCachedPlugin_decompressor_decompressed_25;
  end

  assign IBusCachedPlugin_decompressor_output_valid = (IBusCachedPlugin_decompressor_input_valid && (! ((IBusCachedPlugin_decompressor_throw2Bytes && (! IBusCachedPlugin_decompressor_bufferValid)) && (! IBusCachedPlugin_decompressor_isInputHighRvc))));
  assign IBusCachedPlugin_decompressor_output_payload_pc = IBusCachedPlugin_decompressor_input_payload_pc;
  assign IBusCachedPlugin_decompressor_output_payload_isRvc = IBusCachedPlugin_decompressor_isRvc;
  assign IBusCachedPlugin_decompressor_output_payload_rsp_inst = (IBusCachedPlugin_decompressor_isRvc ? IBusCachedPlugin_decompressor_decompressed : IBusCachedPlugin_decompressor_raw);
  assign IBusCachedPlugin_decompressor_input_ready = (IBusCachedPlugin_decompressor_output_ready && (((! IBusCachedPlugin_iBusRsp_stages_1_input_valid) || IBusCachedPlugin_decompressor_flushNext) || ((! (IBusCachedPlugin_decompressor_bufferValid && IBusCachedPlugin_decompressor_isInputHighRvc)) && (! (((! IBusCachedPlugin_decompressor_unaligned) && IBusCachedPlugin_decompressor_isInputLowRvc) && IBusCachedPlugin_decompressor_isInputHighRvc)))));
  assign IBusCachedPlugin_decompressor_output_fire = (IBusCachedPlugin_decompressor_output_valid && IBusCachedPlugin_decompressor_output_ready);
  assign IBusCachedPlugin_decompressor_bufferFill = (((((! IBusCachedPlugin_decompressor_unaligned) && IBusCachedPlugin_decompressor_isInputLowRvc) && (! IBusCachedPlugin_decompressor_isInputHighRvc)) || (IBusCachedPlugin_decompressor_bufferValid && (! IBusCachedPlugin_decompressor_isInputHighRvc))) || ((IBusCachedPlugin_decompressor_throw2Bytes && (! IBusCachedPlugin_decompressor_isRvc)) && (! IBusCachedPlugin_decompressor_isInputHighRvc)));
  assign when_Fetcher_l283 = (IBusCachedPlugin_decompressor_output_ready && IBusCachedPlugin_decompressor_input_valid);
  assign when_Fetcher_l286 = (IBusCachedPlugin_decompressor_output_ready && IBusCachedPlugin_decompressor_input_valid);
  assign when_Fetcher_l291 = (IBusCachedPlugin_externalFlush || IBusCachedPlugin_decompressor_consumeCurrent);
  assign IBusCachedPlugin_decompressor_output_ready = ((1'b0 && (! IBusCachedPlugin_injector_decodeInput_valid)) || IBusCachedPlugin_injector_decodeInput_ready);
  assign IBusCachedPlugin_injector_decodeInput_valid = _zz_IBusCachedPlugin_injector_decodeInput_valid;
  assign IBusCachedPlugin_injector_decodeInput_payload_pc = _zz_IBusCachedPlugin_injector_decodeInput_payload_pc;
  assign IBusCachedPlugin_injector_decodeInput_payload_rsp_error = _zz_IBusCachedPlugin_injector_decodeInput_payload_rsp_error;
  assign IBusCachedPlugin_injector_decodeInput_payload_rsp_inst = _zz_IBusCachedPlugin_injector_decodeInput_payload_rsp_inst;
  assign IBusCachedPlugin_injector_decodeInput_payload_isRvc = _zz_IBusCachedPlugin_injector_decodeInput_payload_isRvc;
  assign when_Fetcher_l329 = (! 1'b0);
  assign when_Fetcher_l329_1 = (! execute_arbitration_isStuck);
  assign when_Fetcher_l329_2 = (! memory_arbitration_isStuck);
  assign when_Fetcher_l329_3 = (! writeBack_arbitration_isStuck);
  assign IBusCachedPlugin_pcValids_0 = IBusCachedPlugin_injector_nextPcCalc_valids_0;
  assign IBusCachedPlugin_pcValids_1 = IBusCachedPlugin_injector_nextPcCalc_valids_1;
  assign IBusCachedPlugin_pcValids_2 = IBusCachedPlugin_injector_nextPcCalc_valids_2;
  assign IBusCachedPlugin_pcValids_3 = IBusCachedPlugin_injector_nextPcCalc_valids_3;
  assign IBusCachedPlugin_injector_decodeInput_ready = (! decode_arbitration_isStuck);
  always @(*) begin
    decode_arbitration_isValid = IBusCachedPlugin_injector_decodeInput_valid;
    case(switch_Fetcher_l362)
      3'b010 : begin
        decode_arbitration_isValid = 1'b1;
      end
      3'b011 : begin
        decode_arbitration_isValid = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch = _zz__zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch[11];
  always @(*) begin
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[18] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[17] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[16] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[15] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[14] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[13] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[12] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[11] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[10] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[9] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[8] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[7] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[6] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[5] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[4] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[3] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[2] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[1] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
    _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_1[0] = _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  end

  assign IBusCachedPlugin_decodePrediction_cmd_hadBranch = ((decode_BRANCH_CTRL == BranchCtrlEnum_JAL) || ((decode_BRANCH_CTRL == BranchCtrlEnum_B) && _zz_IBusCachedPlugin_decodePrediction_cmd_hadBranch_2[31]));
  assign IBusCachedPlugin_predictionJumpInterface_valid = (decode_arbitration_isValid && IBusCachedPlugin_decodePrediction_cmd_hadBranch);
  assign _zz_IBusCachedPlugin_predictionJumpInterface_payload = _zz__zz_IBusCachedPlugin_predictionJumpInterface_payload[19];
  always @(*) begin
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[10] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[9] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[8] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[7] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[6] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[5] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[4] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[3] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[2] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[1] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_1[0] = _zz_IBusCachedPlugin_predictionJumpInterface_payload;
  end

  assign _zz_IBusCachedPlugin_predictionJumpInterface_payload_2 = _zz__zz_IBusCachedPlugin_predictionJumpInterface_payload_2[11];
  always @(*) begin
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[18] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[17] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[16] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[15] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[14] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[13] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[12] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[11] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[10] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[9] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[8] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[7] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[6] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[5] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[4] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[3] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[2] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[1] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
    _zz_IBusCachedPlugin_predictionJumpInterface_payload_3[0] = _zz_IBusCachedPlugin_predictionJumpInterface_payload_2;
  end

  assign IBusCachedPlugin_predictionJumpInterface_payload = (decode_PC + ((decode_BRANCH_CTRL == BranchCtrlEnum_JAL) ? {{_zz_IBusCachedPlugin_predictionJumpInterface_payload_1,{{{_zz_IBusCachedPlugin_predictionJumpInterface_payload_4,_zz_IBusCachedPlugin_predictionJumpInterface_payload_5},_zz_IBusCachedPlugin_predictionJumpInterface_payload_6},decode_INSTRUCTION[30 : 21]}},1'b0} : {{_zz_IBusCachedPlugin_predictionJumpInterface_payload_3,{{{_zz_IBusCachedPlugin_predictionJumpInterface_payload_7,_zz_IBusCachedPlugin_predictionJumpInterface_payload_8},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0}));
  assign iBus_cmd_valid = IBusCachedPlugin_cache_io_mem_cmd_valid;
  always @(*) begin
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  end

  assign iBus_cmd_payload_size = IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  assign IBusCachedPlugin_s0_tightlyCoupledHit = 1'b0;
  assign IBusCachedPlugin_cache_io_cpu_prefetch_isValid = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && (! IBusCachedPlugin_s0_tightlyCoupledHit));
  assign IBusCachedPlugin_cache_io_cpu_fetch_isValid = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && (! IBusCachedPlugin_s1_tightlyCoupledHit));
  assign IBusCachedPlugin_cache_io_cpu_fetch_isStuck = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_0_isValid = IBusCachedPlugin_cache_io_cpu_fetch_isValid;
  assign IBusCachedPlugin_mmuBus_cmd_0_isStuck = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_0_virtualAddress = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  assign IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b0;
  assign IBusCachedPlugin_mmuBus_end = (IBusCachedPlugin_iBusRsp_stages_1_input_ready || IBusCachedPlugin_externalFlush);
  assign IBusCachedPlugin_cache_io_cpu_fetch_isUser = (CsrPlugin_privilege == 2'b00);
  assign IBusCachedPlugin_rsp_iBusRspOutputHalt = 1'b0;
  assign IBusCachedPlugin_rsp_issueDetected = 1'b0;
  always @(*) begin
    IBusCachedPlugin_rsp_redoFetch = 1'b0;
    if(when_IBusCachedPlugin_l239) begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
    if(when_IBusCachedPlugin_l250) begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
  end

  always @(*) begin
    IBusCachedPlugin_cache_io_cpu_fill_valid = (IBusCachedPlugin_rsp_redoFetch && (! IBusCachedPlugin_cache_io_cpu_fetch_mmuRefilling));
    if(when_IBusCachedPlugin_l250) begin
      IBusCachedPlugin_cache_io_cpu_fill_valid = 1'b1;
    end
  end

  always @(*) begin
    IBusCachedPlugin_decodeExceptionPort_valid = 1'b0;
    if(when_IBusCachedPlugin_l244) begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
    if(when_IBusCachedPlugin_l256) begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
  end

  always @(*) begin
    IBusCachedPlugin_decodeExceptionPort_payload_code = 4'bxxxx;
    if(when_IBusCachedPlugin_l244) begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b1100;
    end
    if(when_IBusCachedPlugin_l256) begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b0001;
    end
  end

  assign IBusCachedPlugin_decodeExceptionPort_payload_badAddr = {IBusCachedPlugin_iBusRsp_stages_1_input_payload[31 : 2],2'b00};
  assign when_IBusCachedPlugin_l239 = ((IBusCachedPlugin_cache_io_cpu_fetch_isValid && IBusCachedPlugin_cache_io_cpu_fetch_mmuRefilling) && (! IBusCachedPlugin_rsp_issueDetected));
  assign when_IBusCachedPlugin_l244 = ((IBusCachedPlugin_cache_io_cpu_fetch_isValid && IBusCachedPlugin_cache_io_cpu_fetch_mmuException) && (! IBusCachedPlugin_rsp_issueDetected_1));
  assign when_IBusCachedPlugin_l250 = ((IBusCachedPlugin_cache_io_cpu_fetch_isValid && IBusCachedPlugin_cache_io_cpu_fetch_cacheMiss) && (! IBusCachedPlugin_rsp_issueDetected_2));
  assign when_IBusCachedPlugin_l256 = ((IBusCachedPlugin_cache_io_cpu_fetch_isValid && IBusCachedPlugin_cache_io_cpu_fetch_error) && (! IBusCachedPlugin_rsp_issueDetected_3));
  assign when_IBusCachedPlugin_l267 = (IBusCachedPlugin_rsp_issueDetected_4 || IBusCachedPlugin_rsp_iBusRspOutputHalt);
  assign IBusCachedPlugin_iBusRsp_output_valid = IBusCachedPlugin_iBusRsp_stages_1_output_valid;
  assign IBusCachedPlugin_iBusRsp_stages_1_output_ready = IBusCachedPlugin_iBusRsp_output_ready;
  assign IBusCachedPlugin_iBusRsp_output_payload_rsp_inst = IBusCachedPlugin_cache_io_cpu_fetch_data;
  assign IBusCachedPlugin_iBusRsp_output_payload_pc = IBusCachedPlugin_iBusRsp_stages_1_output_payload;
  assign IBusCachedPlugin_cache_io_flush = (decode_arbitration_isValid && decode_FLUSH_ALL);
  assign dBus_cmd_valid = dataCache_1_io_mem_cmd_valid;
  assign dBus_cmd_payload_wr = dataCache_1_io_mem_cmd_payload_wr;
  assign dBus_cmd_payload_uncached = dataCache_1_io_mem_cmd_payload_uncached;
  assign dBus_cmd_payload_address = dataCache_1_io_mem_cmd_payload_address;
  assign dBus_cmd_payload_data = dataCache_1_io_mem_cmd_payload_data;
  assign dBus_cmd_payload_mask = dataCache_1_io_mem_cmd_payload_mask;
  assign dBus_cmd_payload_size = dataCache_1_io_mem_cmd_payload_size;
  assign dBus_cmd_payload_last = dataCache_1_io_mem_cmd_payload_last;
  assign when_DBusCachedPlugin_l307 = ((DBusCachedPlugin_mmuBus_busy && decode_arbitration_isValid) && decode_MEMORY_ENABLE);
  assign execute_DBusCachedPlugin_size = execute_INSTRUCTION[13 : 12];
  assign dataCache_1_io_cpu_execute_isValid = (execute_arbitration_isValid && execute_MEMORY_ENABLE);
  assign dataCache_1_io_cpu_execute_address = execute_SRC_ADD;
  always @(*) begin
    case(execute_DBusCachedPlugin_size)
      2'b00 : begin
        _zz_execute_MEMORY_STORE_DATA_RF = {{{execute_RS2[7 : 0],execute_RS2[7 : 0]},execute_RS2[7 : 0]},execute_RS2[7 : 0]};
      end
      2'b01 : begin
        _zz_execute_MEMORY_STORE_DATA_RF = {execute_RS2[15 : 0],execute_RS2[15 : 0]};
      end
      default : begin
        _zz_execute_MEMORY_STORE_DATA_RF = execute_RS2[31 : 0];
      end
    endcase
  end

  assign dataCache_1_io_cpu_flush_valid = (execute_arbitration_isValid && execute_MEMORY_MANAGMENT);
  assign dataCache_1_io_cpu_flush_isStall = (dataCache_1_io_cpu_flush_valid && (! dataCache_1_io_cpu_flush_ready));
  assign when_DBusCachedPlugin_l347 = (dataCache_1_io_cpu_flush_isStall || dataCache_1_io_cpu_execute_haltIt);
  assign when_DBusCachedPlugin_l363 = (dataCache_1_io_cpu_execute_refilling && execute_arbitration_isValid);
  assign dataCache_1_io_cpu_memory_isValid = (memory_arbitration_isValid && memory_MEMORY_ENABLE);
  assign dataCache_1_io_cpu_memory_address = memory_REGFILE_WRITE_DATA;
  assign DBusCachedPlugin_mmuBus_cmd_0_isValid = dataCache_1_io_cpu_memory_isValid;
  assign DBusCachedPlugin_mmuBus_cmd_0_isStuck = memory_arbitration_isStuck;
  assign DBusCachedPlugin_mmuBus_cmd_0_virtualAddress = dataCache_1_io_cpu_memory_address;
  assign DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b0;
  assign DBusCachedPlugin_mmuBus_end = ((! memory_arbitration_isStuck) || memory_arbitration_removeIt);
  always @(*) begin
    dataCache_1_io_cpu_memory_mmuRsp_isIoAccess = DBusCachedPlugin_mmuBus_rsp_isIoAccess;
    if(when_DBusCachedPlugin_l390) begin
      dataCache_1_io_cpu_memory_mmuRsp_isIoAccess = 1'b1;
    end
  end

  assign when_DBusCachedPlugin_l390 = (_zz_when_DBusCachedPlugin_l390 && (! dataCache_1_io_cpu_memory_isWrite));
  always @(*) begin
    dataCache_1_io_cpu_writeBack_isValid = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
    if(writeBack_arbitration_haltByOther) begin
      dataCache_1_io_cpu_writeBack_isValid = 1'b0;
    end
  end

  assign dataCache_1_io_cpu_writeBack_isUser = (CsrPlugin_privilege == 2'b00);
  assign dataCache_1_io_cpu_writeBack_address = writeBack_REGFILE_WRITE_DATA;
  assign dataCache_1_io_cpu_writeBack_storeData[31 : 0] = writeBack_MEMORY_STORE_DATA_RF;
  always @(*) begin
    DBusCachedPlugin_redoBranch_valid = 1'b0;
    if(when_DBusCachedPlugin_l442) begin
      if(dataCache_1_io_cpu_redo) begin
        DBusCachedPlugin_redoBranch_valid = 1'b1;
      end
    end
  end

  assign DBusCachedPlugin_redoBranch_payload = writeBack_PC;
  always @(*) begin
    DBusCachedPlugin_exceptionBus_valid = 1'b0;
    if(when_DBusCachedPlugin_l442) begin
      if(dataCache_1_io_cpu_writeBack_accessError) begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_writeBack_mmuException) begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_writeBack_unalignedAccess) begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_redo) begin
        DBusCachedPlugin_exceptionBus_valid = 1'b0;
      end
    end
  end

  assign DBusCachedPlugin_exceptionBus_payload_badAddr = writeBack_REGFILE_WRITE_DATA;
  always @(*) begin
    DBusCachedPlugin_exceptionBus_payload_code = 4'bxxxx;
    if(when_DBusCachedPlugin_l442) begin
      if(dataCache_1_io_cpu_writeBack_accessError) begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_DBusCachedPlugin_exceptionBus_payload_code};
      end
      if(dataCache_1_io_cpu_writeBack_mmuException) begin
        DBusCachedPlugin_exceptionBus_payload_code = (writeBack_MEMORY_WR ? 4'b1111 : 4'b1101);
      end
      if(dataCache_1_io_cpu_writeBack_unalignedAccess) begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_DBusCachedPlugin_exceptionBus_payload_code_1};
      end
    end
  end

  assign when_DBusCachedPlugin_l442 = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign when_DBusCachedPlugin_l462 = (dataCache_1_io_cpu_writeBack_isValid && dataCache_1_io_cpu_writeBack_haltIt);
  assign writeBack_DBusCachedPlugin_rspSplits_0 = dataCache_1_io_cpu_writeBack_data[7 : 0];
  assign writeBack_DBusCachedPlugin_rspSplits_1 = dataCache_1_io_cpu_writeBack_data[15 : 8];
  assign writeBack_DBusCachedPlugin_rspSplits_2 = dataCache_1_io_cpu_writeBack_data[23 : 16];
  assign writeBack_DBusCachedPlugin_rspSplits_3 = dataCache_1_io_cpu_writeBack_data[31 : 24];
  always @(*) begin
    writeBack_DBusCachedPlugin_rspShifted[7 : 0] = _zz_writeBack_DBusCachedPlugin_rspShifted;
    writeBack_DBusCachedPlugin_rspShifted[15 : 8] = _zz_writeBack_DBusCachedPlugin_rspShifted_2;
    writeBack_DBusCachedPlugin_rspShifted[23 : 16] = writeBack_DBusCachedPlugin_rspSplits_2;
    writeBack_DBusCachedPlugin_rspShifted[31 : 24] = writeBack_DBusCachedPlugin_rspSplits_3;
  end

  assign writeBack_DBusCachedPlugin_rspRf = writeBack_DBusCachedPlugin_rspShifted[31 : 0];
  assign switch_Misc_l202_2 = writeBack_INSTRUCTION[13 : 12];
  assign _zz_writeBack_DBusCachedPlugin_rspFormated = (writeBack_DBusCachedPlugin_rspRf[7] && (! writeBack_INSTRUCTION[14]));
  always @(*) begin
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[31] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[30] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[29] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[28] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[27] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[26] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[25] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[24] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[23] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[22] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[21] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[20] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[19] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[18] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[17] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[16] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[15] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[14] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[13] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[12] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[11] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[10] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[9] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[8] = _zz_writeBack_DBusCachedPlugin_rspFormated;
    _zz_writeBack_DBusCachedPlugin_rspFormated_1[7 : 0] = writeBack_DBusCachedPlugin_rspRf[7 : 0];
  end

  assign _zz_writeBack_DBusCachedPlugin_rspFormated_2 = (writeBack_DBusCachedPlugin_rspRf[15] && (! writeBack_INSTRUCTION[14]));
  always @(*) begin
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[31] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[30] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[29] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[28] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[27] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[26] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[25] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[24] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[23] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[22] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[21] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[20] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[19] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[18] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[17] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[16] = _zz_writeBack_DBusCachedPlugin_rspFormated_2;
    _zz_writeBack_DBusCachedPlugin_rspFormated_3[15 : 0] = writeBack_DBusCachedPlugin_rspRf[15 : 0];
  end

  always @(*) begin
    case(switch_Misc_l202_2)
      2'b00 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_writeBack_DBusCachedPlugin_rspFormated_1;
      end
      2'b01 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_writeBack_DBusCachedPlugin_rspFormated_3;
      end
      default : begin
        writeBack_DBusCachedPlugin_rspFormated = writeBack_DBusCachedPlugin_rspRf;
      end
    endcase
  end

  assign when_DBusCachedPlugin_l488 = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign IBusCachedPlugin_mmuBus_rsp_physicalAddress = IBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  assign IBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_isIoAccess = (IBusCachedPlugin_mmuBus_rsp_physicalAddress[31 : 28] == 4'b1111);
  assign IBusCachedPlugin_mmuBus_rsp_isPaging = 1'b0;
  assign IBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
  assign IBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
  assign IBusCachedPlugin_mmuBus_busy = 1'b0;
  assign DBusCachedPlugin_mmuBus_rsp_physicalAddress = DBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  assign DBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_isIoAccess = (DBusCachedPlugin_mmuBus_rsp_physicalAddress[31 : 28] == 4'b1111);
  assign DBusCachedPlugin_mmuBus_rsp_isPaging = 1'b0;
  assign DBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
  assign DBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
  assign DBusCachedPlugin_mmuBus_busy = 1'b0;
  assign _zz_decode_ENV_CTRL_3 = ((decode_INSTRUCTION & 32'h00004050) == 32'h00004050);
  assign _zz_decode_ENV_CTRL_4 = ((decode_INSTRUCTION & 32'h00000018) == 32'h0);
  assign _zz_decode_ENV_CTRL_5 = ((decode_INSTRUCTION & 32'h00000004) == 32'h00000004);
  assign _zz_decode_ENV_CTRL_6 = ((decode_INSTRUCTION & 32'h00000048) == 32'h00000048);
  assign _zz_decode_ENV_CTRL_7 = ((decode_INSTRUCTION & 32'h00001000) == 32'h0);
  assign _zz_decode_ENV_CTRL_2 = {(|((decode_INSTRUCTION & 32'h00103050) == 32'h00100050)),{(|((decode_INSTRUCTION & _zz__zz_decode_ENV_CTRL_2) == 32'h00000050)),{(|(_zz__zz_decode_ENV_CTRL_2_1 == _zz__zz_decode_ENV_CTRL_2_2)),{(|{_zz__zz_decode_ENV_CTRL_2_3,_zz__zz_decode_ENV_CTRL_2_4}),{(|_zz__zz_decode_ENV_CTRL_2_5),{_zz__zz_decode_ENV_CTRL_2_7,{_zz__zz_decode_ENV_CTRL_2_9,_zz__zz_decode_ENV_CTRL_2_10}}}}}}};
  assign _zz_decode_SRC1_CTRL_2 = _zz_decode_ENV_CTRL_2[2 : 1];
  assign _zz_decode_SRC1_CTRL_1 = _zz_decode_SRC1_CTRL_2;
  assign _zz_decode_ALU_CTRL_2 = _zz_decode_ENV_CTRL_2[7 : 6];
  assign _zz_decode_ALU_CTRL_1 = _zz_decode_ALU_CTRL_2;
  assign _zz_decode_SRC2_CTRL_2 = _zz_decode_ENV_CTRL_2[9 : 8];
  assign _zz_decode_SRC2_CTRL_1 = _zz_decode_SRC2_CTRL_2;
  assign _zz_decode_ALU_BITWISE_CTRL_2 = _zz_decode_ENV_CTRL_2[19 : 18];
  assign _zz_decode_ALU_BITWISE_CTRL_1 = _zz_decode_ALU_BITWISE_CTRL_2;
  assign _zz_decode_SHIFT_CTRL_2 = _zz_decode_ENV_CTRL_2[22 : 21];
  assign _zz_decode_SHIFT_CTRL_1 = _zz_decode_SHIFT_CTRL_2;
  assign _zz_decode_BRANCH_CTRL_2 = _zz_decode_ENV_CTRL_2[28 : 27];
  assign _zz_decode_BRANCH_CTRL = _zz_decode_BRANCH_CTRL_2;
  assign _zz_decode_ENV_CTRL_8 = _zz_decode_ENV_CTRL_2[31 : 30];
  assign _zz_decode_ENV_CTRL_1 = _zz_decode_ENV_CTRL_8;
  assign decodeExceptionPort_valid = (decode_arbitration_isValid && (! decode_LEGAL_INSTRUCTION));
  assign decodeExceptionPort_payload_code = 4'b0010;
  assign decodeExceptionPort_payload_badAddr = decode_INSTRUCTION;
  assign when_RegFilePlugin_l63 = (decode_INSTRUCTION[11 : 7] == 5'h0);
  assign decode_RegFilePlugin_regFileReadAddress1 = decode_INSTRUCTION[19 : 15];
  assign decode_RegFilePlugin_regFileReadAddress2 = decode_INSTRUCTION[24 : 20];
  assign decode_RegFilePlugin_rs1Data = _zz_RegFilePlugin_regFile_port0;
  assign decode_RegFilePlugin_rs2Data = _zz_RegFilePlugin_regFile_port1;
  always @(*) begin
    lastStageRegFileWrite_valid = (_zz_lastStageRegFileWrite_valid && writeBack_arbitration_isFiring);
    if(_zz_2) begin
      lastStageRegFileWrite_valid = 1'b1;
    end
  end

  always @(*) begin
    lastStageRegFileWrite_payload_address = _zz_lastStageRegFileWrite_payload_address[11 : 7];
    if(_zz_2) begin
      lastStageRegFileWrite_payload_address = 5'h0;
    end
  end

  always @(*) begin
    lastStageRegFileWrite_payload_data = _zz_decode_RS2_2;
    if(_zz_2) begin
      lastStageRegFileWrite_payload_data = 32'h0;
    end
  end

  always @(*) begin
    case(execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_AND_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 & execute_SRC2);
      end
      AluBitwiseCtrlEnum_OR_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 | execute_SRC2);
      end
      default : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 ^ execute_SRC2);
      end
    endcase
  end

  always @(*) begin
    case(execute_ALU_CTRL)
      AluCtrlEnum_BITWISE : begin
        _zz_execute_REGFILE_WRITE_DATA = execute_IntAluPlugin_bitwise;
      end
      AluCtrlEnum_SLT_SLTU : begin
        _zz_execute_REGFILE_WRITE_DATA = {31'd0, _zz__zz_execute_REGFILE_WRITE_DATA};
      end
      default : begin
        _zz_execute_REGFILE_WRITE_DATA = execute_SRC_ADD_SUB;
      end
    endcase
  end

  always @(*) begin
    case(execute_SRC1_CTRL)
      Src1CtrlEnum_RS : begin
        _zz_execute_SRC1 = execute_RS1;
      end
      Src1CtrlEnum_PC_INCREMENT : begin
        _zz_execute_SRC1 = {29'd0, _zz__zz_execute_SRC1};
      end
      Src1CtrlEnum_IMU : begin
        _zz_execute_SRC1 = {execute_INSTRUCTION[31 : 12],12'h0};
      end
      default : begin
        _zz_execute_SRC1 = {27'd0, _zz__zz_execute_SRC1_1};
      end
    endcase
  end

  assign _zz_execute_SRC2_1 = execute_INSTRUCTION[31];
  always @(*) begin
    _zz_execute_SRC2_2[19] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[18] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[17] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[16] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[15] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[14] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[13] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[12] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[11] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[10] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[9] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[8] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[7] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[6] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[5] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[4] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[3] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[2] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[1] = _zz_execute_SRC2_1;
    _zz_execute_SRC2_2[0] = _zz_execute_SRC2_1;
  end

  assign _zz_execute_SRC2_3 = _zz__zz_execute_SRC2_3[11];
  always @(*) begin
    _zz_execute_SRC2_4[19] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[18] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[17] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[16] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[15] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[14] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[13] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[12] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[11] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[10] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[9] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[8] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[7] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[6] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[5] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[4] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[3] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[2] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[1] = _zz_execute_SRC2_3;
    _zz_execute_SRC2_4[0] = _zz_execute_SRC2_3;
  end

  always @(*) begin
    case(execute_SRC2_CTRL)
      Src2CtrlEnum_RS : begin
        _zz_execute_SRC2_5 = execute_RS2;
      end
      Src2CtrlEnum_IMI : begin
        _zz_execute_SRC2_5 = {_zz_execute_SRC2_2,execute_INSTRUCTION[31 : 20]};
      end
      Src2CtrlEnum_IMS : begin
        _zz_execute_SRC2_5 = {_zz_execute_SRC2_4,{execute_INSTRUCTION[31 : 25],execute_INSTRUCTION[11 : 7]}};
      end
      default : begin
        _zz_execute_SRC2_5 = _zz_execute_SRC2;
      end
    endcase
  end

  always @(*) begin
    execute_SrcPlugin_addSub = _zz_execute_SrcPlugin_addSub;
    if(execute_SRC2_FORCE_ZERO) begin
      execute_SrcPlugin_addSub = execute_SRC1;
    end
  end

  assign execute_SrcPlugin_less = ((execute_SRC1[31] == execute_SRC2[31]) ? execute_SrcPlugin_addSub[31] : (execute_SRC_LESS_UNSIGNED ? execute_SRC2[31] : execute_SRC1[31]));
  assign execute_FullBarrelShifterPlugin_amplitude = execute_SRC2[4 : 0];
  always @(*) begin
    _zz_execute_FullBarrelShifterPlugin_reversed[0] = execute_SRC1[31];
    _zz_execute_FullBarrelShifterPlugin_reversed[1] = execute_SRC1[30];
    _zz_execute_FullBarrelShifterPlugin_reversed[2] = execute_SRC1[29];
    _zz_execute_FullBarrelShifterPlugin_reversed[3] = execute_SRC1[28];
    _zz_execute_FullBarrelShifterPlugin_reversed[4] = execute_SRC1[27];
    _zz_execute_FullBarrelShifterPlugin_reversed[5] = execute_SRC1[26];
    _zz_execute_FullBarrelShifterPlugin_reversed[6] = execute_SRC1[25];
    _zz_execute_FullBarrelShifterPlugin_reversed[7] = execute_SRC1[24];
    _zz_execute_FullBarrelShifterPlugin_reversed[8] = execute_SRC1[23];
    _zz_execute_FullBarrelShifterPlugin_reversed[9] = execute_SRC1[22];
    _zz_execute_FullBarrelShifterPlugin_reversed[10] = execute_SRC1[21];
    _zz_execute_FullBarrelShifterPlugin_reversed[11] = execute_SRC1[20];
    _zz_execute_FullBarrelShifterPlugin_reversed[12] = execute_SRC1[19];
    _zz_execute_FullBarrelShifterPlugin_reversed[13] = execute_SRC1[18];
    _zz_execute_FullBarrelShifterPlugin_reversed[14] = execute_SRC1[17];
    _zz_execute_FullBarrelShifterPlugin_reversed[15] = execute_SRC1[16];
    _zz_execute_FullBarrelShifterPlugin_reversed[16] = execute_SRC1[15];
    _zz_execute_FullBarrelShifterPlugin_reversed[17] = execute_SRC1[14];
    _zz_execute_FullBarrelShifterPlugin_reversed[18] = execute_SRC1[13];
    _zz_execute_FullBarrelShifterPlugin_reversed[19] = execute_SRC1[12];
    _zz_execute_FullBarrelShifterPlugin_reversed[20] = execute_SRC1[11];
    _zz_execute_FullBarrelShifterPlugin_reversed[21] = execute_SRC1[10];
    _zz_execute_FullBarrelShifterPlugin_reversed[22] = execute_SRC1[9];
    _zz_execute_FullBarrelShifterPlugin_reversed[23] = execute_SRC1[8];
    _zz_execute_FullBarrelShifterPlugin_reversed[24] = execute_SRC1[7];
    _zz_execute_FullBarrelShifterPlugin_reversed[25] = execute_SRC1[6];
    _zz_execute_FullBarrelShifterPlugin_reversed[26] = execute_SRC1[5];
    _zz_execute_FullBarrelShifterPlugin_reversed[27] = execute_SRC1[4];
    _zz_execute_FullBarrelShifterPlugin_reversed[28] = execute_SRC1[3];
    _zz_execute_FullBarrelShifterPlugin_reversed[29] = execute_SRC1[2];
    _zz_execute_FullBarrelShifterPlugin_reversed[30] = execute_SRC1[1];
    _zz_execute_FullBarrelShifterPlugin_reversed[31] = execute_SRC1[0];
  end

  assign execute_FullBarrelShifterPlugin_reversed = ((execute_SHIFT_CTRL == ShiftCtrlEnum_SLL_1) ? _zz_execute_FullBarrelShifterPlugin_reversed : execute_SRC1);
  always @(*) begin
    _zz_decode_RS2_3[0] = memory_SHIFT_RIGHT[31];
    _zz_decode_RS2_3[1] = memory_SHIFT_RIGHT[30];
    _zz_decode_RS2_3[2] = memory_SHIFT_RIGHT[29];
    _zz_decode_RS2_3[3] = memory_SHIFT_RIGHT[28];
    _zz_decode_RS2_3[4] = memory_SHIFT_RIGHT[27];
    _zz_decode_RS2_3[5] = memory_SHIFT_RIGHT[26];
    _zz_decode_RS2_3[6] = memory_SHIFT_RIGHT[25];
    _zz_decode_RS2_3[7] = memory_SHIFT_RIGHT[24];
    _zz_decode_RS2_3[8] = memory_SHIFT_RIGHT[23];
    _zz_decode_RS2_3[9] = memory_SHIFT_RIGHT[22];
    _zz_decode_RS2_3[10] = memory_SHIFT_RIGHT[21];
    _zz_decode_RS2_3[11] = memory_SHIFT_RIGHT[20];
    _zz_decode_RS2_3[12] = memory_SHIFT_RIGHT[19];
    _zz_decode_RS2_3[13] = memory_SHIFT_RIGHT[18];
    _zz_decode_RS2_3[14] = memory_SHIFT_RIGHT[17];
    _zz_decode_RS2_3[15] = memory_SHIFT_RIGHT[16];
    _zz_decode_RS2_3[16] = memory_SHIFT_RIGHT[15];
    _zz_decode_RS2_3[17] = memory_SHIFT_RIGHT[14];
    _zz_decode_RS2_3[18] = memory_SHIFT_RIGHT[13];
    _zz_decode_RS2_3[19] = memory_SHIFT_RIGHT[12];
    _zz_decode_RS2_3[20] = memory_SHIFT_RIGHT[11];
    _zz_decode_RS2_3[21] = memory_SHIFT_RIGHT[10];
    _zz_decode_RS2_3[22] = memory_SHIFT_RIGHT[9];
    _zz_decode_RS2_3[23] = memory_SHIFT_RIGHT[8];
    _zz_decode_RS2_3[24] = memory_SHIFT_RIGHT[7];
    _zz_decode_RS2_3[25] = memory_SHIFT_RIGHT[6];
    _zz_decode_RS2_3[26] = memory_SHIFT_RIGHT[5];
    _zz_decode_RS2_3[27] = memory_SHIFT_RIGHT[4];
    _zz_decode_RS2_3[28] = memory_SHIFT_RIGHT[3];
    _zz_decode_RS2_3[29] = memory_SHIFT_RIGHT[2];
    _zz_decode_RS2_3[30] = memory_SHIFT_RIGHT[1];
    _zz_decode_RS2_3[31] = memory_SHIFT_RIGHT[0];
  end

  assign execute_MulPlugin_a = execute_RS1;
  assign execute_MulPlugin_b = execute_RS2;
  assign switch_MulPlugin_l87 = execute_INSTRUCTION[13 : 12];
  always @(*) begin
    case(switch_MulPlugin_l87)
      2'b01 : begin
        execute_MulPlugin_aSigned = 1'b1;
      end
      2'b10 : begin
        execute_MulPlugin_aSigned = 1'b1;
      end
      default : begin
        execute_MulPlugin_aSigned = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(switch_MulPlugin_l87)
      2'b01 : begin
        execute_MulPlugin_bSigned = 1'b1;
      end
      2'b10 : begin
        execute_MulPlugin_bSigned = 1'b0;
      end
      default : begin
        execute_MulPlugin_bSigned = 1'b0;
      end
    endcase
  end

  assign execute_MulPlugin_aULow = execute_MulPlugin_a[15 : 0];
  assign execute_MulPlugin_bULow = execute_MulPlugin_b[15 : 0];
  assign execute_MulPlugin_aSLow = {1'b0,execute_MulPlugin_a[15 : 0]};
  assign execute_MulPlugin_bSLow = {1'b0,execute_MulPlugin_b[15 : 0]};
  assign execute_MulPlugin_aHigh = {(execute_MulPlugin_aSigned && execute_MulPlugin_a[31]),execute_MulPlugin_a[31 : 16]};
  assign execute_MulPlugin_bHigh = {(execute_MulPlugin_bSigned && execute_MulPlugin_b[31]),execute_MulPlugin_b[31 : 16]};
  assign writeBack_MulPlugin_result = ($signed(_zz_writeBack_MulPlugin_result) + $signed(_zz_writeBack_MulPlugin_result_1));
  assign when_MulPlugin_l147 = (writeBack_arbitration_isValid && writeBack_IS_MUL);
  assign switch_MulPlugin_l148 = writeBack_INSTRUCTION[13 : 12];
  assign memory_DivPlugin_frontendOk = 1'b1;
  always @(*) begin
    memory_DivPlugin_div_counter_willIncrement = 1'b0;
    if(when_MulDivIterativePlugin_l128) begin
      if(when_MulDivIterativePlugin_l132) begin
        memory_DivPlugin_div_counter_willIncrement = 1'b1;
      end
    end
  end

  always @(*) begin
    memory_DivPlugin_div_counter_willClear = 1'b0;
    if(when_MulDivIterativePlugin_l162) begin
      memory_DivPlugin_div_counter_willClear = 1'b1;
    end
  end

  assign memory_DivPlugin_div_counter_willOverflowIfInc = (memory_DivPlugin_div_counter_value == 6'h21);
  assign memory_DivPlugin_div_counter_willOverflow = (memory_DivPlugin_div_counter_willOverflowIfInc && memory_DivPlugin_div_counter_willIncrement);
  always @(*) begin
    if(memory_DivPlugin_div_counter_willOverflow) begin
      memory_DivPlugin_div_counter_valueNext = 6'h0;
    end else begin
      memory_DivPlugin_div_counter_valueNext = (memory_DivPlugin_div_counter_value + _zz_memory_DivPlugin_div_counter_valueNext);
    end
    if(memory_DivPlugin_div_counter_willClear) begin
      memory_DivPlugin_div_counter_valueNext = 6'h0;
    end
  end

  assign when_MulDivIterativePlugin_l126 = (memory_DivPlugin_div_counter_value == 6'h20);
  assign when_MulDivIterativePlugin_l126_1 = (! memory_arbitration_isStuck);
  assign when_MulDivIterativePlugin_l128 = (memory_arbitration_isValid && memory_IS_DIV);
  assign when_MulDivIterativePlugin_l129 = ((! memory_DivPlugin_frontendOk) || (! memory_DivPlugin_div_done));
  assign when_MulDivIterativePlugin_l132 = (memory_DivPlugin_frontendOk && (! memory_DivPlugin_div_done));
  assign _zz_memory_DivPlugin_div_stage_0_remainderShifted = memory_DivPlugin_rs1[31 : 0];
  assign memory_DivPlugin_div_stage_0_remainderShifted = {memory_DivPlugin_accumulator[31 : 0],_zz_memory_DivPlugin_div_stage_0_remainderShifted[31]};
  assign memory_DivPlugin_div_stage_0_remainderMinusDenominator = (memory_DivPlugin_div_stage_0_remainderShifted - _zz_memory_DivPlugin_div_stage_0_remainderMinusDenominator);
  assign memory_DivPlugin_div_stage_0_outRemainder = ((! memory_DivPlugin_div_stage_0_remainderMinusDenominator[32]) ? _zz_memory_DivPlugin_div_stage_0_outRemainder : _zz_memory_DivPlugin_div_stage_0_outRemainder_1);
  assign memory_DivPlugin_div_stage_0_outNumerator = _zz_memory_DivPlugin_div_stage_0_outNumerator[31:0];
  assign when_MulDivIterativePlugin_l151 = (memory_DivPlugin_div_counter_value == 6'h20);
  assign _zz_memory_DivPlugin_div_result = (memory_INSTRUCTION[13] ? memory_DivPlugin_accumulator[31 : 0] : memory_DivPlugin_rs1[31 : 0]);
  assign when_MulDivIterativePlugin_l162 = (! memory_arbitration_isStuck);
  assign _zz_memory_DivPlugin_rs2 = (execute_RS2[31] && execute_IS_RS2_SIGNED);
  assign _zz_memory_DivPlugin_rs1 = (1'b0 || ((execute_IS_DIV && execute_RS1[31]) && execute_IS_RS1_SIGNED));
  always @(*) begin
    _zz_memory_DivPlugin_rs1_1[32] = (execute_IS_RS1_SIGNED && execute_RS1[31]);
    _zz_memory_DivPlugin_rs1_1[31 : 0] = execute_RS1;
  end

  always @(*) begin
    HazardSimplePlugin_src0Hazard = 1'b0;
    if(when_HazardSimplePlugin_l57) begin
      if(when_HazardSimplePlugin_l58) begin
        if(when_HazardSimplePlugin_l48) begin
          HazardSimplePlugin_src0Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_1) begin
      if(when_HazardSimplePlugin_l58_1) begin
        if(when_HazardSimplePlugin_l48_1) begin
          HazardSimplePlugin_src0Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_2) begin
      if(when_HazardSimplePlugin_l58_2) begin
        if(when_HazardSimplePlugin_l48_2) begin
          HazardSimplePlugin_src0Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l105) begin
      HazardSimplePlugin_src0Hazard = 1'b0;
    end
  end

  always @(*) begin
    HazardSimplePlugin_src1Hazard = 1'b0;
    if(when_HazardSimplePlugin_l57) begin
      if(when_HazardSimplePlugin_l58) begin
        if(when_HazardSimplePlugin_l51) begin
          HazardSimplePlugin_src1Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_1) begin
      if(when_HazardSimplePlugin_l58_1) begin
        if(when_HazardSimplePlugin_l51_1) begin
          HazardSimplePlugin_src1Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_2) begin
      if(when_HazardSimplePlugin_l58_2) begin
        if(when_HazardSimplePlugin_l51_2) begin
          HazardSimplePlugin_src1Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l108) begin
      HazardSimplePlugin_src1Hazard = 1'b0;
    end
  end

  assign HazardSimplePlugin_writeBackWrites_valid = (_zz_lastStageRegFileWrite_valid && writeBack_arbitration_isFiring);
  assign HazardSimplePlugin_writeBackWrites_payload_address = _zz_lastStageRegFileWrite_payload_address[11 : 7];
  assign HazardSimplePlugin_writeBackWrites_payload_data = _zz_decode_RS2_2;
  assign HazardSimplePlugin_addr0Match = (HazardSimplePlugin_writeBackBuffer_payload_address == decode_INSTRUCTION[19 : 15]);
  assign HazardSimplePlugin_addr1Match = (HazardSimplePlugin_writeBackBuffer_payload_address == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l47 = 1'b1;
  assign when_HazardSimplePlugin_l48 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign when_HazardSimplePlugin_l51 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l45 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l57 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l58 = (1'b0 || (! when_HazardSimplePlugin_l47));
  assign when_HazardSimplePlugin_l48_1 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign when_HazardSimplePlugin_l51_1 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l45_1 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l57_1 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l58_1 = (1'b0 || (! memory_BYPASSABLE_MEMORY_STAGE));
  assign when_HazardSimplePlugin_l48_2 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign when_HazardSimplePlugin_l51_2 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l45_2 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l57_2 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l58_2 = (1'b0 || (! execute_BYPASSABLE_EXECUTE_STAGE));
  assign when_HazardSimplePlugin_l105 = (! decode_RS1_USE);
  assign when_HazardSimplePlugin_l108 = (! decode_RS2_USE);
  assign when_HazardSimplePlugin_l113 = (decode_arbitration_isValid && (HazardSimplePlugin_src0Hazard || HazardSimplePlugin_src1Hazard));
  assign execute_BranchPlugin_eq = (execute_SRC1 == execute_SRC2);
  assign switch_Misc_l202_3 = execute_INSTRUCTION[14 : 12];
  always @(*) begin
    casez(switch_Misc_l202_3)
      3'b000 : begin
        _zz_execute_BRANCH_COND_RESULT = execute_BranchPlugin_eq;
      end
      3'b001 : begin
        _zz_execute_BRANCH_COND_RESULT = (! execute_BranchPlugin_eq);
      end
      3'b1?1 : begin
        _zz_execute_BRANCH_COND_RESULT = (! execute_SRC_LESS);
      end
      default : begin
        _zz_execute_BRANCH_COND_RESULT = execute_SRC_LESS;
      end
    endcase
  end

  always @(*) begin
    case(execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : begin
        _zz_execute_BRANCH_COND_RESULT_1 = 1'b0;
      end
      BranchCtrlEnum_JAL : begin
        _zz_execute_BRANCH_COND_RESULT_1 = 1'b1;
      end
      BranchCtrlEnum_JALR : begin
        _zz_execute_BRANCH_COND_RESULT_1 = 1'b1;
      end
      default : begin
        _zz_execute_BRANCH_COND_RESULT_1 = _zz_execute_BRANCH_COND_RESULT;
      end
    endcase
  end

  assign execute_BranchPlugin_missAlignedTarget = 1'b0;
  always @(*) begin
    case(execute_BRANCH_CTRL)
      BranchCtrlEnum_JALR : begin
        execute_BranchPlugin_branch_src1 = execute_RS1;
      end
      default : begin
        execute_BranchPlugin_branch_src1 = execute_PC;
      end
    endcase
  end

  assign _zz_execute_BranchPlugin_branch_src2 = execute_INSTRUCTION[31];
  always @(*) begin
    _zz_execute_BranchPlugin_branch_src2_1[19] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[18] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[17] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[16] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[15] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[14] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[13] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[12] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[11] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[10] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[9] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[8] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[7] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[6] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[5] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[4] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[3] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[2] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[1] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[0] = _zz_execute_BranchPlugin_branch_src2;
  end

  always @(*) begin
    case(execute_BRANCH_CTRL)
      BranchCtrlEnum_JALR : begin
        execute_BranchPlugin_branch_src2 = {_zz_execute_BranchPlugin_branch_src2_1,execute_INSTRUCTION[31 : 20]};
      end
      default : begin
        execute_BranchPlugin_branch_src2 = ((execute_BRANCH_CTRL == BranchCtrlEnum_JAL) ? {{_zz_execute_BranchPlugin_branch_src2_3,{{{_zz_execute_BranchPlugin_branch_src2_6,execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0} : {{_zz_execute_BranchPlugin_branch_src2_5,{{{_zz_execute_BranchPlugin_branch_src2_7,_zz_execute_BranchPlugin_branch_src2_8},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0});
        if(execute_PREDICTION_HAD_BRANCHED2) begin
          execute_BranchPlugin_branch_src2 = {29'd0, _zz_execute_BranchPlugin_branch_src2_9};
        end
      end
    endcase
  end

  assign _zz_execute_BranchPlugin_branch_src2_2 = _zz__zz_execute_BranchPlugin_branch_src2_2[19];
  always @(*) begin
    _zz_execute_BranchPlugin_branch_src2_3[10] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[9] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[8] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[7] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[6] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[5] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[4] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[3] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[2] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[1] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[0] = _zz_execute_BranchPlugin_branch_src2_2;
  end

  assign _zz_execute_BranchPlugin_branch_src2_4 = _zz__zz_execute_BranchPlugin_branch_src2_4[11];
  always @(*) begin
    _zz_execute_BranchPlugin_branch_src2_5[18] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[17] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[16] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[15] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[14] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[13] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[12] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[11] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[10] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[9] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[8] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[7] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[6] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[5] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[4] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[3] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[2] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[1] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[0] = _zz_execute_BranchPlugin_branch_src2_4;
  end

  assign execute_BranchPlugin_branchAdder = (execute_BranchPlugin_branch_src1 + execute_BranchPlugin_branch_src2);
  assign BranchPlugin_jumpInterface_valid = ((memory_arbitration_isValid && memory_BRANCH_DO) && (! 1'b0));
  assign BranchPlugin_jumpInterface_payload = memory_BRANCH_CALC;
  assign IBusCachedPlugin_decodePrediction_rsp_wasWrong = BranchPlugin_jumpInterface_valid;
  always @(*) begin
    CsrPlugin_privilege = 2'b11;
    if(CsrPlugin_forceMachineWire) begin
      CsrPlugin_privilege = 2'b11;
    end
  end

  assign CsrPlugin_misa_base = 2'b01;
  assign CsrPlugin_misa_extensions = 26'h0000042;
  assign CsrPlugin_mtvec_mode = 2'b00;
  assign CsrPlugin_mtvec_base = 30'h20000008;
  assign _zz_when_CsrPlugin_l952 = (CsrPlugin_mip_MTIP && CsrPlugin_mie_MTIE);
  assign _zz_when_CsrPlugin_l952_1 = (CsrPlugin_mip_MSIP && CsrPlugin_mie_MSIE);
  assign _zz_when_CsrPlugin_l952_2 = (CsrPlugin_mip_MEIP && CsrPlugin_mie_MEIE);
  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b11;
  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege = ((CsrPlugin_privilege < CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped) ? CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped : CsrPlugin_privilege);
  assign _zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code = {decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid};
  assign _zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1 = _zz__zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1[0];
  always @(*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_decode = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
    if(_zz_when) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b1;
    end
    if(decode_arbitration_isFlushed) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_execute = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
    if(CsrPlugin_selfException_valid) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b1;
    end
    if(execute_arbitration_isFlushed) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_memory = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
    if(memory_arbitration_isFlushed) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
    if(DBusCachedPlugin_exceptionBus_valid) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b1;
    end
    if(writeBack_arbitration_isFlushed) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b0;
    end
  end

  assign when_CsrPlugin_l909 = (! decode_arbitration_isStuck);
  assign when_CsrPlugin_l909_1 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l909_2 = (! memory_arbitration_isStuck);
  assign when_CsrPlugin_l909_3 = (! writeBack_arbitration_isStuck);
  assign when_CsrPlugin_l922 = ({CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValids_memory,{CsrPlugin_exceptionPortCtrl_exceptionValids_execute,CsrPlugin_exceptionPortCtrl_exceptionValids_decode}}} != 4'b0000);
  assign CsrPlugin_exceptionPendings_0 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  assign CsrPlugin_exceptionPendings_1 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  assign CsrPlugin_exceptionPendings_2 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  assign CsrPlugin_exceptionPendings_3 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  assign when_CsrPlugin_l946 = (CsrPlugin_mstatus_MIE || (CsrPlugin_privilege < 2'b11));
  assign when_CsrPlugin_l952 = ((_zz_when_CsrPlugin_l952 && 1'b1) && (! 1'b0));
  assign when_CsrPlugin_l952_1 = ((_zz_when_CsrPlugin_l952_1 && 1'b1) && (! 1'b0));
  assign when_CsrPlugin_l952_2 = ((_zz_when_CsrPlugin_l952_2 && 1'b1) && (! 1'b0));
  assign CsrPlugin_exception = (CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack && CsrPlugin_allowException);
  assign CsrPlugin_lastStageWasWfi = 1'b0;
  assign CsrPlugin_pipelineLiberator_active = ((CsrPlugin_interrupt_valid && CsrPlugin_allowInterrupts) && decode_arbitration_isValid);
  assign when_CsrPlugin_l980 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l980_1 = (! memory_arbitration_isStuck);
  assign when_CsrPlugin_l980_2 = (! writeBack_arbitration_isStuck);
  assign when_CsrPlugin_l985 = ((! CsrPlugin_pipelineLiberator_active) || decode_arbitration_removeIt);
  always @(*) begin
    CsrPlugin_pipelineLiberator_done = CsrPlugin_pipelineLiberator_pcValids_2;
    if(when_CsrPlugin_l991) begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
    if(CsrPlugin_hadException) begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
  end

  assign when_CsrPlugin_l991 = ({CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory,CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute}} != 3'b000);
  assign CsrPlugin_interruptJump = ((CsrPlugin_interrupt_valid && CsrPlugin_pipelineLiberator_done) && CsrPlugin_allowInterrupts);
  always @(*) begin
    CsrPlugin_targetPrivilege = CsrPlugin_interrupt_targetPrivilege;
    if(CsrPlugin_hadException) begin
      CsrPlugin_targetPrivilege = CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
    end
  end

  always @(*) begin
    CsrPlugin_trapCause = CsrPlugin_interrupt_code;
    if(CsrPlugin_hadException) begin
      CsrPlugin_trapCause = CsrPlugin_exceptionPortCtrl_exceptionContext_code;
    end
  end

  always @(*) begin
    CsrPlugin_xtvec_mode = 2'bxx;
    case(CsrPlugin_targetPrivilege)
      2'b11 : begin
        CsrPlugin_xtvec_mode = CsrPlugin_mtvec_mode;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    CsrPlugin_xtvec_base = 30'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    case(CsrPlugin_targetPrivilege)
      2'b11 : begin
        CsrPlugin_xtvec_base = CsrPlugin_mtvec_base;
      end
      default : begin
      end
    endcase
  end

  assign when_CsrPlugin_l1019 = (CsrPlugin_hadException || CsrPlugin_interruptJump);
  assign when_CsrPlugin_l1064 = (writeBack_arbitration_isValid && (writeBack_ENV_CTRL == EnvCtrlEnum_XRET));
  assign switch_CsrPlugin_l1068 = writeBack_INSTRUCTION[29 : 28];
  assign contextSwitching = CsrPlugin_jumpInterface_valid;
  assign when_CsrPlugin_l1116 = (|{(writeBack_arbitration_isValid && (writeBack_ENV_CTRL == EnvCtrlEnum_XRET)),{(memory_arbitration_isValid && (memory_ENV_CTRL == EnvCtrlEnum_XRET)),(execute_arbitration_isValid && (execute_ENV_CTRL == EnvCtrlEnum_XRET))}});
  assign execute_CsrPlugin_blockedBySideEffects = ((|{writeBack_arbitration_isValid,memory_arbitration_isValid}) || 1'b0);
  always @(*) begin
    execute_CsrPlugin_illegalAccess = 1'b1;
    if(execute_CsrPlugin_csr_768) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_836) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_772) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_833) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_834) begin
      if(execute_CSR_READ_OPCODE) begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_835) begin
      if(execute_CSR_READ_OPCODE) begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(CsrPlugin_csrMapping_allowCsrSignal) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(when_CsrPlugin_l1297) begin
      execute_CsrPlugin_illegalAccess = 1'b1;
    end
    if(when_CsrPlugin_l1302) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
  end

  always @(*) begin
    execute_CsrPlugin_illegalInstruction = 1'b0;
    if(when_CsrPlugin_l1136) begin
      if(when_CsrPlugin_l1137) begin
        execute_CsrPlugin_illegalInstruction = 1'b1;
      end
    end
  end

  always @(*) begin
    CsrPlugin_selfException_valid = 1'b0;
    if(when_CsrPlugin_l1144) begin
      CsrPlugin_selfException_valid = 1'b1;
    end
  end

  always @(*) begin
    CsrPlugin_selfException_payload_code = 4'bxxxx;
    if(when_CsrPlugin_l1144) begin
      case(CsrPlugin_privilege)
        2'b00 : begin
          CsrPlugin_selfException_payload_code = 4'b1000;
        end
        default : begin
          CsrPlugin_selfException_payload_code = 4'b1011;
        end
      endcase
    end
  end

  assign CsrPlugin_selfException_payload_badAddr = execute_INSTRUCTION;
  assign when_CsrPlugin_l1136 = (execute_arbitration_isValid && (execute_ENV_CTRL == EnvCtrlEnum_XRET));
  assign when_CsrPlugin_l1137 = (CsrPlugin_privilege < execute_INSTRUCTION[29 : 28]);
  assign when_CsrPlugin_l1144 = (execute_arbitration_isValid && (execute_ENV_CTRL == EnvCtrlEnum_ECALL));
  always @(*) begin
    execute_CsrPlugin_writeInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_WRITE_OPCODE);
    if(when_CsrPlugin_l1297) begin
      execute_CsrPlugin_writeInstruction = 1'b0;
    end
  end

  always @(*) begin
    execute_CsrPlugin_readInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_READ_OPCODE);
    if(when_CsrPlugin_l1297) begin
      execute_CsrPlugin_readInstruction = 1'b0;
    end
  end

  assign execute_CsrPlugin_writeEnable = (execute_CsrPlugin_writeInstruction && (! execute_arbitration_isStuck));
  assign execute_CsrPlugin_readEnable = (execute_CsrPlugin_readInstruction && (! execute_arbitration_isStuck));
  assign CsrPlugin_csrMapping_hazardFree = (! execute_CsrPlugin_blockedBySideEffects);
  assign execute_CsrPlugin_readToWriteData = CsrPlugin_csrMapping_readDataSignal;
  assign switch_Misc_l202_4 = execute_INSTRUCTION[13];
  always @(*) begin
    case(switch_Misc_l202_4)
      1'b0 : begin
        _zz_CsrPlugin_csrMapping_writeDataSignal = execute_SRC1;
      end
      default : begin
        _zz_CsrPlugin_csrMapping_writeDataSignal = (execute_INSTRUCTION[12] ? (execute_CsrPlugin_readToWriteData & (~ execute_SRC1)) : (execute_CsrPlugin_readToWriteData | execute_SRC1));
      end
    endcase
  end

  assign CsrPlugin_csrMapping_writeDataSignal = _zz_CsrPlugin_csrMapping_writeDataSignal;
  assign when_CsrPlugin_l1176 = (execute_arbitration_isValid && execute_IS_CSR);
  assign when_CsrPlugin_l1180 = (execute_arbitration_isValid && (execute_IS_CSR || 1'b0));
  assign execute_CsrPlugin_csrAddress = execute_INSTRUCTION[31 : 20];
  assign when_DebugPlugin_l225 = (DebugPlugin_haltIt && (! DebugPlugin_isPipBusy));
  assign DebugPlugin_allowEBreak = (DebugPlugin_debugUsed && (! DebugPlugin_disableEbreak));
  always @(*) begin
    debug_bus_cmd_ready = 1'b1;
    if(debug_bus_cmd_valid) begin
      case(switch_DebugPlugin_l256)
        6'h01 : begin
          if(debug_bus_cmd_payload_wr) begin
            debug_bus_cmd_ready = IBusCachedPlugin_injectionPort_ready;
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(*) begin
    debug_bus_rsp_data = DebugPlugin_busReadDataReg;
    if(when_DebugPlugin_l244) begin
      debug_bus_rsp_data[0] = DebugPlugin_resetIt;
      debug_bus_rsp_data[1] = DebugPlugin_haltIt;
      debug_bus_rsp_data[2] = DebugPlugin_isPipBusy;
      debug_bus_rsp_data[3] = DebugPlugin_haltedByBreak;
      debug_bus_rsp_data[4] = DebugPlugin_stepIt;
    end
  end

  assign when_DebugPlugin_l244 = (! _zz_when_DebugPlugin_l244);
  always @(*) begin
    IBusCachedPlugin_injectionPort_valid = 1'b0;
    if(debug_bus_cmd_valid) begin
      case(switch_DebugPlugin_l256)
        6'h01 : begin
          if(debug_bus_cmd_payload_wr) begin
            IBusCachedPlugin_injectionPort_valid = 1'b1;
          end
        end
        default : begin
        end
      endcase
    end
  end

  assign IBusCachedPlugin_injectionPort_payload = debug_bus_cmd_payload_data;
  assign switch_DebugPlugin_l256 = debug_bus_cmd_payload_address[7 : 2];
  assign when_DebugPlugin_l260 = debug_bus_cmd_payload_data[16];
  assign when_DebugPlugin_l260_1 = debug_bus_cmd_payload_data[24];
  assign when_DebugPlugin_l261 = debug_bus_cmd_payload_data[17];
  assign when_DebugPlugin_l261_1 = debug_bus_cmd_payload_data[25];
  assign when_DebugPlugin_l262 = debug_bus_cmd_payload_data[25];
  assign when_DebugPlugin_l263 = debug_bus_cmd_payload_data[25];
  assign when_DebugPlugin_l264 = debug_bus_cmd_payload_data[18];
  assign when_DebugPlugin_l264_1 = debug_bus_cmd_payload_data[26];
  assign when_DebugPlugin_l284 = (execute_arbitration_isValid && execute_DO_EBREAK);
  assign when_DebugPlugin_l287 = (({writeBack_arbitration_isValid,memory_arbitration_isValid} != 2'b00) == 1'b0);
  assign when_DebugPlugin_l300 = (DebugPlugin_stepIt && IBusCachedPlugin_incomingInstruction);
  assign debug_resetOut = DebugPlugin_resetIt_regNext;
  assign when_DebugPlugin_l316 = (DebugPlugin_haltIt || DebugPlugin_stepIt);
  assign when_Pipeline_l124 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_1 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_2 = ((! writeBack_arbitration_isStuck) && (! CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack));
  assign when_Pipeline_l124_3 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_4 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_5 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_6 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_7 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_8 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_9 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_10 = (! execute_arbitration_isStuck);
  assign _zz_decode_to_execute_SRC1_CTRL_1 = decode_SRC1_CTRL;
  assign _zz_decode_SRC1_CTRL = _zz_decode_SRC1_CTRL_1;
  assign when_Pipeline_l124_11 = (! execute_arbitration_isStuck);
  assign _zz_execute_SRC1_CTRL = decode_to_execute_SRC1_CTRL;
  assign when_Pipeline_l124_12 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_13 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_14 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_15 = (! writeBack_arbitration_isStuck);
  assign _zz_decode_to_execute_ALU_CTRL_1 = decode_ALU_CTRL;
  assign _zz_decode_ALU_CTRL = _zz_decode_ALU_CTRL_1;
  assign when_Pipeline_l124_16 = (! execute_arbitration_isStuck);
  assign _zz_execute_ALU_CTRL = decode_to_execute_ALU_CTRL;
  assign _zz_decode_to_execute_SRC2_CTRL_1 = decode_SRC2_CTRL;
  assign _zz_decode_SRC2_CTRL = _zz_decode_SRC2_CTRL_1;
  assign when_Pipeline_l124_17 = (! execute_arbitration_isStuck);
  assign _zz_execute_SRC2_CTRL = decode_to_execute_SRC2_CTRL;
  assign when_Pipeline_l124_18 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_19 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_20 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_21 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_22 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_23 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_24 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_25 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_26 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_27 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_28 = (! execute_arbitration_isStuck);
  assign _zz_decode_to_execute_ALU_BITWISE_CTRL_1 = decode_ALU_BITWISE_CTRL;
  assign _zz_decode_ALU_BITWISE_CTRL = _zz_decode_ALU_BITWISE_CTRL_1;
  assign when_Pipeline_l124_29 = (! execute_arbitration_isStuck);
  assign _zz_execute_ALU_BITWISE_CTRL = decode_to_execute_ALU_BITWISE_CTRL;
  assign _zz_decode_to_execute_SHIFT_CTRL_1 = decode_SHIFT_CTRL;
  assign _zz_execute_to_memory_SHIFT_CTRL_1 = execute_SHIFT_CTRL;
  assign _zz_decode_SHIFT_CTRL = _zz_decode_SHIFT_CTRL_1;
  assign when_Pipeline_l124_30 = (! execute_arbitration_isStuck);
  assign _zz_execute_SHIFT_CTRL = decode_to_execute_SHIFT_CTRL;
  assign when_Pipeline_l124_31 = (! memory_arbitration_isStuck);
  assign _zz_memory_SHIFT_CTRL = execute_to_memory_SHIFT_CTRL;
  assign when_Pipeline_l124_32 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_33 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_34 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_35 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_36 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_37 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_38 = (! execute_arbitration_isStuck);
  assign _zz_decode_to_execute_BRANCH_CTRL_1 = decode_BRANCH_CTRL;
  assign _zz_decode_BRANCH_CTRL_1 = _zz_decode_BRANCH_CTRL;
  assign when_Pipeline_l124_39 = (! execute_arbitration_isStuck);
  assign _zz_execute_BRANCH_CTRL = decode_to_execute_BRANCH_CTRL;
  assign when_Pipeline_l124_40 = (! execute_arbitration_isStuck);
  assign _zz_decode_to_execute_ENV_CTRL_1 = decode_ENV_CTRL;
  assign _zz_execute_to_memory_ENV_CTRL_1 = execute_ENV_CTRL;
  assign _zz_memory_to_writeBack_ENV_CTRL_1 = memory_ENV_CTRL;
  assign _zz_decode_ENV_CTRL = _zz_decode_ENV_CTRL_1;
  assign when_Pipeline_l124_41 = (! execute_arbitration_isStuck);
  assign _zz_execute_ENV_CTRL = decode_to_execute_ENV_CTRL;
  assign when_Pipeline_l124_42 = (! memory_arbitration_isStuck);
  assign _zz_memory_ENV_CTRL = execute_to_memory_ENV_CTRL;
  assign when_Pipeline_l124_43 = (! writeBack_arbitration_isStuck);
  assign _zz_writeBack_ENV_CTRL = memory_to_writeBack_ENV_CTRL;
  assign when_Pipeline_l124_44 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_45 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_46 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_47 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_48 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_49 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_50 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_51 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_52 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_53 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_54 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_55 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_56 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_57 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_58 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_59 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_60 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_61 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_62 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_63 = (! writeBack_arbitration_isStuck);
  assign decode_arbitration_isFlushed = (({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,execute_arbitration_flushNext}} != 3'b000) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,{execute_arbitration_flushIt,decode_arbitration_flushIt}}} != 4'b0000));
  assign execute_arbitration_isFlushed = (({writeBack_arbitration_flushNext,memory_arbitration_flushNext} != 2'b00) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,execute_arbitration_flushIt}} != 3'b000));
  assign memory_arbitration_isFlushed = ((writeBack_arbitration_flushNext != 1'b0) || ({writeBack_arbitration_flushIt,memory_arbitration_flushIt} != 2'b00));
  assign writeBack_arbitration_isFlushed = (1'b0 || (writeBack_arbitration_flushIt != 1'b0));
  assign decode_arbitration_isStuckByOthers = (decode_arbitration_haltByOther || (((1'b0 || execute_arbitration_isStuck) || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign decode_arbitration_isStuck = (decode_arbitration_haltItself || decode_arbitration_isStuckByOthers);
  assign decode_arbitration_isMoving = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign decode_arbitration_isFiring = ((decode_arbitration_isValid && (! decode_arbitration_isStuck)) && (! decode_arbitration_removeIt));
  assign execute_arbitration_isStuckByOthers = (execute_arbitration_haltByOther || ((1'b0 || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign execute_arbitration_isStuck = (execute_arbitration_haltItself || execute_arbitration_isStuckByOthers);
  assign execute_arbitration_isMoving = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign execute_arbitration_isFiring = ((execute_arbitration_isValid && (! execute_arbitration_isStuck)) && (! execute_arbitration_removeIt));
  assign memory_arbitration_isStuckByOthers = (memory_arbitration_haltByOther || (1'b0 || writeBack_arbitration_isStuck));
  assign memory_arbitration_isStuck = (memory_arbitration_haltItself || memory_arbitration_isStuckByOthers);
  assign memory_arbitration_isMoving = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  assign memory_arbitration_isFiring = ((memory_arbitration_isValid && (! memory_arbitration_isStuck)) && (! memory_arbitration_removeIt));
  assign writeBack_arbitration_isStuckByOthers = (writeBack_arbitration_haltByOther || 1'b0);
  assign writeBack_arbitration_isStuck = (writeBack_arbitration_haltItself || writeBack_arbitration_isStuckByOthers);
  assign writeBack_arbitration_isMoving = ((! writeBack_arbitration_isStuck) && (! writeBack_arbitration_removeIt));
  assign writeBack_arbitration_isFiring = ((writeBack_arbitration_isValid && (! writeBack_arbitration_isStuck)) && (! writeBack_arbitration_removeIt));
  assign when_Pipeline_l151 = ((! execute_arbitration_isStuck) || execute_arbitration_removeIt);
  assign when_Pipeline_l154 = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign when_Pipeline_l151_1 = ((! memory_arbitration_isStuck) || memory_arbitration_removeIt);
  assign when_Pipeline_l154_1 = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign when_Pipeline_l151_2 = ((! writeBack_arbitration_isStuck) || writeBack_arbitration_removeIt);
  assign when_Pipeline_l154_2 = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  always @(*) begin
    IBusCachedPlugin_injectionPort_ready = 1'b0;
    case(switch_Fetcher_l362)
      3'b100 : begin
        IBusCachedPlugin_injectionPort_ready = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign when_Fetcher_l360 = (switch_Fetcher_l362 != 3'b000);
  assign when_Fetcher_l378 = (! decode_arbitration_isStuck);
  assign when_Fetcher_l398 = (switch_Fetcher_l362 != 3'b000);
  assign when_CsrPlugin_l1264 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1264_1 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1264_2 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1264_3 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1264_4 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1264_5 = (! execute_arbitration_isStuck);
  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit = 32'h0;
    if(execute_CsrPlugin_csr_768) begin
      _zz_CsrPlugin_csrMapping_readDataInit[12 : 11] = CsrPlugin_mstatus_MPP;
      _zz_CsrPlugin_csrMapping_readDataInit[7 : 7] = CsrPlugin_mstatus_MPIE;
      _zz_CsrPlugin_csrMapping_readDataInit[3 : 3] = CsrPlugin_mstatus_MIE;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_1 = 32'h0;
    if(execute_CsrPlugin_csr_836) begin
      _zz_CsrPlugin_csrMapping_readDataInit_1[11 : 11] = CsrPlugin_mip_MEIP;
      _zz_CsrPlugin_csrMapping_readDataInit_1[7 : 7] = CsrPlugin_mip_MTIP;
      _zz_CsrPlugin_csrMapping_readDataInit_1[3 : 3] = CsrPlugin_mip_MSIP;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_2 = 32'h0;
    if(execute_CsrPlugin_csr_772) begin
      _zz_CsrPlugin_csrMapping_readDataInit_2[11 : 11] = CsrPlugin_mie_MEIE;
      _zz_CsrPlugin_csrMapping_readDataInit_2[7 : 7] = CsrPlugin_mie_MTIE;
      _zz_CsrPlugin_csrMapping_readDataInit_2[3 : 3] = CsrPlugin_mie_MSIE;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_3 = 32'h0;
    if(execute_CsrPlugin_csr_833) begin
      _zz_CsrPlugin_csrMapping_readDataInit_3[31 : 0] = CsrPlugin_mepc;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_4 = 32'h0;
    if(execute_CsrPlugin_csr_834) begin
      _zz_CsrPlugin_csrMapping_readDataInit_4[31 : 31] = CsrPlugin_mcause_interrupt;
      _zz_CsrPlugin_csrMapping_readDataInit_4[3 : 0] = CsrPlugin_mcause_exceptionCode;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_5 = 32'h0;
    if(execute_CsrPlugin_csr_835) begin
      _zz_CsrPlugin_csrMapping_readDataInit_5[31 : 0] = CsrPlugin_mtval;
    end
  end

  assign CsrPlugin_csrMapping_readDataInit = (((_zz_CsrPlugin_csrMapping_readDataInit | _zz_CsrPlugin_csrMapping_readDataInit_1) | (_zz_CsrPlugin_csrMapping_readDataInit_2 | _zz_CsrPlugin_csrMapping_readDataInit_3)) | (_zz_CsrPlugin_csrMapping_readDataInit_4 | _zz_CsrPlugin_csrMapping_readDataInit_5));
  assign when_CsrPlugin_l1297 = (CsrPlugin_privilege < execute_CsrPlugin_csrAddress[9 : 8]);
  assign when_CsrPlugin_l1302 = ((! execute_arbitration_isValid) || (! execute_IS_CSR));
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      IBusCachedPlugin_fetchPc_pcReg <= 32'h80000000;
      IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      IBusCachedPlugin_fetchPc_booted <= 1'b0;
      IBusCachedPlugin_fetchPc_inc <= 1'b0;
      IBusCachedPlugin_decodePc_pcReg <= 32'h80000000;
      _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_2 <= 1'b0;
      IBusCachedPlugin_decompressor_bufferValid <= 1'b0;
      IBusCachedPlugin_decompressor_throw2BytesReg <= 1'b0;
      _zz_IBusCachedPlugin_injector_decodeInput_valid <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      IBusCachedPlugin_rspCounter <= _zz_IBusCachedPlugin_rspCounter;
      IBusCachedPlugin_rspCounter <= 32'h0;
      DBusCachedPlugin_rspCounter <= _zz_DBusCachedPlugin_rspCounter;
      DBusCachedPlugin_rspCounter <= 32'h0;
      _zz_2 <= 1'b1;
      memory_DivPlugin_div_counter_value <= 6'h0;
      HazardSimplePlugin_writeBackBuffer_valid <= 1'b0;
      CsrPlugin_mstatus_MIE <= 1'b0;
      CsrPlugin_mstatus_MPIE <= 1'b0;
      CsrPlugin_mstatus_MPP <= 2'b11;
      CsrPlugin_mie_MEIE <= 1'b0;
      CsrPlugin_mie_MTIE <= 1'b0;
      CsrPlugin_mie_MSIE <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      CsrPlugin_interrupt_valid <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      CsrPlugin_hadException <= 1'b0;
      execute_CsrPlugin_wfiWake <= 1'b0;
      execute_arbitration_isValid <= 1'b0;
      memory_arbitration_isValid <= 1'b0;
      writeBack_arbitration_isValid <= 1'b0;
      switch_Fetcher_l362 <= 3'b000;
    end else begin
      if(IBusCachedPlugin_fetchPc_correction) begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b1;
      end
      if(IBusCachedPlugin_fetchPc_output_fire) begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      end
      IBusCachedPlugin_fetchPc_booted <= 1'b1;
      if(when_Fetcher_l131) begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_output_fire_1) begin
        IBusCachedPlugin_fetchPc_inc <= 1'b1;
      end
      if(when_Fetcher_l131_1) begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if(when_Fetcher_l158) begin
        IBusCachedPlugin_fetchPc_pcReg <= IBusCachedPlugin_fetchPc_pc;
      end
      if(when_Fetcher_l180) begin
        IBusCachedPlugin_decodePc_pcReg <= IBusCachedPlugin_decodePc_pcPlus;
      end
      if(when_Fetcher_l192) begin
        IBusCachedPlugin_decodePc_pcReg <= IBusCachedPlugin_jump_pcLoad_payload;
      end
      if(IBusCachedPlugin_iBusRsp_flush) begin
        _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_2 <= 1'b0;
      end
      if(_zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready) begin
        _zz_IBusCachedPlugin_iBusRsp_stages_0_output_ready_2 <= (IBusCachedPlugin_iBusRsp_stages_0_output_valid && (! 1'b0));
      end
      if(IBusCachedPlugin_decompressor_output_fire) begin
        IBusCachedPlugin_decompressor_throw2BytesReg <= ((((! IBusCachedPlugin_decompressor_unaligned) && IBusCachedPlugin_decompressor_isInputLowRvc) && IBusCachedPlugin_decompressor_isInputHighRvc) || (IBusCachedPlugin_decompressor_bufferValid && IBusCachedPlugin_decompressor_isInputHighRvc));
      end
      if(when_Fetcher_l283) begin
        IBusCachedPlugin_decompressor_bufferValid <= 1'b0;
      end
      if(when_Fetcher_l286) begin
        if(IBusCachedPlugin_decompressor_bufferFill) begin
          IBusCachedPlugin_decompressor_bufferValid <= 1'b1;
        end
      end
      if(when_Fetcher_l291) begin
        IBusCachedPlugin_decompressor_throw2BytesReg <= 1'b0;
        IBusCachedPlugin_decompressor_bufferValid <= 1'b0;
      end
      if(decode_arbitration_removeIt) begin
        _zz_IBusCachedPlugin_injector_decodeInput_valid <= 1'b0;
      end
      if(IBusCachedPlugin_decompressor_output_ready) begin
        _zz_IBusCachedPlugin_injector_decodeInput_valid <= (IBusCachedPlugin_decompressor_output_valid && (! IBusCachedPlugin_externalFlush));
      end
      if(when_Fetcher_l329) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b1;
      end
      if(IBusCachedPlugin_decodePc_flushed) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      end
      if(when_Fetcher_l329_1) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= IBusCachedPlugin_injector_nextPcCalc_valids_0;
      end
      if(IBusCachedPlugin_decodePc_flushed) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if(when_Fetcher_l329_2) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= IBusCachedPlugin_injector_nextPcCalc_valids_1;
      end
      if(IBusCachedPlugin_decodePc_flushed) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if(when_Fetcher_l329_3) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= IBusCachedPlugin_injector_nextPcCalc_valids_2;
      end
      if(IBusCachedPlugin_decodePc_flushed) begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if(iBus_rsp_valid) begin
        IBusCachedPlugin_rspCounter <= (IBusCachedPlugin_rspCounter + 32'h00000001);
      end
      if(dBus_rsp_valid) begin
        DBusCachedPlugin_rspCounter <= (DBusCachedPlugin_rspCounter + 32'h00000001);
      end
      _zz_2 <= 1'b0;
      memory_DivPlugin_div_counter_value <= memory_DivPlugin_div_counter_valueNext;
      HazardSimplePlugin_writeBackBuffer_valid <= HazardSimplePlugin_writeBackWrites_valid;
      if(when_CsrPlugin_l909) begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
      end
      if(when_CsrPlugin_l909_1) begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= (CsrPlugin_exceptionPortCtrl_exceptionValids_decode && (! decode_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
      end
      if(when_CsrPlugin_l909_2) begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= (CsrPlugin_exceptionPortCtrl_exceptionValids_execute && (! execute_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
      end
      if(when_CsrPlugin_l909_3) begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= (CsrPlugin_exceptionPortCtrl_exceptionValids_memory && (! memory_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      end
      CsrPlugin_interrupt_valid <= 1'b0;
      if(when_CsrPlugin_l946) begin
        if(when_CsrPlugin_l952) begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(when_CsrPlugin_l952_1) begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(when_CsrPlugin_l952_2) begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
      end
      if(CsrPlugin_pipelineLiberator_active) begin
        if(when_CsrPlugin_l980) begin
          CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b1;
        end
        if(when_CsrPlugin_l980_1) begin
          CsrPlugin_pipelineLiberator_pcValids_1 <= CsrPlugin_pipelineLiberator_pcValids_0;
        end
        if(when_CsrPlugin_l980_2) begin
          CsrPlugin_pipelineLiberator_pcValids_2 <= CsrPlugin_pipelineLiberator_pcValids_1;
        end
      end
      if(when_CsrPlugin_l985) begin
        CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      end
      if(CsrPlugin_interruptJump) begin
        CsrPlugin_interrupt_valid <= 1'b0;
      end
      CsrPlugin_hadException <= CsrPlugin_exception;
      if(when_CsrPlugin_l1019) begin
        case(CsrPlugin_targetPrivilege)
          2'b11 : begin
            CsrPlugin_mstatus_MIE <= 1'b0;
            CsrPlugin_mstatus_MPIE <= CsrPlugin_mstatus_MIE;
            CsrPlugin_mstatus_MPP <= CsrPlugin_privilege;
          end
          default : begin
          end
        endcase
      end
      if(when_CsrPlugin_l1064) begin
        case(switch_CsrPlugin_l1068)
          2'b11 : begin
            CsrPlugin_mstatus_MPP <= 2'b00;
            CsrPlugin_mstatus_MIE <= CsrPlugin_mstatus_MPIE;
            CsrPlugin_mstatus_MPIE <= 1'b1;
          end
          default : begin
          end
        endcase
      end
      execute_CsrPlugin_wfiWake <= (({_zz_when_CsrPlugin_l952_2,{_zz_when_CsrPlugin_l952_1,_zz_when_CsrPlugin_l952}} != 3'b000) || CsrPlugin_thirdPartyWake);
      if(when_Pipeline_l151) begin
        execute_arbitration_isValid <= 1'b0;
      end
      if(when_Pipeline_l154) begin
        execute_arbitration_isValid <= decode_arbitration_isValid;
      end
      if(when_Pipeline_l151_1) begin
        memory_arbitration_isValid <= 1'b0;
      end
      if(when_Pipeline_l154_1) begin
        memory_arbitration_isValid <= execute_arbitration_isValid;
      end
      if(when_Pipeline_l151_2) begin
        writeBack_arbitration_isValid <= 1'b0;
      end
      if(when_Pipeline_l154_2) begin
        writeBack_arbitration_isValid <= memory_arbitration_isValid;
      end
      case(switch_Fetcher_l362)
        3'b000 : begin
          if(IBusCachedPlugin_injectionPort_valid) begin
            switch_Fetcher_l362 <= 3'b001;
          end
        end
        3'b001 : begin
          switch_Fetcher_l362 <= 3'b010;
        end
        3'b010 : begin
          switch_Fetcher_l362 <= 3'b011;
        end
        3'b011 : begin
          if(when_Fetcher_l378) begin
            switch_Fetcher_l362 <= 3'b100;
          end
        end
        3'b100 : begin
          switch_Fetcher_l362 <= 3'b000;
        end
        default : begin
        end
      endcase
      if(execute_CsrPlugin_csr_768) begin
        if(execute_CsrPlugin_writeEnable) begin
          CsrPlugin_mstatus_MPP <= CsrPlugin_csrMapping_writeDataSignal[12 : 11];
          CsrPlugin_mstatus_MPIE <= CsrPlugin_csrMapping_writeDataSignal[7];
          CsrPlugin_mstatus_MIE <= CsrPlugin_csrMapping_writeDataSignal[3];
        end
      end
      if(execute_CsrPlugin_csr_772) begin
        if(execute_CsrPlugin_writeEnable) begin
          CsrPlugin_mie_MEIE <= CsrPlugin_csrMapping_writeDataSignal[11];
          CsrPlugin_mie_MTIE <= CsrPlugin_csrMapping_writeDataSignal[7];
          CsrPlugin_mie_MSIE <= CsrPlugin_csrMapping_writeDataSignal[3];
        end
      end
    end
  end

  always @(posedge clkout_system) begin
    if(IBusCachedPlugin_decompressor_input_valid) begin
      IBusCachedPlugin_decompressor_bufferValidLatch <= IBusCachedPlugin_decompressor_bufferValid;
    end
    if(IBusCachedPlugin_decompressor_input_valid) begin
      IBusCachedPlugin_decompressor_throw2BytesLatch <= IBusCachedPlugin_decompressor_throw2Bytes;
    end
    if(when_Fetcher_l286) begin
      IBusCachedPlugin_decompressor_bufferData <= IBusCachedPlugin_decompressor_input_payload_rsp_inst[31 : 16];
    end
    if(IBusCachedPlugin_decompressor_output_ready) begin
      _zz_IBusCachedPlugin_injector_decodeInput_payload_pc <= IBusCachedPlugin_decompressor_output_payload_pc;
      _zz_IBusCachedPlugin_injector_decodeInput_payload_rsp_error <= IBusCachedPlugin_decompressor_output_payload_rsp_error;
      _zz_IBusCachedPlugin_injector_decodeInput_payload_rsp_inst <= IBusCachedPlugin_decompressor_output_payload_rsp_inst;
      _zz_IBusCachedPlugin_injector_decodeInput_payload_isRvc <= IBusCachedPlugin_decompressor_output_payload_isRvc;
    end
    if(IBusCachedPlugin_injector_decodeInput_ready) begin
      IBusCachedPlugin_injector_formal_rawInDecode <= IBusCachedPlugin_decompressor_raw;
    end
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready) begin
      IBusCachedPlugin_s1_tightlyCoupledHit <= IBusCachedPlugin_s0_tightlyCoupledHit;
    end
    if(when_MulDivIterativePlugin_l126) begin
      memory_DivPlugin_div_done <= 1'b1;
    end
    if(when_MulDivIterativePlugin_l126_1) begin
      memory_DivPlugin_div_done <= 1'b0;
    end
    if(when_MulDivIterativePlugin_l128) begin
      if(when_MulDivIterativePlugin_l132) begin
        memory_DivPlugin_rs1[31 : 0] <= memory_DivPlugin_div_stage_0_outNumerator;
        memory_DivPlugin_accumulator[31 : 0] <= memory_DivPlugin_div_stage_0_outRemainder;
        if(when_MulDivIterativePlugin_l151) begin
          memory_DivPlugin_div_result <= _zz_memory_DivPlugin_div_result_1[31:0];
        end
      end
    end
    if(when_MulDivIterativePlugin_l162) begin
      memory_DivPlugin_accumulator <= 65'h0;
      memory_DivPlugin_rs1 <= ((_zz_memory_DivPlugin_rs1 ? (~ _zz_memory_DivPlugin_rs1_1) : _zz_memory_DivPlugin_rs1_1) + _zz_memory_DivPlugin_rs1_2);
      memory_DivPlugin_rs2 <= ((_zz_memory_DivPlugin_rs2 ? (~ execute_RS2) : execute_RS2) + _zz_memory_DivPlugin_rs2_1);
      memory_DivPlugin_div_needRevert <= ((_zz_memory_DivPlugin_rs1 ^ (_zz_memory_DivPlugin_rs2 && (! execute_INSTRUCTION[13]))) && (! (((execute_RS2 == 32'h0) && execute_IS_RS2_SIGNED) && (! execute_INSTRUCTION[13]))));
    end
    HazardSimplePlugin_writeBackBuffer_payload_address <= HazardSimplePlugin_writeBackWrites_payload_address;
    HazardSimplePlugin_writeBackBuffer_payload_data <= HazardSimplePlugin_writeBackWrites_payload_data;
    CsrPlugin_mip_MEIP <= externalInterrupt;
    CsrPlugin_mip_MTIP <= timerInterrupt;
    CsrPlugin_mip_MSIP <= softwareInterrupt;
    CsrPlugin_mcycle <= (CsrPlugin_mcycle + 64'h0000000000000001);
    if(writeBack_arbitration_isFiring) begin
      CsrPlugin_minstret <= (CsrPlugin_minstret + 64'h0000000000000001);
    end
    if(_zz_when) begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1 ? IBusCachedPlugin_decodeExceptionPort_payload_code : decodeExceptionPort_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_CsrPlugin_exceptionPortCtrl_exceptionContext_code_1 ? IBusCachedPlugin_decodeExceptionPort_payload_badAddr : decodeExceptionPort_payload_badAddr);
    end
    if(CsrPlugin_selfException_valid) begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= CsrPlugin_selfException_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= CsrPlugin_selfException_payload_badAddr;
    end
    if(DBusCachedPlugin_exceptionBus_valid) begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= DBusCachedPlugin_exceptionBus_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= DBusCachedPlugin_exceptionBus_payload_badAddr;
    end
    if(when_CsrPlugin_l946) begin
      if(when_CsrPlugin_l952) begin
        CsrPlugin_interrupt_code <= 4'b0111;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(when_CsrPlugin_l952_1) begin
        CsrPlugin_interrupt_code <= 4'b0011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(when_CsrPlugin_l952_2) begin
        CsrPlugin_interrupt_code <= 4'b1011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
    end
    if(when_CsrPlugin_l1019) begin
      case(CsrPlugin_targetPrivilege)
        2'b11 : begin
          CsrPlugin_mcause_interrupt <= (! CsrPlugin_hadException);
          CsrPlugin_mcause_exceptionCode <= CsrPlugin_trapCause;
          CsrPlugin_mepc <= writeBack_PC;
          if(CsrPlugin_hadException) begin
            CsrPlugin_mtval <= CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
          end
        end
        default : begin
        end
      endcase
    end
    if(when_Pipeline_l124) begin
      decode_to_execute_PC <= decode_PC;
    end
    if(when_Pipeline_l124_1) begin
      execute_to_memory_PC <= _zz_execute_SRC2;
    end
    if(when_Pipeline_l124_2) begin
      memory_to_writeBack_PC <= memory_PC;
    end
    if(when_Pipeline_l124_3) begin
      decode_to_execute_INSTRUCTION <= decode_INSTRUCTION;
    end
    if(when_Pipeline_l124_4) begin
      execute_to_memory_INSTRUCTION <= execute_INSTRUCTION;
    end
    if(when_Pipeline_l124_5) begin
      memory_to_writeBack_INSTRUCTION <= memory_INSTRUCTION;
    end
    if(when_Pipeline_l124_6) begin
      decode_to_execute_IS_RVC <= decode_IS_RVC;
    end
    if(when_Pipeline_l124_7) begin
      decode_to_execute_FORMAL_PC_NEXT <= _zz_decode_to_execute_FORMAL_PC_NEXT;
    end
    if(when_Pipeline_l124_8) begin
      execute_to_memory_FORMAL_PC_NEXT <= execute_FORMAL_PC_NEXT;
    end
    if(when_Pipeline_l124_9) begin
      memory_to_writeBack_FORMAL_PC_NEXT <= _zz_memory_to_writeBack_FORMAL_PC_NEXT;
    end
    if(when_Pipeline_l124_10) begin
      decode_to_execute_MEMORY_FORCE_CONSTISTENCY <= decode_MEMORY_FORCE_CONSTISTENCY;
    end
    if(when_Pipeline_l124_11) begin
      decode_to_execute_SRC1_CTRL <= _zz_decode_to_execute_SRC1_CTRL;
    end
    if(when_Pipeline_l124_12) begin
      decode_to_execute_SRC_USE_SUB_LESS <= decode_SRC_USE_SUB_LESS;
    end
    if(when_Pipeline_l124_13) begin
      decode_to_execute_MEMORY_ENABLE <= decode_MEMORY_ENABLE;
    end
    if(when_Pipeline_l124_14) begin
      execute_to_memory_MEMORY_ENABLE <= execute_MEMORY_ENABLE;
    end
    if(when_Pipeline_l124_15) begin
      memory_to_writeBack_MEMORY_ENABLE <= memory_MEMORY_ENABLE;
    end
    if(when_Pipeline_l124_16) begin
      decode_to_execute_ALU_CTRL <= _zz_decode_to_execute_ALU_CTRL;
    end
    if(when_Pipeline_l124_17) begin
      decode_to_execute_SRC2_CTRL <= _zz_decode_to_execute_SRC2_CTRL;
    end
    if(when_Pipeline_l124_18) begin
      decode_to_execute_REGFILE_WRITE_VALID <= decode_REGFILE_WRITE_VALID;
    end
    if(when_Pipeline_l124_19) begin
      execute_to_memory_REGFILE_WRITE_VALID <= execute_REGFILE_WRITE_VALID;
    end
    if(when_Pipeline_l124_20) begin
      memory_to_writeBack_REGFILE_WRITE_VALID <= memory_REGFILE_WRITE_VALID;
    end
    if(when_Pipeline_l124_21) begin
      decode_to_execute_BYPASSABLE_EXECUTE_STAGE <= decode_BYPASSABLE_EXECUTE_STAGE;
    end
    if(when_Pipeline_l124_22) begin
      decode_to_execute_BYPASSABLE_MEMORY_STAGE <= decode_BYPASSABLE_MEMORY_STAGE;
    end
    if(when_Pipeline_l124_23) begin
      execute_to_memory_BYPASSABLE_MEMORY_STAGE <= execute_BYPASSABLE_MEMORY_STAGE;
    end
    if(when_Pipeline_l124_24) begin
      decode_to_execute_MEMORY_WR <= decode_MEMORY_WR;
    end
    if(when_Pipeline_l124_25) begin
      execute_to_memory_MEMORY_WR <= execute_MEMORY_WR;
    end
    if(when_Pipeline_l124_26) begin
      memory_to_writeBack_MEMORY_WR <= memory_MEMORY_WR;
    end
    if(when_Pipeline_l124_27) begin
      decode_to_execute_MEMORY_MANAGMENT <= decode_MEMORY_MANAGMENT;
    end
    if(when_Pipeline_l124_28) begin
      decode_to_execute_SRC_LESS_UNSIGNED <= decode_SRC_LESS_UNSIGNED;
    end
    if(when_Pipeline_l124_29) begin
      decode_to_execute_ALU_BITWISE_CTRL <= _zz_decode_to_execute_ALU_BITWISE_CTRL;
    end
    if(when_Pipeline_l124_30) begin
      decode_to_execute_SHIFT_CTRL <= _zz_decode_to_execute_SHIFT_CTRL;
    end
    if(when_Pipeline_l124_31) begin
      execute_to_memory_SHIFT_CTRL <= _zz_execute_to_memory_SHIFT_CTRL;
    end
    if(when_Pipeline_l124_32) begin
      decode_to_execute_IS_MUL <= decode_IS_MUL;
    end
    if(when_Pipeline_l124_33) begin
      execute_to_memory_IS_MUL <= execute_IS_MUL;
    end
    if(when_Pipeline_l124_34) begin
      memory_to_writeBack_IS_MUL <= memory_IS_MUL;
    end
    if(when_Pipeline_l124_35) begin
      decode_to_execute_IS_DIV <= decode_IS_DIV;
    end
    if(when_Pipeline_l124_36) begin
      execute_to_memory_IS_DIV <= execute_IS_DIV;
    end
    if(when_Pipeline_l124_37) begin
      decode_to_execute_IS_RS1_SIGNED <= decode_IS_RS1_SIGNED;
    end
    if(when_Pipeline_l124_38) begin
      decode_to_execute_IS_RS2_SIGNED <= decode_IS_RS2_SIGNED;
    end
    if(when_Pipeline_l124_39) begin
      decode_to_execute_BRANCH_CTRL <= _zz_decode_to_execute_BRANCH_CTRL;
    end
    if(when_Pipeline_l124_40) begin
      decode_to_execute_IS_CSR <= decode_IS_CSR;
    end
    if(when_Pipeline_l124_41) begin
      decode_to_execute_ENV_CTRL <= _zz_decode_to_execute_ENV_CTRL;
    end
    if(when_Pipeline_l124_42) begin
      execute_to_memory_ENV_CTRL <= _zz_execute_to_memory_ENV_CTRL;
    end
    if(when_Pipeline_l124_43) begin
      memory_to_writeBack_ENV_CTRL <= _zz_memory_to_writeBack_ENV_CTRL;
    end
    if(when_Pipeline_l124_44) begin
      decode_to_execute_RS1 <= decode_RS1;
    end
    if(when_Pipeline_l124_45) begin
      decode_to_execute_RS2 <= decode_RS2;
    end
    if(when_Pipeline_l124_46) begin
      decode_to_execute_SRC2_FORCE_ZERO <= decode_SRC2_FORCE_ZERO;
    end
    if(when_Pipeline_l124_47) begin
      decode_to_execute_PREDICTION_HAD_BRANCHED2 <= decode_PREDICTION_HAD_BRANCHED2;
    end
    if(when_Pipeline_l124_48) begin
      decode_to_execute_CSR_WRITE_OPCODE <= decode_CSR_WRITE_OPCODE;
    end
    if(when_Pipeline_l124_49) begin
      decode_to_execute_CSR_READ_OPCODE <= decode_CSR_READ_OPCODE;
    end
    if(when_Pipeline_l124_50) begin
      decode_to_execute_DO_EBREAK <= decode_DO_EBREAK;
    end
    if(when_Pipeline_l124_51) begin
      execute_to_memory_MEMORY_STORE_DATA_RF <= execute_MEMORY_STORE_DATA_RF;
    end
    if(when_Pipeline_l124_52) begin
      memory_to_writeBack_MEMORY_STORE_DATA_RF <= memory_MEMORY_STORE_DATA_RF;
    end
    if(when_Pipeline_l124_53) begin
      execute_to_memory_REGFILE_WRITE_DATA <= _zz_decode_RS2;
    end
    if(when_Pipeline_l124_54) begin
      memory_to_writeBack_REGFILE_WRITE_DATA <= _zz_decode_RS2_1;
    end
    if(when_Pipeline_l124_55) begin
      execute_to_memory_SHIFT_RIGHT <= execute_SHIFT_RIGHT;
    end
    if(when_Pipeline_l124_56) begin
      execute_to_memory_MUL_LL <= execute_MUL_LL;
    end
    if(when_Pipeline_l124_57) begin
      execute_to_memory_MUL_LH <= execute_MUL_LH;
    end
    if(when_Pipeline_l124_58) begin
      execute_to_memory_MUL_HL <= execute_MUL_HL;
    end
    if(when_Pipeline_l124_59) begin
      execute_to_memory_MUL_HH <= execute_MUL_HH;
    end
    if(when_Pipeline_l124_60) begin
      memory_to_writeBack_MUL_HH <= memory_MUL_HH;
    end
    if(when_Pipeline_l124_61) begin
      execute_to_memory_BRANCH_DO <= execute_BRANCH_DO;
    end
    if(when_Pipeline_l124_62) begin
      execute_to_memory_BRANCH_CALC <= execute_BRANCH_CALC;
    end
    if(when_Pipeline_l124_63) begin
      memory_to_writeBack_MUL_LOW <= memory_MUL_LOW;
    end
    if(when_Fetcher_l398) begin
      _zz_IBusCachedPlugin_injector_decodeInput_payload_rsp_inst <= IBusCachedPlugin_injectionPort_payload;
    end
    if(when_CsrPlugin_l1264) begin
      execute_CsrPlugin_csr_768 <= (decode_INSTRUCTION[31 : 20] == 12'h300);
    end
    if(when_CsrPlugin_l1264_1) begin
      execute_CsrPlugin_csr_836 <= (decode_INSTRUCTION[31 : 20] == 12'h344);
    end
    if(when_CsrPlugin_l1264_2) begin
      execute_CsrPlugin_csr_772 <= (decode_INSTRUCTION[31 : 20] == 12'h304);
    end
    if(when_CsrPlugin_l1264_3) begin
      execute_CsrPlugin_csr_833 <= (decode_INSTRUCTION[31 : 20] == 12'h341);
    end
    if(when_CsrPlugin_l1264_4) begin
      execute_CsrPlugin_csr_834 <= (decode_INSTRUCTION[31 : 20] == 12'h342);
    end
    if(when_CsrPlugin_l1264_5) begin
      execute_CsrPlugin_csr_835 <= (decode_INSTRUCTION[31 : 20] == 12'h343);
    end
    if(execute_CsrPlugin_csr_836) begin
      if(execute_CsrPlugin_writeEnable) begin
        CsrPlugin_mip_MSIP <= CsrPlugin_csrMapping_writeDataSignal[3];
      end
    end
    if(execute_CsrPlugin_csr_833) begin
      if(execute_CsrPlugin_writeEnable) begin
        CsrPlugin_mepc <= CsrPlugin_csrMapping_writeDataSignal[31 : 0];
      end
    end
  end

  always @(posedge clkout_system) begin
    DebugPlugin_firstCycle <= 1'b0;
    if(debug_bus_cmd_ready) begin
      DebugPlugin_firstCycle <= 1'b1;
    end
    DebugPlugin_secondCycle <= DebugPlugin_firstCycle;
    DebugPlugin_isPipBusy <= (({writeBack_arbitration_isValid,{memory_arbitration_isValid,{execute_arbitration_isValid,decode_arbitration_isValid}}} != 4'b0000) || IBusCachedPlugin_incomingInstruction);
    if(writeBack_arbitration_isValid) begin
      DebugPlugin_busReadDataReg <= _zz_decode_RS2_2;
    end
    _zz_when_DebugPlugin_l244 <= debug_bus_cmd_payload_address[2];
    if(when_DebugPlugin_l284) begin
      DebugPlugin_busReadDataReg <= execute_PC;
    end
    DebugPlugin_resetIt_regNext <= DebugPlugin_resetIt;
  end

  always @(posedge clkout_system) begin
    if(debugCdCtrl_logic_outputReset) begin
      DebugPlugin_resetIt <= 1'b0;
      DebugPlugin_haltIt <= 1'b0;
      DebugPlugin_stepIt <= 1'b0;
      DebugPlugin_godmode <= 1'b0;
      DebugPlugin_haltedByBreak <= 1'b0;
      DebugPlugin_debugUsed <= 1'b0;
      DebugPlugin_disableEbreak <= 1'b0;
      _zz_3 <= 1'b0;
    end else begin
      if(when_DebugPlugin_l225) begin
        DebugPlugin_godmode <= 1'b1;
      end
      if(debug_bus_cmd_valid) begin
        DebugPlugin_debugUsed <= 1'b1;
      end
      if(debug_bus_cmd_valid) begin
        case(switch_DebugPlugin_l256)
          6'h0 : begin
            if(debug_bus_cmd_payload_wr) begin
              DebugPlugin_stepIt <= debug_bus_cmd_payload_data[4];
              if(when_DebugPlugin_l260) begin
                DebugPlugin_resetIt <= 1'b1;
              end
              if(when_DebugPlugin_l260_1) begin
                DebugPlugin_resetIt <= 1'b0;
              end
              if(when_DebugPlugin_l261) begin
                DebugPlugin_haltIt <= 1'b1;
              end
              if(when_DebugPlugin_l261_1) begin
                DebugPlugin_haltIt <= 1'b0;
              end
              if(when_DebugPlugin_l262) begin
                DebugPlugin_haltedByBreak <= 1'b0;
              end
              if(when_DebugPlugin_l263) begin
                DebugPlugin_godmode <= 1'b0;
              end
              if(when_DebugPlugin_l264) begin
                DebugPlugin_disableEbreak <= 1'b1;
              end
              if(when_DebugPlugin_l264_1) begin
                DebugPlugin_disableEbreak <= 1'b0;
              end
            end
          end
          default : begin
          end
        endcase
      end
      if(when_DebugPlugin_l284) begin
        if(when_DebugPlugin_l287) begin
          DebugPlugin_haltIt <= 1'b1;
          DebugPlugin_haltedByBreak <= 1'b1;
        end
      end
      if(when_DebugPlugin_l300) begin
        if(decode_arbitration_isValid) begin
          DebugPlugin_haltIt <= 1'b1;
        end
      end
      _zz_3 <= (DebugPlugin_stepIt && decode_arbitration_isFiring);
    end
  end


endmodule

module BufferCC_3 (
  input               io_dataIn,
  output              io_dataOut,
  input               clkout_system,
  input               debugCdCtrl_logic_outputReset
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clkout_system or posedge debugCdCtrl_logic_outputReset) begin
    if(debugCdCtrl_logic_outputReset) begin
      buffers_0 <= 1'b1;
      buffers_1 <= 1'b1;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_2 (
  input               io_dataIn,
  output              io_dataOut,
  input               clkout_system,
  input               clocking_resetn
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clkout_system or negedge clocking_resetn) begin
    if(!clocking_resetn) begin
      buffers_0 <= 1'b1;
      buffers_1 <= 1'b1;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module Ecp5Sdrx2Phy (
  input               io_ctrl_phases_0_CASn,
  input               io_ctrl_phases_0_CKE,
  input               io_ctrl_phases_0_CSn,
  input               io_ctrl_phases_0_RASn,
  input               io_ctrl_phases_0_WEn,
  input      [1:0]    io_ctrl_phases_0_DM_0,
  input      [15:0]   io_ctrl_phases_0_DQw_0,
  output     [15:0]   io_ctrl_phases_0_DQr_0,
  input               io_ctrl_phases_1_CASn,
  input               io_ctrl_phases_1_CKE,
  input               io_ctrl_phases_1_CSn,
  input               io_ctrl_phases_1_RASn,
  input               io_ctrl_phases_1_WEn,
  input      [1:0]    io_ctrl_phases_1_DM_0,
  input      [15:0]   io_ctrl_phases_1_DQw_0,
  output     [15:0]   io_ctrl_phases_1_DQr_0,
  input      [12:0]   io_ctrl_ADDR,
  input      [1:0]    io_ctrl_BA,
  input               io_ctrl_writeEnable,
  input               io_ctrl_readEnable,
  output              io_ctrl_readValid,
  output     [12:0]   io_sdram_ADDR,
  output     [1:0]    io_sdram_BA,
  input      [15:0]   io_sdram_DQ_read,
  output     [15:0]   io_sdram_DQ_write,
  output     [15:0]   io_sdram_DQ_writeEnable,
  output     [1:0]    io_sdram_DQM,
  output              io_sdram_CASn,
  output              io_sdram_CKE,
  output              io_sdram_CSn,
  output              io_sdram_RASn,
  output              io_sdram_WEn,
  input               systemCdCtrl_logic_outputReset,
  input               clkout_system
);

  wire                ADDR_gears_0_D0;
  wire                ADDR_gears_0_D1;
  wire                ADDR_gears_1_D0;
  wire                ADDR_gears_1_D1;
  wire                ADDR_gears_2_D0;
  wire                ADDR_gears_2_D1;
  wire                ADDR_gears_3_D0;
  wire                ADDR_gears_3_D1;
  wire                ADDR_gears_4_D0;
  wire                ADDR_gears_4_D1;
  wire                ADDR_gears_5_D0;
  wire                ADDR_gears_5_D1;
  wire                ADDR_gears_6_D0;
  wire                ADDR_gears_6_D1;
  wire                ADDR_gears_7_D0;
  wire                ADDR_gears_7_D1;
  wire                ADDR_gears_8_D0;
  wire                ADDR_gears_8_D1;
  wire                ADDR_gears_9_D0;
  wire                ADDR_gears_9_D1;
  wire                ADDR_gears_10_D0;
  wire                ADDR_gears_10_D1;
  wire                ADDR_gears_11_D0;
  wire                ADDR_gears_11_D1;
  wire                ADDR_gears_12_D0;
  wire                ADDR_gears_12_D1;
  wire                BA_gears_0_D0;
  wire                BA_gears_0_D1;
  wire                BA_gears_1_D0;
  wire                BA_gears_1_D1;
  wire                CASn_gears_0_D0;
  wire                CASn_gears_0_D1;
  wire                CKE_gears_0_D0;
  wire                CKE_gears_0_D1;
  wire                CSn_gears_0_D0;
  wire                CSn_gears_0_D1;
  wire                RASn_gears_0_D0;
  wire                RASn_gears_0_D1;
  wire                WEn_gears_0_D0;
  wire                WEn_gears_0_D1;
  wire                DM_gears_0_D0;
  wire                DM_gears_0_D1;
  wire                DM_gears_1_D0;
  wire                DM_gears_1_D1;
  wire                DQw_gears_0_D0;
  wire                DQw_gears_0_D1;
  wire                DQw_gears_1_D0;
  wire                DQw_gears_1_D1;
  wire                DQw_gears_2_D0;
  wire                DQw_gears_2_D1;
  wire                DQw_gears_3_D0;
  wire                DQw_gears_3_D1;
  wire                DQw_gears_4_D0;
  wire                DQw_gears_4_D1;
  wire                DQw_gears_5_D0;
  wire                DQw_gears_5_D1;
  wire                DQw_gears_6_D0;
  wire                DQw_gears_6_D1;
  wire                DQw_gears_7_D0;
  wire                DQw_gears_7_D1;
  wire                DQw_gears_8_D0;
  wire                DQw_gears_8_D1;
  wire                DQw_gears_9_D0;
  wire                DQw_gears_9_D1;
  wire                DQw_gears_10_D0;
  wire                DQw_gears_10_D1;
  wire                DQw_gears_11_D0;
  wire                DQw_gears_11_D1;
  wire                DQw_gears_12_D0;
  wire                DQw_gears_12_D1;
  wire                DQw_gears_13_D0;
  wire                DQw_gears_13_D1;
  wire                DQw_gears_14_D0;
  wire                DQw_gears_14_D1;
  wire                DQw_gears_15_D0;
  wire                DQw_gears_15_D1;
  wire                DQr_gears_0_D;
  wire                DQr_gears_1_D;
  wire                DQr_gears_2_D;
  wire                DQr_gears_3_D;
  wire                DQr_gears_4_D;
  wire                DQr_gears_5_D;
  wire                DQr_gears_6_D;
  wire                DQr_gears_7_D;
  wire                DQr_gears_8_D;
  wire                DQr_gears_9_D;
  wire                DQr_gears_10_D;
  wire                DQr_gears_11_D;
  wire                DQr_gears_12_D;
  wire                DQr_gears_13_D;
  wire                DQr_gears_14_D;
  wire                DQr_gears_15_D;
  wire                ADDR_gears_0_Q;
  wire                ADDR_gears_1_Q;
  wire                ADDR_gears_2_Q;
  wire                ADDR_gears_3_Q;
  wire                ADDR_gears_4_Q;
  wire                ADDR_gears_5_Q;
  wire                ADDR_gears_6_Q;
  wire                ADDR_gears_7_Q;
  wire                ADDR_gears_8_Q;
  wire                ADDR_gears_9_Q;
  wire                ADDR_gears_10_Q;
  wire                ADDR_gears_11_Q;
  wire                ADDR_gears_12_Q;
  wire                BA_gears_0_Q;
  wire                BA_gears_1_Q;
  wire                CASn_gears_0_Q;
  wire                CKE_gears_0_Q;
  wire                CSn_gears_0_Q;
  wire                RASn_gears_0_Q;
  wire                WEn_gears_0_Q;
  wire                DM_gears_0_Q;
  wire                DM_gears_1_Q;
  wire                DQw_gears_0_Q;
  wire                DQw_gears_1_Q;
  wire                DQw_gears_2_Q;
  wire                DQw_gears_3_Q;
  wire                DQw_gears_4_Q;
  wire                DQw_gears_5_Q;
  wire                DQw_gears_6_Q;
  wire                DQw_gears_7_Q;
  wire                DQw_gears_8_Q;
  wire                DQw_gears_9_Q;
  wire                DQw_gears_10_Q;
  wire                DQw_gears_11_Q;
  wire                DQw_gears_12_Q;
  wire                DQw_gears_13_Q;
  wire                DQw_gears_14_Q;
  wire                DQw_gears_15_Q;
  wire                DQr_gears_0_Q0;
  wire                DQr_gears_0_Q1;
  wire                DQr_gears_1_Q0;
  wire                DQr_gears_1_Q1;
  wire                DQr_gears_2_Q0;
  wire                DQr_gears_2_Q1;
  wire                DQr_gears_3_Q0;
  wire                DQr_gears_3_Q1;
  wire                DQr_gears_4_Q0;
  wire                DQr_gears_4_Q1;
  wire                DQr_gears_5_Q0;
  wire                DQr_gears_5_Q1;
  wire                DQr_gears_6_Q0;
  wire                DQr_gears_6_Q1;
  wire                DQr_gears_7_Q0;
  wire                DQr_gears_7_Q1;
  wire                DQr_gears_8_Q0;
  wire                DQr_gears_8_Q1;
  wire                DQr_gears_9_Q0;
  wire                DQr_gears_9_Q1;
  wire                DQr_gears_10_Q0;
  wire                DQr_gears_10_Q1;
  wire                DQr_gears_11_Q0;
  wire                DQr_gears_11_Q1;
  wire                DQr_gears_12_Q0;
  wire                DQr_gears_12_Q1;
  wire                DQr_gears_13_Q0;
  wire                DQr_gears_13_Q1;
  wire                DQr_gears_14_Q0;
  wire                DQr_gears_14_Q1;
  wire                DQr_gears_15_Q0;
  wire                DQr_gears_15_Q1;
  wire       [0:0]    _zz_dqWriteEnable;
  wire       [4:0]    _zz_dqWriteEnable_1;
  wire       [12:0]   ADDR_iBits;
  reg        [12:0]   ADDR_oBits;
  wire       [1:0]    BA_iBits;
  reg        [1:0]    BA_oBits;
  wire       [0:0]    CASn_iBits_0;
  wire       [0:0]    CASn_iBits_1;
  wire       [0:0]    CASn_oBits;
  wire       [0:0]    CKE_iBits_0;
  wire       [0:0]    CKE_iBits_1;
  wire       [0:0]    CKE_oBits;
  wire       [0:0]    CSn_iBits_0;
  wire       [0:0]    CSn_iBits_1;
  wire       [0:0]    CSn_oBits;
  wire       [0:0]    RASn_iBits_0;
  wire       [0:0]    RASn_iBits_1;
  wire       [0:0]    RASn_oBits;
  wire       [0:0]    WEn_iBits_0;
  wire       [0:0]    WEn_iBits_1;
  wire       [0:0]    WEn_oBits;
  wire       [1:0]    DM_iBits_0;
  wire       [1:0]    DM_iBits_1;
  reg        [1:0]    DM_oBits;
  wire       [15:0]   DQw_iBits_0;
  wire       [15:0]   DQw_iBits_1;
  reg        [15:0]   DQw_oBits;
  wire       [15:0]   DQrValue_0;
  wire       [15:0]   DQrValue_1;
  wire       [15:0]   DQr_iBits;
  reg        [15:0]   DQr_oBits_0;
  reg        [15:0]   DQr_oBits_1;
  reg        [15:0]   DQrBuffer;
  reg                 io_ctrl_writeEnable_delay_1;
  wire                delayedWriteEnable;
  (* keep , syn_keep *) reg        [15:0]   dqWriteEnable /* synthesis syn_keep = 1 */ ;
  reg        [15:0]   dqWriteEnableReg;

  assign _zz_dqWriteEnable = delayedWriteEnable;
  assign _zz_dqWriteEnable_1 = {delayedWriteEnable,{delayedWriteEnable,{delayedWriteEnable,{delayedWriteEnable,delayedWriteEnable}}}};
  ODDRX1F ADDR_gears_0 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (ADDR_gears_0_D0                 ), //i
    .D1      (ADDR_gears_0_D1                 ), //i
    .Q       (ADDR_gears_0_Q                  )  //o
  );
  ODDRX1F ADDR_gears_1 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (ADDR_gears_1_D0                 ), //i
    .D1      (ADDR_gears_1_D1                 ), //i
    .Q       (ADDR_gears_1_Q                  )  //o
  );
  ODDRX1F ADDR_gears_2 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (ADDR_gears_2_D0                 ), //i
    .D1      (ADDR_gears_2_D1                 ), //i
    .Q       (ADDR_gears_2_Q                  )  //o
  );
  ODDRX1F ADDR_gears_3 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (ADDR_gears_3_D0                 ), //i
    .D1      (ADDR_gears_3_D1                 ), //i
    .Q       (ADDR_gears_3_Q                  )  //o
  );
  ODDRX1F ADDR_gears_4 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (ADDR_gears_4_D0                 ), //i
    .D1      (ADDR_gears_4_D1                 ), //i
    .Q       (ADDR_gears_4_Q                  )  //o
  );
  ODDRX1F ADDR_gears_5 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (ADDR_gears_5_D0                 ), //i
    .D1      (ADDR_gears_5_D1                 ), //i
    .Q       (ADDR_gears_5_Q                  )  //o
  );
  ODDRX1F ADDR_gears_6 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (ADDR_gears_6_D0                 ), //i
    .D1      (ADDR_gears_6_D1                 ), //i
    .Q       (ADDR_gears_6_Q                  )  //o
  );
  ODDRX1F ADDR_gears_7 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (ADDR_gears_7_D0                 ), //i
    .D1      (ADDR_gears_7_D1                 ), //i
    .Q       (ADDR_gears_7_Q                  )  //o
  );
  ODDRX1F ADDR_gears_8 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (ADDR_gears_8_D0                 ), //i
    .D1      (ADDR_gears_8_D1                 ), //i
    .Q       (ADDR_gears_8_Q                  )  //o
  );
  ODDRX1F ADDR_gears_9 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (ADDR_gears_9_D0                 ), //i
    .D1      (ADDR_gears_9_D1                 ), //i
    .Q       (ADDR_gears_9_Q                  )  //o
  );
  ODDRX1F ADDR_gears_10 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (ADDR_gears_10_D0                ), //i
    .D1      (ADDR_gears_10_D1                ), //i
    .Q       (ADDR_gears_10_Q                 )  //o
  );
  ODDRX1F ADDR_gears_11 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (ADDR_gears_11_D0                ), //i
    .D1      (ADDR_gears_11_D1                ), //i
    .Q       (ADDR_gears_11_Q                 )  //o
  );
  ODDRX1F ADDR_gears_12 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (ADDR_gears_12_D0                ), //i
    .D1      (ADDR_gears_12_D1                ), //i
    .Q       (ADDR_gears_12_Q                 )  //o
  );
  ODDRX1F BA_gears_0 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (BA_gears_0_D0                   ), //i
    .D1      (BA_gears_0_D1                   ), //i
    .Q       (BA_gears_0_Q                    )  //o
  );
  ODDRX1F BA_gears_1 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (BA_gears_1_D0                   ), //i
    .D1      (BA_gears_1_D1                   ), //i
    .Q       (BA_gears_1_Q                    )  //o
  );
  ODDRX1F CASn_gears_0 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (CASn_gears_0_D0                 ), //i
    .D1      (CASn_gears_0_D1                 ), //i
    .Q       (CASn_gears_0_Q                  )  //o
  );
  ODDRX1F CKE_gears_0 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (CKE_gears_0_D0                  ), //i
    .D1      (CKE_gears_0_D1                  ), //i
    .Q       (CKE_gears_0_Q                   )  //o
  );
  ODDRX1F CSn_gears_0 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (CSn_gears_0_D0                  ), //i
    .D1      (CSn_gears_0_D1                  ), //i
    .Q       (CSn_gears_0_Q                   )  //o
  );
  ODDRX1F RASn_gears_0 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (RASn_gears_0_D0                 ), //i
    .D1      (RASn_gears_0_D1                 ), //i
    .Q       (RASn_gears_0_Q                  )  //o
  );
  ODDRX1F WEn_gears_0 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (WEn_gears_0_D0                  ), //i
    .D1      (WEn_gears_0_D1                  ), //i
    .Q       (WEn_gears_0_Q                   )  //o
  );
  ODDRX1F DM_gears_0 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DM_gears_0_D0                   ), //i
    .D1      (DM_gears_0_D1                   ), //i
    .Q       (DM_gears_0_Q                    )  //o
  );
  ODDRX1F DM_gears_1 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DM_gears_1_D0                   ), //i
    .D1      (DM_gears_1_D1                   ), //i
    .Q       (DM_gears_1_Q                    )  //o
  );
  ODDRX1F DQw_gears_0 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_0_D0                  ), //i
    .D1      (DQw_gears_0_D1                  ), //i
    .Q       (DQw_gears_0_Q                   )  //o
  );
  ODDRX1F DQw_gears_1 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_1_D0                  ), //i
    .D1      (DQw_gears_1_D1                  ), //i
    .Q       (DQw_gears_1_Q                   )  //o
  );
  ODDRX1F DQw_gears_2 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_2_D0                  ), //i
    .D1      (DQw_gears_2_D1                  ), //i
    .Q       (DQw_gears_2_Q                   )  //o
  );
  ODDRX1F DQw_gears_3 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_3_D0                  ), //i
    .D1      (DQw_gears_3_D1                  ), //i
    .Q       (DQw_gears_3_Q                   )  //o
  );
  ODDRX1F DQw_gears_4 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_4_D0                  ), //i
    .D1      (DQw_gears_4_D1                  ), //i
    .Q       (DQw_gears_4_Q                   )  //o
  );
  ODDRX1F DQw_gears_5 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_5_D0                  ), //i
    .D1      (DQw_gears_5_D1                  ), //i
    .Q       (DQw_gears_5_Q                   )  //o
  );
  ODDRX1F DQw_gears_6 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_6_D0                  ), //i
    .D1      (DQw_gears_6_D1                  ), //i
    .Q       (DQw_gears_6_Q                   )  //o
  );
  ODDRX1F DQw_gears_7 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_7_D0                  ), //i
    .D1      (DQw_gears_7_D1                  ), //i
    .Q       (DQw_gears_7_Q                   )  //o
  );
  ODDRX1F DQw_gears_8 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_8_D0                  ), //i
    .D1      (DQw_gears_8_D1                  ), //i
    .Q       (DQw_gears_8_Q                   )  //o
  );
  ODDRX1F DQw_gears_9 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_9_D0                  ), //i
    .D1      (DQw_gears_9_D1                  ), //i
    .Q       (DQw_gears_9_Q                   )  //o
  );
  ODDRX1F DQw_gears_10 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_10_D0                 ), //i
    .D1      (DQw_gears_10_D1                 ), //i
    .Q       (DQw_gears_10_Q                  )  //o
  );
  ODDRX1F DQw_gears_11 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_11_D0                 ), //i
    .D1      (DQw_gears_11_D1                 ), //i
    .Q       (DQw_gears_11_Q                  )  //o
  );
  ODDRX1F DQw_gears_12 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_12_D0                 ), //i
    .D1      (DQw_gears_12_D1                 ), //i
    .Q       (DQw_gears_12_Q                  )  //o
  );
  ODDRX1F DQw_gears_13 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_13_D0                 ), //i
    .D1      (DQw_gears_13_D1                 ), //i
    .Q       (DQw_gears_13_Q                  )  //o
  );
  ODDRX1F DQw_gears_14 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_14_D0                 ), //i
    .D1      (DQw_gears_14_D1                 ), //i
    .Q       (DQw_gears_14_Q                  )  //o
  );
  ODDRX1F DQw_gears_15 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D0      (DQw_gears_15_D0                 ), //i
    .D1      (DQw_gears_15_D1                 ), //i
    .Q       (DQw_gears_15_Q                  )  //o
  );
  IDDRX1F DQr_gears_0 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_0_D                   ), //i
    .Q0      (DQr_gears_0_Q0                  ), //o
    .Q1      (DQr_gears_0_Q1                  )  //o
  );
  IDDRX1F DQr_gears_1 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_1_D                   ), //i
    .Q0      (DQr_gears_1_Q0                  ), //o
    .Q1      (DQr_gears_1_Q1                  )  //o
  );
  IDDRX1F DQr_gears_2 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_2_D                   ), //i
    .Q0      (DQr_gears_2_Q0                  ), //o
    .Q1      (DQr_gears_2_Q1                  )  //o
  );
  IDDRX1F DQr_gears_3 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_3_D                   ), //i
    .Q0      (DQr_gears_3_Q0                  ), //o
    .Q1      (DQr_gears_3_Q1                  )  //o
  );
  IDDRX1F DQr_gears_4 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_4_D                   ), //i
    .Q0      (DQr_gears_4_Q0                  ), //o
    .Q1      (DQr_gears_4_Q1                  )  //o
  );
  IDDRX1F DQr_gears_5 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_5_D                   ), //i
    .Q0      (DQr_gears_5_Q0                  ), //o
    .Q1      (DQr_gears_5_Q1                  )  //o
  );
  IDDRX1F DQr_gears_6 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_6_D                   ), //i
    .Q0      (DQr_gears_6_Q0                  ), //o
    .Q1      (DQr_gears_6_Q1                  )  //o
  );
  IDDRX1F DQr_gears_7 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_7_D                   ), //i
    .Q0      (DQr_gears_7_Q0                  ), //o
    .Q1      (DQr_gears_7_Q1                  )  //o
  );
  IDDRX1F DQr_gears_8 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_8_D                   ), //i
    .Q0      (DQr_gears_8_Q0                  ), //o
    .Q1      (DQr_gears_8_Q1                  )  //o
  );
  IDDRX1F DQr_gears_9 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_9_D                   ), //i
    .Q0      (DQr_gears_9_Q0                  ), //o
    .Q1      (DQr_gears_9_Q1                  )  //o
  );
  IDDRX1F DQr_gears_10 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_10_D                  ), //i
    .Q0      (DQr_gears_10_Q0                 ), //o
    .Q1      (DQr_gears_10_Q1                 )  //o
  );
  IDDRX1F DQr_gears_11 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_11_D                  ), //i
    .Q0      (DQr_gears_11_Q0                 ), //o
    .Q1      (DQr_gears_11_Q1                 )  //o
  );
  IDDRX1F DQr_gears_12 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_12_D                  ), //i
    .Q0      (DQr_gears_12_Q0                 ), //o
    .Q1      (DQr_gears_12_Q1                 )  //o
  );
  IDDRX1F DQr_gears_13 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_13_D                  ), //i
    .Q0      (DQr_gears_13_Q0                 ), //o
    .Q1      (DQr_gears_13_Q1                 )  //o
  );
  IDDRX1F DQr_gears_14 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_14_D                  ), //i
    .Q0      (DQr_gears_14_Q0                 ), //o
    .Q1      (DQr_gears_14_Q1                 )  //o
  );
  IDDRX1F DQr_gears_15 (
    .SCLK    (clkout_system                   ), //i
    .RST     (systemCdCtrl_logic_outputReset  ), //i
    .D       (DQr_gears_15_D                  ), //i
    .Q0      (DQr_gears_15_Q0                 ), //o
    .Q1      (DQr_gears_15_Q1                 )  //o
  );
  assign ADDR_iBits = io_ctrl_ADDR;
  assign ADDR_gears_0_D0 = ADDR_iBits[0];
  assign ADDR_gears_0_D1 = ADDR_iBits[0];
  always @(*) begin
    ADDR_oBits[0] = ADDR_gears_0_Q;
    ADDR_oBits[1] = ADDR_gears_1_Q;
    ADDR_oBits[2] = ADDR_gears_2_Q;
    ADDR_oBits[3] = ADDR_gears_3_Q;
    ADDR_oBits[4] = ADDR_gears_4_Q;
    ADDR_oBits[5] = ADDR_gears_5_Q;
    ADDR_oBits[6] = ADDR_gears_6_Q;
    ADDR_oBits[7] = ADDR_gears_7_Q;
    ADDR_oBits[8] = ADDR_gears_8_Q;
    ADDR_oBits[9] = ADDR_gears_9_Q;
    ADDR_oBits[10] = ADDR_gears_10_Q;
    ADDR_oBits[11] = ADDR_gears_11_Q;
    ADDR_oBits[12] = ADDR_gears_12_Q;
  end

  assign ADDR_gears_1_D0 = ADDR_iBits[1];
  assign ADDR_gears_1_D1 = ADDR_iBits[1];
  assign ADDR_gears_2_D0 = ADDR_iBits[2];
  assign ADDR_gears_2_D1 = ADDR_iBits[2];
  assign ADDR_gears_3_D0 = ADDR_iBits[3];
  assign ADDR_gears_3_D1 = ADDR_iBits[3];
  assign ADDR_gears_4_D0 = ADDR_iBits[4];
  assign ADDR_gears_4_D1 = ADDR_iBits[4];
  assign ADDR_gears_5_D0 = ADDR_iBits[5];
  assign ADDR_gears_5_D1 = ADDR_iBits[5];
  assign ADDR_gears_6_D0 = ADDR_iBits[6];
  assign ADDR_gears_6_D1 = ADDR_iBits[6];
  assign ADDR_gears_7_D0 = ADDR_iBits[7];
  assign ADDR_gears_7_D1 = ADDR_iBits[7];
  assign ADDR_gears_8_D0 = ADDR_iBits[8];
  assign ADDR_gears_8_D1 = ADDR_iBits[8];
  assign ADDR_gears_9_D0 = ADDR_iBits[9];
  assign ADDR_gears_9_D1 = ADDR_iBits[9];
  assign ADDR_gears_10_D0 = ADDR_iBits[10];
  assign ADDR_gears_10_D1 = ADDR_iBits[10];
  assign ADDR_gears_11_D0 = ADDR_iBits[11];
  assign ADDR_gears_11_D1 = ADDR_iBits[11];
  assign ADDR_gears_12_D0 = ADDR_iBits[12];
  assign ADDR_gears_12_D1 = ADDR_iBits[12];
  assign io_sdram_ADDR = ADDR_oBits;
  assign BA_iBits = io_ctrl_BA;
  assign BA_gears_0_D0 = BA_iBits[0];
  assign BA_gears_0_D1 = BA_iBits[0];
  always @(*) begin
    BA_oBits[0] = BA_gears_0_Q;
    BA_oBits[1] = BA_gears_1_Q;
  end

  assign BA_gears_1_D0 = BA_iBits[1];
  assign BA_gears_1_D1 = BA_iBits[1];
  assign io_sdram_BA = BA_oBits;
  assign CASn_iBits_0 = io_ctrl_phases_0_CASn;
  assign CASn_iBits_1 = io_ctrl_phases_1_CASn;
  assign CASn_gears_0_D0 = CASn_iBits_0[0];
  assign CASn_gears_0_D1 = CASn_iBits_1[0];
  assign CASn_oBits[0] = CASn_gears_0_Q;
  assign io_sdram_CASn = CASn_oBits[0];
  assign CKE_iBits_0 = io_ctrl_phases_0_CKE;
  assign CKE_iBits_1 = io_ctrl_phases_1_CKE;
  assign CKE_gears_0_D0 = CKE_iBits_0[0];
  assign CKE_gears_0_D1 = CKE_iBits_1[0];
  assign CKE_oBits[0] = CKE_gears_0_Q;
  assign io_sdram_CKE = CKE_oBits[0];
  assign CSn_iBits_0 = io_ctrl_phases_0_CSn;
  assign CSn_iBits_1 = io_ctrl_phases_1_CSn;
  assign CSn_gears_0_D0 = CSn_iBits_0[0];
  assign CSn_gears_0_D1 = CSn_iBits_1[0];
  assign CSn_oBits[0] = CSn_gears_0_Q;
  assign io_sdram_CSn = CSn_oBits[0];
  assign RASn_iBits_0 = io_ctrl_phases_0_RASn;
  assign RASn_iBits_1 = io_ctrl_phases_1_RASn;
  assign RASn_gears_0_D0 = RASn_iBits_0[0];
  assign RASn_gears_0_D1 = RASn_iBits_1[0];
  assign RASn_oBits[0] = RASn_gears_0_Q;
  assign io_sdram_RASn = RASn_oBits[0];
  assign WEn_iBits_0 = io_ctrl_phases_0_WEn;
  assign WEn_iBits_1 = io_ctrl_phases_1_WEn;
  assign WEn_gears_0_D0 = WEn_iBits_0[0];
  assign WEn_gears_0_D1 = WEn_iBits_1[0];
  assign WEn_oBits[0] = WEn_gears_0_Q;
  assign io_sdram_WEn = WEn_oBits[0];
  assign DM_iBits_0 = io_ctrl_phases_0_DM_0;
  assign DM_iBits_1 = io_ctrl_phases_1_DM_0;
  assign DM_gears_0_D0 = DM_iBits_0[0];
  assign DM_gears_0_D1 = DM_iBits_1[0];
  always @(*) begin
    DM_oBits[0] = DM_gears_0_Q;
    DM_oBits[1] = DM_gears_1_Q;
  end

  assign DM_gears_1_D0 = DM_iBits_0[1];
  assign DM_gears_1_D1 = DM_iBits_1[1];
  assign io_sdram_DQM = DM_oBits;
  assign DQw_iBits_0 = io_ctrl_phases_0_DQw_0;
  assign DQw_iBits_1 = io_ctrl_phases_1_DQw_0;
  assign DQw_gears_0_D0 = DQw_iBits_0[0];
  assign DQw_gears_0_D1 = DQw_iBits_1[0];
  always @(*) begin
    DQw_oBits[0] = DQw_gears_0_Q;
    DQw_oBits[1] = DQw_gears_1_Q;
    DQw_oBits[2] = DQw_gears_2_Q;
    DQw_oBits[3] = DQw_gears_3_Q;
    DQw_oBits[4] = DQw_gears_4_Q;
    DQw_oBits[5] = DQw_gears_5_Q;
    DQw_oBits[6] = DQw_gears_6_Q;
    DQw_oBits[7] = DQw_gears_7_Q;
    DQw_oBits[8] = DQw_gears_8_Q;
    DQw_oBits[9] = DQw_gears_9_Q;
    DQw_oBits[10] = DQw_gears_10_Q;
    DQw_oBits[11] = DQw_gears_11_Q;
    DQw_oBits[12] = DQw_gears_12_Q;
    DQw_oBits[13] = DQw_gears_13_Q;
    DQw_oBits[14] = DQw_gears_14_Q;
    DQw_oBits[15] = DQw_gears_15_Q;
  end

  assign DQw_gears_1_D0 = DQw_iBits_0[1];
  assign DQw_gears_1_D1 = DQw_iBits_1[1];
  assign DQw_gears_2_D0 = DQw_iBits_0[2];
  assign DQw_gears_2_D1 = DQw_iBits_1[2];
  assign DQw_gears_3_D0 = DQw_iBits_0[3];
  assign DQw_gears_3_D1 = DQw_iBits_1[3];
  assign DQw_gears_4_D0 = DQw_iBits_0[4];
  assign DQw_gears_4_D1 = DQw_iBits_1[4];
  assign DQw_gears_5_D0 = DQw_iBits_0[5];
  assign DQw_gears_5_D1 = DQw_iBits_1[5];
  assign DQw_gears_6_D0 = DQw_iBits_0[6];
  assign DQw_gears_6_D1 = DQw_iBits_1[6];
  assign DQw_gears_7_D0 = DQw_iBits_0[7];
  assign DQw_gears_7_D1 = DQw_iBits_1[7];
  assign DQw_gears_8_D0 = DQw_iBits_0[8];
  assign DQw_gears_8_D1 = DQw_iBits_1[8];
  assign DQw_gears_9_D0 = DQw_iBits_0[9];
  assign DQw_gears_9_D1 = DQw_iBits_1[9];
  assign DQw_gears_10_D0 = DQw_iBits_0[10];
  assign DQw_gears_10_D1 = DQw_iBits_1[10];
  assign DQw_gears_11_D0 = DQw_iBits_0[11];
  assign DQw_gears_11_D1 = DQw_iBits_1[11];
  assign DQw_gears_12_D0 = DQw_iBits_0[12];
  assign DQw_gears_12_D1 = DQw_iBits_1[12];
  assign DQw_gears_13_D0 = DQw_iBits_0[13];
  assign DQw_gears_13_D1 = DQw_iBits_1[13];
  assign DQw_gears_14_D0 = DQw_iBits_0[14];
  assign DQw_gears_14_D1 = DQw_iBits_1[14];
  assign DQw_gears_15_D0 = DQw_iBits_0[15];
  assign DQw_gears_15_D1 = DQw_iBits_1[15];
  assign io_sdram_DQ_write = DQw_oBits;
  assign DQr_iBits = io_sdram_DQ_read;
  assign DQr_gears_0_D = DQr_iBits[0];
  always @(*) begin
    DQr_oBits_0[0] = DQr_gears_0_Q0;
    DQr_oBits_0[1] = DQr_gears_1_Q0;
    DQr_oBits_0[2] = DQr_gears_2_Q0;
    DQr_oBits_0[3] = DQr_gears_3_Q0;
    DQr_oBits_0[4] = DQr_gears_4_Q0;
    DQr_oBits_0[5] = DQr_gears_5_Q0;
    DQr_oBits_0[6] = DQr_gears_6_Q0;
    DQr_oBits_0[7] = DQr_gears_7_Q0;
    DQr_oBits_0[8] = DQr_gears_8_Q0;
    DQr_oBits_0[9] = DQr_gears_9_Q0;
    DQr_oBits_0[10] = DQr_gears_10_Q0;
    DQr_oBits_0[11] = DQr_gears_11_Q0;
    DQr_oBits_0[12] = DQr_gears_12_Q0;
    DQr_oBits_0[13] = DQr_gears_13_Q0;
    DQr_oBits_0[14] = DQr_gears_14_Q0;
    DQr_oBits_0[15] = DQr_gears_15_Q0;
  end

  always @(*) begin
    DQr_oBits_1[0] = DQr_gears_0_Q1;
    DQr_oBits_1[1] = DQr_gears_1_Q1;
    DQr_oBits_1[2] = DQr_gears_2_Q1;
    DQr_oBits_1[3] = DQr_gears_3_Q1;
    DQr_oBits_1[4] = DQr_gears_4_Q1;
    DQr_oBits_1[5] = DQr_gears_5_Q1;
    DQr_oBits_1[6] = DQr_gears_6_Q1;
    DQr_oBits_1[7] = DQr_gears_7_Q1;
    DQr_oBits_1[8] = DQr_gears_8_Q1;
    DQr_oBits_1[9] = DQr_gears_9_Q1;
    DQr_oBits_1[10] = DQr_gears_10_Q1;
    DQr_oBits_1[11] = DQr_gears_11_Q1;
    DQr_oBits_1[12] = DQr_gears_12_Q1;
    DQr_oBits_1[13] = DQr_gears_13_Q1;
    DQr_oBits_1[14] = DQr_gears_14_Q1;
    DQr_oBits_1[15] = DQr_gears_15_Q1;
  end

  assign DQr_gears_1_D = DQr_iBits[1];
  assign DQr_gears_2_D = DQr_iBits[2];
  assign DQr_gears_3_D = DQr_iBits[3];
  assign DQr_gears_4_D = DQr_iBits[4];
  assign DQr_gears_5_D = DQr_iBits[5];
  assign DQr_gears_6_D = DQr_iBits[6];
  assign DQr_gears_7_D = DQr_iBits[7];
  assign DQr_gears_8_D = DQr_iBits[8];
  assign DQr_gears_9_D = DQr_iBits[9];
  assign DQr_gears_10_D = DQr_iBits[10];
  assign DQr_gears_11_D = DQr_iBits[11];
  assign DQr_gears_12_D = DQr_iBits[12];
  assign DQr_gears_13_D = DQr_iBits[13];
  assign DQr_gears_14_D = DQr_iBits[14];
  assign DQr_gears_15_D = DQr_iBits[15];
  assign DQrValue_0 = DQr_oBits_0;
  assign DQrValue_1 = DQr_oBits_1;
  assign io_ctrl_phases_0_DQr_0 = DQrBuffer;
  assign io_ctrl_phases_1_DQr_0 = DQrValue_0;
  assign delayedWriteEnable = (io_ctrl_writeEnable_delay_1 || io_ctrl_writeEnable);
  assign io_sdram_DQ_writeEnable = dqWriteEnableReg;
  assign io_ctrl_readValid = io_ctrl_readEnable;
  always @(posedge clkout_system) begin
    DQrBuffer <= DQrValue_1;
    dqWriteEnable <= {delayedWriteEnable,{delayedWriteEnable,{delayedWriteEnable,{delayedWriteEnable,{delayedWriteEnable,{delayedWriteEnable,{delayedWriteEnable,{delayedWriteEnable,{delayedWriteEnable,{delayedWriteEnable,{_zz_dqWriteEnable,_zz_dqWriteEnable_1}}}}}}}}}}};
    dqWriteEnableReg <= dqWriteEnable;
  end

  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      io_ctrl_writeEnable_delay_1 <= 1'b0;
    end else begin
      io_ctrl_writeEnable_delay_1 <= io_ctrl_writeEnable;
    end
  end


endmodule

module StreamArbiter_1 (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input               io_inputs_0_payload_last,
  input      [0:0]    io_inputs_0_payload_fragment_source,
  input      [0:0]    io_inputs_0_payload_fragment_opcode,
  input      [24:0]   io_inputs_0_payload_fragment_address,
  input      [4:0]    io_inputs_0_payload_fragment_length,
  input      [31:0]   io_inputs_0_payload_fragment_data,
  input      [3:0]    io_inputs_0_payload_fragment_mask,
  input      [0:0]    io_inputs_0_payload_fragment_context,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input               io_inputs_1_payload_last,
  input      [0:0]    io_inputs_1_payload_fragment_source,
  input      [0:0]    io_inputs_1_payload_fragment_opcode,
  input      [24:0]   io_inputs_1_payload_fragment_address,
  input      [4:0]    io_inputs_1_payload_fragment_length,
  input      [31:0]   io_inputs_1_payload_fragment_data,
  input      [3:0]    io_inputs_1_payload_fragment_mask,
  input      [0:0]    io_inputs_1_payload_fragment_context,
  output              io_output_valid,
  input               io_output_ready,
  output              io_output_payload_last,
  output     [0:0]    io_output_payload_fragment_source,
  output     [0:0]    io_output_payload_fragment_opcode,
  output     [24:0]   io_output_payload_fragment_address,
  output     [4:0]    io_output_payload_fragment_length,
  output     [31:0]   io_output_payload_fragment_data,
  output     [3:0]    io_output_payload_fragment_mask,
  output     [0:0]    io_output_payload_fragment_context,
  output     [0:0]    io_chosen,
  output     [1:0]    io_chosenOH,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [1:0]    _zz_maskProposal_1_1;
  wire       [1:0]    _zz_maskProposal_1_2;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire       [1:0]    _zz_maskProposal_1;
  wire                io_output_fire;
  wire                when_Stream_l523;
  wire                _zz_io_chosen;

  assign _zz_maskProposal_1_1 = (_zz_maskProposal_1 & (~ _zz_maskProposal_1_2));
  assign _zz_maskProposal_1_2 = (_zz_maskProposal_1 - 2'b01);
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign _zz_maskProposal_1 = {io_inputs_1_valid,io_inputs_0_valid};
  assign maskProposal_0 = io_inputs_0_valid;
  assign maskProposal_1 = _zz_maskProposal_1_1[1];
  assign io_output_fire = (io_output_valid && io_output_ready);
  assign when_Stream_l523 = (io_output_fire && io_output_payload_last);
  assign io_output_valid = ((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1));
  assign io_output_payload_last = (maskRouted_0 ? io_inputs_0_payload_last : io_inputs_1_payload_last);
  assign io_output_payload_fragment_source = (maskRouted_0 ? io_inputs_0_payload_fragment_source : io_inputs_1_payload_fragment_source);
  assign io_output_payload_fragment_opcode = (maskRouted_0 ? io_inputs_0_payload_fragment_opcode : io_inputs_1_payload_fragment_opcode);
  assign io_output_payload_fragment_address = (maskRouted_0 ? io_inputs_0_payload_fragment_address : io_inputs_1_payload_fragment_address);
  assign io_output_payload_fragment_length = (maskRouted_0 ? io_inputs_0_payload_fragment_length : io_inputs_1_payload_fragment_length);
  assign io_output_payload_fragment_data = (maskRouted_0 ? io_inputs_0_payload_fragment_data : io_inputs_1_payload_fragment_data);
  assign io_output_payload_fragment_mask = (maskRouted_0 ? io_inputs_0_payload_fragment_mask : io_inputs_1_payload_fragment_mask);
  assign io_output_payload_fragment_context = (maskRouted_0 ? io_inputs_0_payload_fragment_context : io_inputs_1_payload_fragment_context);
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_chosenOH = {maskRouted_1,maskRouted_0};
  assign _zz_io_chosen = io_chosenOH[1];
  assign io_chosen = _zz_io_chosen;
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      locked <= 1'b0;
    end else begin
      if(io_output_valid) begin
        locked <= 1'b1;
      end
      if(when_Stream_l523) begin
        locked <= 1'b0;
      end
    end
  end

  always @(posedge clkout_system) begin
    if(io_output_valid) begin
      maskLocked_0 <= maskRouted_0;
      maskLocked_1 <= maskRouted_1;
    end
  end


endmodule

//StreamFifo replaced by StreamFifo

module StreamFifo (
  input               io_push_valid,
  output              io_push_ready,
  input      [7:0]    io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [7:0]    io_pop_payload,
  input               io_flush,
  output     [4:0]    io_occupancy,
  output     [4:0]    io_availability,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  reg        [7:0]    _zz_logic_ram_port0;
  wire       [3:0]    _zz_logic_pushPtr_valueNext;
  wire       [0:0]    _zz_logic_pushPtr_valueNext_1;
  wire       [3:0]    _zz_logic_popPtr_valueNext;
  wire       [0:0]    _zz_logic_popPtr_valueNext_1;
  wire                _zz_logic_ram_port;
  wire                _zz_io_pop_payload;
  wire       [3:0]    _zz_io_availability;
  reg                 _zz_1;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [3:0]    logic_pushPtr_valueNext;
  reg        [3:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [3:0]    logic_popPtr_valueNext;
  reg        [3:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_io_pop_valid;
  wire                when_Stream_l935;
  wire       [3:0]    logic_ptrDif;
  reg [7:0] logic_ram [0:15];

  assign _zz_logic_pushPtr_valueNext_1 = logic_pushPtr_willIncrement;
  assign _zz_logic_pushPtr_valueNext = {3'd0, _zz_logic_pushPtr_valueNext_1};
  assign _zz_logic_popPtr_valueNext_1 = logic_popPtr_willIncrement;
  assign _zz_logic_popPtr_valueNext = {3'd0, _zz_logic_popPtr_valueNext_1};
  assign _zz_io_availability = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_io_pop_payload = 1'b1;
  always @(posedge clkout_system) begin
    if(_zz_io_pop_payload) begin
      _zz_logic_ram_port0 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @(posedge clkout_system) begin
    if(_zz_1) begin
      logic_ram[logic_pushPtr_value] <= io_push_payload;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_pushing) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    logic_pushPtr_willIncrement = 1'b0;
    if(logic_pushing) begin
      logic_pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    logic_pushPtr_willClear = 1'b0;
    if(io_flush) begin
      logic_pushPtr_willClear = 1'b1;
    end
  end

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 4'b1111);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @(*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_logic_pushPtr_valueNext);
    if(logic_pushPtr_willClear) begin
      logic_pushPtr_valueNext = 4'b0000;
    end
  end

  always @(*) begin
    logic_popPtr_willIncrement = 1'b0;
    if(logic_popping) begin
      logic_popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    logic_popPtr_willClear = 1'b0;
    if(io_flush) begin
      logic_popPtr_willClear = 1'b1;
    end
  end

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 4'b1111);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @(*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_logic_popPtr_valueNext);
    if(logic_popPtr_willClear) begin
      logic_popPtr_valueNext = 4'b0000;
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (io_push_valid && io_push_ready);
  assign logic_popping = (io_pop_valid && io_pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign io_push_ready = (! logic_full);
  assign io_pop_valid = ((! logic_empty) && (! (_zz_io_pop_valid && (! logic_full))));
  assign io_pop_payload = _zz_logic_ram_port0;
  assign when_Stream_l935 = (logic_pushing != logic_popping);
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_io_availability};
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      logic_pushPtr_value <= 4'b0000;
      logic_popPtr_value <= 4'b0000;
      logic_risingOccupancy <= 1'b0;
      _zz_io_pop_valid <= 1'b0;
    end else begin
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      _zz_io_pop_valid <= (logic_popPtr_valueNext == logic_pushPtr_value);
      if(when_Stream_l935) begin
        logic_risingOccupancy <= logic_pushing;
      end
      if(io_flush) begin
        logic_risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module UartCtrl (
  input      [2:0]    io_config_frame_dataLength,
  input      [0:0]    io_config_frame_stop,
  input      [1:0]    io_config_frame_parity,
  input      [11:0]   io_config_clockDivider,
  input               io_write_valid,
  output reg          io_write_ready,
  input      [7:0]    io_write_payload,
  output              io_read_valid,
  input               io_read_ready,
  output     [7:0]    io_read_payload,
  output              io_uart_txd,
  input               io_uart_rxd,
  output              io_readError,
  input               io_writeBreak,
  output              io_readBreak,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);
  localparam UartStopType_ONE = 1'd0;
  localparam UartStopType_TWO = 1'd1;
  localparam UartParityType_NONE = 2'd0;
  localparam UartParityType_EVEN = 2'd1;
  localparam UartParityType_ODD = 2'd2;

  wire                tx_io_write_ready;
  wire                tx_io_txd;
  wire                rx_io_read_valid;
  wire       [7:0]    rx_io_read_payload;
  wire                rx_io_rts;
  wire                rx_io_error;
  wire                rx_io_break;
  reg        [11:0]   clockDivider_counter;
  wire                clockDivider_tick;
  reg                 clockDivider_tickReg;
  reg                 io_write_thrown_valid;
  wire                io_write_thrown_ready;
  wire       [7:0]    io_write_thrown_payload;
  `ifndef SYNTHESIS
  reg [23:0] io_config_frame_stop_string;
  reg [31:0] io_config_frame_parity_string;
  `endif


  UartCtrlTx tx (
    .io_configFrame_dataLength         (io_config_frame_dataLength[2:0]  ), //i
    .io_configFrame_stop               (io_config_frame_stop             ), //i
    .io_configFrame_parity             (io_config_frame_parity[1:0]      ), //i
    .io_samplingTick                   (clockDivider_tickReg             ), //i
    .io_write_valid                    (io_write_thrown_valid            ), //i
    .io_write_ready                    (tx_io_write_ready                ), //o
    .io_write_payload                  (io_write_thrown_payload[7:0]     ), //i
    .io_cts                            (1'b0                             ), //i
    .io_txd                            (tx_io_txd                        ), //o
    .io_break                          (io_writeBreak                    ), //i
    .clkout_system                     (clkout_system                    ), //i
    .systemCdCtrl_logic_outputReset    (systemCdCtrl_logic_outputReset   )  //i
  );
  UartCtrlRx rx (
    .io_configFrame_dataLength         (io_config_frame_dataLength[2:0]  ), //i
    .io_configFrame_stop               (io_config_frame_stop             ), //i
    .io_configFrame_parity             (io_config_frame_parity[1:0]      ), //i
    .io_samplingTick                   (clockDivider_tickReg             ), //i
    .io_read_valid                     (rx_io_read_valid                 ), //o
    .io_read_ready                     (io_read_ready                    ), //i
    .io_read_payload                   (rx_io_read_payload[7:0]          ), //o
    .io_rxd                            (io_uart_rxd                      ), //i
    .io_rts                            (rx_io_rts                        ), //o
    .io_error                          (rx_io_error                      ), //o
    .io_break                          (rx_io_break                      ), //o
    .clkout_system                     (clkout_system                    ), //i
    .systemCdCtrl_logic_outputReset    (systemCdCtrl_logic_outputReset   )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_config_frame_stop)
      UartStopType_ONE : io_config_frame_stop_string = "ONE";
      UartStopType_TWO : io_config_frame_stop_string = "TWO";
      default : io_config_frame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_config_frame_parity)
      UartParityType_NONE : io_config_frame_parity_string = "NONE";
      UartParityType_EVEN : io_config_frame_parity_string = "EVEN";
      UartParityType_ODD : io_config_frame_parity_string = "ODD ";
      default : io_config_frame_parity_string = "????";
    endcase
  end
  `endif

  assign clockDivider_tick = (clockDivider_counter == 12'h0);
  always @(*) begin
    io_write_thrown_valid = io_write_valid;
    if(rx_io_break) begin
      io_write_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    io_write_ready = io_write_thrown_ready;
    if(rx_io_break) begin
      io_write_ready = 1'b1;
    end
  end

  assign io_write_thrown_payload = io_write_payload;
  assign io_write_thrown_ready = tx_io_write_ready;
  assign io_read_valid = rx_io_read_valid;
  assign io_read_payload = rx_io_read_payload;
  assign io_uart_txd = tx_io_txd;
  assign io_readError = rx_io_error;
  assign io_readBreak = rx_io_break;
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      clockDivider_counter <= 12'h0;
      clockDivider_tickReg <= 1'b0;
    end else begin
      clockDivider_tickReg <= clockDivider_tick;
      clockDivider_counter <= (clockDivider_counter - 12'h001);
      if(clockDivider_tick) begin
        clockDivider_counter <= io_config_clockDivider;
      end
    end
  end


endmodule

module Core (
  input      [1:0]    io_config_readLatency,
  input      [3:0]    io_config_RAS,
  input      [3:0]    io_config_RP,
  input      [3:0]    io_config_WR,
  input      [3:0]    io_config_RCD,
  input      [3:0]    io_config_WTR,
  input      [3:0]    io_config_RTP,
  input      [3:0]    io_config_RRD,
  input      [3:0]    io_config_RTW,
  input      [6:0]    io_config_RFC,
  input      [15:0]   io_config_REF,
  input               io_config_autoRefresh,
  input               io_config_noActive,
  input      [0:0]    io_config_phase_active,
  input      [0:0]    io_config_phase_precharge,
  input      [0:0]    io_config_phase_read,
  input      [0:0]    io_config_phase_write,
  input               io_soft_cmd_valid,
  input      [12:0]   io_soft_cmd_payload_ADDR,
  input      [1:0]    io_soft_cmd_payload_BA,
  input               io_soft_cmd_payload_CASn,
  input               io_soft_cmd_payload_CSn,
  input               io_soft_cmd_payload_RASn,
  input               io_soft_cmd_payload_WEn,
  input               io_soft_CKE,
  input               io_ports_0_cmd_valid,
  output              io_ports_0_cmd_ready,
  input               io_ports_0_cmd_payload_write,
  input      [24:0]   io_ports_0_cmd_payload_address,
  input      [3:0]    io_ports_0_cmd_payload_context,
  input               io_ports_0_cmd_payload_burstLast,
  input      [3:0]    io_ports_0_cmd_payload_length,
  input               io_ports_0_writeData_valid,
  output              io_ports_0_writeData_ready,
  input      [31:0]   io_ports_0_writeData_payload_data,
  input      [3:0]    io_ports_0_writeData_payload_mask,
  input      [0:0]    io_ports_0_writeDataTocken,
  output              io_ports_0_rsp_valid,
  input               io_ports_0_rsp_ready,
  output              io_ports_0_rsp_payload_last,
  output     [31:0]   io_ports_0_rsp_payload_fragment_data,
  output     [3:0]    io_ports_0_rsp_payload_fragment_context,
  input      [0:0]    io_ports_0_writeDataAdded,
  output              io_phy_phases_0_CASn,
  output              io_phy_phases_0_CKE,
  output              io_phy_phases_0_CSn,
  output              io_phy_phases_0_RASn,
  output              io_phy_phases_0_WEn,
  output     [1:0]    io_phy_phases_0_DM_0,
  output     [15:0]   io_phy_phases_0_DQw_0,
  input      [15:0]   io_phy_phases_0_DQr_0,
  output              io_phy_phases_1_CASn,
  output              io_phy_phases_1_CKE,
  output              io_phy_phases_1_CSn,
  output              io_phy_phases_1_RASn,
  output              io_phy_phases_1_WEn,
  output     [1:0]    io_phy_phases_1_DM_0,
  output     [15:0]   io_phy_phases_1_DQw_0,
  input      [15:0]   io_phy_phases_1_DQr_0,
  output     [12:0]   io_phy_ADDR,
  output     [1:0]    io_phy_BA,
  output              io_phy_writeEnable,
  output              io_phy_readEnable,
  input               io_phy_readValid,
  output              io_refresh,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire                refresher_1_io_refresh_valid;
  wire                tasker_1_io_refresh_ready;
  wire                tasker_1_io_inputs_0_ready;
  wire                tasker_1_io_output_ports_0_read;
  wire                tasker_1_io_output_ports_0_write;
  wire                tasker_1_io_output_ports_0_active;
  wire                tasker_1_io_output_ports_0_precharge;
  wire                tasker_1_io_output_ports_0_last;
  wire       [0:0]    tasker_1_io_output_ports_0_address_byte;
  wire       [8:0]    tasker_1_io_output_ports_0_address_column;
  wire       [1:0]    tasker_1_io_output_ports_0_address_bank;
  wire       [12:0]   tasker_1_io_output_ports_0_address_row;
  wire       [3:0]    tasker_1_io_output_ports_0_context;
  wire                tasker_1_io_output_ports_1_read;
  wire                tasker_1_io_output_ports_1_write;
  wire                tasker_1_io_output_ports_1_active;
  wire                tasker_1_io_output_ports_1_precharge;
  wire                tasker_1_io_output_ports_1_last;
  wire       [0:0]    tasker_1_io_output_ports_1_address_byte;
  wire       [8:0]    tasker_1_io_output_ports_1_address_column;
  wire       [1:0]    tasker_1_io_output_ports_1_address_bank;
  wire       [12:0]   tasker_1_io_output_ports_1_address_row;
  wire       [3:0]    tasker_1_io_output_ports_1_context;
  wire                tasker_1_io_output_prechargeAll;
  wire                tasker_1_io_output_refresh;
  wire                backend_1_io_writeDatas_0_ready;
  wire                backend_1_io_phy_phases_0_CASn;
  wire                backend_1_io_phy_phases_0_CKE;
  wire                backend_1_io_phy_phases_0_CSn;
  wire       [1:0]    backend_1_io_phy_phases_0_DM_0;
  wire                backend_1_io_phy_phases_0_RASn;
  wire                backend_1_io_phy_phases_0_WEn;
  wire       [15:0]   backend_1_io_phy_phases_0_DQw_0;
  wire                backend_1_io_phy_phases_1_CASn;
  wire                backend_1_io_phy_phases_1_CKE;
  wire                backend_1_io_phy_phases_1_CSn;
  wire       [1:0]    backend_1_io_phy_phases_1_DM_0;
  wire                backend_1_io_phy_phases_1_RASn;
  wire                backend_1_io_phy_phases_1_WEn;
  wire       [15:0]   backend_1_io_phy_phases_1_DQw_0;
  wire       [12:0]   backend_1_io_phy_ADDR;
  wire       [1:0]    backend_1_io_phy_BA;
  wire                backend_1_io_phy_readEnable;
  wire                backend_1_io_phy_writeEnable;
  wire                backend_1_io_outputs_0_valid;
  wire                backend_1_io_outputs_0_payload_last;
  wire       [31:0]   backend_1_io_outputs_0_payload_fragment_data;
  wire       [3:0]    backend_1_io_outputs_0_payload_fragment_context;
  reg        [1:0]    config_readLatency = 2'b00;
  reg        [3:0]    config_RAS = 4'b0000;
  reg        [3:0]    config_RP = 4'b0000;
  reg        [3:0]    config_WR = 4'b0000;
  reg        [3:0]    config_RCD = 4'b0000;
  reg        [3:0]    config_WTR = 4'b0000;
  reg        [3:0]    config_RTP = 4'b0000;
  reg        [3:0]    config_RRD = 4'b0000;
  reg        [3:0]    config_RTW = 4'b0000;
  reg        [6:0]    config_RFC = 7'b0000000;
  reg        [15:0]   config_REF = 16'b0000000000000000;
  reg                 config_autoRefresh = 0;
  reg                 config_noActive = 0;
  reg        [0:0]    config_phase_active = 1'b0;
  reg        [0:0]    config_phase_precharge = 1'b0;
  reg        [0:0]    config_phase_read = 1'b0;
  reg        [0:0]    config_phase_write = 1'b0;
  reg                 tasker_1_io_output_stage_ports_0_read;
  reg                 tasker_1_io_output_stage_ports_0_write;
  reg                 tasker_1_io_output_stage_ports_0_active;
  reg                 tasker_1_io_output_stage_ports_0_precharge;
  reg                 tasker_1_io_output_stage_ports_0_last;
  reg        [0:0]    tasker_1_io_output_stage_ports_0_address_byte;
  reg        [8:0]    tasker_1_io_output_stage_ports_0_address_column;
  reg        [1:0]    tasker_1_io_output_stage_ports_0_address_bank;
  reg        [12:0]   tasker_1_io_output_stage_ports_0_address_row;
  reg        [3:0]    tasker_1_io_output_stage_ports_0_context;
  reg                 tasker_1_io_output_stage_ports_1_read;
  reg                 tasker_1_io_output_stage_ports_1_write;
  reg                 tasker_1_io_output_stage_ports_1_active;
  reg                 tasker_1_io_output_stage_ports_1_precharge;
  reg                 tasker_1_io_output_stage_ports_1_last;
  reg        [0:0]    tasker_1_io_output_stage_ports_1_address_byte;
  reg        [8:0]    tasker_1_io_output_stage_ports_1_address_column;
  reg        [1:0]    tasker_1_io_output_stage_ports_1_address_bank;
  reg        [12:0]   tasker_1_io_output_stage_ports_1_address_row;
  reg        [3:0]    tasker_1_io_output_stage_ports_1_context;
  reg                 tasker_1_io_output_stage_prechargeAll;
  reg                 tasker_1_io_output_stage_refresh;

  Refresher refresher_1 (
    .io_config_readLatency             (config_readLatency[1:0]         ), //i
    .io_config_RAS                     (config_RAS[3:0]                 ), //i
    .io_config_RP                      (config_RP[3:0]                  ), //i
    .io_config_WR                      (config_WR[3:0]                  ), //i
    .io_config_RCD                     (config_RCD[3:0]                 ), //i
    .io_config_WTR                     (config_WTR[3:0]                 ), //i
    .io_config_RTP                     (config_RTP[3:0]                 ), //i
    .io_config_RRD                     (config_RRD[3:0]                 ), //i
    .io_config_RTW                     (config_RTW[3:0]                 ), //i
    .io_config_RFC                     (config_RFC[6:0]                 ), //i
    .io_config_REF                     (config_REF[15:0]                ), //i
    .io_config_autoRefresh             (config_autoRefresh              ), //i
    .io_config_noActive                (config_noActive                 ), //i
    .io_config_phase_active            (config_phase_active             ), //i
    .io_config_phase_precharge         (config_phase_precharge          ), //i
    .io_config_phase_read              (config_phase_read               ), //i
    .io_config_phase_write             (config_phase_write              ), //i
    .io_refresh_valid                  (refresher_1_io_refresh_valid    ), //o
    .io_refresh_ready                  (tasker_1_io_refresh_ready       ), //i
    .clkout_system                     (clkout_system                   ), //i
    .systemCdCtrl_logic_outputReset    (systemCdCtrl_logic_outputReset  )  //i
  );
  Tasker tasker_1 (
    .io_config_readLatency               (config_readLatency[1:0]                         ), //i
    .io_config_RAS                       (config_RAS[3:0]                                 ), //i
    .io_config_RP                        (config_RP[3:0]                                  ), //i
    .io_config_WR                        (config_WR[3:0]                                  ), //i
    .io_config_RCD                       (config_RCD[3:0]                                 ), //i
    .io_config_WTR                       (config_WTR[3:0]                                 ), //i
    .io_config_RTP                       (config_RTP[3:0]                                 ), //i
    .io_config_RRD                       (config_RRD[3:0]                                 ), //i
    .io_config_RTW                       (config_RTW[3:0]                                 ), //i
    .io_config_RFC                       (config_RFC[6:0]                                 ), //i
    .io_config_REF                       (config_REF[15:0]                                ), //i
    .io_config_autoRefresh               (config_autoRefresh                              ), //i
    .io_config_noActive                  (config_noActive                                 ), //i
    .io_config_phase_active              (config_phase_active                             ), //i
    .io_config_phase_precharge           (config_phase_precharge                          ), //i
    .io_config_phase_read                (config_phase_read                               ), //i
    .io_config_phase_write               (config_phase_write                              ), //i
    .io_refresh_valid                    (refresher_1_io_refresh_valid                    ), //i
    .io_refresh_ready                    (tasker_1_io_refresh_ready                       ), //o
    .io_inputs_0_valid                   (io_ports_0_cmd_valid                            ), //i
    .io_inputs_0_ready                   (tasker_1_io_inputs_0_ready                      ), //o
    .io_inputs_0_payload_write           (io_ports_0_cmd_payload_write                    ), //i
    .io_inputs_0_payload_address         (io_ports_0_cmd_payload_address[24:0]            ), //i
    .io_inputs_0_payload_context         (io_ports_0_cmd_payload_context[3:0]             ), //i
    .io_inputs_0_payload_burstLast       (io_ports_0_cmd_payload_burstLast                ), //i
    .io_inputs_0_payload_length          (io_ports_0_cmd_payload_length[3:0]              ), //i
    .io_writeDataTockens_0               (io_ports_0_writeDataTocken                      ), //i
    .io_output_ports_0_read              (tasker_1_io_output_ports_0_read                 ), //o
    .io_output_ports_0_write             (tasker_1_io_output_ports_0_write                ), //o
    .io_output_ports_0_active            (tasker_1_io_output_ports_0_active               ), //o
    .io_output_ports_0_precharge         (tasker_1_io_output_ports_0_precharge            ), //o
    .io_output_ports_0_last              (tasker_1_io_output_ports_0_last                 ), //o
    .io_output_ports_0_address_byte      (tasker_1_io_output_ports_0_address_byte         ), //o
    .io_output_ports_0_address_column    (tasker_1_io_output_ports_0_address_column[8:0]  ), //o
    .io_output_ports_0_address_bank      (tasker_1_io_output_ports_0_address_bank[1:0]    ), //o
    .io_output_ports_0_address_row       (tasker_1_io_output_ports_0_address_row[12:0]    ), //o
    .io_output_ports_0_context           (tasker_1_io_output_ports_0_context[3:0]         ), //o
    .io_output_ports_1_read              (tasker_1_io_output_ports_1_read                 ), //o
    .io_output_ports_1_write             (tasker_1_io_output_ports_1_write                ), //o
    .io_output_ports_1_active            (tasker_1_io_output_ports_1_active               ), //o
    .io_output_ports_1_precharge         (tasker_1_io_output_ports_1_precharge            ), //o
    .io_output_ports_1_last              (tasker_1_io_output_ports_1_last                 ), //o
    .io_output_ports_1_address_byte      (tasker_1_io_output_ports_1_address_byte         ), //o
    .io_output_ports_1_address_column    (tasker_1_io_output_ports_1_address_column[8:0]  ), //o
    .io_output_ports_1_address_bank      (tasker_1_io_output_ports_1_address_bank[1:0]    ), //o
    .io_output_ports_1_address_row       (tasker_1_io_output_ports_1_address_row[12:0]    ), //o
    .io_output_ports_1_context           (tasker_1_io_output_ports_1_context[3:0]         ), //o
    .io_output_prechargeAll              (tasker_1_io_output_prechargeAll                 ), //o
    .io_output_refresh                   (tasker_1_io_output_refresh                      ), //o
    .clkout_system                       (clkout_system                                   ), //i
    .systemCdCtrl_logic_outputReset      (systemCdCtrl_logic_outputReset                  )  //i
  );
  Backend backend_1 (
    .io_config_readLatency                    (config_readLatency[1:0]                               ), //i
    .io_config_RAS                            (config_RAS[3:0]                                       ), //i
    .io_config_RP                             (config_RP[3:0]                                        ), //i
    .io_config_WR                             (config_WR[3:0]                                        ), //i
    .io_config_RCD                            (config_RCD[3:0]                                       ), //i
    .io_config_WTR                            (config_WTR[3:0]                                       ), //i
    .io_config_RTP                            (config_RTP[3:0]                                       ), //i
    .io_config_RRD                            (config_RRD[3:0]                                       ), //i
    .io_config_RTW                            (config_RTW[3:0]                                       ), //i
    .io_config_RFC                            (config_RFC[6:0]                                       ), //i
    .io_config_REF                            (config_REF[15:0]                                      ), //i
    .io_config_autoRefresh                    (config_autoRefresh                                    ), //i
    .io_config_noActive                       (config_noActive                                       ), //i
    .io_config_phase_active                   (config_phase_active                                   ), //i
    .io_config_phase_precharge                (config_phase_precharge                                ), //i
    .io_config_phase_read                     (config_phase_read                                     ), //i
    .io_config_phase_write                    (config_phase_write                                    ), //i
    .io_input_ports_0_read                    (tasker_1_io_output_stage_ports_0_read                 ), //i
    .io_input_ports_0_write                   (tasker_1_io_output_stage_ports_0_write                ), //i
    .io_input_ports_0_active                  (tasker_1_io_output_stage_ports_0_active               ), //i
    .io_input_ports_0_precharge               (tasker_1_io_output_stage_ports_0_precharge            ), //i
    .io_input_ports_0_last                    (tasker_1_io_output_stage_ports_0_last                 ), //i
    .io_input_ports_0_address_byte            (tasker_1_io_output_stage_ports_0_address_byte         ), //i
    .io_input_ports_0_address_column          (tasker_1_io_output_stage_ports_0_address_column[8:0]  ), //i
    .io_input_ports_0_address_bank            (tasker_1_io_output_stage_ports_0_address_bank[1:0]    ), //i
    .io_input_ports_0_address_row             (tasker_1_io_output_stage_ports_0_address_row[12:0]    ), //i
    .io_input_ports_0_context                 (tasker_1_io_output_stage_ports_0_context[3:0]         ), //i
    .io_input_ports_1_read                    (tasker_1_io_output_stage_ports_1_read                 ), //i
    .io_input_ports_1_write                   (tasker_1_io_output_stage_ports_1_write                ), //i
    .io_input_ports_1_active                  (tasker_1_io_output_stage_ports_1_active               ), //i
    .io_input_ports_1_precharge               (tasker_1_io_output_stage_ports_1_precharge            ), //i
    .io_input_ports_1_last                    (tasker_1_io_output_stage_ports_1_last                 ), //i
    .io_input_ports_1_address_byte            (tasker_1_io_output_stage_ports_1_address_byte         ), //i
    .io_input_ports_1_address_column          (tasker_1_io_output_stage_ports_1_address_column[8:0]  ), //i
    .io_input_ports_1_address_bank            (tasker_1_io_output_stage_ports_1_address_bank[1:0]    ), //i
    .io_input_ports_1_address_row             (tasker_1_io_output_stage_ports_1_address_row[12:0]    ), //i
    .io_input_ports_1_context                 (tasker_1_io_output_stage_ports_1_context[3:0]         ), //i
    .io_input_prechargeAll                    (tasker_1_io_output_stage_prechargeAll                 ), //i
    .io_input_refresh                         (tasker_1_io_output_stage_refresh                      ), //i
    .io_writeDatas_0_valid                    (io_ports_0_writeData_valid                            ), //i
    .io_writeDatas_0_ready                    (backend_1_io_writeDatas_0_ready                       ), //o
    .io_writeDatas_0_payload_data             (io_ports_0_writeData_payload_data[31:0]               ), //i
    .io_writeDatas_0_payload_mask             (io_ports_0_writeData_payload_mask[3:0]                ), //i
    .io_phy_phases_0_CASn                     (backend_1_io_phy_phases_0_CASn                        ), //o
    .io_phy_phases_0_CKE                      (backend_1_io_phy_phases_0_CKE                         ), //o
    .io_phy_phases_0_CSn                      (backend_1_io_phy_phases_0_CSn                         ), //o
    .io_phy_phases_0_RASn                     (backend_1_io_phy_phases_0_RASn                        ), //o
    .io_phy_phases_0_WEn                      (backend_1_io_phy_phases_0_WEn                         ), //o
    .io_phy_phases_0_DM_0                     (backend_1_io_phy_phases_0_DM_0[1:0]                   ), //o
    .io_phy_phases_0_DQw_0                    (backend_1_io_phy_phases_0_DQw_0[15:0]                 ), //o
    .io_phy_phases_0_DQr_0                    (io_phy_phases_0_DQr_0[15:0]                           ), //i
    .io_phy_phases_1_CASn                     (backend_1_io_phy_phases_1_CASn                        ), //o
    .io_phy_phases_1_CKE                      (backend_1_io_phy_phases_1_CKE                         ), //o
    .io_phy_phases_1_CSn                      (backend_1_io_phy_phases_1_CSn                         ), //o
    .io_phy_phases_1_RASn                     (backend_1_io_phy_phases_1_RASn                        ), //o
    .io_phy_phases_1_WEn                      (backend_1_io_phy_phases_1_WEn                         ), //o
    .io_phy_phases_1_DM_0                     (backend_1_io_phy_phases_1_DM_0[1:0]                   ), //o
    .io_phy_phases_1_DQw_0                    (backend_1_io_phy_phases_1_DQw_0[15:0]                 ), //o
    .io_phy_phases_1_DQr_0                    (io_phy_phases_1_DQr_0[15:0]                           ), //i
    .io_phy_ADDR                              (backend_1_io_phy_ADDR[12:0]                           ), //o
    .io_phy_BA                                (backend_1_io_phy_BA[1:0]                              ), //o
    .io_phy_writeEnable                       (backend_1_io_phy_writeEnable                          ), //o
    .io_phy_readEnable                        (backend_1_io_phy_readEnable                           ), //o
    .io_phy_readValid                         (io_phy_readValid                                      ), //i
    .io_outputs_0_valid                       (backend_1_io_outputs_0_valid                          ), //o
    .io_outputs_0_payload_last                (backend_1_io_outputs_0_payload_last                   ), //o
    .io_outputs_0_payload_fragment_data       (backend_1_io_outputs_0_payload_fragment_data[31:0]    ), //o
    .io_outputs_0_payload_fragment_context    (backend_1_io_outputs_0_payload_fragment_context[3:0]  ), //o
    .io_soft_cmd_valid                        (io_soft_cmd_valid                                     ), //i
    .io_soft_cmd_payload_ADDR                 (io_soft_cmd_payload_ADDR[12:0]                        ), //i
    .io_soft_cmd_payload_BA                   (io_soft_cmd_payload_BA[1:0]                           ), //i
    .io_soft_cmd_payload_CASn                 (io_soft_cmd_payload_CASn                              ), //i
    .io_soft_cmd_payload_CSn                  (io_soft_cmd_payload_CSn                               ), //i
    .io_soft_cmd_payload_RASn                 (io_soft_cmd_payload_RASn                              ), //i
    .io_soft_cmd_payload_WEn                  (io_soft_cmd_payload_WEn                               ), //i
    .io_soft_CKE                              (io_soft_CKE                                           ), //i
    .clkout_system                            (clkout_system                                         ), //i
    .systemCdCtrl_logic_outputReset           (systemCdCtrl_logic_outputReset                        )  //i
  );
  assign io_refresh = refresher_1_io_refresh_valid;
  assign io_ports_0_cmd_ready = tasker_1_io_inputs_0_ready;
  assign io_ports_0_writeData_ready = backend_1_io_writeDatas_0_ready;
  assign io_phy_phases_0_CASn = backend_1_io_phy_phases_0_CASn;
  assign io_phy_phases_0_CKE = backend_1_io_phy_phases_0_CKE;
  assign io_phy_phases_0_CSn = backend_1_io_phy_phases_0_CSn;
  assign io_phy_phases_0_RASn = backend_1_io_phy_phases_0_RASn;
  assign io_phy_phases_0_WEn = backend_1_io_phy_phases_0_WEn;
  assign io_phy_phases_0_DM_0 = backend_1_io_phy_phases_0_DM_0;
  assign io_phy_phases_0_DQw_0 = backend_1_io_phy_phases_0_DQw_0;
  assign io_phy_phases_1_CASn = backend_1_io_phy_phases_1_CASn;
  assign io_phy_phases_1_CKE = backend_1_io_phy_phases_1_CKE;
  assign io_phy_phases_1_CSn = backend_1_io_phy_phases_1_CSn;
  assign io_phy_phases_1_RASn = backend_1_io_phy_phases_1_RASn;
  assign io_phy_phases_1_WEn = backend_1_io_phy_phases_1_WEn;
  assign io_phy_phases_1_DM_0 = backend_1_io_phy_phases_1_DM_0;
  assign io_phy_phases_1_DQw_0 = backend_1_io_phy_phases_1_DQw_0;
  assign io_phy_ADDR = backend_1_io_phy_ADDR;
  assign io_phy_BA = backend_1_io_phy_BA;
  assign io_phy_writeEnable = backend_1_io_phy_writeEnable;
  assign io_phy_readEnable = backend_1_io_phy_readEnable;
  assign io_ports_0_rsp_valid = backend_1_io_outputs_0_valid;
  assign io_ports_0_rsp_payload_last = backend_1_io_outputs_0_payload_last;
  assign io_ports_0_rsp_payload_fragment_data = backend_1_io_outputs_0_payload_fragment_data;
  assign io_ports_0_rsp_payload_fragment_context = backend_1_io_outputs_0_payload_fragment_context;
  always @(posedge clkout_system) begin
    config_readLatency <= io_config_readLatency;
    config_RAS <= io_config_RAS;
    config_RP <= io_config_RP;
    config_WR <= io_config_WR;
    config_RCD <= io_config_RCD;
    config_WTR <= io_config_WTR;
    config_RTP <= io_config_RTP;
    config_RRD <= io_config_RRD;
    config_RTW <= io_config_RTW;
    config_RFC <= io_config_RFC;
    config_REF <= io_config_REF;
    config_autoRefresh <= io_config_autoRefresh;
    config_noActive <= io_config_noActive;
    config_phase_active <= io_config_phase_active;
    config_phase_precharge <= io_config_phase_precharge;
    config_phase_read <= io_config_phase_read;
    config_phase_write <= io_config_phase_write;
    tasker_1_io_output_stage_ports_0_last <= tasker_1_io_output_ports_0_last;
    tasker_1_io_output_stage_ports_0_address_byte <= tasker_1_io_output_ports_0_address_byte;
    tasker_1_io_output_stage_ports_0_address_column <= tasker_1_io_output_ports_0_address_column;
    tasker_1_io_output_stage_ports_0_address_bank <= tasker_1_io_output_ports_0_address_bank;
    tasker_1_io_output_stage_ports_0_address_row <= tasker_1_io_output_ports_0_address_row;
    tasker_1_io_output_stage_ports_0_context <= tasker_1_io_output_ports_0_context;
    tasker_1_io_output_stage_ports_1_last <= tasker_1_io_output_ports_1_last;
    tasker_1_io_output_stage_ports_1_address_byte <= tasker_1_io_output_ports_1_address_byte;
    tasker_1_io_output_stage_ports_1_address_column <= tasker_1_io_output_ports_1_address_column;
    tasker_1_io_output_stage_ports_1_address_bank <= tasker_1_io_output_ports_1_address_bank;
    tasker_1_io_output_stage_ports_1_address_row <= tasker_1_io_output_ports_1_address_row;
    tasker_1_io_output_stage_ports_1_context <= tasker_1_io_output_ports_1_context;
  end

  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      tasker_1_io_output_stage_ports_0_read <= 1'b0;
      tasker_1_io_output_stage_ports_0_write <= 1'b0;
      tasker_1_io_output_stage_ports_0_precharge <= 1'b0;
      tasker_1_io_output_stage_ports_0_active <= 1'b0;
      tasker_1_io_output_stage_ports_1_read <= 1'b0;
      tasker_1_io_output_stage_ports_1_write <= 1'b0;
      tasker_1_io_output_stage_ports_1_precharge <= 1'b0;
      tasker_1_io_output_stage_ports_1_active <= 1'b0;
      tasker_1_io_output_stage_prechargeAll <= 1'b0;
      tasker_1_io_output_stage_refresh <= 1'b0;
    end else begin
      tasker_1_io_output_stage_ports_0_read <= tasker_1_io_output_ports_0_read;
      tasker_1_io_output_stage_ports_0_write <= tasker_1_io_output_ports_0_write;
      tasker_1_io_output_stage_ports_0_active <= tasker_1_io_output_ports_0_active;
      tasker_1_io_output_stage_ports_0_precharge <= tasker_1_io_output_ports_0_precharge;
      tasker_1_io_output_stage_ports_1_read <= tasker_1_io_output_ports_1_read;
      tasker_1_io_output_stage_ports_1_write <= tasker_1_io_output_ports_1_write;
      tasker_1_io_output_stage_ports_1_active <= tasker_1_io_output_ports_1_active;
      tasker_1_io_output_stage_ports_1_precharge <= tasker_1_io_output_ports_1_precharge;
      tasker_1_io_output_stage_prechargeAll <= tasker_1_io_output_prechargeAll;
      tasker_1_io_output_stage_refresh <= tasker_1_io_output_refresh;
    end
  end


endmodule

module BmbAdapter (
  input               io_refresh,
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_source,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [24:0]   io_input_cmd_payload_fragment_address,
  input      [4:0]    io_input_cmd_payload_fragment_length,
  input      [31:0]   io_input_cmd_payload_fragment_data,
  input      [3:0]    io_input_cmd_payload_fragment_mask,
  input      [0:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_source,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output     [0:0]    io_input_rsp_payload_fragment_context,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_write,
  output     [24:0]   io_output_cmd_payload_address,
  output     [3:0]    io_output_cmd_payload_context,
  output              io_output_cmd_payload_burstLast,
  output     [3:0]    io_output_cmd_payload_length,
  output              io_output_writeData_valid,
  input               io_output_writeData_ready,
  output     [31:0]   io_output_writeData_payload_data,
  output     [3:0]    io_output_writeData_payload_mask,
  output     [0:0]    io_output_writeDataTocken,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [3:0]    io_output_rsp_payload_fragment_context,
  output     [0:0]    io_output_writeDataAdded,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  reg                 inputLogic_spliter_io_output_cmd_ready;
  wire                inputLogic_aligner_io_input_cmd_ready;
  wire                inputLogic_aligner_io_input_rsp_valid;
  wire                inputLogic_aligner_io_input_rsp_payload_last;
  wire       [0:0]    inputLogic_aligner_io_input_rsp_payload_fragment_source;
  wire       [0:0]    inputLogic_aligner_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   inputLogic_aligner_io_input_rsp_payload_fragment_data;
  wire       [0:0]    inputLogic_aligner_io_input_rsp_payload_fragment_context;
  wire                inputLogic_aligner_io_output_cmd_valid;
  wire                inputLogic_aligner_io_output_cmd_payload_last;
  wire       [0:0]    inputLogic_aligner_io_output_cmd_payload_fragment_source;
  wire       [0:0]    inputLogic_aligner_io_output_cmd_payload_fragment_opcode;
  wire       [24:0]   inputLogic_aligner_io_output_cmd_payload_fragment_address;
  wire       [4:0]    inputLogic_aligner_io_output_cmd_payload_fragment_length;
  wire       [31:0]   inputLogic_aligner_io_output_cmd_payload_fragment_data;
  wire       [3:0]    inputLogic_aligner_io_output_cmd_payload_fragment_mask;
  wire       [0:0]    inputLogic_aligner_io_output_cmd_payload_fragment_context;
  wire                inputLogic_aligner_io_output_rsp_ready;
  wire                inputLogic_spliter_io_input_cmd_ready;
  wire                inputLogic_spliter_io_input_rsp_valid;
  wire                inputLogic_spliter_io_input_rsp_payload_last;
  wire       [0:0]    inputLogic_spliter_io_input_rsp_payload_fragment_source;
  wire       [0:0]    inputLogic_spliter_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   inputLogic_spliter_io_input_rsp_payload_fragment_data;
  wire       [0:0]    inputLogic_spliter_io_input_rsp_payload_fragment_context;
  wire                inputLogic_spliter_io_output_cmd_valid;
  wire                inputLogic_spliter_io_output_cmd_payload_last;
  wire       [0:0]    inputLogic_spliter_io_output_cmd_payload_fragment_opcode;
  wire       [24:0]   inputLogic_spliter_io_output_cmd_payload_fragment_address;
  wire       [4:0]    inputLogic_spliter_io_output_cmd_payload_fragment_length;
  wire       [31:0]   inputLogic_spliter_io_output_cmd_payload_fragment_data;
  wire       [3:0]    inputLogic_spliter_io_output_cmd_payload_fragment_mask;
  wire       [3:0]    inputLogic_spliter_io_output_cmd_payload_fragment_context;
  wire                inputLogic_spliter_io_output_rsp_ready;
  wire                inputLogic_spliter_io_outputBurstLast;
  wire                inputLogic_converter_io_input_cmd_ready;
  wire                inputLogic_converter_io_input_rsp_valid;
  wire                inputLogic_converter_io_input_rsp_payload_last;
  wire       [0:0]    inputLogic_converter_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   inputLogic_converter_io_input_rsp_payload_fragment_data;
  wire       [3:0]    inputLogic_converter_io_input_rsp_payload_fragment_context;
  wire       [0:0]    inputLogic_converter_io_output_writeDataTocken;
  wire                inputLogic_converter_io_output_cmd_valid;
  wire                inputLogic_converter_io_output_cmd_payload_write;
  wire       [24:0]   inputLogic_converter_io_output_cmd_payload_address;
  wire       [3:0]    inputLogic_converter_io_output_cmd_payload_context;
  wire                inputLogic_converter_io_output_cmd_payload_burstLast;
  wire       [3:0]    inputLogic_converter_io_output_cmd_payload_length;
  wire                inputLogic_converter_io_output_writeData_valid;
  wire       [31:0]   inputLogic_converter_io_output_writeData_payload_data;
  wire       [3:0]    inputLogic_converter_io_output_writeData_payload_mask;
  wire       [0:0]    inputLogic_converter_io_output_writeDataAdded;
  wire                inputLogic_converter_io_output_rsp_ready;
  wire                io_output_cmd_fifo_io_push_ready;
  wire                io_output_cmd_fifo_io_pop_valid;
  wire                io_output_cmd_fifo_io_pop_payload_write;
  wire       [24:0]   io_output_cmd_fifo_io_pop_payload_address;
  wire       [3:0]    io_output_cmd_fifo_io_pop_payload_context;
  wire                io_output_cmd_fifo_io_pop_payload_burstLast;
  wire       [3:0]    io_output_cmd_fifo_io_pop_payload_length;
  wire       [4:0]    io_output_cmd_fifo_io_occupancy;
  wire                io_output_rsp_fifo_io_push_ready;
  wire                io_output_rsp_fifo_io_pop_valid;
  wire                io_output_rsp_fifo_io_pop_payload_last;
  wire       [31:0]   io_output_rsp_fifo_io_pop_payload_fragment_data;
  wire       [3:0]    io_output_rsp_fifo_io_pop_payload_fragment_context;
  wire       [5:0]    io_output_rsp_fifo_io_occupancy;
  wire                io_output_writeData_fifo_io_push_ready;
  wire                io_output_writeData_fifo_io_pop_valid;
  wire       [31:0]   io_output_writeData_fifo_io_pop_payload_data;
  wire       [3:0]    io_output_writeData_fifo_io_pop_payload_mask;
  wire       [5:0]    io_output_writeData_fifo_io_occupancy;
  wire                inputLogic_spliter_io_output_cmd_m2sPipe_valid;
  wire                inputLogic_spliter_io_output_cmd_m2sPipe_ready;
  wire                inputLogic_spliter_io_output_cmd_m2sPipe_payload_last;
  wire       [0:0]    inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_opcode;
  wire       [24:0]   inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_address;
  wire       [4:0]    inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_length;
  wire       [31:0]   inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_data;
  wire       [3:0]    inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_mask;
  wire       [3:0]    inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_context;
  reg                 inputLogic_spliter_io_output_cmd_rValid;
  reg                 inputLogic_spliter_io_output_cmd_rData_last;
  reg        [0:0]    inputLogic_spliter_io_output_cmd_rData_fragment_opcode;
  reg        [24:0]   inputLogic_spliter_io_output_cmd_rData_fragment_address;
  reg        [4:0]    inputLogic_spliter_io_output_cmd_rData_fragment_length;
  reg        [31:0]   inputLogic_spliter_io_output_cmd_rData_fragment_data;
  reg        [3:0]    inputLogic_spliter_io_output_cmd_rData_fragment_mask;
  reg        [3:0]    inputLogic_spliter_io_output_cmd_rData_fragment_context;
  wire                when_Stream_l342;
  wire                cmdAddress_valid;
  reg                 cmdAddress_ready;
  wire                cmdAddress_payload_write;
  wire       [24:0]   cmdAddress_payload_address;
  wire       [3:0]    cmdAddress_payload_context;
  wire                cmdAddress_payload_burstLast;
  wire       [3:0]    cmdAddress_payload_length;
  wire                inputLogic_converter_io_output_writeData_fire;
  reg        [0:0]    _zz_io_output_writeDataTocken;
  wire                cmdAddress_m2sPipe_valid;
  wire                cmdAddress_m2sPipe_ready;
  wire                cmdAddress_m2sPipe_payload_write;
  wire       [24:0]   cmdAddress_m2sPipe_payload_address;
  wire       [3:0]    cmdAddress_m2sPipe_payload_context;
  wire                cmdAddress_m2sPipe_payload_burstLast;
  wire       [3:0]    cmdAddress_m2sPipe_payload_length;
  reg                 cmdAddress_rValid;
  reg                 cmdAddress_rData_write;
  reg        [24:0]   cmdAddress_rData_address;
  reg        [3:0]    cmdAddress_rData_context;
  reg                 cmdAddress_rData_burstLast;
  reg        [3:0]    cmdAddress_rData_length;
  wire                when_Stream_l342_1;
  reg                 io_refresh_regNext;
  wire                _zz_io_output_cmd_valid;
  wire                io_output_rsp_isStall;

  BmbAligner inputLogic_aligner (
    .io_input_cmd_valid                        (io_input_cmd_valid                                               ), //i
    .io_input_cmd_ready                        (inputLogic_aligner_io_input_cmd_ready                            ), //o
    .io_input_cmd_payload_last                 (io_input_cmd_payload_last                                        ), //i
    .io_input_cmd_payload_fragment_source      (io_input_cmd_payload_fragment_source                             ), //i
    .io_input_cmd_payload_fragment_opcode      (io_input_cmd_payload_fragment_opcode                             ), //i
    .io_input_cmd_payload_fragment_address     (io_input_cmd_payload_fragment_address[24:0]                      ), //i
    .io_input_cmd_payload_fragment_length      (io_input_cmd_payload_fragment_length[4:0]                        ), //i
    .io_input_cmd_payload_fragment_data        (io_input_cmd_payload_fragment_data[31:0]                         ), //i
    .io_input_cmd_payload_fragment_mask        (io_input_cmd_payload_fragment_mask[3:0]                          ), //i
    .io_input_cmd_payload_fragment_context     (io_input_cmd_payload_fragment_context                            ), //i
    .io_input_rsp_valid                        (inputLogic_aligner_io_input_rsp_valid                            ), //o
    .io_input_rsp_ready                        (io_input_rsp_ready                                               ), //i
    .io_input_rsp_payload_last                 (inputLogic_aligner_io_input_rsp_payload_last                     ), //o
    .io_input_rsp_payload_fragment_source      (inputLogic_aligner_io_input_rsp_payload_fragment_source          ), //o
    .io_input_rsp_payload_fragment_opcode      (inputLogic_aligner_io_input_rsp_payload_fragment_opcode          ), //o
    .io_input_rsp_payload_fragment_data        (inputLogic_aligner_io_input_rsp_payload_fragment_data[31:0]      ), //o
    .io_input_rsp_payload_fragment_context     (inputLogic_aligner_io_input_rsp_payload_fragment_context         ), //o
    .io_output_cmd_valid                       (inputLogic_aligner_io_output_cmd_valid                           ), //o
    .io_output_cmd_ready                       (inputLogic_spliter_io_input_cmd_ready                            ), //i
    .io_output_cmd_payload_last                (inputLogic_aligner_io_output_cmd_payload_last                    ), //o
    .io_output_cmd_payload_fragment_source     (inputLogic_aligner_io_output_cmd_payload_fragment_source         ), //o
    .io_output_cmd_payload_fragment_opcode     (inputLogic_aligner_io_output_cmd_payload_fragment_opcode         ), //o
    .io_output_cmd_payload_fragment_address    (inputLogic_aligner_io_output_cmd_payload_fragment_address[24:0]  ), //o
    .io_output_cmd_payload_fragment_length     (inputLogic_aligner_io_output_cmd_payload_fragment_length[4:0]    ), //o
    .io_output_cmd_payload_fragment_data       (inputLogic_aligner_io_output_cmd_payload_fragment_data[31:0]     ), //o
    .io_output_cmd_payload_fragment_mask       (inputLogic_aligner_io_output_cmd_payload_fragment_mask[3:0]      ), //o
    .io_output_cmd_payload_fragment_context    (inputLogic_aligner_io_output_cmd_payload_fragment_context        ), //o
    .io_output_rsp_valid                       (inputLogic_spliter_io_input_rsp_valid                            ), //i
    .io_output_rsp_ready                       (inputLogic_aligner_io_output_rsp_ready                           ), //o
    .io_output_rsp_payload_last                (inputLogic_spliter_io_input_rsp_payload_last                     ), //i
    .io_output_rsp_payload_fragment_source     (inputLogic_spliter_io_input_rsp_payload_fragment_source          ), //i
    .io_output_rsp_payload_fragment_opcode     (inputLogic_spliter_io_input_rsp_payload_fragment_opcode          ), //i
    .io_output_rsp_payload_fragment_data       (inputLogic_spliter_io_input_rsp_payload_fragment_data[31:0]      ), //i
    .io_output_rsp_payload_fragment_context    (inputLogic_spliter_io_input_rsp_payload_fragment_context         ), //i
    .clkout_system                             (clkout_system                                                    ), //i
    .systemCdCtrl_logic_outputReset            (systemCdCtrl_logic_outputReset                                   )  //i
  );
  BmbAlignedSpliter inputLogic_spliter (
    .io_input_cmd_valid                        (inputLogic_aligner_io_output_cmd_valid                           ), //i
    .io_input_cmd_ready                        (inputLogic_spliter_io_input_cmd_ready                            ), //o
    .io_input_cmd_payload_last                 (inputLogic_aligner_io_output_cmd_payload_last                    ), //i
    .io_input_cmd_payload_fragment_source      (inputLogic_aligner_io_output_cmd_payload_fragment_source         ), //i
    .io_input_cmd_payload_fragment_opcode      (inputLogic_aligner_io_output_cmd_payload_fragment_opcode         ), //i
    .io_input_cmd_payload_fragment_address     (inputLogic_aligner_io_output_cmd_payload_fragment_address[24:0]  ), //i
    .io_input_cmd_payload_fragment_length      (inputLogic_aligner_io_output_cmd_payload_fragment_length[4:0]    ), //i
    .io_input_cmd_payload_fragment_data        (inputLogic_aligner_io_output_cmd_payload_fragment_data[31:0]     ), //i
    .io_input_cmd_payload_fragment_mask        (inputLogic_aligner_io_output_cmd_payload_fragment_mask[3:0]      ), //i
    .io_input_cmd_payload_fragment_context     (inputLogic_aligner_io_output_cmd_payload_fragment_context        ), //i
    .io_input_rsp_valid                        (inputLogic_spliter_io_input_rsp_valid                            ), //o
    .io_input_rsp_ready                        (inputLogic_aligner_io_output_rsp_ready                           ), //i
    .io_input_rsp_payload_last                 (inputLogic_spliter_io_input_rsp_payload_last                     ), //o
    .io_input_rsp_payload_fragment_source      (inputLogic_spliter_io_input_rsp_payload_fragment_source          ), //o
    .io_input_rsp_payload_fragment_opcode      (inputLogic_spliter_io_input_rsp_payload_fragment_opcode          ), //o
    .io_input_rsp_payload_fragment_data        (inputLogic_spliter_io_input_rsp_payload_fragment_data[31:0]      ), //o
    .io_input_rsp_payload_fragment_context     (inputLogic_spliter_io_input_rsp_payload_fragment_context         ), //o
    .io_output_cmd_valid                       (inputLogic_spliter_io_output_cmd_valid                           ), //o
    .io_output_cmd_ready                       (inputLogic_spliter_io_output_cmd_ready                           ), //i
    .io_output_cmd_payload_last                (inputLogic_spliter_io_output_cmd_payload_last                    ), //o
    .io_output_cmd_payload_fragment_opcode     (inputLogic_spliter_io_output_cmd_payload_fragment_opcode         ), //o
    .io_output_cmd_payload_fragment_address    (inputLogic_spliter_io_output_cmd_payload_fragment_address[24:0]  ), //o
    .io_output_cmd_payload_fragment_length     (inputLogic_spliter_io_output_cmd_payload_fragment_length[4:0]    ), //o
    .io_output_cmd_payload_fragment_data       (inputLogic_spliter_io_output_cmd_payload_fragment_data[31:0]     ), //o
    .io_output_cmd_payload_fragment_mask       (inputLogic_spliter_io_output_cmd_payload_fragment_mask[3:0]      ), //o
    .io_output_cmd_payload_fragment_context    (inputLogic_spliter_io_output_cmd_payload_fragment_context[3:0]   ), //o
    .io_output_rsp_valid                       (inputLogic_converter_io_input_rsp_valid                          ), //i
    .io_output_rsp_ready                       (inputLogic_spliter_io_output_rsp_ready                           ), //o
    .io_output_rsp_payload_last                (inputLogic_converter_io_input_rsp_payload_last                   ), //i
    .io_output_rsp_payload_fragment_opcode     (inputLogic_converter_io_input_rsp_payload_fragment_opcode        ), //i
    .io_output_rsp_payload_fragment_data       (inputLogic_converter_io_input_rsp_payload_fragment_data[31:0]    ), //i
    .io_output_rsp_payload_fragment_context    (inputLogic_converter_io_input_rsp_payload_fragment_context[3:0]  ), //i
    .io_outputBurstLast                        (inputLogic_spliter_io_outputBurstLast                            ), //o
    .clkout_system                             (clkout_system                                                    ), //i
    .systemCdCtrl_logic_outputReset            (systemCdCtrl_logic_outputReset                                   )  //i
  );
  BmbToCorePort inputLogic_converter (
    .io_input_cmd_valid                        (inputLogic_spliter_io_output_cmd_m2sPipe_valid                           ), //i
    .io_input_cmd_ready                        (inputLogic_converter_io_input_cmd_ready                                  ), //o
    .io_input_cmd_payload_last                 (inputLogic_spliter_io_output_cmd_m2sPipe_payload_last                    ), //i
    .io_input_cmd_payload_fragment_opcode      (inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_opcode         ), //i
    .io_input_cmd_payload_fragment_address     (inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_address[24:0]  ), //i
    .io_input_cmd_payload_fragment_length      (inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_length[4:0]    ), //i
    .io_input_cmd_payload_fragment_data        (inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_data[31:0]     ), //i
    .io_input_cmd_payload_fragment_mask        (inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_mask[3:0]      ), //i
    .io_input_cmd_payload_fragment_context     (inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_context[3:0]   ), //i
    .io_input_rsp_valid                        (inputLogic_converter_io_input_rsp_valid                                  ), //o
    .io_input_rsp_ready                        (inputLogic_spliter_io_output_rsp_ready                                   ), //i
    .io_input_rsp_payload_last                 (inputLogic_converter_io_input_rsp_payload_last                           ), //o
    .io_input_rsp_payload_fragment_opcode      (inputLogic_converter_io_input_rsp_payload_fragment_opcode                ), //o
    .io_input_rsp_payload_fragment_data        (inputLogic_converter_io_input_rsp_payload_fragment_data[31:0]            ), //o
    .io_input_rsp_payload_fragment_context     (inputLogic_converter_io_input_rsp_payload_fragment_context[3:0]          ), //o
    .io_inputBurstLast                         (inputLogic_spliter_io_outputBurstLast                                    ), //i
    .io_output_cmd_valid                       (inputLogic_converter_io_output_cmd_valid                                 ), //o
    .io_output_cmd_ready                       (io_output_cmd_fifo_io_push_ready                                         ), //i
    .io_output_cmd_payload_write               (inputLogic_converter_io_output_cmd_payload_write                         ), //o
    .io_output_cmd_payload_address             (inputLogic_converter_io_output_cmd_payload_address[24:0]                 ), //o
    .io_output_cmd_payload_context             (inputLogic_converter_io_output_cmd_payload_context[3:0]                  ), //o
    .io_output_cmd_payload_burstLast           (inputLogic_converter_io_output_cmd_payload_burstLast                     ), //o
    .io_output_cmd_payload_length              (inputLogic_converter_io_output_cmd_payload_length[3:0]                   ), //o
    .io_output_writeData_valid                 (inputLogic_converter_io_output_writeData_valid                           ), //o
    .io_output_writeData_ready                 (io_output_writeData_fifo_io_push_ready                                   ), //i
    .io_output_writeData_payload_data          (inputLogic_converter_io_output_writeData_payload_data[31:0]              ), //o
    .io_output_writeData_payload_mask          (inputLogic_converter_io_output_writeData_payload_mask[3:0]               ), //o
    .io_output_writeDataTocken                 (inputLogic_converter_io_output_writeDataTocken                           ), //o
    .io_output_rsp_valid                       (io_output_rsp_fifo_io_pop_valid                                          ), //i
    .io_output_rsp_ready                       (inputLogic_converter_io_output_rsp_ready                                 ), //o
    .io_output_rsp_payload_last                (io_output_rsp_fifo_io_pop_payload_last                                   ), //i
    .io_output_rsp_payload_fragment_data       (io_output_rsp_fifo_io_pop_payload_fragment_data[31:0]                    ), //i
    .io_output_rsp_payload_fragment_context    (io_output_rsp_fifo_io_pop_payload_fragment_context[3:0]                  ), //i
    .io_output_writeDataAdded                  (inputLogic_converter_io_output_writeDataAdded                            ), //o
    .clkout_system                             (clkout_system                                                            ), //i
    .systemCdCtrl_logic_outputReset            (systemCdCtrl_logic_outputReset                                           )  //i
  );
  StreamFifoLowLatency_1 io_output_cmd_fifo (
    .io_push_valid                     (inputLogic_converter_io_output_cmd_valid                  ), //i
    .io_push_ready                     (io_output_cmd_fifo_io_push_ready                          ), //o
    .io_push_payload_write             (inputLogic_converter_io_output_cmd_payload_write          ), //i
    .io_push_payload_address           (inputLogic_converter_io_output_cmd_payload_address[24:0]  ), //i
    .io_push_payload_context           (inputLogic_converter_io_output_cmd_payload_context[3:0]   ), //i
    .io_push_payload_burstLast         (inputLogic_converter_io_output_cmd_payload_burstLast      ), //i
    .io_push_payload_length            (inputLogic_converter_io_output_cmd_payload_length[3:0]    ), //i
    .io_pop_valid                      (io_output_cmd_fifo_io_pop_valid                           ), //o
    .io_pop_ready                      (cmdAddress_ready                                          ), //i
    .io_pop_payload_write              (io_output_cmd_fifo_io_pop_payload_write                   ), //o
    .io_pop_payload_address            (io_output_cmd_fifo_io_pop_payload_address[24:0]           ), //o
    .io_pop_payload_context            (io_output_cmd_fifo_io_pop_payload_context[3:0]            ), //o
    .io_pop_payload_burstLast          (io_output_cmd_fifo_io_pop_payload_burstLast               ), //o
    .io_pop_payload_length             (io_output_cmd_fifo_io_pop_payload_length[3:0]             ), //o
    .io_flush                          (1'b0                                                      ), //i
    .io_occupancy                      (io_output_cmd_fifo_io_occupancy[4:0]                      ), //o
    .clkout_system                     (clkout_system                                             ), //i
    .systemCdCtrl_logic_outputReset    (systemCdCtrl_logic_outputReset                            )  //i
  );
  StreamFifoLowLatency_2 io_output_rsp_fifo (
    .io_push_valid                       (io_output_rsp_valid                                      ), //i
    .io_push_ready                       (io_output_rsp_fifo_io_push_ready                         ), //o
    .io_push_payload_last                (io_output_rsp_payload_last                               ), //i
    .io_push_payload_fragment_data       (io_output_rsp_payload_fragment_data[31:0]                ), //i
    .io_push_payload_fragment_context    (io_output_rsp_payload_fragment_context[3:0]              ), //i
    .io_pop_valid                        (io_output_rsp_fifo_io_pop_valid                          ), //o
    .io_pop_ready                        (inputLogic_converter_io_output_rsp_ready                 ), //i
    .io_pop_payload_last                 (io_output_rsp_fifo_io_pop_payload_last                   ), //o
    .io_pop_payload_fragment_data        (io_output_rsp_fifo_io_pop_payload_fragment_data[31:0]    ), //o
    .io_pop_payload_fragment_context     (io_output_rsp_fifo_io_pop_payload_fragment_context[3:0]  ), //o
    .io_flush                            (1'b0                                                     ), //i
    .io_occupancy                        (io_output_rsp_fifo_io_occupancy[5:0]                     ), //o
    .clkout_system                       (clkout_system                                            ), //i
    .systemCdCtrl_logic_outputReset      (systemCdCtrl_logic_outputReset                           )  //i
  );
  StreamFifoLowLatency_3 io_output_writeData_fifo (
    .io_push_valid                     (inputLogic_converter_io_output_writeData_valid               ), //i
    .io_push_ready                     (io_output_writeData_fifo_io_push_ready                       ), //o
    .io_push_payload_data              (inputLogic_converter_io_output_writeData_payload_data[31:0]  ), //i
    .io_push_payload_mask              (inputLogic_converter_io_output_writeData_payload_mask[3:0]   ), //i
    .io_pop_valid                      (io_output_writeData_fifo_io_pop_valid                        ), //o
    .io_pop_ready                      (io_output_writeData_ready                                    ), //i
    .io_pop_payload_data               (io_output_writeData_fifo_io_pop_payload_data[31:0]           ), //o
    .io_pop_payload_mask               (io_output_writeData_fifo_io_pop_payload_mask[3:0]            ), //o
    .io_flush                          (1'b0                                                         ), //i
    .io_occupancy                      (io_output_writeData_fifo_io_occupancy[5:0]                   ), //o
    .clkout_system                     (clkout_system                                                ), //i
    .systemCdCtrl_logic_outputReset    (systemCdCtrl_logic_outputReset                               )  //i
  );
  assign io_input_cmd_ready = inputLogic_aligner_io_input_cmd_ready;
  assign io_input_rsp_valid = inputLogic_aligner_io_input_rsp_valid;
  assign io_input_rsp_payload_last = inputLogic_aligner_io_input_rsp_payload_last;
  assign io_input_rsp_payload_fragment_source = inputLogic_aligner_io_input_rsp_payload_fragment_source;
  assign io_input_rsp_payload_fragment_opcode = inputLogic_aligner_io_input_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = inputLogic_aligner_io_input_rsp_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = inputLogic_aligner_io_input_rsp_payload_fragment_context;
  always @(*) begin
    inputLogic_spliter_io_output_cmd_ready = inputLogic_spliter_io_output_cmd_m2sPipe_ready;
    if(when_Stream_l342) begin
      inputLogic_spliter_io_output_cmd_ready = 1'b1;
    end
  end

  assign when_Stream_l342 = (! inputLogic_spliter_io_output_cmd_m2sPipe_valid);
  assign inputLogic_spliter_io_output_cmd_m2sPipe_valid = inputLogic_spliter_io_output_cmd_rValid;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_payload_last = inputLogic_spliter_io_output_cmd_rData_last;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_opcode = inputLogic_spliter_io_output_cmd_rData_fragment_opcode;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_address = inputLogic_spliter_io_output_cmd_rData_fragment_address;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_length = inputLogic_spliter_io_output_cmd_rData_fragment_length;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_data = inputLogic_spliter_io_output_cmd_rData_fragment_data;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_mask = inputLogic_spliter_io_output_cmd_rData_fragment_mask;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_context = inputLogic_spliter_io_output_cmd_rData_fragment_context;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_ready = inputLogic_converter_io_input_cmd_ready;
  assign cmdAddress_valid = io_output_cmd_fifo_io_pop_valid;
  assign cmdAddress_payload_write = io_output_cmd_fifo_io_pop_payload_write;
  assign cmdAddress_payload_address = io_output_cmd_fifo_io_pop_payload_address;
  assign cmdAddress_payload_context = io_output_cmd_fifo_io_pop_payload_context;
  assign cmdAddress_payload_burstLast = io_output_cmd_fifo_io_pop_payload_burstLast;
  assign cmdAddress_payload_length = io_output_cmd_fifo_io_pop_payload_length;
  assign io_output_rsp_ready = io_output_rsp_fifo_io_push_ready;
  assign io_output_writeData_valid = io_output_writeData_fifo_io_pop_valid;
  assign io_output_writeData_payload_data = io_output_writeData_fifo_io_pop_payload_data;
  assign io_output_writeData_payload_mask = io_output_writeData_fifo_io_pop_payload_mask;
  assign inputLogic_converter_io_output_writeData_fire = (inputLogic_converter_io_output_writeData_valid && io_output_writeData_fifo_io_push_ready);
  assign io_output_writeDataTocken = _zz_io_output_writeDataTocken;
  always @(*) begin
    cmdAddress_ready = cmdAddress_m2sPipe_ready;
    if(when_Stream_l342_1) begin
      cmdAddress_ready = 1'b1;
    end
  end

  assign when_Stream_l342_1 = (! cmdAddress_m2sPipe_valid);
  assign cmdAddress_m2sPipe_valid = cmdAddress_rValid;
  assign cmdAddress_m2sPipe_payload_write = cmdAddress_rData_write;
  assign cmdAddress_m2sPipe_payload_address = cmdAddress_rData_address;
  assign cmdAddress_m2sPipe_payload_context = cmdAddress_rData_context;
  assign cmdAddress_m2sPipe_payload_burstLast = cmdAddress_rData_burstLast;
  assign cmdAddress_m2sPipe_payload_length = cmdAddress_rData_length;
  assign _zz_io_output_cmd_valid = (! io_refresh_regNext);
  assign cmdAddress_m2sPipe_ready = (io_output_cmd_ready && _zz_io_output_cmd_valid);
  assign io_output_cmd_valid = (cmdAddress_m2sPipe_valid && _zz_io_output_cmd_valid);
  assign io_output_cmd_payload_write = cmdAddress_m2sPipe_payload_write;
  assign io_output_cmd_payload_address = cmdAddress_m2sPipe_payload_address;
  assign io_output_cmd_payload_context = cmdAddress_m2sPipe_payload_context;
  assign io_output_cmd_payload_burstLast = cmdAddress_m2sPipe_payload_burstLast;
  assign io_output_cmd_payload_length = cmdAddress_m2sPipe_payload_length;
  assign io_output_rsp_isStall = (io_output_rsp_valid && (! io_output_rsp_ready));
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      inputLogic_spliter_io_output_cmd_rValid <= 1'b0;
      _zz_io_output_writeDataTocken <= 1'b0;
      cmdAddress_rValid <= 1'b0;
    end else begin
      if(inputLogic_spliter_io_output_cmd_ready) begin
        inputLogic_spliter_io_output_cmd_rValid <= inputLogic_spliter_io_output_cmd_valid;
      end
      _zz_io_output_writeDataTocken <= inputLogic_converter_io_output_writeData_fire;
      if(cmdAddress_ready) begin
        cmdAddress_rValid <= cmdAddress_valid;
      end
      `ifndef SYNTHESIS
        `ifdef FORMAL
          assert((! io_output_rsp_isStall));
        `else
          if(!(! io_output_rsp_isStall)) begin
            $display("FAILURE SDRAM rsp buffer stalled !");
            $finish;
          end
        `endif
      `endif
    end
  end

  always @(posedge clkout_system) begin
    if(inputLogic_spliter_io_output_cmd_ready) begin
      inputLogic_spliter_io_output_cmd_rData_last <= inputLogic_spliter_io_output_cmd_payload_last;
      inputLogic_spliter_io_output_cmd_rData_fragment_opcode <= inputLogic_spliter_io_output_cmd_payload_fragment_opcode;
      inputLogic_spliter_io_output_cmd_rData_fragment_address <= inputLogic_spliter_io_output_cmd_payload_fragment_address;
      inputLogic_spliter_io_output_cmd_rData_fragment_length <= inputLogic_spliter_io_output_cmd_payload_fragment_length;
      inputLogic_spliter_io_output_cmd_rData_fragment_data <= inputLogic_spliter_io_output_cmd_payload_fragment_data;
      inputLogic_spliter_io_output_cmd_rData_fragment_mask <= inputLogic_spliter_io_output_cmd_payload_fragment_mask;
      inputLogic_spliter_io_output_cmd_rData_fragment_context <= inputLogic_spliter_io_output_cmd_payload_fragment_context;
    end
    if(cmdAddress_ready) begin
      cmdAddress_rData_write <= cmdAddress_payload_write;
      cmdAddress_rData_address <= cmdAddress_payload_address;
      cmdAddress_rData_context <= cmdAddress_payload_context;
      cmdAddress_rData_burstLast <= cmdAddress_payload_burstLast;
      cmdAddress_rData_length <= cmdAddress_payload_length;
    end
    io_refresh_regNext <= io_refresh;
  end


endmodule

module StreamArbiter (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input               io_inputs_0_payload_last,
  input      [0:0]    io_inputs_0_payload_fragment_source,
  input      [0:0]    io_inputs_0_payload_fragment_opcode,
  input      [15:0]   io_inputs_0_payload_fragment_address,
  input      [1:0]    io_inputs_0_payload_fragment_length,
  input      [31:0]   io_inputs_0_payload_fragment_data,
  input      [3:0]    io_inputs_0_payload_fragment_mask,
  input      [2:0]    io_inputs_0_payload_fragment_context,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input               io_inputs_1_payload_last,
  input      [0:0]    io_inputs_1_payload_fragment_source,
  input      [0:0]    io_inputs_1_payload_fragment_opcode,
  input      [15:0]   io_inputs_1_payload_fragment_address,
  input      [1:0]    io_inputs_1_payload_fragment_length,
  input      [31:0]   io_inputs_1_payload_fragment_data,
  input      [3:0]    io_inputs_1_payload_fragment_mask,
  input      [2:0]    io_inputs_1_payload_fragment_context,
  output              io_output_valid,
  input               io_output_ready,
  output              io_output_payload_last,
  output     [0:0]    io_output_payload_fragment_source,
  output     [0:0]    io_output_payload_fragment_opcode,
  output     [15:0]   io_output_payload_fragment_address,
  output     [1:0]    io_output_payload_fragment_length,
  output     [31:0]   io_output_payload_fragment_data,
  output     [3:0]    io_output_payload_fragment_mask,
  output     [2:0]    io_output_payload_fragment_context,
  output     [0:0]    io_chosen,
  output     [1:0]    io_chosenOH,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [1:0]    _zz_maskProposal_1_1;
  wire       [1:0]    _zz_maskProposal_1_2;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire       [1:0]    _zz_maskProposal_1;
  wire                io_output_fire;
  wire                when_Stream_l523;
  wire                _zz_io_chosen;

  assign _zz_maskProposal_1_1 = (_zz_maskProposal_1 & (~ _zz_maskProposal_1_2));
  assign _zz_maskProposal_1_2 = (_zz_maskProposal_1 - 2'b01);
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign _zz_maskProposal_1 = {io_inputs_1_valid,io_inputs_0_valid};
  assign maskProposal_0 = io_inputs_0_valid;
  assign maskProposal_1 = _zz_maskProposal_1_1[1];
  assign io_output_fire = (io_output_valid && io_output_ready);
  assign when_Stream_l523 = (io_output_fire && io_output_payload_last);
  assign io_output_valid = ((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1));
  assign io_output_payload_last = (maskRouted_0 ? io_inputs_0_payload_last : io_inputs_1_payload_last);
  assign io_output_payload_fragment_source = (maskRouted_0 ? io_inputs_0_payload_fragment_source : io_inputs_1_payload_fragment_source);
  assign io_output_payload_fragment_opcode = (maskRouted_0 ? io_inputs_0_payload_fragment_opcode : io_inputs_1_payload_fragment_opcode);
  assign io_output_payload_fragment_address = (maskRouted_0 ? io_inputs_0_payload_fragment_address : io_inputs_1_payload_fragment_address);
  assign io_output_payload_fragment_length = (maskRouted_0 ? io_inputs_0_payload_fragment_length : io_inputs_1_payload_fragment_length);
  assign io_output_payload_fragment_data = (maskRouted_0 ? io_inputs_0_payload_fragment_data : io_inputs_1_payload_fragment_data);
  assign io_output_payload_fragment_mask = (maskRouted_0 ? io_inputs_0_payload_fragment_mask : io_inputs_1_payload_fragment_mask);
  assign io_output_payload_fragment_context = (maskRouted_0 ? io_inputs_0_payload_fragment_context : io_inputs_1_payload_fragment_context);
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_chosenOH = {maskRouted_1,maskRouted_0};
  assign _zz_io_chosen = io_chosenOH[1];
  assign io_chosen = _zz_io_chosen;
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      locked <= 1'b0;
    end else begin
      if(io_output_valid) begin
        locked <= 1'b1;
      end
      if(when_Stream_l523) begin
        locked <= 1'b0;
      end
    end
  end

  always @(posedge clkout_system) begin
    if(io_output_valid) begin
      maskLocked_0 <= maskRouted_0;
      maskLocked_1 <= maskRouted_1;
    end
  end


endmodule

module FlowCCByToggle (
  input               io_input_valid,
  input               io_input_payload_last,
  input      [0:0]    io_input_payload_fragment,
  output              io_output_valid,
  output              io_output_payload_last,
  output     [0:0]    io_output_payload_fragment,
  input               io_jtag_tck,
  input               clkout_system,
  input               debugCdCtrl_logic_outputReset
);

  wire                inputArea_target_buffercc_io_dataOut;
  wire                outHitSignal;
  reg                 inputArea_target = 0;
  reg                 inputArea_data_last;
  reg        [0:0]    inputArea_data_fragment;
  wire                outputArea_target;
  reg                 outputArea_hit;
  wire                outputArea_flow_valid;
  wire                outputArea_flow_payload_last;
  wire       [0:0]    outputArea_flow_payload_fragment;
  reg                 outputArea_flow_m2sPipe_valid;
  reg                 outputArea_flow_m2sPipe_payload_last;
  reg        [0:0]    outputArea_flow_m2sPipe_payload_fragment;

  BufferCC_1 inputArea_target_buffercc (
    .io_dataIn                        (inputArea_target                      ), //i
    .io_dataOut                       (inputArea_target_buffercc_io_dataOut  ), //o
    .clkout_system                    (clkout_system                         ), //i
    .debugCdCtrl_logic_outputReset    (debugCdCtrl_logic_outputReset         )  //i
  );
  assign outputArea_target = inputArea_target_buffercc_io_dataOut;
  assign outputArea_flow_valid = (outputArea_target != outputArea_hit);
  assign outputArea_flow_payload_last = inputArea_data_last;
  assign outputArea_flow_payload_fragment = inputArea_data_fragment;
  assign io_output_valid = outputArea_flow_m2sPipe_valid;
  assign io_output_payload_last = outputArea_flow_m2sPipe_payload_last;
  assign io_output_payload_fragment = outputArea_flow_m2sPipe_payload_fragment;
  always @(posedge io_jtag_tck) begin
    if(io_input_valid) begin
      inputArea_target <= (! inputArea_target);
      inputArea_data_last <= io_input_payload_last;
      inputArea_data_fragment <= io_input_payload_fragment;
    end
  end

  always @(posedge clkout_system) begin
    outputArea_hit <= outputArea_target;
    if(outputArea_flow_valid) begin
      outputArea_flow_m2sPipe_payload_last <= outputArea_flow_payload_last;
      outputArea_flow_m2sPipe_payload_fragment <= outputArea_flow_payload_fragment;
    end
  end

  always @(posedge clkout_system) begin
    if(debugCdCtrl_logic_outputReset) begin
      outputArea_flow_m2sPipe_valid <= 1'b0;
    end else begin
      outputArea_flow_m2sPipe_valid <= outputArea_flow_valid;
    end
  end


endmodule

module DataCache (
  input               io_cpu_execute_isValid,
  input      [31:0]   io_cpu_execute_address,
  output reg          io_cpu_execute_haltIt,
  input               io_cpu_execute_args_wr,
  input      [1:0]    io_cpu_execute_args_size,
  input               io_cpu_execute_args_totalyConsistent,
  output              io_cpu_execute_refilling,
  input               io_cpu_memory_isValid,
  input               io_cpu_memory_isStuck,
  output              io_cpu_memory_isWrite,
  input      [31:0]   io_cpu_memory_address,
  input      [31:0]   io_cpu_memory_mmuRsp_physicalAddress,
  input               io_cpu_memory_mmuRsp_isIoAccess,
  input               io_cpu_memory_mmuRsp_isPaging,
  input               io_cpu_memory_mmuRsp_allowRead,
  input               io_cpu_memory_mmuRsp_allowWrite,
  input               io_cpu_memory_mmuRsp_allowExecute,
  input               io_cpu_memory_mmuRsp_exception,
  input               io_cpu_memory_mmuRsp_refilling,
  input               io_cpu_memory_mmuRsp_bypassTranslation,
  input               io_cpu_writeBack_isValid,
  input               io_cpu_writeBack_isStuck,
  input               io_cpu_writeBack_isUser,
  output reg          io_cpu_writeBack_haltIt,
  output              io_cpu_writeBack_isWrite,
  input      [31:0]   io_cpu_writeBack_storeData,
  output reg [31:0]   io_cpu_writeBack_data,
  input      [31:0]   io_cpu_writeBack_address,
  output              io_cpu_writeBack_mmuException,
  output              io_cpu_writeBack_unalignedAccess,
  output reg          io_cpu_writeBack_accessError,
  output              io_cpu_writeBack_keepMemRspData,
  input               io_cpu_writeBack_fence_SW,
  input               io_cpu_writeBack_fence_SR,
  input               io_cpu_writeBack_fence_SO,
  input               io_cpu_writeBack_fence_SI,
  input               io_cpu_writeBack_fence_PW,
  input               io_cpu_writeBack_fence_PR,
  input               io_cpu_writeBack_fence_PO,
  input               io_cpu_writeBack_fence_PI,
  input      [3:0]    io_cpu_writeBack_fence_FM,
  output              io_cpu_writeBack_exclusiveOk,
  output reg          io_cpu_redo,
  input               io_cpu_flush_valid,
  output              io_cpu_flush_ready,
  output reg          io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output reg          io_mem_cmd_payload_wr,
  output              io_mem_cmd_payload_uncached,
  output reg [31:0]   io_mem_cmd_payload_address,
  output     [31:0]   io_mem_cmd_payload_data,
  output     [3:0]    io_mem_cmd_payload_mask,
  output reg [2:0]    io_mem_cmd_payload_size,
  output              io_mem_cmd_payload_last,
  input               io_mem_rsp_valid,
  input               io_mem_rsp_payload_last,
  input      [31:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [21:0]   _zz_ways_0_tags_port0;
  reg        [31:0]   _zz_ways_0_data_port0;
  wire       [21:0]   _zz_ways_0_tags_port;
  wire       [9:0]    _zz_stage0_dataColisions;
  wire       [9:0]    _zz__zz_stageA_dataColisions;
  wire       [0:0]    _zz_when;
  wire       [2:0]    _zz_loader_counter_valueNext;
  wire       [0:0]    _zz_loader_counter_valueNext_1;
  wire       [1:0]    _zz_loader_waysAllocator;
  reg                 _zz_1;
  reg                 _zz_2;
  wire                haltCpu;
  reg                 tagsReadCmd_valid;
  reg        [6:0]    tagsReadCmd_payload;
  reg                 tagsWriteCmd_valid;
  reg        [0:0]    tagsWriteCmd_payload_way;
  reg        [6:0]    tagsWriteCmd_payload_address;
  reg                 tagsWriteCmd_payload_data_valid;
  reg                 tagsWriteCmd_payload_data_error;
  reg        [19:0]   tagsWriteCmd_payload_data_address;
  reg                 tagsWriteLastCmd_valid;
  reg        [0:0]    tagsWriteLastCmd_payload_way;
  reg        [6:0]    tagsWriteLastCmd_payload_address;
  reg                 tagsWriteLastCmd_payload_data_valid;
  reg                 tagsWriteLastCmd_payload_data_error;
  reg        [19:0]   tagsWriteLastCmd_payload_data_address;
  reg                 dataReadCmd_valid;
  reg        [9:0]    dataReadCmd_payload;
  reg                 dataWriteCmd_valid;
  reg        [0:0]    dataWriteCmd_payload_way;
  reg        [9:0]    dataWriteCmd_payload_address;
  reg        [31:0]   dataWriteCmd_payload_data;
  reg        [3:0]    dataWriteCmd_payload_mask;
  wire                when_DataCache_l623;
  reg        [6:0]    tagsReadCmd_payload_regNextWhen;
  wire                ways_0_tagsReadRsp_valid;
  wire                ways_0_tagsReadRsp_error;
  wire       [19:0]   ways_0_tagsReadRsp_address;
  wire       [21:0]   _zz_ways_0_tagsReadRsp_valid;
  wire                _zz_ways_0_dataReadRspMem;
  wire       [31:0]   ways_0_dataReadRspMem;
  wire       [31:0]   ways_0_dataReadRsp;
  wire                when_DataCache_l635;
  wire                when_DataCache_l638;
  wire                when_DataCache_l657;
  wire                rspSync;
  wire                rspLast;
  reg                 memCmdSent;
  wire                io_mem_cmd_fire;
  wire                when_DataCache_l679;
  reg        [3:0]    _zz_stage0_mask;
  wire       [3:0]    stage0_mask;
  wire       [0:0]    stage0_dataColisions;
  wire       [0:0]    stage0_wayInvalidate;
  wire                stage0_isAmo;
  wire                when_DataCache_l764;
  reg                 stageA_request_wr;
  reg        [1:0]    stageA_request_size;
  reg                 stageA_request_totalyConsistent;
  wire                when_DataCache_l764_1;
  reg        [3:0]    stageA_mask;
  wire                stageA_isAmo;
  wire                stageA_isLrsc;
  wire       [0:0]    stageA_wayHits;
  wire                when_DataCache_l764_2;
  reg        [0:0]    stageA_wayInvalidate;
  wire                when_DataCache_l764_3;
  reg        [0:0]    stage0_dataColisions_regNextWhen;
  wire       [0:0]    _zz_stageA_dataColisions;
  wire       [0:0]    stageA_dataColisions;
  wire                when_DataCache_l815;
  reg                 stageB_request_wr;
  reg        [1:0]    stageB_request_size;
  reg                 stageB_request_totalyConsistent;
  reg                 stageB_mmuRspFreeze;
  wire                when_DataCache_l817;
  reg        [31:0]   stageB_mmuRsp_physicalAddress;
  reg                 stageB_mmuRsp_isIoAccess;
  reg                 stageB_mmuRsp_isPaging;
  reg                 stageB_mmuRsp_allowRead;
  reg                 stageB_mmuRsp_allowWrite;
  reg                 stageB_mmuRsp_allowExecute;
  reg                 stageB_mmuRsp_exception;
  reg                 stageB_mmuRsp_refilling;
  reg                 stageB_mmuRsp_bypassTranslation;
  wire                when_DataCache_l814;
  reg                 stageB_tagsReadRsp_0_valid;
  reg                 stageB_tagsReadRsp_0_error;
  reg        [19:0]   stageB_tagsReadRsp_0_address;
  wire                when_DataCache_l814_1;
  reg        [31:0]   stageB_dataReadRsp_0;
  wire                when_DataCache_l813;
  reg        [0:0]    stageB_wayInvalidate;
  wire                stageB_consistancyHazard;
  wire                when_DataCache_l813_1;
  reg        [0:0]    stageB_dataColisions;
  wire                when_DataCache_l813_2;
  reg                 stageB_unaligned;
  wire                when_DataCache_l813_3;
  reg        [0:0]    stageB_waysHitsBeforeInvalidate;
  wire       [0:0]    stageB_waysHits;
  wire                stageB_waysHit;
  wire       [31:0]   stageB_dataMux;
  wire                when_DataCache_l813_4;
  reg        [3:0]    stageB_mask;
  reg                 stageB_loaderValid;
  wire       [31:0]   stageB_ioMemRspMuxed;
  reg                 stageB_flusher_waitDone;
  wire                stageB_flusher_hold;
  reg        [7:0]    stageB_flusher_counter;
  wire                when_DataCache_l843;
  wire                when_DataCache_l849;
  reg                 stageB_flusher_start;
  wire                stageB_isAmo;
  wire                stageB_isAmoCached;
  wire                stageB_isExternalLsrc;
  wire                stageB_isExternalAmo;
  wire       [31:0]   stageB_requestDataBypass;
  reg                 stageB_cpuWriteToCache;
  wire                when_DataCache_l912;
  wire                stageB_badPermissions;
  wire                stageB_loadStoreFault;
  wire                stageB_bypassCache;
  wire                when_DataCache_l981;
  wire                when_DataCache_l990;
  wire                when_DataCache_l995;
  wire                when_DataCache_l1006;
  wire                when_DataCache_l1018;
  wire                when_DataCache_l977;
  wire                when_DataCache_l1052;
  wire                when_DataCache_l1061;
  reg                 loader_valid;
  reg                 loader_counter_willIncrement;
  wire                loader_counter_willClear;
  reg        [2:0]    loader_counter_valueNext;
  reg        [2:0]    loader_counter_value;
  wire                loader_counter_willOverflowIfInc;
  wire                loader_counter_willOverflow;
  reg        [0:0]    loader_waysAllocator;
  reg                 loader_error;
  wire                loader_kill;
  reg                 loader_killReg;
  wire                when_DataCache_l1076;
  wire                loader_done;
  wire                when_DataCache_l1104;
  reg                 loader_valid_regNext;
  wire                when_DataCache_l1108;
  wire                when_DataCache_l1111;
  (* ram_style = "distributed" *) reg [21:0] ways_0_tags [0:127];
  reg [7:0] ways_0_data_symbol0 [0:1023];
  reg [7:0] ways_0_data_symbol1 [0:1023];
  reg [7:0] ways_0_data_symbol2 [0:1023];
  reg [7:0] ways_0_data_symbol3 [0:1023];
  reg [7:0] _zz_ways_0_datasymbol_read;
  reg [7:0] _zz_ways_0_datasymbol_read_1;
  reg [7:0] _zz_ways_0_datasymbol_read_2;
  reg [7:0] _zz_ways_0_datasymbol_read_3;

  assign _zz_stage0_dataColisions = (io_cpu_execute_address[11 : 2] >>> 0);
  assign _zz__zz_stageA_dataColisions = (io_cpu_memory_address[11 : 2] >>> 0);
  assign _zz_when = 1'b1;
  assign _zz_loader_counter_valueNext_1 = loader_counter_willIncrement;
  assign _zz_loader_counter_valueNext = {2'd0, _zz_loader_counter_valueNext_1};
  assign _zz_loader_waysAllocator = {loader_waysAllocator,loader_waysAllocator[0]};
  assign _zz_ways_0_tags_port = {tagsWriteCmd_payload_data_address,{tagsWriteCmd_payload_data_error,tagsWriteCmd_payload_data_valid}};
  assign _zz_ways_0_tags_port0 = ways_0_tags[tagsReadCmd_payload_regNextWhen];
  always @(posedge clkout_system) begin
    if(_zz_2) begin
      ways_0_tags[tagsWriteCmd_payload_address] <= _zz_ways_0_tags_port;
    end
  end

  always @(*) begin
    _zz_ways_0_data_port0 = {_zz_ways_0_datasymbol_read_3, _zz_ways_0_datasymbol_read_2, _zz_ways_0_datasymbol_read_1, _zz_ways_0_datasymbol_read};
  end
  always @(posedge clkout_system) begin
    if(_zz_ways_0_dataReadRspMem) begin
      _zz_ways_0_datasymbol_read <= ways_0_data_symbol0[dataReadCmd_payload];
      _zz_ways_0_datasymbol_read_1 <= ways_0_data_symbol1[dataReadCmd_payload];
      _zz_ways_0_datasymbol_read_2 <= ways_0_data_symbol2[dataReadCmd_payload];
      _zz_ways_0_datasymbol_read_3 <= ways_0_data_symbol3[dataReadCmd_payload];
    end
  end

  always @(posedge clkout_system) begin
    if(dataWriteCmd_payload_mask[0] && _zz_1) begin
      ways_0_data_symbol0[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[7 : 0];
    end
    if(dataWriteCmd_payload_mask[1] && _zz_1) begin
      ways_0_data_symbol1[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[15 : 8];
    end
    if(dataWriteCmd_payload_mask[2] && _zz_1) begin
      ways_0_data_symbol2[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[23 : 16];
    end
    if(dataWriteCmd_payload_mask[3] && _zz_1) begin
      ways_0_data_symbol3[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[31 : 24];
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(when_DataCache_l638) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    _zz_2 = 1'b0;
    if(when_DataCache_l635) begin
      _zz_2 = 1'b1;
    end
  end

  assign haltCpu = 1'b0;
  assign when_DataCache_l623 = (io_cpu_execute_isValid && (! io_cpu_memory_isStuck));
  assign _zz_ways_0_tagsReadRsp_valid = _zz_ways_0_tags_port0;
  assign ways_0_tagsReadRsp_valid = _zz_ways_0_tagsReadRsp_valid[0];
  assign ways_0_tagsReadRsp_error = _zz_ways_0_tagsReadRsp_valid[1];
  assign ways_0_tagsReadRsp_address = _zz_ways_0_tagsReadRsp_valid[21 : 2];
  assign _zz_ways_0_dataReadRspMem = (dataReadCmd_valid && (! io_cpu_memory_isStuck));
  assign ways_0_dataReadRspMem = _zz_ways_0_data_port0;
  assign ways_0_dataReadRsp = ways_0_dataReadRspMem[31 : 0];
  assign when_DataCache_l635 = (tagsWriteCmd_valid && tagsWriteCmd_payload_way[0]);
  assign when_DataCache_l638 = (dataWriteCmd_valid && dataWriteCmd_payload_way[0]);
  always @(*) begin
    tagsReadCmd_valid = 1'b0;
    if(when_DataCache_l657) begin
      tagsReadCmd_valid = 1'b1;
    end
  end

  always @(*) begin
    tagsReadCmd_payload = 7'bxxxxxxx;
    if(when_DataCache_l657) begin
      tagsReadCmd_payload = io_cpu_execute_address[11 : 5];
    end
  end

  always @(*) begin
    dataReadCmd_valid = 1'b0;
    if(when_DataCache_l657) begin
      dataReadCmd_valid = 1'b1;
    end
  end

  always @(*) begin
    dataReadCmd_payload = 10'bxxxxxxxxxx;
    if(when_DataCache_l657) begin
      dataReadCmd_payload = io_cpu_execute_address[11 : 2];
    end
  end

  always @(*) begin
    tagsWriteCmd_valid = 1'b0;
    if(when_DataCache_l843) begin
      tagsWriteCmd_valid = 1'b1;
    end
    if(when_DataCache_l1052) begin
      tagsWriteCmd_valid = 1'b0;
    end
    if(loader_done) begin
      tagsWriteCmd_valid = 1'b1;
    end
  end

  always @(*) begin
    tagsWriteCmd_payload_way = 1'bx;
    if(when_DataCache_l843) begin
      tagsWriteCmd_payload_way = 1'b1;
    end
    if(loader_done) begin
      tagsWriteCmd_payload_way = loader_waysAllocator;
    end
  end

  always @(*) begin
    tagsWriteCmd_payload_address = 7'bxxxxxxx;
    if(when_DataCache_l843) begin
      tagsWriteCmd_payload_address = stageB_flusher_counter[6:0];
    end
    if(loader_done) begin
      tagsWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 5];
    end
  end

  always @(*) begin
    tagsWriteCmd_payload_data_valid = 1'bx;
    if(when_DataCache_l843) begin
      tagsWriteCmd_payload_data_valid = 1'b0;
    end
    if(loader_done) begin
      tagsWriteCmd_payload_data_valid = (! (loader_kill || loader_killReg));
    end
  end

  always @(*) begin
    tagsWriteCmd_payload_data_error = 1'bx;
    if(loader_done) begin
      tagsWriteCmd_payload_data_error = (loader_error || (io_mem_rsp_valid && io_mem_rsp_payload_error));
    end
  end

  always @(*) begin
    tagsWriteCmd_payload_data_address = 20'bxxxxxxxxxxxxxxxxxxxx;
    if(loader_done) begin
      tagsWriteCmd_payload_data_address = stageB_mmuRsp_physicalAddress[31 : 12];
    end
  end

  always @(*) begin
    dataWriteCmd_valid = 1'b0;
    if(stageB_cpuWriteToCache) begin
      if(when_DataCache_l912) begin
        dataWriteCmd_valid = 1'b1;
      end
    end
    if(when_DataCache_l1052) begin
      dataWriteCmd_valid = 1'b0;
    end
    if(when_DataCache_l1076) begin
      dataWriteCmd_valid = 1'b1;
    end
  end

  always @(*) begin
    dataWriteCmd_payload_way = 1'bx;
    if(stageB_cpuWriteToCache) begin
      dataWriteCmd_payload_way = stageB_waysHits;
    end
    if(when_DataCache_l1076) begin
      dataWriteCmd_payload_way = loader_waysAllocator;
    end
  end

  always @(*) begin
    dataWriteCmd_payload_address = 10'bxxxxxxxxxx;
    if(stageB_cpuWriteToCache) begin
      dataWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 2];
    end
    if(when_DataCache_l1076) begin
      dataWriteCmd_payload_address = {stageB_mmuRsp_physicalAddress[11 : 5],loader_counter_value};
    end
  end

  always @(*) begin
    dataWriteCmd_payload_data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    if(stageB_cpuWriteToCache) begin
      dataWriteCmd_payload_data[31 : 0] = stageB_requestDataBypass;
    end
    if(when_DataCache_l1076) begin
      dataWriteCmd_payload_data = io_mem_rsp_payload_data;
    end
  end

  always @(*) begin
    dataWriteCmd_payload_mask = 4'bxxxx;
    if(stageB_cpuWriteToCache) begin
      dataWriteCmd_payload_mask = 4'b0000;
      if(_zz_when[0]) begin
        dataWriteCmd_payload_mask[3 : 0] = stageB_mask;
      end
    end
    if(when_DataCache_l1076) begin
      dataWriteCmd_payload_mask = 4'b1111;
    end
  end

  assign when_DataCache_l657 = (io_cpu_execute_isValid && (! io_cpu_memory_isStuck));
  always @(*) begin
    io_cpu_execute_haltIt = 1'b0;
    if(when_DataCache_l843) begin
      io_cpu_execute_haltIt = 1'b1;
    end
  end

  assign rspSync = 1'b1;
  assign rspLast = 1'b1;
  assign io_mem_cmd_fire = (io_mem_cmd_valid && io_mem_cmd_ready);
  assign when_DataCache_l679 = (! io_cpu_writeBack_isStuck);
  always @(*) begin
    _zz_stage0_mask = 4'bxxxx;
    case(io_cpu_execute_args_size)
      2'b00 : begin
        _zz_stage0_mask = 4'b0001;
      end
      2'b01 : begin
        _zz_stage0_mask = 4'b0011;
      end
      2'b10 : begin
        _zz_stage0_mask = 4'b1111;
      end
      default : begin
      end
    endcase
  end

  assign stage0_mask = (_zz_stage0_mask <<< io_cpu_execute_address[1 : 0]);
  assign stage0_dataColisions[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == _zz_stage0_dataColisions)) && ((stage0_mask & dataWriteCmd_payload_mask[3 : 0]) != 4'b0000));
  assign stage0_wayInvalidate = 1'b0;
  assign stage0_isAmo = 1'b0;
  assign when_DataCache_l764 = (! io_cpu_memory_isStuck);
  assign when_DataCache_l764_1 = (! io_cpu_memory_isStuck);
  assign io_cpu_memory_isWrite = stageA_request_wr;
  assign stageA_isAmo = 1'b0;
  assign stageA_isLrsc = 1'b0;
  assign stageA_wayHits = ((io_cpu_memory_mmuRsp_physicalAddress[31 : 12] == ways_0_tagsReadRsp_address) && ways_0_tagsReadRsp_valid);
  assign when_DataCache_l764_2 = (! io_cpu_memory_isStuck);
  assign when_DataCache_l764_3 = (! io_cpu_memory_isStuck);
  assign _zz_stageA_dataColisions[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == _zz__zz_stageA_dataColisions)) && ((stageA_mask & dataWriteCmd_payload_mask[3 : 0]) != 4'b0000));
  assign stageA_dataColisions = (stage0_dataColisions_regNextWhen | _zz_stageA_dataColisions);
  assign when_DataCache_l815 = (! io_cpu_writeBack_isStuck);
  always @(*) begin
    stageB_mmuRspFreeze = 1'b0;
    if(when_DataCache_l1111) begin
      stageB_mmuRspFreeze = 1'b1;
    end
  end

  assign when_DataCache_l817 = ((! io_cpu_writeBack_isStuck) && (! stageB_mmuRspFreeze));
  assign when_DataCache_l814 = (! io_cpu_writeBack_isStuck);
  assign when_DataCache_l814_1 = (! io_cpu_writeBack_isStuck);
  assign when_DataCache_l813 = (! io_cpu_writeBack_isStuck);
  assign stageB_consistancyHazard = 1'b0;
  assign when_DataCache_l813_1 = (! io_cpu_writeBack_isStuck);
  assign when_DataCache_l813_2 = (! io_cpu_writeBack_isStuck);
  assign when_DataCache_l813_3 = (! io_cpu_writeBack_isStuck);
  assign stageB_waysHits = (stageB_waysHitsBeforeInvalidate & (~ stageB_wayInvalidate));
  assign stageB_waysHit = (|stageB_waysHits);
  assign stageB_dataMux = stageB_dataReadRsp_0;
  assign when_DataCache_l813_4 = (! io_cpu_writeBack_isStuck);
  always @(*) begin
    stageB_loaderValid = 1'b0;
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(!when_DataCache_l977) begin
          if(!when_DataCache_l990) begin
            if(io_mem_cmd_ready) begin
              stageB_loaderValid = 1'b1;
            end
          end
        end
      end
    end
    if(when_DataCache_l1052) begin
      stageB_loaderValid = 1'b0;
    end
  end

  assign stageB_ioMemRspMuxed = io_mem_rsp_payload_data[31 : 0];
  always @(*) begin
    io_cpu_writeBack_haltIt = 1'b1;
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(when_DataCache_l977) begin
          if(when_DataCache_l981) begin
            io_cpu_writeBack_haltIt = 1'b0;
          end
        end else begin
          if(when_DataCache_l990) begin
            if(when_DataCache_l995) begin
              io_cpu_writeBack_haltIt = 1'b0;
            end
          end
        end
      end
    end
    if(when_DataCache_l1052) begin
      io_cpu_writeBack_haltIt = 1'b0;
    end
  end

  assign stageB_flusher_hold = 1'b0;
  assign when_DataCache_l843 = (! stageB_flusher_counter[7]);
  assign when_DataCache_l849 = (! stageB_flusher_hold);
  assign io_cpu_flush_ready = (stageB_flusher_waitDone && stageB_flusher_counter[7]);
  assign stageB_isAmo = 1'b0;
  assign stageB_isAmoCached = 1'b0;
  assign stageB_isExternalLsrc = 1'b0;
  assign stageB_isExternalAmo = 1'b0;
  assign stageB_requestDataBypass = io_cpu_writeBack_storeData;
  always @(*) begin
    stageB_cpuWriteToCache = 1'b0;
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(!when_DataCache_l977) begin
          if(when_DataCache_l990) begin
            stageB_cpuWriteToCache = 1'b1;
          end
        end
      end
    end
  end

  assign when_DataCache_l912 = (stageB_request_wr && stageB_waysHit);
  assign stageB_badPermissions = (((! stageB_mmuRsp_allowWrite) && stageB_request_wr) || ((! stageB_mmuRsp_allowRead) && ((! stageB_request_wr) || stageB_isAmo)));
  assign stageB_loadStoreFault = (io_cpu_writeBack_isValid && (stageB_mmuRsp_exception || stageB_badPermissions));
  always @(*) begin
    io_cpu_redo = 1'b0;
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(!when_DataCache_l977) begin
          if(when_DataCache_l990) begin
            if(when_DataCache_l1006) begin
              io_cpu_redo = 1'b1;
            end
          end
        end
      end
    end
    if(when_DataCache_l1061) begin
      io_cpu_redo = 1'b1;
    end
    if(when_DataCache_l1108) begin
      io_cpu_redo = 1'b1;
    end
  end

  always @(*) begin
    io_cpu_writeBack_accessError = 1'b0;
    if(stageB_bypassCache) begin
      io_cpu_writeBack_accessError = ((((! stageB_request_wr) && 1'b1) && io_mem_rsp_valid) && io_mem_rsp_payload_error);
    end else begin
      io_cpu_writeBack_accessError = (((stageB_waysHits & stageB_tagsReadRsp_0_error) != 1'b0) || (stageB_loadStoreFault && (! stageB_mmuRsp_isPaging)));
    end
  end

  assign io_cpu_writeBack_mmuException = (stageB_loadStoreFault && stageB_mmuRsp_isPaging);
  assign io_cpu_writeBack_unalignedAccess = (io_cpu_writeBack_isValid && stageB_unaligned);
  assign io_cpu_writeBack_isWrite = stageB_request_wr;
  always @(*) begin
    io_mem_cmd_valid = 1'b0;
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(when_DataCache_l977) begin
          io_mem_cmd_valid = (! memCmdSent);
        end else begin
          if(when_DataCache_l990) begin
            if(stageB_request_wr) begin
              io_mem_cmd_valid = 1'b1;
            end
          end else begin
            if(when_DataCache_l1018) begin
              io_mem_cmd_valid = 1'b1;
            end
          end
        end
      end
    end
    if(when_DataCache_l1052) begin
      io_mem_cmd_valid = 1'b0;
    end
  end

  always @(*) begin
    io_mem_cmd_payload_address = stageB_mmuRsp_physicalAddress;
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(!when_DataCache_l977) begin
          if(!when_DataCache_l990) begin
            io_mem_cmd_payload_address[4 : 0] = 5'h0;
          end
        end
      end
    end
  end

  assign io_mem_cmd_payload_last = 1'b1;
  always @(*) begin
    io_mem_cmd_payload_wr = stageB_request_wr;
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(!when_DataCache_l977) begin
          if(!when_DataCache_l990) begin
            io_mem_cmd_payload_wr = 1'b0;
          end
        end
      end
    end
  end

  assign io_mem_cmd_payload_mask = stageB_mask;
  assign io_mem_cmd_payload_data = stageB_requestDataBypass;
  assign io_mem_cmd_payload_uncached = stageB_mmuRsp_isIoAccess;
  always @(*) begin
    io_mem_cmd_payload_size = {1'd0, stageB_request_size};
    if(io_cpu_writeBack_isValid) begin
      if(!stageB_isExternalAmo) begin
        if(!when_DataCache_l977) begin
          if(!when_DataCache_l990) begin
            io_mem_cmd_payload_size = 3'b101;
          end
        end
      end
    end
  end

  assign stageB_bypassCache = ((stageB_mmuRsp_isIoAccess || stageB_isExternalLsrc) || stageB_isExternalAmo);
  assign io_cpu_writeBack_keepMemRspData = 1'b0;
  assign when_DataCache_l981 = ((! stageB_request_wr) ? (io_mem_rsp_valid && rspSync) : io_mem_cmd_ready);
  assign when_DataCache_l990 = (stageB_waysHit || (stageB_request_wr && (! stageB_isAmoCached)));
  assign when_DataCache_l995 = ((! stageB_request_wr) || io_mem_cmd_ready);
  assign when_DataCache_l1006 = (((! stageB_request_wr) || stageB_isAmoCached) && ((stageB_dataColisions & stageB_waysHits) != 1'b0));
  assign when_DataCache_l1018 = (! memCmdSent);
  assign when_DataCache_l977 = (stageB_mmuRsp_isIoAccess || stageB_isExternalLsrc);
  always @(*) begin
    if(stageB_bypassCache) begin
      io_cpu_writeBack_data = stageB_ioMemRspMuxed;
    end else begin
      io_cpu_writeBack_data = stageB_dataMux;
    end
  end

  assign when_DataCache_l1052 = ((((stageB_consistancyHazard || stageB_mmuRsp_refilling) || io_cpu_writeBack_accessError) || io_cpu_writeBack_mmuException) || io_cpu_writeBack_unalignedAccess);
  assign when_DataCache_l1061 = (io_cpu_writeBack_isValid && (stageB_mmuRsp_refilling || stageB_consistancyHazard));
  always @(*) begin
    loader_counter_willIncrement = 1'b0;
    if(when_DataCache_l1076) begin
      loader_counter_willIncrement = 1'b1;
    end
  end

  assign loader_counter_willClear = 1'b0;
  assign loader_counter_willOverflowIfInc = (loader_counter_value == 3'b111);
  assign loader_counter_willOverflow = (loader_counter_willOverflowIfInc && loader_counter_willIncrement);
  always @(*) begin
    loader_counter_valueNext = (loader_counter_value + _zz_loader_counter_valueNext);
    if(loader_counter_willClear) begin
      loader_counter_valueNext = 3'b000;
    end
  end

  assign loader_kill = 1'b0;
  assign when_DataCache_l1076 = ((loader_valid && io_mem_rsp_valid) && rspLast);
  assign loader_done = loader_counter_willOverflow;
  assign when_DataCache_l1104 = (! loader_valid);
  assign when_DataCache_l1108 = (loader_valid && (! loader_valid_regNext));
  assign io_cpu_execute_refilling = loader_valid;
  assign when_DataCache_l1111 = (stageB_loaderValid || loader_valid);
  always @(posedge clkout_system) begin
    tagsWriteLastCmd_valid <= tagsWriteCmd_valid;
    tagsWriteLastCmd_payload_way <= tagsWriteCmd_payload_way;
    tagsWriteLastCmd_payload_address <= tagsWriteCmd_payload_address;
    tagsWriteLastCmd_payload_data_valid <= tagsWriteCmd_payload_data_valid;
    tagsWriteLastCmd_payload_data_error <= tagsWriteCmd_payload_data_error;
    tagsWriteLastCmd_payload_data_address <= tagsWriteCmd_payload_data_address;
    if(when_DataCache_l623) begin
      tagsReadCmd_payload_regNextWhen <= tagsReadCmd_payload;
    end
    if(when_DataCache_l764) begin
      stageA_request_wr <= io_cpu_execute_args_wr;
      stageA_request_size <= io_cpu_execute_args_size;
      stageA_request_totalyConsistent <= io_cpu_execute_args_totalyConsistent;
    end
    if(when_DataCache_l764_1) begin
      stageA_mask <= stage0_mask;
    end
    if(when_DataCache_l764_2) begin
      stageA_wayInvalidate <= stage0_wayInvalidate;
    end
    if(when_DataCache_l764_3) begin
      stage0_dataColisions_regNextWhen <= stage0_dataColisions;
    end
    if(when_DataCache_l815) begin
      stageB_request_wr <= stageA_request_wr;
      stageB_request_size <= stageA_request_size;
      stageB_request_totalyConsistent <= stageA_request_totalyConsistent;
    end
    if(when_DataCache_l817) begin
      stageB_mmuRsp_physicalAddress <= io_cpu_memory_mmuRsp_physicalAddress;
      stageB_mmuRsp_isIoAccess <= io_cpu_memory_mmuRsp_isIoAccess;
      stageB_mmuRsp_isPaging <= io_cpu_memory_mmuRsp_isPaging;
      stageB_mmuRsp_allowRead <= io_cpu_memory_mmuRsp_allowRead;
      stageB_mmuRsp_allowWrite <= io_cpu_memory_mmuRsp_allowWrite;
      stageB_mmuRsp_allowExecute <= io_cpu_memory_mmuRsp_allowExecute;
      stageB_mmuRsp_exception <= io_cpu_memory_mmuRsp_exception;
      stageB_mmuRsp_refilling <= io_cpu_memory_mmuRsp_refilling;
      stageB_mmuRsp_bypassTranslation <= io_cpu_memory_mmuRsp_bypassTranslation;
    end
    if(when_DataCache_l814) begin
      stageB_tagsReadRsp_0_valid <= ways_0_tagsReadRsp_valid;
      stageB_tagsReadRsp_0_error <= ways_0_tagsReadRsp_error;
      stageB_tagsReadRsp_0_address <= ways_0_tagsReadRsp_address;
    end
    if(when_DataCache_l814_1) begin
      stageB_dataReadRsp_0 <= ways_0_dataReadRsp;
    end
    if(when_DataCache_l813) begin
      stageB_wayInvalidate <= stageA_wayInvalidate;
    end
    if(when_DataCache_l813_1) begin
      stageB_dataColisions <= stageA_dataColisions;
    end
    if(when_DataCache_l813_2) begin
      stageB_unaligned <= ({((stageA_request_size == 2'b10) && (io_cpu_memory_address[1 : 0] != 2'b00)),((stageA_request_size == 2'b01) && (io_cpu_memory_address[0 : 0] != 1'b0))} != 2'b00);
    end
    if(when_DataCache_l813_3) begin
      stageB_waysHitsBeforeInvalidate <= stageA_wayHits;
    end
    if(when_DataCache_l813_4) begin
      stageB_mask <= stageA_mask;
    end
    loader_valid_regNext <= loader_valid;
  end

  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      memCmdSent <= 1'b0;
      stageB_flusher_waitDone <= 1'b0;
      stageB_flusher_counter <= 8'h0;
      stageB_flusher_start <= 1'b1;
      loader_valid <= 1'b0;
      loader_counter_value <= 3'b000;
      loader_waysAllocator <= 1'b1;
      loader_error <= 1'b0;
      loader_killReg <= 1'b0;
    end else begin
      if(io_mem_cmd_fire) begin
        memCmdSent <= 1'b1;
      end
      if(when_DataCache_l679) begin
        memCmdSent <= 1'b0;
      end
      if(io_cpu_flush_ready) begin
        stageB_flusher_waitDone <= 1'b0;
      end
      if(when_DataCache_l843) begin
        if(when_DataCache_l849) begin
          stageB_flusher_counter <= (stageB_flusher_counter + 8'h01);
        end
      end
      stageB_flusher_start <= (((((((! stageB_flusher_waitDone) && (! stageB_flusher_start)) && io_cpu_flush_valid) && (! io_cpu_execute_isValid)) && (! io_cpu_memory_isValid)) && (! io_cpu_writeBack_isValid)) && (! io_cpu_redo));
      if(stageB_flusher_start) begin
        stageB_flusher_waitDone <= 1'b1;
        stageB_flusher_counter <= 8'h0;
      end
      `ifndef SYNTHESIS
        `ifdef FORMAL
          assert((! ((io_cpu_writeBack_isValid && (! io_cpu_writeBack_haltIt)) && io_cpu_writeBack_isStuck)));
        `else
          if(!(! ((io_cpu_writeBack_isValid && (! io_cpu_writeBack_haltIt)) && io_cpu_writeBack_isStuck))) begin
            $display("ERROR writeBack stuck by another plugin is not allowed");
          end
        `endif
      `endif
      if(stageB_loaderValid) begin
        loader_valid <= 1'b1;
      end
      loader_counter_value <= loader_counter_valueNext;
      if(loader_kill) begin
        loader_killReg <= 1'b1;
      end
      if(when_DataCache_l1076) begin
        loader_error <= (loader_error || io_mem_rsp_payload_error);
      end
      if(loader_done) begin
        loader_valid <= 1'b0;
        loader_error <= 1'b0;
        loader_killReg <= 1'b0;
      end
      if(when_DataCache_l1104) begin
        loader_waysAllocator <= _zz_loader_waysAllocator[0:0];
      end
    end
  end


endmodule

module InstructionCache (
  input               io_flush,
  input               io_cpu_prefetch_isValid,
  output reg          io_cpu_prefetch_haltIt,
  input      [31:0]   io_cpu_prefetch_pc,
  input               io_cpu_fetch_isValid,
  input               io_cpu_fetch_isStuck,
  input               io_cpu_fetch_isRemoved,
  input      [31:0]   io_cpu_fetch_pc,
  output     [31:0]   io_cpu_fetch_data,
  input      [31:0]   io_cpu_fetch_mmuRsp_physicalAddress,
  input               io_cpu_fetch_mmuRsp_isIoAccess,
  input               io_cpu_fetch_mmuRsp_isPaging,
  input               io_cpu_fetch_mmuRsp_allowRead,
  input               io_cpu_fetch_mmuRsp_allowWrite,
  input               io_cpu_fetch_mmuRsp_allowExecute,
  input               io_cpu_fetch_mmuRsp_exception,
  input               io_cpu_fetch_mmuRsp_refilling,
  input               io_cpu_fetch_mmuRsp_bypassTranslation,
  output     [31:0]   io_cpu_fetch_physicalAddress,
  output              io_cpu_fetch_cacheMiss,
  output              io_cpu_fetch_error,
  output              io_cpu_fetch_mmuRefilling,
  output              io_cpu_fetch_mmuException,
  input               io_cpu_fetch_isUser,
  input               io_cpu_decode_isValid,
  input               io_cpu_decode_isStuck,
  input      [31:0]   io_cpu_decode_pc,
  output     [31:0]   io_cpu_decode_physicalAddress,
  output     [31:0]   io_cpu_decode_data,
  input               io_cpu_fill_valid,
  input      [31:0]   io_cpu_fill_payload,
  output              io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [31:0]   io_mem_cmd_payload_address,
  output     [2:0]    io_mem_cmd_payload_size,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  reg        [31:0]   _zz_banks_0_port1;
  wire       [21:0]   _zz_ways_0_tags_port1;
  wire       [21:0]   _zz_ways_0_tags_port;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 lineLoader_fire;
  reg                 lineLoader_valid;
  (* keep , syn_keep *) reg        [31:0]   lineLoader_address /* synthesis syn_keep = 1 */ ;
  reg                 lineLoader_hadError;
  reg                 lineLoader_flushPending;
  reg        [7:0]    lineLoader_flushCounter;
  wire                when_InstructionCache_l338;
  reg                 _zz_when_InstructionCache_l342;
  wire                when_InstructionCache_l342;
  wire                when_InstructionCache_l351;
  reg                 lineLoader_cmdSent;
  wire                io_mem_cmd_fire;
  wire                when_Utils_l398;
  reg                 lineLoader_wayToAllocate_willIncrement;
  wire                lineLoader_wayToAllocate_willClear;
  wire                lineLoader_wayToAllocate_willOverflowIfInc;
  wire                lineLoader_wayToAllocate_willOverflow;
  (* keep , syn_keep *) reg        [2:0]    lineLoader_wordIndex /* synthesis syn_keep = 1 */ ;
  wire                lineLoader_write_tag_0_valid;
  wire       [6:0]    lineLoader_write_tag_0_payload_address;
  wire                lineLoader_write_tag_0_payload_data_valid;
  wire                lineLoader_write_tag_0_payload_data_error;
  wire       [19:0]   lineLoader_write_tag_0_payload_data_address;
  wire                lineLoader_write_data_0_valid;
  wire       [9:0]    lineLoader_write_data_0_payload_address;
  wire       [31:0]   lineLoader_write_data_0_payload_data;
  wire                when_InstructionCache_l401;
  wire       [9:0]    _zz_fetchStage_read_banksValue_0_dataMem;
  wire                _zz_fetchStage_read_banksValue_0_dataMem_1;
  wire       [31:0]   fetchStage_read_banksValue_0_dataMem;
  wire       [31:0]   fetchStage_read_banksValue_0_data;
  wire       [6:0]    _zz_fetchStage_read_waysValues_0_tag_valid;
  wire                fetchStage_read_waysValues_0_tag_valid;
  wire                fetchStage_read_waysValues_0_tag_error;
  wire       [19:0]   fetchStage_read_waysValues_0_tag_address;
  wire       [21:0]   _zz_fetchStage_read_waysValues_0_tag_valid_1;
  wire                fetchStage_hit_hits_0;
  wire                fetchStage_hit_valid;
  wire                fetchStage_hit_error;
  wire       [31:0]   fetchStage_hit_data;
  wire       [31:0]   fetchStage_hit_word;
  reg [31:0] banks_0 [0:1023];
  (* ram_style = "distributed" *) reg [21:0] ways_0_tags [0:127];

  assign _zz_ways_0_tags_port = {lineLoader_write_tag_0_payload_data_address,{lineLoader_write_tag_0_payload_data_error,lineLoader_write_tag_0_payload_data_valid}};
  always @(posedge clkout_system) begin
    if(_zz_1) begin
      banks_0[lineLoader_write_data_0_payload_address] <= lineLoader_write_data_0_payload_data;
    end
  end

  always @(posedge clkout_system) begin
    if(_zz_fetchStage_read_banksValue_0_dataMem_1) begin
      _zz_banks_0_port1 <= banks_0[_zz_fetchStage_read_banksValue_0_dataMem];
    end
  end

  always @(posedge clkout_system) begin
    if(_zz_2) begin
      ways_0_tags[lineLoader_write_tag_0_payload_address] <= _zz_ways_0_tags_port;
    end
  end

  assign _zz_ways_0_tags_port1 = ways_0_tags[_zz_fetchStage_read_waysValues_0_tag_valid];
  always @(*) begin
    _zz_1 = 1'b0;
    if(lineLoader_write_data_0_valid) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    _zz_2 = 1'b0;
    if(lineLoader_write_tag_0_valid) begin
      _zz_2 = 1'b1;
    end
  end

  always @(*) begin
    lineLoader_fire = 1'b0;
    if(io_mem_rsp_valid) begin
      if(when_InstructionCache_l401) begin
        lineLoader_fire = 1'b1;
      end
    end
  end

  always @(*) begin
    io_cpu_prefetch_haltIt = (lineLoader_valid || lineLoader_flushPending);
    if(when_InstructionCache_l338) begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if(when_InstructionCache_l342) begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if(io_flush) begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
  end

  assign when_InstructionCache_l338 = (! lineLoader_flushCounter[7]);
  assign when_InstructionCache_l342 = (! _zz_when_InstructionCache_l342);
  assign when_InstructionCache_l351 = (lineLoader_flushPending && (! (lineLoader_valid || io_cpu_fetch_isValid)));
  assign io_mem_cmd_fire = (io_mem_cmd_valid && io_mem_cmd_ready);
  assign io_mem_cmd_valid = (lineLoader_valid && (! lineLoader_cmdSent));
  assign io_mem_cmd_payload_address = {lineLoader_address[31 : 5],5'h0};
  assign io_mem_cmd_payload_size = 3'b101;
  assign when_Utils_l398 = (! lineLoader_valid);
  always @(*) begin
    lineLoader_wayToAllocate_willIncrement = 1'b0;
    if(when_Utils_l398) begin
      lineLoader_wayToAllocate_willIncrement = 1'b1;
    end
  end

  assign lineLoader_wayToAllocate_willClear = 1'b0;
  assign lineLoader_wayToAllocate_willOverflowIfInc = 1'b1;
  assign lineLoader_wayToAllocate_willOverflow = (lineLoader_wayToAllocate_willOverflowIfInc && lineLoader_wayToAllocate_willIncrement);
  assign lineLoader_write_tag_0_valid = ((1'b1 && lineLoader_fire) || (! lineLoader_flushCounter[7]));
  assign lineLoader_write_tag_0_payload_address = (lineLoader_flushCounter[7] ? lineLoader_address[11 : 5] : lineLoader_flushCounter[6 : 0]);
  assign lineLoader_write_tag_0_payload_data_valid = lineLoader_flushCounter[7];
  assign lineLoader_write_tag_0_payload_data_error = (lineLoader_hadError || io_mem_rsp_payload_error);
  assign lineLoader_write_tag_0_payload_data_address = lineLoader_address[31 : 12];
  assign lineLoader_write_data_0_valid = (io_mem_rsp_valid && 1'b1);
  assign lineLoader_write_data_0_payload_address = {lineLoader_address[11 : 5],lineLoader_wordIndex};
  assign lineLoader_write_data_0_payload_data = io_mem_rsp_payload_data;
  assign when_InstructionCache_l401 = (lineLoader_wordIndex == 3'b111);
  assign _zz_fetchStage_read_banksValue_0_dataMem = io_cpu_prefetch_pc[11 : 2];
  assign _zz_fetchStage_read_banksValue_0_dataMem_1 = (! io_cpu_fetch_isStuck);
  assign fetchStage_read_banksValue_0_dataMem = _zz_banks_0_port1;
  assign fetchStage_read_banksValue_0_data = fetchStage_read_banksValue_0_dataMem[31 : 0];
  assign _zz_fetchStage_read_waysValues_0_tag_valid = io_cpu_fetch_pc[11 : 5];
  assign _zz_fetchStage_read_waysValues_0_tag_valid_1 = _zz_ways_0_tags_port1;
  assign fetchStage_read_waysValues_0_tag_valid = _zz_fetchStage_read_waysValues_0_tag_valid_1[0];
  assign fetchStage_read_waysValues_0_tag_error = _zz_fetchStage_read_waysValues_0_tag_valid_1[1];
  assign fetchStage_read_waysValues_0_tag_address = _zz_fetchStage_read_waysValues_0_tag_valid_1[21 : 2];
  assign fetchStage_hit_hits_0 = (fetchStage_read_waysValues_0_tag_valid && (fetchStage_read_waysValues_0_tag_address == io_cpu_fetch_mmuRsp_physicalAddress[31 : 12]));
  assign fetchStage_hit_valid = (|fetchStage_hit_hits_0);
  assign fetchStage_hit_error = fetchStage_read_waysValues_0_tag_error;
  assign fetchStage_hit_data = fetchStage_read_banksValue_0_data;
  assign fetchStage_hit_word = fetchStage_hit_data;
  assign io_cpu_fetch_data = fetchStage_hit_word;
  assign io_cpu_fetch_physicalAddress = io_cpu_fetch_mmuRsp_physicalAddress;
  assign io_cpu_fetch_cacheMiss = (! fetchStage_hit_valid);
  assign io_cpu_fetch_error = (fetchStage_hit_error || ((! io_cpu_fetch_mmuRsp_isPaging) && (io_cpu_fetch_mmuRsp_exception || (! io_cpu_fetch_mmuRsp_allowExecute))));
  assign io_cpu_fetch_mmuRefilling = io_cpu_fetch_mmuRsp_refilling;
  assign io_cpu_fetch_mmuException = (((! io_cpu_fetch_mmuRsp_refilling) && io_cpu_fetch_mmuRsp_isPaging) && (io_cpu_fetch_mmuRsp_exception || (! io_cpu_fetch_mmuRsp_allowExecute)));
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      lineLoader_valid <= 1'b0;
      lineLoader_hadError <= 1'b0;
      lineLoader_flushPending <= 1'b1;
      lineLoader_cmdSent <= 1'b0;
      lineLoader_wordIndex <= 3'b000;
    end else begin
      if(lineLoader_fire) begin
        lineLoader_valid <= 1'b0;
      end
      if(lineLoader_fire) begin
        lineLoader_hadError <= 1'b0;
      end
      if(io_cpu_fill_valid) begin
        lineLoader_valid <= 1'b1;
      end
      if(io_flush) begin
        lineLoader_flushPending <= 1'b1;
      end
      if(when_InstructionCache_l351) begin
        lineLoader_flushPending <= 1'b0;
      end
      if(io_mem_cmd_fire) begin
        lineLoader_cmdSent <= 1'b1;
      end
      if(lineLoader_fire) begin
        lineLoader_cmdSent <= 1'b0;
      end
      if(io_mem_rsp_valid) begin
        lineLoader_wordIndex <= (lineLoader_wordIndex + 3'b001);
        if(io_mem_rsp_payload_error) begin
          lineLoader_hadError <= 1'b1;
        end
      end
    end
  end

  always @(posedge clkout_system) begin
    if(io_cpu_fill_valid) begin
      lineLoader_address <= io_cpu_fill_payload;
    end
    if(when_InstructionCache_l338) begin
      lineLoader_flushCounter <= (lineLoader_flushCounter + 8'h01);
    end
    _zz_when_InstructionCache_l342 <= lineLoader_flushCounter[7];
    if(when_InstructionCache_l351) begin
      lineLoader_flushCounter <= 8'h0;
    end
  end


endmodule

module UartCtrlRx (
  input      [2:0]    io_configFrame_dataLength,
  input      [0:0]    io_configFrame_stop,
  input      [1:0]    io_configFrame_parity,
  input               io_samplingTick,
  output              io_read_valid,
  input               io_read_ready,
  output     [7:0]    io_read_payload,
  input               io_rxd,
  output              io_rts,
  output reg          io_error,
  output              io_break,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);
  localparam UartStopType_ONE = 1'd0;
  localparam UartStopType_TWO = 1'd1;
  localparam UartParityType_NONE = 2'd0;
  localparam UartParityType_EVEN = 2'd1;
  localparam UartParityType_ODD = 2'd2;
  localparam UartCtrlRxState_IDLE = 3'd0;
  localparam UartCtrlRxState_START = 3'd1;
  localparam UartCtrlRxState_DATA = 3'd2;
  localparam UartCtrlRxState_PARITY = 3'd3;
  localparam UartCtrlRxState_STOP = 3'd4;

  wire                io_rxd_buffercc_io_dataOut;
  wire       [2:0]    _zz_when_UartCtrlRx_l139;
  wire       [0:0]    _zz_when_UartCtrlRx_l139_1;
  reg                 _zz_io_rts;
  wire                sampler_synchroniser;
  wire                sampler_samples_0;
  reg                 sampler_samples_1;
  reg                 sampler_samples_2;
  reg                 sampler_value;
  reg                 sampler_tick;
  reg        [2:0]    bitTimer_counter;
  reg                 bitTimer_tick;
  wire                when_UartCtrlRx_l43;
  reg        [2:0]    bitCounter_value;
  reg        [6:0]    break_counter;
  wire                break_valid;
  wire                when_UartCtrlRx_l69;
  reg        [2:0]    stateMachine_state;
  reg                 stateMachine_parity;
  reg        [7:0]    stateMachine_shifter;
  reg                 stateMachine_validReg;
  wire                when_UartCtrlRx_l93;
  wire                when_UartCtrlRx_l103;
  wire                when_UartCtrlRx_l111;
  wire                when_UartCtrlRx_l113;
  wire                when_UartCtrlRx_l125;
  wire                when_UartCtrlRx_l136;
  wire                when_UartCtrlRx_l139;
  `ifndef SYNTHESIS
  reg [23:0] io_configFrame_stop_string;
  reg [31:0] io_configFrame_parity_string;
  reg [47:0] stateMachine_state_string;
  `endif


  assign _zz_when_UartCtrlRx_l139_1 = ((io_configFrame_stop == UartStopType_ONE) ? 1'b0 : 1'b1);
  assign _zz_when_UartCtrlRx_l139 = {2'd0, _zz_when_UartCtrlRx_l139_1};
  BufferCC io_rxd_buffercc (
    .io_dataIn                         (io_rxd                          ), //i
    .io_dataOut                        (io_rxd_buffercc_io_dataOut      ), //o
    .clkout_system                     (clkout_system                   ), //i
    .systemCdCtrl_logic_outputReset    (systemCdCtrl_logic_outputReset  )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_configFrame_stop)
      UartStopType_ONE : io_configFrame_stop_string = "ONE";
      UartStopType_TWO : io_configFrame_stop_string = "TWO";
      default : io_configFrame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_configFrame_parity)
      UartParityType_NONE : io_configFrame_parity_string = "NONE";
      UartParityType_EVEN : io_configFrame_parity_string = "EVEN";
      UartParityType_ODD : io_configFrame_parity_string = "ODD ";
      default : io_configFrame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(stateMachine_state)
      UartCtrlRxState_IDLE : stateMachine_state_string = "IDLE  ";
      UartCtrlRxState_START : stateMachine_state_string = "START ";
      UartCtrlRxState_DATA : stateMachine_state_string = "DATA  ";
      UartCtrlRxState_PARITY : stateMachine_state_string = "PARITY";
      UartCtrlRxState_STOP : stateMachine_state_string = "STOP  ";
      default : stateMachine_state_string = "??????";
    endcase
  end
  `endif

  always @(*) begin
    io_error = 1'b0;
    case(stateMachine_state)
      UartCtrlRxState_IDLE : begin
      end
      UartCtrlRxState_START : begin
      end
      UartCtrlRxState_DATA : begin
      end
      UartCtrlRxState_PARITY : begin
        if(bitTimer_tick) begin
          if(!when_UartCtrlRx_l125) begin
            io_error = 1'b1;
          end
        end
      end
      default : begin
        if(bitTimer_tick) begin
          if(when_UartCtrlRx_l136) begin
            io_error = 1'b1;
          end
        end
      end
    endcase
  end

  assign io_rts = _zz_io_rts;
  assign sampler_synchroniser = io_rxd_buffercc_io_dataOut;
  assign sampler_samples_0 = sampler_synchroniser;
  always @(*) begin
    bitTimer_tick = 1'b0;
    if(sampler_tick) begin
      if(when_UartCtrlRx_l43) begin
        bitTimer_tick = 1'b1;
      end
    end
  end

  assign when_UartCtrlRx_l43 = (bitTimer_counter == 3'b000);
  assign break_valid = (break_counter == 7'h41);
  assign when_UartCtrlRx_l69 = (io_samplingTick && (! break_valid));
  assign io_break = break_valid;
  assign io_read_valid = stateMachine_validReg;
  assign when_UartCtrlRx_l93 = ((sampler_tick && (! sampler_value)) && (! break_valid));
  assign when_UartCtrlRx_l103 = (sampler_value == 1'b1);
  assign when_UartCtrlRx_l111 = (bitCounter_value == io_configFrame_dataLength);
  assign when_UartCtrlRx_l113 = (io_configFrame_parity == UartParityType_NONE);
  assign when_UartCtrlRx_l125 = (stateMachine_parity == sampler_value);
  assign when_UartCtrlRx_l136 = (! sampler_value);
  assign when_UartCtrlRx_l139 = (bitCounter_value == _zz_when_UartCtrlRx_l139);
  assign io_read_payload = stateMachine_shifter;
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      _zz_io_rts <= 1'b0;
      sampler_samples_1 <= 1'b1;
      sampler_samples_2 <= 1'b1;
      sampler_value <= 1'b1;
      sampler_tick <= 1'b0;
      break_counter <= 7'h0;
      stateMachine_state <= UartCtrlRxState_IDLE;
      stateMachine_validReg <= 1'b0;
    end else begin
      _zz_io_rts <= (! io_read_ready);
      if(io_samplingTick) begin
        sampler_samples_1 <= sampler_samples_0;
      end
      if(io_samplingTick) begin
        sampler_samples_2 <= sampler_samples_1;
      end
      sampler_value <= (((1'b0 || ((1'b1 && sampler_samples_0) && sampler_samples_1)) || ((1'b1 && sampler_samples_0) && sampler_samples_2)) || ((1'b1 && sampler_samples_1) && sampler_samples_2));
      sampler_tick <= io_samplingTick;
      if(sampler_value) begin
        break_counter <= 7'h0;
      end else begin
        if(when_UartCtrlRx_l69) begin
          break_counter <= (break_counter + 7'h01);
        end
      end
      stateMachine_validReg <= 1'b0;
      case(stateMachine_state)
        UartCtrlRxState_IDLE : begin
          if(when_UartCtrlRx_l93) begin
            stateMachine_state <= UartCtrlRxState_START;
          end
        end
        UartCtrlRxState_START : begin
          if(bitTimer_tick) begin
            stateMachine_state <= UartCtrlRxState_DATA;
            if(when_UartCtrlRx_l103) begin
              stateMachine_state <= UartCtrlRxState_IDLE;
            end
          end
        end
        UartCtrlRxState_DATA : begin
          if(bitTimer_tick) begin
            if(when_UartCtrlRx_l111) begin
              if(when_UartCtrlRx_l113) begin
                stateMachine_state <= UartCtrlRxState_STOP;
                stateMachine_validReg <= 1'b1;
              end else begin
                stateMachine_state <= UartCtrlRxState_PARITY;
              end
            end
          end
        end
        UartCtrlRxState_PARITY : begin
          if(bitTimer_tick) begin
            if(when_UartCtrlRx_l125) begin
              stateMachine_state <= UartCtrlRxState_STOP;
              stateMachine_validReg <= 1'b1;
            end else begin
              stateMachine_state <= UartCtrlRxState_IDLE;
            end
          end
        end
        default : begin
          if(bitTimer_tick) begin
            if(when_UartCtrlRx_l136) begin
              stateMachine_state <= UartCtrlRxState_IDLE;
            end else begin
              if(when_UartCtrlRx_l139) begin
                stateMachine_state <= UartCtrlRxState_IDLE;
              end
            end
          end
        end
      endcase
    end
  end

  always @(posedge clkout_system) begin
    if(sampler_tick) begin
      bitTimer_counter <= (bitTimer_counter - 3'b001);
      if(when_UartCtrlRx_l43) begin
        bitTimer_counter <= 3'b100;
      end
    end
    if(bitTimer_tick) begin
      bitCounter_value <= (bitCounter_value + 3'b001);
    end
    if(bitTimer_tick) begin
      stateMachine_parity <= (stateMachine_parity ^ sampler_value);
    end
    case(stateMachine_state)
      UartCtrlRxState_IDLE : begin
        if(when_UartCtrlRx_l93) begin
          bitTimer_counter <= 3'b001;
        end
      end
      UartCtrlRxState_START : begin
        if(bitTimer_tick) begin
          bitCounter_value <= 3'b000;
          stateMachine_parity <= (io_configFrame_parity == UartParityType_ODD);
        end
      end
      UartCtrlRxState_DATA : begin
        if(bitTimer_tick) begin
          stateMachine_shifter[bitCounter_value] <= sampler_value;
          if(when_UartCtrlRx_l111) begin
            bitCounter_value <= 3'b000;
          end
        end
      end
      UartCtrlRxState_PARITY : begin
        if(bitTimer_tick) begin
          bitCounter_value <= 3'b000;
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module UartCtrlTx (
  input      [2:0]    io_configFrame_dataLength,
  input      [0:0]    io_configFrame_stop,
  input      [1:0]    io_configFrame_parity,
  input               io_samplingTick,
  input               io_write_valid,
  output reg          io_write_ready,
  input      [7:0]    io_write_payload,
  input               io_cts,
  output              io_txd,
  input               io_break,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);
  localparam UartStopType_ONE = 1'd0;
  localparam UartStopType_TWO = 1'd1;
  localparam UartParityType_NONE = 2'd0;
  localparam UartParityType_EVEN = 2'd1;
  localparam UartParityType_ODD = 2'd2;
  localparam UartCtrlTxState_IDLE = 3'd0;
  localparam UartCtrlTxState_START = 3'd1;
  localparam UartCtrlTxState_DATA = 3'd2;
  localparam UartCtrlTxState_PARITY = 3'd3;
  localparam UartCtrlTxState_STOP = 3'd4;

  wire       [2:0]    _zz_clockDivider_counter_valueNext;
  wire       [0:0]    _zz_clockDivider_counter_valueNext_1;
  wire       [2:0]    _zz_when_UartCtrlTx_l93;
  wire       [0:0]    _zz_when_UartCtrlTx_l93_1;
  reg                 clockDivider_counter_willIncrement;
  wire                clockDivider_counter_willClear;
  reg        [2:0]    clockDivider_counter_valueNext;
  reg        [2:0]    clockDivider_counter_value;
  wire                clockDivider_counter_willOverflowIfInc;
  wire                clockDivider_counter_willOverflow;
  reg        [2:0]    tickCounter_value;
  reg        [2:0]    stateMachine_state;
  reg                 stateMachine_parity;
  reg                 stateMachine_txd;
  wire                when_UartCtrlTx_l58;
  wire                when_UartCtrlTx_l73;
  wire                when_UartCtrlTx_l76;
  wire                when_UartCtrlTx_l93;
  reg                 _zz_io_txd;
  `ifndef SYNTHESIS
  reg [23:0] io_configFrame_stop_string;
  reg [31:0] io_configFrame_parity_string;
  reg [47:0] stateMachine_state_string;
  `endif


  assign _zz_clockDivider_counter_valueNext_1 = clockDivider_counter_willIncrement;
  assign _zz_clockDivider_counter_valueNext = {2'd0, _zz_clockDivider_counter_valueNext_1};
  assign _zz_when_UartCtrlTx_l93_1 = ((io_configFrame_stop == UartStopType_ONE) ? 1'b0 : 1'b1);
  assign _zz_when_UartCtrlTx_l93 = {2'd0, _zz_when_UartCtrlTx_l93_1};
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_configFrame_stop)
      UartStopType_ONE : io_configFrame_stop_string = "ONE";
      UartStopType_TWO : io_configFrame_stop_string = "TWO";
      default : io_configFrame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_configFrame_parity)
      UartParityType_NONE : io_configFrame_parity_string = "NONE";
      UartParityType_EVEN : io_configFrame_parity_string = "EVEN";
      UartParityType_ODD : io_configFrame_parity_string = "ODD ";
      default : io_configFrame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(stateMachine_state)
      UartCtrlTxState_IDLE : stateMachine_state_string = "IDLE  ";
      UartCtrlTxState_START : stateMachine_state_string = "START ";
      UartCtrlTxState_DATA : stateMachine_state_string = "DATA  ";
      UartCtrlTxState_PARITY : stateMachine_state_string = "PARITY";
      UartCtrlTxState_STOP : stateMachine_state_string = "STOP  ";
      default : stateMachine_state_string = "??????";
    endcase
  end
  `endif

  always @(*) begin
    clockDivider_counter_willIncrement = 1'b0;
    if(io_samplingTick) begin
      clockDivider_counter_willIncrement = 1'b1;
    end
  end

  assign clockDivider_counter_willClear = 1'b0;
  assign clockDivider_counter_willOverflowIfInc = (clockDivider_counter_value == 3'b100);
  assign clockDivider_counter_willOverflow = (clockDivider_counter_willOverflowIfInc && clockDivider_counter_willIncrement);
  always @(*) begin
    if(clockDivider_counter_willOverflow) begin
      clockDivider_counter_valueNext = 3'b000;
    end else begin
      clockDivider_counter_valueNext = (clockDivider_counter_value + _zz_clockDivider_counter_valueNext);
    end
    if(clockDivider_counter_willClear) begin
      clockDivider_counter_valueNext = 3'b000;
    end
  end

  always @(*) begin
    stateMachine_txd = 1'b1;
    case(stateMachine_state)
      UartCtrlTxState_IDLE : begin
      end
      UartCtrlTxState_START : begin
        stateMachine_txd = 1'b0;
      end
      UartCtrlTxState_DATA : begin
        stateMachine_txd = io_write_payload[tickCounter_value];
      end
      UartCtrlTxState_PARITY : begin
        stateMachine_txd = stateMachine_parity;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_write_ready = io_break;
    case(stateMachine_state)
      UartCtrlTxState_IDLE : begin
      end
      UartCtrlTxState_START : begin
      end
      UartCtrlTxState_DATA : begin
        if(clockDivider_counter_willOverflow) begin
          if(when_UartCtrlTx_l73) begin
            io_write_ready = 1'b1;
          end
        end
      end
      UartCtrlTxState_PARITY : begin
      end
      default : begin
      end
    endcase
  end

  assign when_UartCtrlTx_l58 = ((io_write_valid && (! io_cts)) && clockDivider_counter_willOverflow);
  assign when_UartCtrlTx_l73 = (tickCounter_value == io_configFrame_dataLength);
  assign when_UartCtrlTx_l76 = (io_configFrame_parity == UartParityType_NONE);
  assign when_UartCtrlTx_l93 = (tickCounter_value == _zz_when_UartCtrlTx_l93);
  assign io_txd = _zz_io_txd;
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      clockDivider_counter_value <= 3'b000;
      stateMachine_state <= UartCtrlTxState_IDLE;
      _zz_io_txd <= 1'b1;
    end else begin
      clockDivider_counter_value <= clockDivider_counter_valueNext;
      case(stateMachine_state)
        UartCtrlTxState_IDLE : begin
          if(when_UartCtrlTx_l58) begin
            stateMachine_state <= UartCtrlTxState_START;
          end
        end
        UartCtrlTxState_START : begin
          if(clockDivider_counter_willOverflow) begin
            stateMachine_state <= UartCtrlTxState_DATA;
          end
        end
        UartCtrlTxState_DATA : begin
          if(clockDivider_counter_willOverflow) begin
            if(when_UartCtrlTx_l73) begin
              if(when_UartCtrlTx_l76) begin
                stateMachine_state <= UartCtrlTxState_STOP;
              end else begin
                stateMachine_state <= UartCtrlTxState_PARITY;
              end
            end
          end
        end
        UartCtrlTxState_PARITY : begin
          if(clockDivider_counter_willOverflow) begin
            stateMachine_state <= UartCtrlTxState_STOP;
          end
        end
        default : begin
          if(clockDivider_counter_willOverflow) begin
            if(when_UartCtrlTx_l93) begin
              stateMachine_state <= (io_write_valid ? UartCtrlTxState_START : UartCtrlTxState_IDLE);
            end
          end
        end
      endcase
      _zz_io_txd <= (stateMachine_txd && (! io_break));
    end
  end

  always @(posedge clkout_system) begin
    if(clockDivider_counter_willOverflow) begin
      tickCounter_value <= (tickCounter_value + 3'b001);
    end
    if(clockDivider_counter_willOverflow) begin
      stateMachine_parity <= (stateMachine_parity ^ stateMachine_txd);
    end
    case(stateMachine_state)
      UartCtrlTxState_IDLE : begin
      end
      UartCtrlTxState_START : begin
        if(clockDivider_counter_willOverflow) begin
          stateMachine_parity <= (io_configFrame_parity == UartParityType_ODD);
          tickCounter_value <= 3'b000;
        end
      end
      UartCtrlTxState_DATA : begin
        if(clockDivider_counter_willOverflow) begin
          if(when_UartCtrlTx_l73) begin
            tickCounter_value <= 3'b000;
          end
        end
      end
      UartCtrlTxState_PARITY : begin
        if(clockDivider_counter_willOverflow) begin
          tickCounter_value <= 3'b000;
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module Backend (
  input      [1:0]    io_config_readLatency,
  input      [3:0]    io_config_RAS,
  input      [3:0]    io_config_RP,
  input      [3:0]    io_config_WR,
  input      [3:0]    io_config_RCD,
  input      [3:0]    io_config_WTR,
  input      [3:0]    io_config_RTP,
  input      [3:0]    io_config_RRD,
  input      [3:0]    io_config_RTW,
  input      [6:0]    io_config_RFC,
  input      [15:0]   io_config_REF,
  input               io_config_autoRefresh,
  input               io_config_noActive,
  input      [0:0]    io_config_phase_active,
  input      [0:0]    io_config_phase_precharge,
  input      [0:0]    io_config_phase_read,
  input      [0:0]    io_config_phase_write,
  input               io_input_ports_0_read,
  input               io_input_ports_0_write,
  input               io_input_ports_0_active,
  input               io_input_ports_0_precharge,
  input               io_input_ports_0_last,
  input      [0:0]    io_input_ports_0_address_byte,
  input      [8:0]    io_input_ports_0_address_column,
  input      [1:0]    io_input_ports_0_address_bank,
  input      [12:0]   io_input_ports_0_address_row,
  input      [3:0]    io_input_ports_0_context,
  input               io_input_ports_1_read,
  input               io_input_ports_1_write,
  input               io_input_ports_1_active,
  input               io_input_ports_1_precharge,
  input               io_input_ports_1_last,
  input      [0:0]    io_input_ports_1_address_byte,
  input      [8:0]    io_input_ports_1_address_column,
  input      [1:0]    io_input_ports_1_address_bank,
  input      [12:0]   io_input_ports_1_address_row,
  input      [3:0]    io_input_ports_1_context,
  input               io_input_prechargeAll,
  input               io_input_refresh,
  input               io_writeDatas_0_valid,
  output reg          io_writeDatas_0_ready,
  input      [31:0]   io_writeDatas_0_payload_data,
  input      [3:0]    io_writeDatas_0_payload_mask,
  output reg          io_phy_phases_0_CASn,
  output              io_phy_phases_0_CKE,
  output reg          io_phy_phases_0_CSn,
  output reg          io_phy_phases_0_RASn,
  output reg          io_phy_phases_0_WEn,
  output reg [1:0]    io_phy_phases_0_DM_0,
  output     [15:0]   io_phy_phases_0_DQw_0,
  input      [15:0]   io_phy_phases_0_DQr_0,
  output reg          io_phy_phases_1_CASn,
  output              io_phy_phases_1_CKE,
  output reg          io_phy_phases_1_CSn,
  output reg          io_phy_phases_1_RASn,
  output reg          io_phy_phases_1_WEn,
  output reg [1:0]    io_phy_phases_1_DM_0,
  output     [15:0]   io_phy_phases_1_DQw_0,
  input      [15:0]   io_phy_phases_1_DQr_0,
  output reg [12:0]   io_phy_ADDR,
  output reg [1:0]    io_phy_BA,
  output              io_phy_writeEnable,
  output reg          io_phy_readEnable,
  input               io_phy_readValid,
  output              io_outputs_0_valid,
  output              io_outputs_0_payload_last,
  output     [31:0]   io_outputs_0_payload_fragment_data,
  output     [3:0]    io_outputs_0_payload_fragment_context,
  input               io_soft_cmd_valid,
  input      [12:0]   io_soft_cmd_payload_ADDR,
  input      [1:0]    io_soft_cmd_payload_BA,
  input               io_soft_cmd_payload_CASn,
  input               io_soft_cmd_payload_CSn,
  input               io_soft_cmd_payload_RASn,
  input               io_soft_cmd_payload_WEn,
  input               io_soft_CKE,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire                streamFifoLowLatency_4_io_pop_ready;
  wire                streamFifoLowLatency_4_io_push_ready;
  wire                streamFifoLowLatency_4_io_pop_valid;
  wire                streamFifoLowLatency_4_io_pop_payload_write;
  wire                streamFifoLowLatency_4_io_pop_payload_last;
  wire       [3:0]    streamFifoLowLatency_4_io_pop_payload_context;
  wire       [3:0]    streamFifoLowLatency_4_io_occupancy;
  wire       [0:0]    _zz_when;
  wire       [15:0]   _zz_io_phy_phases_0_DQw_0;
  wire       [1:0]    _zz_io_phy_phases_0_DM_0;
  wire       [15:0]   _zz_io_phy_phases_1_DQw_0;
  wire       [1:0]    _zz_io_phy_phases_1_DM_0;
  wire       [8:0]    _zz_io_phy_ADDR;
  wire       [8:0]    _zz_io_phy_ADDR_1;
  wire                writePipeline_input_valid;
  wire                writePipeline_inputRepeated_valid;
  wire                writePipeline_writeHistory_0_valid;
  wire                writePipeline_writeHistory_1_valid;
  wire                _zz_writePipeline_writeHistory_0_valid;
  reg                 _zz_writePipeline_writeHistory_1_valid;
  reg                 writePipeline_history_valid;
  wire       [31:0]   writePipeline_payload_data;
  wire       [3:0]    writePipeline_payload_mask;
  reg                 rspPipeline_input_valid;
  reg                 rspPipeline_input_payload_write;
  wire                rspPipeline_input_payload_last;
  wire       [3:0]    rspPipeline_input_payload_context;
  wire                rspPipeline_readHistory_0;
  wire                rspPipeline_readHistory_1;
  wire                rspPipeline_readHistory_2;
  wire                rspPipeline_readHistory_3;
  wire                rspPipeline_readHistory_4;
  wire                rspPipeline_readHistory_5;
  wire                rspPipeline_readHistory_6;
  wire                rspPipeline_readHistory_7;
  wire                _zz_rspPipeline_readHistory_0;
  reg                 _zz_rspPipeline_readHistory_1;
  reg                 _zz_rspPipeline_readHistory_2;
  reg                 _zz_rspPipeline_readHistory_3;
  reg                 _zz_rspPipeline_readHistory_4;
  reg                 _zz_rspPipeline_readHistory_5;
  reg                 _zz_rspPipeline_readHistory_6;
  reg                 _zz_rspPipeline_readHistory_7;
  reg                 rspPipeline_beatCounter_willIncrement;
  wire                rspPipeline_beatCounter_willClear;
  wire                rspPipeline_beatCounter_willOverflowIfInc;
  wire                rspPipeline_beatCounter_willOverflow;
  wire                rspPipeline_output_valid;
  wire                rspPipeline_output_payload_last;
  reg        [31:0]   rspPipeline_output_payload_fragment_data;
  wire       [3:0]    rspPipeline_output_payload_fragment_context;
  reg        [31:0]   rspPipeline_debugData;
  reg                 rspPop_valid;
  reg                 rspPop_payload_last;
  reg        [31:0]   rspPop_payload_fragment_data;
  reg        [3:0]    rspPop_payload_fragment_context;
  wire                _zz_muxedCmd_read;
  wire                muxedCmd_read;
  wire                muxedCmd_write;
  wire                muxedCmd_active;
  wire                muxedCmd_precharge;
  wire                muxedCmd_last;
  wire       [0:0]    muxedCmd_address_byte;
  wire       [8:0]    muxedCmd_address_column;
  wire       [1:0]    muxedCmd_address_bank;
  wire       [12:0]   muxedCmd_address_row;
  wire       [3:0]    muxedCmd_context;
  wire       [1:0]    _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire       [1:0]    _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  wire                when_Backend_l186;
  wire                when_Backend_l194;
  wire                when_Backend_l200;
  wire       [1:0]    _zz_7;
  wire                _zz_8;
  wire                _zz_9;
  wire                when_Backend_l211;
  wire       [1:0]    _zz_10;
  wire                _zz_11;
  wire                _zz_12;

  assign _zz_when = 1'b1;
  assign _zz_io_phy_phases_0_DQw_0 = writePipeline_payload_data[15 : 0];
  assign _zz_io_phy_phases_0_DM_0 = (~ writePipeline_payload_mask[1 : 0]);
  assign _zz_io_phy_phases_1_DQw_0 = writePipeline_payload_data[31 : 16];
  assign _zz_io_phy_phases_1_DM_0 = (~ writePipeline_payload_mask[3 : 2]);
  assign _zz_io_phy_ADDR = muxedCmd_address_column;
  assign _zz_io_phy_ADDR_1 = muxedCmd_address_column;
  StreamFifoLowLatency streamFifoLowLatency_4 (
    .io_push_valid                     (rspPipeline_input_valid                             ), //i
    .io_push_ready                     (streamFifoLowLatency_4_io_push_ready                ), //o
    .io_push_payload_write             (rspPipeline_input_payload_write                     ), //i
    .io_push_payload_last              (rspPipeline_input_payload_last                      ), //i
    .io_push_payload_context           (rspPipeline_input_payload_context[3:0]              ), //i
    .io_pop_valid                      (streamFifoLowLatency_4_io_pop_valid                 ), //o
    .io_pop_ready                      (streamFifoLowLatency_4_io_pop_ready                 ), //i
    .io_pop_payload_write              (streamFifoLowLatency_4_io_pop_payload_write         ), //o
    .io_pop_payload_last               (streamFifoLowLatency_4_io_pop_payload_last          ), //o
    .io_pop_payload_context            (streamFifoLowLatency_4_io_pop_payload_context[3:0]  ), //o
    .io_flush                          (1'b0                                                ), //i
    .io_occupancy                      (streamFifoLowLatency_4_io_occupancy[3:0]            ), //o
    .clkout_system                     (clkout_system                                       ), //i
    .systemCdCtrl_logic_outputReset    (systemCdCtrl_logic_outputReset                      )  //i
  );
  always @(*) begin
    io_phy_ADDR = 13'bxxxxxxxxxxxxx;
    if(io_input_prechargeAll) begin
      io_phy_ADDR[10] = 1'b1;
    end
    if(when_Backend_l186) begin
      io_phy_ADDR = muxedCmd_address_row;
      io_phy_ADDR[10] = 1'b0;
    end
    if(when_Backend_l194) begin
      io_phy_ADDR = muxedCmd_address_row;
    end
    if(when_Backend_l200) begin
      io_phy_ADDR = {4'd0, _zz_io_phy_ADDR};
      io_phy_ADDR[10] = 1'b0;
    end
    if(when_Backend_l211) begin
      io_phy_ADDR = {4'd0, _zz_io_phy_ADDR_1};
      io_phy_ADDR[10] = 1'b0;
    end
    if(io_soft_cmd_valid) begin
      io_phy_ADDR = io_soft_cmd_payload_ADDR;
    end
  end

  always @(*) begin
    io_phy_BA = 2'bxx;
    if(when_Backend_l186) begin
      io_phy_BA = muxedCmd_address_bank;
    end
    if(when_Backend_l194) begin
      io_phy_BA = muxedCmd_address_bank;
    end
    if(when_Backend_l200) begin
      io_phy_BA = muxedCmd_address_bank;
    end
    if(when_Backend_l211) begin
      io_phy_BA = muxedCmd_address_bank;
    end
    if(io_soft_cmd_valid) begin
      io_phy_BA = io_soft_cmd_payload_BA;
    end
  end

  always @(*) begin
    io_phy_phases_0_CSn = 1'b0;
    if(io_input_prechargeAll) begin
      if(_zz_2) begin
        io_phy_phases_0_CSn = 1'b0;
      end
    end
    if(io_input_refresh) begin
      if(_zz_5) begin
        io_phy_phases_0_CSn = 1'b0;
      end
    end
    if(when_Backend_l186) begin
      if(_zz_2) begin
        io_phy_phases_0_CSn = 1'b0;
      end
    end
    if(when_Backend_l194) begin
      if(_zz_5) begin
        io_phy_phases_0_CSn = 1'b0;
      end
    end
    if(when_Backend_l200) begin
      if(_zz_8) begin
        io_phy_phases_0_CSn = 1'b0;
      end
    end
    if(when_Backend_l211) begin
      if(_zz_11) begin
        io_phy_phases_0_CSn = 1'b0;
      end
    end
    if(io_soft_cmd_valid) begin
      io_phy_phases_0_CSn = io_soft_cmd_payload_CSn;
    end
  end

  always @(*) begin
    io_phy_phases_0_RASn = 1'b1;
    if(io_input_prechargeAll) begin
      if(_zz_2) begin
        io_phy_phases_0_RASn = 1'b0;
      end
    end
    if(io_input_refresh) begin
      if(_zz_5) begin
        io_phy_phases_0_RASn = 1'b0;
      end
    end
    if(when_Backend_l186) begin
      if(_zz_2) begin
        io_phy_phases_0_RASn = 1'b0;
      end
    end
    if(when_Backend_l194) begin
      if(_zz_5) begin
        io_phy_phases_0_RASn = io_config_noActive;
      end
    end
    if(io_soft_cmd_valid) begin
      io_phy_phases_0_RASn = io_soft_cmd_payload_RASn;
    end
  end

  always @(*) begin
    io_phy_phases_0_CASn = 1'b1;
    if(io_input_refresh) begin
      if(_zz_5) begin
        io_phy_phases_0_CASn = 1'b0;
      end
    end
    if(when_Backend_l200) begin
      if(_zz_8) begin
        io_phy_phases_0_CASn = 1'b0;
      end
    end
    if(when_Backend_l211) begin
      if(_zz_11) begin
        io_phy_phases_0_CASn = 1'b0;
      end
    end
    if(io_soft_cmd_valid) begin
      io_phy_phases_0_CASn = io_soft_cmd_payload_CASn;
    end
  end

  always @(*) begin
    io_phy_phases_0_WEn = 1'b1;
    if(io_input_prechargeAll) begin
      if(_zz_2) begin
        io_phy_phases_0_WEn = 1'b0;
      end
    end
    if(when_Backend_l186) begin
      if(_zz_2) begin
        io_phy_phases_0_WEn = 1'b0;
      end
    end
    if(when_Backend_l200) begin
      if(_zz_8) begin
        io_phy_phases_0_WEn = 1'b0;
      end
    end
    if(io_soft_cmd_valid) begin
      io_phy_phases_0_WEn = io_soft_cmd_payload_WEn;
    end
  end

  assign io_phy_phases_0_CKE = io_soft_CKE;
  always @(*) begin
    io_phy_phases_1_CSn = 1'b0;
    if(io_input_prechargeAll) begin
      if(_zz_3) begin
        io_phy_phases_1_CSn = 1'b0;
      end
    end
    if(io_input_refresh) begin
      if(_zz_6) begin
        io_phy_phases_1_CSn = 1'b0;
      end
    end
    if(when_Backend_l186) begin
      if(_zz_3) begin
        io_phy_phases_1_CSn = 1'b0;
      end
    end
    if(when_Backend_l194) begin
      if(_zz_6) begin
        io_phy_phases_1_CSn = 1'b0;
      end
    end
    if(when_Backend_l200) begin
      if(_zz_9) begin
        io_phy_phases_1_CSn = 1'b0;
      end
    end
    if(when_Backend_l211) begin
      if(_zz_12) begin
        io_phy_phases_1_CSn = 1'b0;
      end
    end
  end

  always @(*) begin
    io_phy_phases_1_RASn = 1'b1;
    if(io_input_prechargeAll) begin
      if(_zz_3) begin
        io_phy_phases_1_RASn = 1'b0;
      end
    end
    if(io_input_refresh) begin
      if(_zz_6) begin
        io_phy_phases_1_RASn = 1'b0;
      end
    end
    if(when_Backend_l186) begin
      if(_zz_3) begin
        io_phy_phases_1_RASn = 1'b0;
      end
    end
    if(when_Backend_l194) begin
      if(_zz_6) begin
        io_phy_phases_1_RASn = io_config_noActive;
      end
    end
  end

  always @(*) begin
    io_phy_phases_1_CASn = 1'b1;
    if(io_input_refresh) begin
      if(_zz_6) begin
        io_phy_phases_1_CASn = 1'b0;
      end
    end
    if(when_Backend_l200) begin
      if(_zz_9) begin
        io_phy_phases_1_CASn = 1'b0;
      end
    end
    if(when_Backend_l211) begin
      if(_zz_12) begin
        io_phy_phases_1_CASn = 1'b0;
      end
    end
  end

  always @(*) begin
    io_phy_phases_1_WEn = 1'b1;
    if(io_input_prechargeAll) begin
      if(_zz_3) begin
        io_phy_phases_1_WEn = 1'b0;
      end
    end
    if(when_Backend_l186) begin
      if(_zz_3) begin
        io_phy_phases_1_WEn = 1'b0;
      end
    end
    if(when_Backend_l200) begin
      if(_zz_9) begin
        io_phy_phases_1_WEn = 1'b0;
      end
    end
  end

  assign io_phy_phases_1_CKE = io_soft_CKE;
  assign writePipeline_inputRepeated_valid = writePipeline_input_valid;
  assign _zz_writePipeline_writeHistory_0_valid = writePipeline_inputRepeated_valid;
  assign writePipeline_writeHistory_0_valid = _zz_writePipeline_writeHistory_0_valid;
  assign writePipeline_writeHistory_1_valid = _zz_writePipeline_writeHistory_1_valid;
  always @(*) begin
    writePipeline_history_valid = 1'b0;
    writePipeline_history_valid = writePipeline_writeHistory_0_valid;
  end

  assign io_phy_writeEnable = writePipeline_history_valid;
  always @(*) begin
    io_writeDatas_0_ready = 1'b0;
    if(_zz_when[0]) begin
      io_writeDatas_0_ready = writePipeline_history_valid;
    end
  end

  assign writePipeline_payload_data = io_writeDatas_0_payload_data;
  assign writePipeline_payload_mask = io_writeDatas_0_payload_mask;
  assign io_phy_phases_0_DQw_0 = _zz_io_phy_phases_0_DQw_0[15 : 0];
  always @(*) begin
    if(writePipeline_history_valid) begin
      io_phy_phases_0_DM_0 = _zz_io_phy_phases_0_DM_0[1 : 0];
    end else begin
      io_phy_phases_0_DM_0 = 2'b00;
    end
  end

  assign io_phy_phases_1_DQw_0 = _zz_io_phy_phases_1_DQw_0[15 : 0];
  always @(*) begin
    if(writePipeline_history_valid) begin
      io_phy_phases_1_DM_0 = _zz_io_phy_phases_1_DM_0[1 : 0];
    end else begin
      io_phy_phases_1_DM_0 = 2'b00;
    end
  end

  assign _zz_rspPipeline_readHistory_0 = (rspPipeline_input_valid && (! rspPipeline_input_payload_write));
  assign rspPipeline_readHistory_0 = _zz_rspPipeline_readHistory_0;
  assign rspPipeline_readHistory_1 = _zz_rspPipeline_readHistory_1;
  assign rspPipeline_readHistory_2 = _zz_rspPipeline_readHistory_2;
  assign rspPipeline_readHistory_3 = _zz_rspPipeline_readHistory_3;
  assign rspPipeline_readHistory_4 = _zz_rspPipeline_readHistory_4;
  assign rspPipeline_readHistory_5 = _zz_rspPipeline_readHistory_5;
  assign rspPipeline_readHistory_6 = _zz_rspPipeline_readHistory_6;
  assign rspPipeline_readHistory_7 = _zz_rspPipeline_readHistory_7;
  always @(*) begin
    io_phy_readEnable = 1'b0;
    case(io_config_readLatency)
      2'b00 : begin
        io_phy_readEnable = (rspPipeline_readHistory_5 != 1'b0);
      end
      2'b01 : begin
        io_phy_readEnable = (rspPipeline_readHistory_6 != 1'b0);
      end
      2'b10 : begin
        io_phy_readEnable = (rspPipeline_readHistory_7 != 1'b0);
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    rspPipeline_beatCounter_willIncrement = 1'b0;
    if(io_phy_readValid) begin
      rspPipeline_beatCounter_willIncrement = 1'b1;
    end
  end

  assign rspPipeline_beatCounter_willClear = 1'b0;
  assign rspPipeline_beatCounter_willOverflowIfInc = 1'b1;
  assign rspPipeline_beatCounter_willOverflow = (rspPipeline_beatCounter_willOverflowIfInc && rspPipeline_beatCounter_willIncrement);
  assign rspPipeline_output_valid = (((streamFifoLowLatency_4_io_pop_valid && streamFifoLowLatency_4_io_pop_payload_write) && streamFifoLowLatency_4_io_pop_payload_last) || io_phy_readValid);
  assign rspPipeline_output_payload_fragment_context = streamFifoLowLatency_4_io_pop_payload_context;
  assign rspPipeline_output_payload_last = (streamFifoLowLatency_4_io_pop_payload_write || (rspPipeline_beatCounter_willOverflowIfInc && streamFifoLowLatency_4_io_pop_payload_last));
  assign streamFifoLowLatency_4_io_pop_ready = (streamFifoLowLatency_4_io_pop_payload_write || rspPipeline_beatCounter_willOverflow);
  always @(*) begin
    rspPipeline_output_payload_fragment_data[15 : 0] = io_phy_phases_0_DQr_0;
    rspPipeline_output_payload_fragment_data[31 : 16] = io_phy_phases_1_DQr_0;
  end

  assign io_outputs_0_valid = (rspPop_valid && 1'b1);
  assign io_outputs_0_payload_last = rspPop_payload_last;
  assign io_outputs_0_payload_fragment_data = rspPop_payload_fragment_data;
  assign io_outputs_0_payload_fragment_context = rspPop_payload_fragment_context;
  assign _zz_muxedCmd_read = (((io_input_ports_0_read || io_input_ports_0_write) || io_input_ports_0_precharge) || io_input_ports_0_active);
  assign muxedCmd_read = (_zz_muxedCmd_read ? io_input_ports_0_read : io_input_ports_1_read);
  assign muxedCmd_write = (_zz_muxedCmd_read ? io_input_ports_0_write : io_input_ports_1_write);
  assign muxedCmd_active = (_zz_muxedCmd_read ? io_input_ports_0_active : io_input_ports_1_active);
  assign muxedCmd_precharge = (_zz_muxedCmd_read ? io_input_ports_0_precharge : io_input_ports_1_precharge);
  assign muxedCmd_last = (_zz_muxedCmd_read ? io_input_ports_0_last : io_input_ports_1_last);
  assign muxedCmd_address_byte = (_zz_muxedCmd_read ? io_input_ports_0_address_byte : io_input_ports_1_address_byte);
  assign muxedCmd_address_column = (_zz_muxedCmd_read ? io_input_ports_0_address_column : io_input_ports_1_address_column);
  assign muxedCmd_address_bank = (_zz_muxedCmd_read ? io_input_ports_0_address_bank : io_input_ports_1_address_bank);
  assign muxedCmd_address_row = (_zz_muxedCmd_read ? io_input_ports_0_address_row : io_input_ports_1_address_row);
  assign muxedCmd_context = (_zz_muxedCmd_read ? io_input_ports_0_context : io_input_ports_1_context);
  assign writePipeline_input_valid = ({io_input_ports_1_write,io_input_ports_0_write} != 2'b00);
  always @(*) begin
    rspPipeline_input_valid = 1'b0;
    if(when_Backend_l200) begin
      rspPipeline_input_valid = 1'b1;
    end
    if(when_Backend_l211) begin
      rspPipeline_input_valid = 1'b1;
    end
  end

  assign rspPipeline_input_payload_last = muxedCmd_last;
  assign rspPipeline_input_payload_context = muxedCmd_context;
  always @(*) begin
    rspPipeline_input_payload_write = 1'bx;
    if(when_Backend_l200) begin
      rspPipeline_input_payload_write = 1'b1;
    end
    if(when_Backend_l211) begin
      rspPipeline_input_payload_write = 1'b0;
    end
  end

  assign _zz_1 = ({1'd0,1'b1} <<< io_config_phase_precharge);
  assign _zz_2 = _zz_1[0];
  assign _zz_3 = _zz_1[1];
  assign _zz_4 = ({1'd0,1'b1} <<< io_config_phase_active);
  assign _zz_5 = _zz_4[0];
  assign _zz_6 = _zz_4[1];
  assign when_Backend_l186 = ({io_input_ports_1_precharge,io_input_ports_0_precharge} != 2'b00);
  assign when_Backend_l194 = ({io_input_ports_1_active,io_input_ports_0_active} != 2'b00);
  assign when_Backend_l200 = ({io_input_ports_1_write,io_input_ports_0_write} != 2'b00);
  assign _zz_7 = ({1'd0,1'b1} <<< io_config_phase_write);
  assign _zz_8 = _zz_7[0];
  assign _zz_9 = _zz_7[1];
  assign when_Backend_l211 = ({io_input_ports_1_read,io_input_ports_0_read} != 2'b00);
  assign _zz_10 = ({1'd0,1'b1} <<< io_config_phase_read);
  assign _zz_11 = _zz_10[0];
  assign _zz_12 = _zz_10[1];
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      _zz_writePipeline_writeHistory_1_valid <= 1'b0;
      _zz_rspPipeline_readHistory_1 <= 1'b0;
      _zz_rspPipeline_readHistory_2 <= 1'b0;
      _zz_rspPipeline_readHistory_3 <= 1'b0;
      _zz_rspPipeline_readHistory_4 <= 1'b0;
      _zz_rspPipeline_readHistory_5 <= 1'b0;
      _zz_rspPipeline_readHistory_6 <= 1'b0;
      _zz_rspPipeline_readHistory_7 <= 1'b0;
      rspPop_valid <= 1'b0;
    end else begin
      _zz_writePipeline_writeHistory_1_valid <= _zz_writePipeline_writeHistory_0_valid;
      `ifndef SYNTHESIS
        `ifdef FORMAL
          assert((! ((! io_writeDatas_0_valid) && io_writeDatas_0_ready)));
        `else
          if(!(! ((! io_writeDatas_0_valid) && io_writeDatas_0_ready))) begin
            $display("ERROR SDRAM write data stream starved !");
          end
        `endif
      `endif
      _zz_rspPipeline_readHistory_1 <= _zz_rspPipeline_readHistory_0;
      _zz_rspPipeline_readHistory_2 <= _zz_rspPipeline_readHistory_1;
      _zz_rspPipeline_readHistory_3 <= _zz_rspPipeline_readHistory_2;
      _zz_rspPipeline_readHistory_4 <= _zz_rspPipeline_readHistory_3;
      _zz_rspPipeline_readHistory_5 <= _zz_rspPipeline_readHistory_4;
      _zz_rspPipeline_readHistory_6 <= _zz_rspPipeline_readHistory_5;
      _zz_rspPipeline_readHistory_7 <= _zz_rspPipeline_readHistory_6;
      rspPop_valid <= rspPipeline_output_valid;
    end
  end

  always @(posedge clkout_system) begin
    if(rspPipeline_output_valid) begin
      rspPipeline_debugData <= rspPipeline_output_payload_fragment_data;
    end
    rspPop_payload_last <= rspPipeline_output_payload_last;
    rspPop_payload_fragment_data <= rspPipeline_output_payload_fragment_data;
    rspPop_payload_fragment_context <= rspPipeline_output_payload_fragment_context;
  end


endmodule

module Tasker (
  input      [1:0]    io_config_readLatency,
  input      [3:0]    io_config_RAS,
  input      [3:0]    io_config_RP,
  input      [3:0]    io_config_WR,
  input      [3:0]    io_config_RCD,
  input      [3:0]    io_config_WTR,
  input      [3:0]    io_config_RTP,
  input      [3:0]    io_config_RRD,
  input      [3:0]    io_config_RTW,
  input      [6:0]    io_config_RFC,
  input      [15:0]   io_config_REF,
  input               io_config_autoRefresh,
  input               io_config_noActive,
  input      [0:0]    io_config_phase_active,
  input      [0:0]    io_config_phase_precharge,
  input      [0:0]    io_config_phase_read,
  input      [0:0]    io_config_phase_write,
  input               io_refresh_valid,
  output reg          io_refresh_ready,
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input               io_inputs_0_payload_write,
  input      [24:0]   io_inputs_0_payload_address,
  input      [3:0]    io_inputs_0_payload_context,
  input               io_inputs_0_payload_burstLast,
  input      [3:0]    io_inputs_0_payload_length,
  input      [0:0]    io_writeDataTockens_0,
  output              io_output_ports_0_read,
  output              io_output_ports_0_write,
  output              io_output_ports_0_active,
  output              io_output_ports_0_precharge,
  output              io_output_ports_0_last,
  output     [0:0]    io_output_ports_0_address_byte,
  output     [8:0]    io_output_ports_0_address_column,
  output     [1:0]    io_output_ports_0_address_bank,
  output     [12:0]   io_output_ports_0_address_row,
  output     [3:0]    io_output_ports_0_context,
  output              io_output_ports_1_read,
  output              io_output_ports_1_write,
  output              io_output_ports_1_active,
  output              io_output_ports_1_precharge,
  output              io_output_ports_1_last,
  output     [0:0]    io_output_ports_1_address_byte,
  output     [8:0]    io_output_ports_1_address_column,
  output     [1:0]    io_output_ports_1_address_bank,
  output     [12:0]   io_output_ports_1_address_row,
  output     [3:0]    io_output_ports_1_context,
  output reg          io_output_prechargeAll,
  output reg          io_output_refresh,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [12:0]   _zz_banksRow_port0;
  wire       [6:0]    _zz_RFC_value;
  wire       [0:0]    _zz_RFC_value_1;
  wire       [3:0]    _zz_RRD_value;
  wire       [0:0]    _zz_RRD_value_1;
  wire       [3:0]    _zz_WTR_value;
  wire       [0:0]    _zz_WTR_value_1;
  wire       [3:0]    _zz_RTW_value;
  wire       [0:0]    _zz_RTW_value_1;
  wire       [3:0]    _zz_RP_notZero;
  wire       [3:0]    _zz_RP_value;
  wire       [0:0]    _zz_RP_value_1;
  wire       [3:0]    _zz_banks_0_WR_value;
  wire       [0:0]    _zz_banks_0_WR_value_1;
  wire       [3:0]    _zz_banks_0_RAS_value;
  wire       [0:0]    _zz_banks_0_RAS_value_1;
  wire       [3:0]    _zz_banks_0_RP_value;
  wire       [0:0]    _zz_banks_0_RP_value_1;
  wire       [3:0]    _zz_banks_0_RCD_value;
  wire       [0:0]    _zz_banks_0_RCD_value_1;
  wire       [3:0]    _zz_banks_0_RTP_value;
  wire       [0:0]    _zz_banks_0_RTP_value_1;
  wire       [3:0]    _zz_banks_1_WR_value;
  wire       [0:0]    _zz_banks_1_WR_value_1;
  wire       [3:0]    _zz_banks_1_RAS_value;
  wire       [0:0]    _zz_banks_1_RAS_value_1;
  wire       [3:0]    _zz_banks_1_RP_value;
  wire       [0:0]    _zz_banks_1_RP_value_1;
  wire       [3:0]    _zz_banks_1_RCD_value;
  wire       [0:0]    _zz_banks_1_RCD_value_1;
  wire       [3:0]    _zz_banks_1_RTP_value;
  wire       [0:0]    _zz_banks_1_RTP_value_1;
  wire       [3:0]    _zz_banks_2_WR_value;
  wire       [0:0]    _zz_banks_2_WR_value_1;
  wire       [3:0]    _zz_banks_2_RAS_value;
  wire       [0:0]    _zz_banks_2_RAS_value_1;
  wire       [3:0]    _zz_banks_2_RP_value;
  wire       [0:0]    _zz_banks_2_RP_value_1;
  wire       [3:0]    _zz_banks_2_RCD_value;
  wire       [0:0]    _zz_banks_2_RCD_value_1;
  wire       [3:0]    _zz_banks_2_RTP_value;
  wire       [0:0]    _zz_banks_2_RTP_value_1;
  wire       [3:0]    _zz_banks_3_WR_value;
  wire       [0:0]    _zz_banks_3_WR_value_1;
  wire       [3:0]    _zz_banks_3_RAS_value;
  wire       [0:0]    _zz_banks_3_RAS_value_1;
  wire       [3:0]    _zz_banks_3_RP_value;
  wire       [0:0]    _zz_banks_3_RP_value_1;
  wire       [3:0]    _zz_banks_3_RCD_value;
  wire       [0:0]    _zz_banks_3_RCD_value_1;
  wire       [3:0]    _zz_banks_3_RTP_value;
  wire       [0:0]    _zz_banks_3_RTP_value_1;
  wire       [5:0]    _zz_writeTockens_0_counter;
  wire       [5:0]    _zz_writeTockens_0_counter_1;
  wire       [5:0]    _zz_writeTockens_0_counter_2;
  wire       [0:0]    _zz_writeTockens_0_counter_3;
  wire       [1:0]    _zz__zz_inputsArbiter_selOH_2;
  wire       [1:0]    _zz__zz_inputsArbiter_selOH_2_1;
  wire       [0:0]    _zz__zz_inputsArbiter_selOH_2_2;
  wire       [5:0]    _zz_when_Tasker_l157;
  reg                 _zz_taskConstructor_s1_status_bankActive;
  reg                 _zz_when_Tasker_l94;
  reg                 _zz_when_Tasker_l95;
  reg                 _zz_when_Tasker_l96;
  reg                 _zz_when_Tasker_l97;
  reg                 _zz_when_Tasker_l94_1;
  reg                 _zz_when_Tasker_l95_1;
  reg                 _zz_when_Tasker_l96_1;
  reg                 _zz_when_Tasker_l97_1;
  wire       [8:0]    _zz_io_output_ports_0_address_column;
  wire       [4:0]    _zz_io_output_ports_0_address_column_1;
  reg                 _zz_when_Tasker_l94_2;
  reg                 _zz_when_Tasker_l95_2;
  reg                 _zz_when_Tasker_l96_2;
  reg                 _zz_when_Tasker_l97_2;
  wire       [8:0]    _zz_io_output_ports_1_address_column;
  wire       [4:0]    _zz_io_output_ports_1_address_column_1;
  wire       [12:0]   _zz_banksRow_port;
  reg                 _zz_1;
  reg                 readyForRefresh;
  reg        [6:0]    RFC_value = 7'b0000000;
  wire                RFC_notZero;
  wire                RFC_busy;
  wire                when_Tasker_l38;
  reg        [3:0]    RRD_value = 4'b0000;
  wire                RRD_notZero;
  wire                RRD_busy;
  wire                when_Tasker_l38_1;
  reg        [3:0]    WTR_value = 4'b0000;
  wire                WTR_notZero;
  wire                WTR_busy;
  wire                when_Tasker_l38_2;
  reg        [3:0]    RTW_value = 4'b0000;
  wire                RTW_notZero;
  wire                RTW_busy;
  reg        [3:0]    RP_value = 4'b0000;
  wire                RP_notZero;
  wire                RP_busy;
  wire       [1:0]    banks_0_hits;
  reg                 banks_0_activeNext;
  reg                 banks_0_active;
  wire                when_Tasker_l65;
  wire                when_Tasker_l68;
  wire                when_Tasker_l38_3;
  reg        [3:0]    banks_0_WR_value = 4'b0000;
  wire                banks_0_WR_notZero;
  wire                banks_0_WR_busy;
  wire                when_Tasker_l38_4;
  reg        [3:0]    banks_0_RAS_value = 4'b0000;
  wire                banks_0_RAS_notZero;
  wire                banks_0_RAS_busy;
  wire                when_Tasker_l38_5;
  reg        [3:0]    banks_0_RP_value = 4'b0000;
  wire                banks_0_RP_notZero;
  wire                banks_0_RP_busy;
  wire                when_Tasker_l38_6;
  reg        [3:0]    banks_0_RCD_value = 4'b0000;
  wire                banks_0_RCD_notZero;
  wire                banks_0_RCD_busy;
  wire                when_Tasker_l38_7;
  reg        [3:0]    banks_0_RTP_value = 4'b0000;
  wire                banks_0_RTP_notZero;
  wire                banks_0_RTP_busy;
  wire                banks_0_allowPrecharge;
  wire                banks_0_allowActive;
  wire                banks_0_allowWrite;
  wire                banks_0_allowRead;
  wire       [1:0]    banks_1_hits;
  reg                 banks_1_activeNext;
  reg                 banks_1_active;
  wire                when_Tasker_l65_1;
  wire                when_Tasker_l68_1;
  wire                when_Tasker_l38_8;
  reg        [3:0]    banks_1_WR_value = 4'b0000;
  wire                banks_1_WR_notZero;
  wire                banks_1_WR_busy;
  wire                when_Tasker_l38_9;
  reg        [3:0]    banks_1_RAS_value = 4'b0000;
  wire                banks_1_RAS_notZero;
  wire                banks_1_RAS_busy;
  wire                when_Tasker_l38_10;
  reg        [3:0]    banks_1_RP_value = 4'b0000;
  wire                banks_1_RP_notZero;
  wire                banks_1_RP_busy;
  wire                when_Tasker_l38_11;
  reg        [3:0]    banks_1_RCD_value = 4'b0000;
  wire                banks_1_RCD_notZero;
  wire                banks_1_RCD_busy;
  wire                when_Tasker_l38_12;
  reg        [3:0]    banks_1_RTP_value = 4'b0000;
  wire                banks_1_RTP_notZero;
  wire                banks_1_RTP_busy;
  wire                banks_1_allowPrecharge;
  wire                banks_1_allowActive;
  wire                banks_1_allowWrite;
  wire                banks_1_allowRead;
  wire       [1:0]    banks_2_hits;
  reg                 banks_2_activeNext;
  reg                 banks_2_active;
  wire                when_Tasker_l65_2;
  wire                when_Tasker_l68_2;
  wire                when_Tasker_l38_13;
  reg        [3:0]    banks_2_WR_value = 4'b0000;
  wire                banks_2_WR_notZero;
  wire                banks_2_WR_busy;
  wire                when_Tasker_l38_14;
  reg        [3:0]    banks_2_RAS_value = 4'b0000;
  wire                banks_2_RAS_notZero;
  wire                banks_2_RAS_busy;
  wire                when_Tasker_l38_15;
  reg        [3:0]    banks_2_RP_value = 4'b0000;
  wire                banks_2_RP_notZero;
  wire                banks_2_RP_busy;
  wire                when_Tasker_l38_16;
  reg        [3:0]    banks_2_RCD_value = 4'b0000;
  wire                banks_2_RCD_notZero;
  wire                banks_2_RCD_busy;
  wire                when_Tasker_l38_17;
  reg        [3:0]    banks_2_RTP_value = 4'b0000;
  wire                banks_2_RTP_notZero;
  wire                banks_2_RTP_busy;
  wire                banks_2_allowPrecharge;
  wire                banks_2_allowActive;
  wire                banks_2_allowWrite;
  wire                banks_2_allowRead;
  wire       [1:0]    banks_3_hits;
  reg                 banks_3_activeNext;
  reg                 banks_3_active;
  wire                when_Tasker_l65_3;
  wire                when_Tasker_l68_3;
  wire                when_Tasker_l38_18;
  reg        [3:0]    banks_3_WR_value = 4'b0000;
  wire                banks_3_WR_notZero;
  wire                banks_3_WR_busy;
  wire                when_Tasker_l38_19;
  reg        [3:0]    banks_3_RAS_value = 4'b0000;
  wire                banks_3_RAS_notZero;
  wire                banks_3_RAS_busy;
  wire                when_Tasker_l38_20;
  reg        [3:0]    banks_3_RP_value = 4'b0000;
  wire                banks_3_RP_notZero;
  wire                banks_3_RP_busy;
  wire                when_Tasker_l38_21;
  reg        [3:0]    banks_3_RCD_value = 4'b0000;
  wire                banks_3_RCD_notZero;
  wire                banks_3_RCD_busy;
  wire                when_Tasker_l38_22;
  reg        [3:0]    banks_3_RTP_value = 4'b0000;
  wire                banks_3_RTP_notZero;
  wire                banks_3_RTP_busy;
  wire                banks_3_allowPrecharge;
  wire                banks_3_allowActive;
  wire                banks_3_allowWrite;
  wire                banks_3_allowRead;
  wire                allowPrechargeAll;
  wire                writeTockens_0_consume;
  reg        [5:0]    writeTockens_0_counter;
  reg                 writeTockens_0_ready;
  wire                when_Tasker_l131;
  wire                when_Tasker_l131_1;
  wire                inputsArbiter_output_valid;
  reg                 inputsArbiter_output_ready;
  wire                inputsArbiter_output_payload_write;
  wire       [24:0]   inputsArbiter_output_payload_address;
  wire       [3:0]    inputsArbiter_output_payload_context;
  wire                inputsArbiter_output_payload_burstLast;
  wire       [3:0]    inputsArbiter_output_payload_length;
  reg        [0:0]    inputsArbiter_state;
  wire       [0:0]    inputsArbiter_inputsValids;
  wire       [0:0]    _zz_inputsArbiter_selOH;
  wire       [1:0]    _zz_inputsArbiter_selOH_1;
  wire       [1:0]    _zz_inputsArbiter_selOH_2;
  wire       [0:0]    inputsArbiter_selOH;
  reg        [4:0]    inputsArbiter_tocken;
  wire                inputsArbiter_tockenIncrement;
  wire                when_Tasker_l157;
  wire                _zz_inputsArbiter_selPayload_write;
  wire                _zz_inputsArbiter_selPayload_burstLast;
  wire                inputsArbiter_selPayload_write;
  wire       [24:0]   inputsArbiter_selPayload_address;
  wire       [3:0]    inputsArbiter_selPayload_context;
  wire                inputsArbiter_selPayload_burstLast;
  wire       [3:0]    inputsArbiter_selPayload_length;
  wire                when_Tasker_l172;
  wire       [0:0]    taskConstructor_s0_portAddress_byte;
  wire       [8:0]    taskConstructor_s0_portAddress_column;
  wire       [1:0]    taskConstructor_s0_portAddress_bank;
  wire       [12:0]   taskConstructor_s0_portAddress_row;
  wire       [24:0]   _zz_taskConstructor_s0_portAddress_byte;
  wire                inputsArbiter_output_input_valid;
  wire                inputsArbiter_output_input_ready;
  wire                inputsArbiter_output_input_payload_write;
  wire       [24:0]   inputsArbiter_output_input_payload_address;
  wire       [3:0]    inputsArbiter_output_input_payload_context;
  wire                inputsArbiter_output_input_payload_burstLast;
  wire       [3:0]    inputsArbiter_output_input_payload_length;
  reg                 inputsArbiter_output_rValid;
  reg                 inputsArbiter_output_rData_write;
  reg        [24:0]   inputsArbiter_output_rData_address;
  reg        [3:0]    inputsArbiter_output_rData_context;
  reg                 inputsArbiter_output_rData_burstLast;
  reg        [3:0]    inputsArbiter_output_rData_length;
  wire                when_Stream_l342;
  wire       [0:0]    taskConstructor_s1_address_byte;
  wire       [8:0]    taskConstructor_s1_address_column;
  wire       [1:0]    taskConstructor_s1_address_bank;
  wire       [12:0]   taskConstructor_s1_address_row;
  wire       [24:0]   _zz_taskConstructor_s1_address_byte;
  reg                 taskConstructor_s1_status_bankActive;
  reg                 taskConstructor_s1_status_bankHit;
  reg                 taskConstructor_s1_status_allowPrecharge;
  reg                 taskConstructor_s1_status_allowActive;
  reg                 taskConstructor_s1_status_allowWrite;
  reg                 taskConstructor_s1_status_allowRead;
  wire                when_Tasker_l94;
  wire                when_Tasker_l95;
  wire                when_Tasker_l96;
  wire                when_Tasker_l97;
  wire                when_Tasker_l100;
  wire                when_Tasker_l111;
  wire                when_Tasker_l100_1;
  wire                when_Tasker_l111_1;
  reg                 stations_0_valid;
  reg                 stations_0_status_bankActive;
  reg                 stations_0_status_bankHit;
  reg                 stations_0_status_allowPrecharge;
  reg                 stations_0_status_allowActive;
  reg                 stations_0_status_allowWrite;
  reg                 stations_0_status_allowRead;
  reg        [0:0]    stations_0_address_byte;
  reg        [8:0]    stations_0_address_column;
  reg        [1:0]    stations_0_address_bank;
  reg        [12:0]   stations_0_address_row;
  reg                 stations_0_write;
  reg        [3:0]    stations_0_context;
  reg        [3:0]    stations_0_offset;
  reg        [3:0]    stations_0_offsetLast;
  reg        [1:0]    stations_0_stronger;
  reg        [1:0]    stations_0_afterBank;
  reg        [1:0]    stations_0_afterAccess;
  wire                when_Tasker_l94_1;
  wire                when_Tasker_l95_1;
  wire                when_Tasker_l96_1;
  wire                when_Tasker_l97_1;
  wire                when_Tasker_l100_2;
  wire                when_Tasker_l111_2;
  wire                when_Tasker_l100_3;
  wire                when_Tasker_l111_3;
  wire                stations_0_inputMiss;
  wire                stations_0_inputActive;
  wire                stations_0_inputPrecharge;
  wire                stations_0_inputAccess;
  wire                stations_0_inputWrite;
  wire                stations_0_inputRead;
  reg                 stations_0_inibated;
  wire                stations_0_doActive;
  wire                stations_0_doPrecharge;
  wire                stations_0_doWrite;
  wire                stations_0_doRead;
  wire                stations_0_doSomething;
  wire                stations_0_blockedByWriteTocken;
  wire                stations_0_sel;
  reg                 stations_0_fire;
  wire                stations_0_last;
  wire                stations_0_cmdOutputPayload_read;
  wire                stations_0_cmdOutputPayload_write;
  wire                stations_0_cmdOutputPayload_active;
  wire                stations_0_cmdOutputPayload_precharge;
  wire                stations_0_cmdOutputPayload_last;
  wire       [0:0]    stations_0_cmdOutputPayload_address_byte;
  wire       [8:0]    stations_0_cmdOutputPayload_address_column;
  wire       [1:0]    stations_0_cmdOutputPayload_address_bank;
  wire       [12:0]   stations_0_cmdOutputPayload_address_row;
  wire       [3:0]    stations_0_cmdOutputPayload_context;
  wire                when_Tasker_l252;
  reg        [3:0]    stations_0_frustration_counter;
  reg                 stations_0_frustration_increment;
  wire                stations_0_frustration_full;
  wire                when_Tasker_l266;
  reg                 stations_1_valid;
  reg                 stations_1_status_bankActive;
  reg                 stations_1_status_bankHit;
  reg                 stations_1_status_allowPrecharge;
  reg                 stations_1_status_allowActive;
  reg                 stations_1_status_allowWrite;
  reg                 stations_1_status_allowRead;
  reg        [0:0]    stations_1_address_byte;
  reg        [8:0]    stations_1_address_column;
  reg        [1:0]    stations_1_address_bank;
  reg        [12:0]   stations_1_address_row;
  reg                 stations_1_write;
  reg        [3:0]    stations_1_context;
  reg        [3:0]    stations_1_offset;
  reg        [3:0]    stations_1_offsetLast;
  reg        [1:0]    stations_1_stronger;
  reg        [1:0]    stations_1_afterBank;
  reg        [1:0]    stations_1_afterAccess;
  wire                when_Tasker_l94_2;
  wire                when_Tasker_l95_2;
  wire                when_Tasker_l96_2;
  wire                when_Tasker_l97_2;
  wire                when_Tasker_l100_4;
  wire                when_Tasker_l111_4;
  wire                when_Tasker_l100_5;
  wire                when_Tasker_l111_5;
  wire                stations_1_inputMiss;
  wire                stations_1_inputActive;
  wire                stations_1_inputPrecharge;
  wire                stations_1_inputAccess;
  wire                stations_1_inputWrite;
  wire                stations_1_inputRead;
  reg                 stations_1_inibated;
  wire                stations_1_doActive;
  wire                stations_1_doPrecharge;
  wire                stations_1_doWrite;
  wire                stations_1_doRead;
  wire                stations_1_doSomething;
  wire                stations_1_blockedByWriteTocken;
  wire                stations_1_sel;
  reg                 stations_1_fire;
  wire                stations_1_last;
  wire                stations_1_cmdOutputPayload_read;
  wire                stations_1_cmdOutputPayload_write;
  wire                stations_1_cmdOutputPayload_active;
  wire                stations_1_cmdOutputPayload_precharge;
  wire                stations_1_cmdOutputPayload_last;
  wire       [0:0]    stations_1_cmdOutputPayload_address_byte;
  wire       [8:0]    stations_1_cmdOutputPayload_address_column;
  wire       [1:0]    stations_1_cmdOutputPayload_address_bank;
  wire       [12:0]   stations_1_cmdOutputPayload_address_row;
  wire       [3:0]    stations_1_cmdOutputPayload_context;
  wire                when_Tasker_l252_1;
  reg        [3:0]    stations_1_frustration_counter;
  reg                 stations_1_frustration_increment;
  wire                stations_1_frustration_full;
  wire                when_Tasker_l266_1;
  wire       [1:0]    loader_stationsValid;
  wire       [1:0]    loader_stronger;
  wire       [1:0]    loader_afterBank;
  wire       [1:0]    loader_afterAccess;
  wire       [3:0]    loader_offset;
  wire       [3:0]    loader_offsetLast;
  wire                loader_slot_0_canSpawn;
  wire                when_Tasker_l282;
  wire                loader_slot_1_canSpawn;
  wire                when_Tasker_l282_1;
  reg        [1:0]    arbiter_selOH;
  wire                when_Tasker_l305;
  wire                when_Tasker_l306;
  wire       [1:0]    arbiter_logic_0_othersDoSomething;
  wire                when_Tasker_l305_1;
  wire                when_Tasker_l306_1;
  wire       [1:0]    arbiter_logic_1_othersDoSomething;
  wire                _zz_stations_0_sel;
  wire                when_Tasker_l320;
  wire                when_Tasker_l320_1;
  wire                arbiter_askRefresh;
  reg        [1:0]    arbiter_refreshState;
  reg                 allowPrechargeAll_regNext;
  wire                when_Tasker_l344;
  wire                when_Tasker_l350;
  wire                when_Tasker_l362;
  wire                when_Tasker_l370;
  wire                when_Tasker_l373;
  wire                when_Tasker_l362_1;
  wire                when_Tasker_l370_1;
  wire                when_Tasker_l373_1;
  wire       [0:0]    selectedAddress_byte;
  wire       [8:0]    selectedAddress_column;
  wire       [1:0]    selectedAddress_bank;
  wire       [12:0]   selectedAddress_row;
  wire                when_Tasker_l380;
  (* ram_style = "distributed" *) reg [12:0] banksRow [0:3];

  assign _zz_RFC_value_1 = RFC_notZero;
  assign _zz_RFC_value = {6'd0, _zz_RFC_value_1};
  assign _zz_RRD_value_1 = RRD_notZero;
  assign _zz_RRD_value = {3'd0, _zz_RRD_value_1};
  assign _zz_WTR_value_1 = WTR_notZero;
  assign _zz_WTR_value = {3'd0, _zz_WTR_value_1};
  assign _zz_RTW_value_1 = RTW_notZero;
  assign _zz_RTW_value = {3'd0, _zz_RTW_value_1};
  assign _zz_RP_notZero = (io_config_RP + 4'b0001);
  assign _zz_RP_value_1 = RP_notZero;
  assign _zz_RP_value = {3'd0, _zz_RP_value_1};
  assign _zz_banks_0_WR_value_1 = banks_0_WR_notZero;
  assign _zz_banks_0_WR_value = {3'd0, _zz_banks_0_WR_value_1};
  assign _zz_banks_0_RAS_value_1 = banks_0_RAS_notZero;
  assign _zz_banks_0_RAS_value = {3'd0, _zz_banks_0_RAS_value_1};
  assign _zz_banks_0_RP_value_1 = banks_0_RP_notZero;
  assign _zz_banks_0_RP_value = {3'd0, _zz_banks_0_RP_value_1};
  assign _zz_banks_0_RCD_value_1 = banks_0_RCD_notZero;
  assign _zz_banks_0_RCD_value = {3'd0, _zz_banks_0_RCD_value_1};
  assign _zz_banks_0_RTP_value_1 = banks_0_RTP_notZero;
  assign _zz_banks_0_RTP_value = {3'd0, _zz_banks_0_RTP_value_1};
  assign _zz_banks_1_WR_value_1 = banks_1_WR_notZero;
  assign _zz_banks_1_WR_value = {3'd0, _zz_banks_1_WR_value_1};
  assign _zz_banks_1_RAS_value_1 = banks_1_RAS_notZero;
  assign _zz_banks_1_RAS_value = {3'd0, _zz_banks_1_RAS_value_1};
  assign _zz_banks_1_RP_value_1 = banks_1_RP_notZero;
  assign _zz_banks_1_RP_value = {3'd0, _zz_banks_1_RP_value_1};
  assign _zz_banks_1_RCD_value_1 = banks_1_RCD_notZero;
  assign _zz_banks_1_RCD_value = {3'd0, _zz_banks_1_RCD_value_1};
  assign _zz_banks_1_RTP_value_1 = banks_1_RTP_notZero;
  assign _zz_banks_1_RTP_value = {3'd0, _zz_banks_1_RTP_value_1};
  assign _zz_banks_2_WR_value_1 = banks_2_WR_notZero;
  assign _zz_banks_2_WR_value = {3'd0, _zz_banks_2_WR_value_1};
  assign _zz_banks_2_RAS_value_1 = banks_2_RAS_notZero;
  assign _zz_banks_2_RAS_value = {3'd0, _zz_banks_2_RAS_value_1};
  assign _zz_banks_2_RP_value_1 = banks_2_RP_notZero;
  assign _zz_banks_2_RP_value = {3'd0, _zz_banks_2_RP_value_1};
  assign _zz_banks_2_RCD_value_1 = banks_2_RCD_notZero;
  assign _zz_banks_2_RCD_value = {3'd0, _zz_banks_2_RCD_value_1};
  assign _zz_banks_2_RTP_value_1 = banks_2_RTP_notZero;
  assign _zz_banks_2_RTP_value = {3'd0, _zz_banks_2_RTP_value_1};
  assign _zz_banks_3_WR_value_1 = banks_3_WR_notZero;
  assign _zz_banks_3_WR_value = {3'd0, _zz_banks_3_WR_value_1};
  assign _zz_banks_3_RAS_value_1 = banks_3_RAS_notZero;
  assign _zz_banks_3_RAS_value = {3'd0, _zz_banks_3_RAS_value_1};
  assign _zz_banks_3_RP_value_1 = banks_3_RP_notZero;
  assign _zz_banks_3_RP_value = {3'd0, _zz_banks_3_RP_value_1};
  assign _zz_banks_3_RCD_value_1 = banks_3_RCD_notZero;
  assign _zz_banks_3_RCD_value = {3'd0, _zz_banks_3_RCD_value_1};
  assign _zz_banks_3_RTP_value_1 = banks_3_RTP_notZero;
  assign _zz_banks_3_RTP_value = {3'd0, _zz_banks_3_RTP_value_1};
  assign _zz_writeTockens_0_counter = (writeTockens_0_counter + _zz_writeTockens_0_counter_1);
  assign _zz_writeTockens_0_counter_1 = {5'd0, io_writeDataTockens_0};
  assign _zz_writeTockens_0_counter_3 = writeTockens_0_consume;
  assign _zz_writeTockens_0_counter_2 = {5'd0, _zz_writeTockens_0_counter_3};
  assign _zz__zz_inputsArbiter_selOH_2 = (_zz_inputsArbiter_selOH_1 - _zz__zz_inputsArbiter_selOH_2_1);
  assign _zz__zz_inputsArbiter_selOH_2_2 = inputsArbiter_state;
  assign _zz__zz_inputsArbiter_selOH_2_1 = {1'd0, _zz__zz_inputsArbiter_selOH_2_2};
  assign _zz_when_Tasker_l157 = {1'd0, inputsArbiter_tocken};
  assign _zz_io_output_ports_0_address_column_1 = ({1'd0,stations_0_offset} <<< 1);
  assign _zz_io_output_ports_0_address_column = {4'd0, _zz_io_output_ports_0_address_column_1};
  assign _zz_io_output_ports_1_address_column_1 = ({1'd0,stations_1_offset} <<< 1);
  assign _zz_io_output_ports_1_address_column = {4'd0, _zz_io_output_ports_1_address_column_1};
  assign _zz_banksRow_port = selectedAddress_row;
  assign _zz_banksRow_port0 = banksRow[taskConstructor_s1_address_bank];
  always @(posedge clkout_system) begin
    if(_zz_1) begin
      banksRow[selectedAddress_bank] <= _zz_banksRow_port;
    end
  end

  always @(*) begin
    case(taskConstructor_s1_address_bank)
      2'b00 : begin
        _zz_taskConstructor_s1_status_bankActive = banks_0_active;
        _zz_when_Tasker_l94 = banks_0_allowPrecharge;
        _zz_when_Tasker_l95 = banks_0_allowActive;
        _zz_when_Tasker_l96 = banks_0_allowWrite;
        _zz_when_Tasker_l97 = banks_0_allowRead;
      end
      2'b01 : begin
        _zz_taskConstructor_s1_status_bankActive = banks_1_active;
        _zz_when_Tasker_l94 = banks_1_allowPrecharge;
        _zz_when_Tasker_l95 = banks_1_allowActive;
        _zz_when_Tasker_l96 = banks_1_allowWrite;
        _zz_when_Tasker_l97 = banks_1_allowRead;
      end
      2'b10 : begin
        _zz_taskConstructor_s1_status_bankActive = banks_2_active;
        _zz_when_Tasker_l94 = banks_2_allowPrecharge;
        _zz_when_Tasker_l95 = banks_2_allowActive;
        _zz_when_Tasker_l96 = banks_2_allowWrite;
        _zz_when_Tasker_l97 = banks_2_allowRead;
      end
      default : begin
        _zz_taskConstructor_s1_status_bankActive = banks_3_active;
        _zz_when_Tasker_l94 = banks_3_allowPrecharge;
        _zz_when_Tasker_l95 = banks_3_allowActive;
        _zz_when_Tasker_l96 = banks_3_allowWrite;
        _zz_when_Tasker_l97 = banks_3_allowRead;
      end
    endcase
  end

  always @(*) begin
    case(stations_0_address_bank)
      2'b00 : begin
        _zz_when_Tasker_l94_1 = banks_0_allowPrecharge;
        _zz_when_Tasker_l95_1 = banks_0_allowActive;
        _zz_when_Tasker_l96_1 = banks_0_allowWrite;
        _zz_when_Tasker_l97_1 = banks_0_allowRead;
      end
      2'b01 : begin
        _zz_when_Tasker_l94_1 = banks_1_allowPrecharge;
        _zz_when_Tasker_l95_1 = banks_1_allowActive;
        _zz_when_Tasker_l96_1 = banks_1_allowWrite;
        _zz_when_Tasker_l97_1 = banks_1_allowRead;
      end
      2'b10 : begin
        _zz_when_Tasker_l94_1 = banks_2_allowPrecharge;
        _zz_when_Tasker_l95_1 = banks_2_allowActive;
        _zz_when_Tasker_l96_1 = banks_2_allowWrite;
        _zz_when_Tasker_l97_1 = banks_2_allowRead;
      end
      default : begin
        _zz_when_Tasker_l94_1 = banks_3_allowPrecharge;
        _zz_when_Tasker_l95_1 = banks_3_allowActive;
        _zz_when_Tasker_l96_1 = banks_3_allowWrite;
        _zz_when_Tasker_l97_1 = banks_3_allowRead;
      end
    endcase
  end

  always @(*) begin
    case(stations_1_address_bank)
      2'b00 : begin
        _zz_when_Tasker_l94_2 = banks_0_allowPrecharge;
        _zz_when_Tasker_l95_2 = banks_0_allowActive;
        _zz_when_Tasker_l96_2 = banks_0_allowWrite;
        _zz_when_Tasker_l97_2 = banks_0_allowRead;
      end
      2'b01 : begin
        _zz_when_Tasker_l94_2 = banks_1_allowPrecharge;
        _zz_when_Tasker_l95_2 = banks_1_allowActive;
        _zz_when_Tasker_l96_2 = banks_1_allowWrite;
        _zz_when_Tasker_l97_2 = banks_1_allowRead;
      end
      2'b10 : begin
        _zz_when_Tasker_l94_2 = banks_2_allowPrecharge;
        _zz_when_Tasker_l95_2 = banks_2_allowActive;
        _zz_when_Tasker_l96_2 = banks_2_allowWrite;
        _zz_when_Tasker_l97_2 = banks_2_allowRead;
      end
      default : begin
        _zz_when_Tasker_l94_2 = banks_3_allowPrecharge;
        _zz_when_Tasker_l95_2 = banks_3_allowActive;
        _zz_when_Tasker_l96_2 = banks_3_allowWrite;
        _zz_when_Tasker_l97_2 = banks_3_allowRead;
      end
    endcase
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(when_Tasker_l380) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    readyForRefresh = 1'b1;
    if(when_Tasker_l172) begin
      readyForRefresh = 1'b0;
    end
    if(inputsArbiter_output_input_valid) begin
      readyForRefresh = 1'b0;
    end
    if(stations_0_valid) begin
      readyForRefresh = 1'b0;
    end
    if(stations_1_valid) begin
      readyForRefresh = 1'b0;
    end
  end

  assign RFC_notZero = (RFC_value != io_config_RFC);
  assign RFC_busy = RFC_notZero;
  assign when_Tasker_l38 = ({io_output_ports_1_active,io_output_ports_0_active} != 2'b00);
  assign RRD_notZero = (RRD_value != io_config_RRD);
  assign RRD_busy = RRD_notZero;
  assign when_Tasker_l38_1 = ({io_output_ports_1_write,io_output_ports_0_write} != 2'b00);
  assign WTR_notZero = (WTR_value != io_config_WTR);
  assign WTR_busy = WTR_notZero;
  assign when_Tasker_l38_2 = ({io_output_ports_1_read,io_output_ports_0_read} != 2'b00);
  assign RTW_notZero = (RTW_value != io_config_RTW);
  assign RTW_busy = RTW_notZero;
  assign RP_notZero = (RP_value != _zz_RP_notZero);
  assign RP_busy = RP_notZero;
  assign banks_0_hits = {(io_output_ports_1_address_bank == 2'b00),(io_output_ports_0_address_bank == 2'b00)};
  always @(*) begin
    banks_0_activeNext = banks_0_active;
    if(when_Tasker_l65) begin
      banks_0_activeNext = 1'b0;
    end
    if(when_Tasker_l68) begin
      banks_0_activeNext = 1'b1;
    end
  end

  assign when_Tasker_l65 = ((|(banks_0_hits & {io_output_ports_1_precharge,io_output_ports_0_precharge})) || io_output_prechargeAll);
  assign when_Tasker_l68 = (|(banks_0_hits & {io_output_ports_1_active,io_output_ports_0_active}));
  assign when_Tasker_l38_3 = (|(banks_0_hits & {io_output_ports_1_write,io_output_ports_0_write}));
  assign banks_0_WR_notZero = (banks_0_WR_value != io_config_WR);
  assign banks_0_WR_busy = banks_0_WR_notZero;
  assign when_Tasker_l38_4 = (|(banks_0_hits & {io_output_ports_1_active,io_output_ports_0_active}));
  assign banks_0_RAS_notZero = (banks_0_RAS_value != io_config_RAS);
  assign banks_0_RAS_busy = banks_0_RAS_notZero;
  assign when_Tasker_l38_5 = (|(banks_0_hits & {io_output_ports_1_precharge,io_output_ports_0_precharge}));
  assign banks_0_RP_notZero = (banks_0_RP_value != io_config_RP);
  assign banks_0_RP_busy = banks_0_RP_notZero;
  assign when_Tasker_l38_6 = (|(banks_0_hits & {io_output_ports_1_active,io_output_ports_0_active}));
  assign banks_0_RCD_notZero = (banks_0_RCD_value != io_config_RCD);
  assign banks_0_RCD_busy = banks_0_RCD_notZero;
  assign when_Tasker_l38_7 = (|(banks_0_hits & {io_output_ports_1_read,io_output_ports_0_read}));
  assign banks_0_RTP_notZero = (banks_0_RTP_value != io_config_RTP);
  assign banks_0_RTP_busy = banks_0_RTP_notZero;
  assign banks_0_allowPrecharge = (((! banks_0_WR_busy) && (! banks_0_RAS_busy)) && (! banks_0_RTP_busy));
  assign banks_0_allowActive = (! banks_0_RP_busy);
  assign banks_0_allowWrite = (! banks_0_RCD_busy);
  assign banks_0_allowRead = (! banks_0_RCD_busy);
  assign banks_1_hits = {(io_output_ports_1_address_bank == 2'b01),(io_output_ports_0_address_bank == 2'b01)};
  always @(*) begin
    banks_1_activeNext = banks_1_active;
    if(when_Tasker_l65_1) begin
      banks_1_activeNext = 1'b0;
    end
    if(when_Tasker_l68_1) begin
      banks_1_activeNext = 1'b1;
    end
  end

  assign when_Tasker_l65_1 = ((|(banks_1_hits & {io_output_ports_1_precharge,io_output_ports_0_precharge})) || io_output_prechargeAll);
  assign when_Tasker_l68_1 = (|(banks_1_hits & {io_output_ports_1_active,io_output_ports_0_active}));
  assign when_Tasker_l38_8 = (|(banks_1_hits & {io_output_ports_1_write,io_output_ports_0_write}));
  assign banks_1_WR_notZero = (banks_1_WR_value != io_config_WR);
  assign banks_1_WR_busy = banks_1_WR_notZero;
  assign when_Tasker_l38_9 = (|(banks_1_hits & {io_output_ports_1_active,io_output_ports_0_active}));
  assign banks_1_RAS_notZero = (banks_1_RAS_value != io_config_RAS);
  assign banks_1_RAS_busy = banks_1_RAS_notZero;
  assign when_Tasker_l38_10 = (|(banks_1_hits & {io_output_ports_1_precharge,io_output_ports_0_precharge}));
  assign banks_1_RP_notZero = (banks_1_RP_value != io_config_RP);
  assign banks_1_RP_busy = banks_1_RP_notZero;
  assign when_Tasker_l38_11 = (|(banks_1_hits & {io_output_ports_1_active,io_output_ports_0_active}));
  assign banks_1_RCD_notZero = (banks_1_RCD_value != io_config_RCD);
  assign banks_1_RCD_busy = banks_1_RCD_notZero;
  assign when_Tasker_l38_12 = (|(banks_1_hits & {io_output_ports_1_read,io_output_ports_0_read}));
  assign banks_1_RTP_notZero = (banks_1_RTP_value != io_config_RTP);
  assign banks_1_RTP_busy = banks_1_RTP_notZero;
  assign banks_1_allowPrecharge = (((! banks_1_WR_busy) && (! banks_1_RAS_busy)) && (! banks_1_RTP_busy));
  assign banks_1_allowActive = (! banks_1_RP_busy);
  assign banks_1_allowWrite = (! banks_1_RCD_busy);
  assign banks_1_allowRead = (! banks_1_RCD_busy);
  assign banks_2_hits = {(io_output_ports_1_address_bank == 2'b10),(io_output_ports_0_address_bank == 2'b10)};
  always @(*) begin
    banks_2_activeNext = banks_2_active;
    if(when_Tasker_l65_2) begin
      banks_2_activeNext = 1'b0;
    end
    if(when_Tasker_l68_2) begin
      banks_2_activeNext = 1'b1;
    end
  end

  assign when_Tasker_l65_2 = ((|(banks_2_hits & {io_output_ports_1_precharge,io_output_ports_0_precharge})) || io_output_prechargeAll);
  assign when_Tasker_l68_2 = (|(banks_2_hits & {io_output_ports_1_active,io_output_ports_0_active}));
  assign when_Tasker_l38_13 = (|(banks_2_hits & {io_output_ports_1_write,io_output_ports_0_write}));
  assign banks_2_WR_notZero = (banks_2_WR_value != io_config_WR);
  assign banks_2_WR_busy = banks_2_WR_notZero;
  assign when_Tasker_l38_14 = (|(banks_2_hits & {io_output_ports_1_active,io_output_ports_0_active}));
  assign banks_2_RAS_notZero = (banks_2_RAS_value != io_config_RAS);
  assign banks_2_RAS_busy = banks_2_RAS_notZero;
  assign when_Tasker_l38_15 = (|(banks_2_hits & {io_output_ports_1_precharge,io_output_ports_0_precharge}));
  assign banks_2_RP_notZero = (banks_2_RP_value != io_config_RP);
  assign banks_2_RP_busy = banks_2_RP_notZero;
  assign when_Tasker_l38_16 = (|(banks_2_hits & {io_output_ports_1_active,io_output_ports_0_active}));
  assign banks_2_RCD_notZero = (banks_2_RCD_value != io_config_RCD);
  assign banks_2_RCD_busy = banks_2_RCD_notZero;
  assign when_Tasker_l38_17 = (|(banks_2_hits & {io_output_ports_1_read,io_output_ports_0_read}));
  assign banks_2_RTP_notZero = (banks_2_RTP_value != io_config_RTP);
  assign banks_2_RTP_busy = banks_2_RTP_notZero;
  assign banks_2_allowPrecharge = (((! banks_2_WR_busy) && (! banks_2_RAS_busy)) && (! banks_2_RTP_busy));
  assign banks_2_allowActive = (! banks_2_RP_busy);
  assign banks_2_allowWrite = (! banks_2_RCD_busy);
  assign banks_2_allowRead = (! banks_2_RCD_busy);
  assign banks_3_hits = {(io_output_ports_1_address_bank == 2'b11),(io_output_ports_0_address_bank == 2'b11)};
  always @(*) begin
    banks_3_activeNext = banks_3_active;
    if(when_Tasker_l65_3) begin
      banks_3_activeNext = 1'b0;
    end
    if(when_Tasker_l68_3) begin
      banks_3_activeNext = 1'b1;
    end
  end

  assign when_Tasker_l65_3 = ((|(banks_3_hits & {io_output_ports_1_precharge,io_output_ports_0_precharge})) || io_output_prechargeAll);
  assign when_Tasker_l68_3 = (|(banks_3_hits & {io_output_ports_1_active,io_output_ports_0_active}));
  assign when_Tasker_l38_18 = (|(banks_3_hits & {io_output_ports_1_write,io_output_ports_0_write}));
  assign banks_3_WR_notZero = (banks_3_WR_value != io_config_WR);
  assign banks_3_WR_busy = banks_3_WR_notZero;
  assign when_Tasker_l38_19 = (|(banks_3_hits & {io_output_ports_1_active,io_output_ports_0_active}));
  assign banks_3_RAS_notZero = (banks_3_RAS_value != io_config_RAS);
  assign banks_3_RAS_busy = banks_3_RAS_notZero;
  assign when_Tasker_l38_20 = (|(banks_3_hits & {io_output_ports_1_precharge,io_output_ports_0_precharge}));
  assign banks_3_RP_notZero = (banks_3_RP_value != io_config_RP);
  assign banks_3_RP_busy = banks_3_RP_notZero;
  assign when_Tasker_l38_21 = (|(banks_3_hits & {io_output_ports_1_active,io_output_ports_0_active}));
  assign banks_3_RCD_notZero = (banks_3_RCD_value != io_config_RCD);
  assign banks_3_RCD_busy = banks_3_RCD_notZero;
  assign when_Tasker_l38_22 = (|(banks_3_hits & {io_output_ports_1_read,io_output_ports_0_read}));
  assign banks_3_RTP_notZero = (banks_3_RTP_value != io_config_RTP);
  assign banks_3_RTP_busy = banks_3_RTP_notZero;
  assign banks_3_allowPrecharge = (((! banks_3_WR_busy) && (! banks_3_RAS_busy)) && (! banks_3_RTP_busy));
  assign banks_3_allowActive = (! banks_3_RP_busy);
  assign banks_3_allowWrite = (! banks_3_RCD_busy);
  assign banks_3_allowRead = (! banks_3_RCD_busy);
  assign allowPrechargeAll = (((banks_0_allowPrecharge && banks_1_allowPrecharge) && banks_2_allowPrecharge) && banks_3_allowPrecharge);
  assign writeTockens_0_consume = ({(io_output_ports_1_write && 1'b1),(io_output_ports_0_write && 1'b1)} != 2'b00);
  assign when_Tasker_l131 = (6'h01 <= writeTockens_0_counter);
  assign when_Tasker_l131_1 = (writeTockens_0_consume && (writeTockens_0_counter < 6'h02));
  assign inputsArbiter_inputsValids = io_inputs_0_valid;
  assign _zz_inputsArbiter_selOH = inputsArbiter_inputsValids;
  assign _zz_inputsArbiter_selOH_1 = {_zz_inputsArbiter_selOH,_zz_inputsArbiter_selOH};
  assign _zz_inputsArbiter_selOH_2 = (_zz_inputsArbiter_selOH_1 & (~ _zz__zz_inputsArbiter_selOH_2));
  assign inputsArbiter_selOH = (_zz_inputsArbiter_selOH_2[1 : 1] | _zz_inputsArbiter_selOH_2[0 : 0]);
  assign inputsArbiter_tockenIncrement = inputsArbiter_output_ready;
  assign when_Tasker_l157 = ((! (|(io_inputs_0_valid & inputsArbiter_state))) || (inputsArbiter_tockenIncrement && (((|(io_inputs_0_payload_burstLast & inputsArbiter_state)) && (5'h10 <= inputsArbiter_tocken)) || (6'h20 <= _zz_when_Tasker_l157))));
  assign inputsArbiter_output_valid = (|(inputsArbiter_selOH & inputsArbiter_inputsValids));
  assign io_inputs_0_ready = (inputsArbiter_selOH[0] && inputsArbiter_output_ready);
  assign _zz_inputsArbiter_selPayload_write = io_inputs_0_payload_write;
  assign _zz_inputsArbiter_selPayload_burstLast = io_inputs_0_payload_burstLast;
  assign inputsArbiter_selPayload_write = _zz_inputsArbiter_selPayload_write;
  assign inputsArbiter_selPayload_address = io_inputs_0_payload_address;
  assign inputsArbiter_selPayload_context = io_inputs_0_payload_context;
  assign inputsArbiter_selPayload_burstLast = _zz_inputsArbiter_selPayload_burstLast;
  assign inputsArbiter_selPayload_length = io_inputs_0_payload_length;
  assign inputsArbiter_output_payload_write = inputsArbiter_selPayload_write;
  assign inputsArbiter_output_payload_address = inputsArbiter_selPayload_address;
  assign inputsArbiter_output_payload_context = inputsArbiter_selPayload_context;
  assign inputsArbiter_output_payload_burstLast = inputsArbiter_selPayload_burstLast;
  assign inputsArbiter_output_payload_length = inputsArbiter_selPayload_length;
  assign when_Tasker_l172 = (|inputsArbiter_inputsValids);
  assign _zz_taskConstructor_s0_portAddress_byte = inputsArbiter_output_payload_address;
  assign taskConstructor_s0_portAddress_byte = _zz_taskConstructor_s0_portAddress_byte[0 : 0];
  assign taskConstructor_s0_portAddress_column = _zz_taskConstructor_s0_portAddress_byte[9 : 1];
  assign taskConstructor_s0_portAddress_bank = _zz_taskConstructor_s0_portAddress_byte[11 : 10];
  assign taskConstructor_s0_portAddress_row = _zz_taskConstructor_s0_portAddress_byte[24 : 12];
  always @(*) begin
    inputsArbiter_output_ready = inputsArbiter_output_input_ready;
    if(when_Stream_l342) begin
      inputsArbiter_output_ready = 1'b1;
    end
  end

  assign when_Stream_l342 = (! inputsArbiter_output_input_valid);
  assign inputsArbiter_output_input_valid = inputsArbiter_output_rValid;
  assign inputsArbiter_output_input_payload_write = inputsArbiter_output_rData_write;
  assign inputsArbiter_output_input_payload_address = inputsArbiter_output_rData_address;
  assign inputsArbiter_output_input_payload_context = inputsArbiter_output_rData_context;
  assign inputsArbiter_output_input_payload_burstLast = inputsArbiter_output_rData_burstLast;
  assign inputsArbiter_output_input_payload_length = inputsArbiter_output_rData_length;
  assign _zz_taskConstructor_s1_address_byte = inputsArbiter_output_input_payload_address;
  assign taskConstructor_s1_address_byte = _zz_taskConstructor_s1_address_byte[0 : 0];
  assign taskConstructor_s1_address_column = _zz_taskConstructor_s1_address_byte[9 : 1];
  assign taskConstructor_s1_address_bank = _zz_taskConstructor_s1_address_byte[11 : 10];
  assign taskConstructor_s1_address_row = _zz_taskConstructor_s1_address_byte[24 : 12];
  always @(*) begin
    taskConstructor_s1_status_allowPrecharge = 1'b1;
    if(when_Tasker_l94) begin
      taskConstructor_s1_status_allowPrecharge = 1'b0;
    end
    if(when_Tasker_l100) begin
      if(io_output_ports_0_active) begin
        taskConstructor_s1_status_allowPrecharge = 1'b0;
      end
      if(when_Tasker_l111) begin
        taskConstructor_s1_status_allowPrecharge = 1'b0;
      end
    end
    if(when_Tasker_l100_1) begin
      if(io_output_ports_1_active) begin
        taskConstructor_s1_status_allowPrecharge = 1'b0;
      end
      if(when_Tasker_l111_1) begin
        taskConstructor_s1_status_allowPrecharge = 1'b0;
      end
    end
  end

  always @(*) begin
    taskConstructor_s1_status_allowActive = ((! RRD_busy) && 1'b1);
    if(when_Tasker_l95) begin
      taskConstructor_s1_status_allowActive = 1'b0;
    end
    if(when_Tasker_l100) begin
      if(io_output_ports_0_precharge) begin
        taskConstructor_s1_status_allowActive = 1'b0;
      end
    end
    if(when_Tasker_l100_1) begin
      if(io_output_ports_1_precharge) begin
        taskConstructor_s1_status_allowActive = 1'b0;
      end
    end
  end

  always @(*) begin
    taskConstructor_s1_status_allowWrite = ((! RTW_busy) && 1'b1);
    if(when_Tasker_l96) begin
      taskConstructor_s1_status_allowWrite = 1'b0;
    end
    if(when_Tasker_l100) begin
      if(io_output_ports_0_active) begin
        taskConstructor_s1_status_allowWrite = 1'b0;
      end
    end
    if(when_Tasker_l100_1) begin
      if(io_output_ports_1_active) begin
        taskConstructor_s1_status_allowWrite = 1'b0;
      end
    end
  end

  always @(*) begin
    taskConstructor_s1_status_allowRead = ((! WTR_busy) && 1'b1);
    if(when_Tasker_l97) begin
      taskConstructor_s1_status_allowRead = 1'b0;
    end
    if(when_Tasker_l100) begin
      if(io_output_ports_0_active) begin
        taskConstructor_s1_status_allowRead = 1'b0;
      end
    end
    if(when_Tasker_l100_1) begin
      if(io_output_ports_1_active) begin
        taskConstructor_s1_status_allowRead = 1'b0;
      end
    end
  end

  always @(*) begin
    taskConstructor_s1_status_bankHit = (_zz_banksRow_port0 == taskConstructor_s1_address_row);
    if(when_Tasker_l100) begin
      if(io_output_ports_0_active) begin
        taskConstructor_s1_status_bankHit = (io_output_ports_0_address_row == taskConstructor_s1_address_row);
      end
    end
    if(when_Tasker_l100_1) begin
      if(io_output_ports_1_active) begin
        taskConstructor_s1_status_bankHit = (io_output_ports_1_address_row == taskConstructor_s1_address_row);
      end
    end
  end

  always @(*) begin
    taskConstructor_s1_status_bankActive = _zz_taskConstructor_s1_status_bankActive;
    if(when_Tasker_l100) begin
      if(io_output_ports_0_precharge) begin
        taskConstructor_s1_status_bankActive = 1'b0;
      end
      if(io_output_ports_0_active) begin
        taskConstructor_s1_status_bankActive = 1'b1;
      end
    end
    if(when_Tasker_l100_1) begin
      if(io_output_ports_1_precharge) begin
        taskConstructor_s1_status_bankActive = 1'b0;
      end
      if(io_output_ports_1_active) begin
        taskConstructor_s1_status_bankActive = 1'b1;
      end
    end
  end

  assign when_Tasker_l94 = (! _zz_when_Tasker_l94);
  assign when_Tasker_l95 = (! _zz_when_Tasker_l95);
  assign when_Tasker_l96 = (! _zz_when_Tasker_l96);
  assign when_Tasker_l97 = (! _zz_when_Tasker_l97);
  assign when_Tasker_l100 = (io_output_ports_0_address_bank == taskConstructor_s1_address_bank);
  assign when_Tasker_l111 = (io_output_ports_0_read || io_output_ports_0_write);
  assign when_Tasker_l100_1 = (io_output_ports_1_address_bank == taskConstructor_s1_address_bank);
  assign when_Tasker_l111_1 = (io_output_ports_1_read || io_output_ports_1_write);
  assign when_Tasker_l94_1 = (! _zz_when_Tasker_l94_1);
  assign when_Tasker_l95_1 = (! _zz_when_Tasker_l95_1);
  assign when_Tasker_l96_1 = (! _zz_when_Tasker_l96_1);
  assign when_Tasker_l97_1 = (! _zz_when_Tasker_l97_1);
  assign when_Tasker_l100_2 = (io_output_ports_0_address_bank == stations_0_address_bank);
  assign when_Tasker_l111_2 = (io_output_ports_0_read || io_output_ports_0_write);
  assign when_Tasker_l100_3 = (io_output_ports_1_address_bank == stations_0_address_bank);
  assign when_Tasker_l111_3 = (io_output_ports_1_read || io_output_ports_1_write);
  assign stations_0_inputMiss = ((! stations_0_status_bankActive) || (! stations_0_status_bankHit));
  assign stations_0_inputActive = (! stations_0_status_bankActive);
  assign stations_0_inputPrecharge = (stations_0_status_bankActive && (! stations_0_status_bankHit));
  assign stations_0_inputAccess = (stations_0_status_bankActive && stations_0_status_bankHit);
  assign stations_0_inputWrite = ((stations_0_status_bankActive && stations_0_status_bankHit) && stations_0_write);
  assign stations_0_inputRead = ((stations_0_status_bankActive && stations_0_status_bankHit) && (! stations_0_write));
  always @(*) begin
    stations_0_inibated = 1'b0;
    if(when_Tasker_l305) begin
      stations_0_inibated = 1'b1;
    end
    if(when_Tasker_l306) begin
      stations_0_inibated = 1'b1;
    end
  end

  assign stations_0_doActive = (stations_0_inputActive && stations_0_status_allowActive);
  assign stations_0_doPrecharge = (stations_0_inputPrecharge && stations_0_status_allowPrecharge);
  assign stations_0_doWrite = ((stations_0_inputWrite && stations_0_status_allowWrite) && writeTockens_0_ready);
  assign stations_0_doRead = (stations_0_inputRead && stations_0_status_allowRead);
  assign stations_0_doSomething = ((stations_0_valid && (((stations_0_doActive || stations_0_doPrecharge) || stations_0_doWrite) || stations_0_doRead)) && (! stations_0_inibated));
  assign stations_0_blockedByWriteTocken = ((stations_0_inputWrite && stations_0_status_allowWrite) && (! writeTockens_0_ready));
  always @(*) begin
    stations_0_fire = 1'b0;
    if(when_Tasker_l252) begin
      if(stations_0_last) begin
        stations_0_fire = 1'b1;
      end
    end
  end

  assign stations_0_last = (stations_0_offset == stations_0_offsetLast);
  assign io_output_ports_0_address_byte = stations_0_address_byte;
  assign io_output_ports_0_address_column = (stations_0_address_column | _zz_io_output_ports_0_address_column);
  assign io_output_ports_0_address_bank = stations_0_address_bank;
  assign io_output_ports_0_address_row = stations_0_address_row;
  assign io_output_ports_0_context = stations_0_context;
  assign io_output_ports_0_active = (stations_0_inputActive && stations_0_sel);
  assign io_output_ports_0_precharge = (stations_0_inputPrecharge && stations_0_sel);
  assign io_output_ports_0_write = (stations_0_inputWrite && stations_0_sel);
  assign io_output_ports_0_read = (stations_0_inputRead && stations_0_sel);
  assign io_output_ports_0_last = stations_0_last;
  assign when_Tasker_l252 = (stations_0_sel && stations_0_inputAccess);
  always @(*) begin
    stations_0_frustration_increment = 1'b0;
    if(stations_1_fire) begin
      if(when_Tasker_l320_1) begin
        stations_0_frustration_increment = 1'b1;
      end
    end
  end

  assign stations_0_frustration_full = stations_0_frustration_counter[3];
  assign when_Tasker_l266 = (stations_0_frustration_increment && (! stations_0_frustration_full));
  assign when_Tasker_l94_2 = (! _zz_when_Tasker_l94_2);
  assign when_Tasker_l95_2 = (! _zz_when_Tasker_l95_2);
  assign when_Tasker_l96_2 = (! _zz_when_Tasker_l96_2);
  assign when_Tasker_l97_2 = (! _zz_when_Tasker_l97_2);
  assign when_Tasker_l100_4 = (io_output_ports_0_address_bank == stations_1_address_bank);
  assign when_Tasker_l111_4 = (io_output_ports_0_read || io_output_ports_0_write);
  assign when_Tasker_l100_5 = (io_output_ports_1_address_bank == stations_1_address_bank);
  assign when_Tasker_l111_5 = (io_output_ports_1_read || io_output_ports_1_write);
  assign stations_1_inputMiss = ((! stations_1_status_bankActive) || (! stations_1_status_bankHit));
  assign stations_1_inputActive = (! stations_1_status_bankActive);
  assign stations_1_inputPrecharge = (stations_1_status_bankActive && (! stations_1_status_bankHit));
  assign stations_1_inputAccess = (stations_1_status_bankActive && stations_1_status_bankHit);
  assign stations_1_inputWrite = ((stations_1_status_bankActive && stations_1_status_bankHit) && stations_1_write);
  assign stations_1_inputRead = ((stations_1_status_bankActive && stations_1_status_bankHit) && (! stations_1_write));
  always @(*) begin
    stations_1_inibated = 1'b0;
    if(when_Tasker_l305_1) begin
      stations_1_inibated = 1'b1;
    end
    if(when_Tasker_l306_1) begin
      stations_1_inibated = 1'b1;
    end
  end

  assign stations_1_doActive = (stations_1_inputActive && stations_1_status_allowActive);
  assign stations_1_doPrecharge = (stations_1_inputPrecharge && stations_1_status_allowPrecharge);
  assign stations_1_doWrite = ((stations_1_inputWrite && stations_1_status_allowWrite) && writeTockens_0_ready);
  assign stations_1_doRead = (stations_1_inputRead && stations_1_status_allowRead);
  assign stations_1_doSomething = ((stations_1_valid && (((stations_1_doActive || stations_1_doPrecharge) || stations_1_doWrite) || stations_1_doRead)) && (! stations_1_inibated));
  assign stations_1_blockedByWriteTocken = ((stations_1_inputWrite && stations_1_status_allowWrite) && (! writeTockens_0_ready));
  always @(*) begin
    stations_1_fire = 1'b0;
    if(when_Tasker_l252_1) begin
      if(stations_1_last) begin
        stations_1_fire = 1'b1;
      end
    end
  end

  assign stations_1_last = (stations_1_offset == stations_1_offsetLast);
  assign io_output_ports_1_address_byte = stations_1_address_byte;
  assign io_output_ports_1_address_column = (stations_1_address_column | _zz_io_output_ports_1_address_column);
  assign io_output_ports_1_address_bank = stations_1_address_bank;
  assign io_output_ports_1_address_row = stations_1_address_row;
  assign io_output_ports_1_context = stations_1_context;
  assign io_output_ports_1_active = (stations_1_inputActive && stations_1_sel);
  assign io_output_ports_1_precharge = (stations_1_inputPrecharge && stations_1_sel);
  assign io_output_ports_1_write = (stations_1_inputWrite && stations_1_sel);
  assign io_output_ports_1_read = (stations_1_inputRead && stations_1_sel);
  assign io_output_ports_1_last = stations_1_last;
  assign when_Tasker_l252_1 = (stations_1_sel && stations_1_inputAccess);
  always @(*) begin
    stations_1_frustration_increment = 1'b0;
    if(stations_0_fire) begin
      if(when_Tasker_l320) begin
        stations_1_frustration_increment = 1'b1;
      end
    end
  end

  assign stations_1_frustration_full = stations_1_frustration_counter[3];
  assign when_Tasker_l266_1 = (stations_1_frustration_increment && (! stations_1_frustration_full));
  assign loader_stationsValid = {stations_1_valid,stations_0_valid};
  assign loader_stronger = loader_stationsValid;
  assign loader_afterBank = (loader_stationsValid & {(stations_1_address_bank == taskConstructor_s1_address_bank),(stations_0_address_bank == taskConstructor_s1_address_bank)});
  assign loader_afterAccess = (loader_stationsValid & {(1'b1 || stations_1_frustration_full),(1'b1 || stations_0_frustration_full)});
  assign inputsArbiter_output_input_ready = (! (stations_0_valid && stations_1_valid));
  assign loader_offset = taskConstructor_s1_address_column[4 : 1];
  assign loader_offsetLast = (loader_offset + inputsArbiter_output_input_payload_length);
  assign loader_slot_0_canSpawn = (1'b1 && (! stations_0_valid));
  assign when_Tasker_l282 = (inputsArbiter_output_input_valid && loader_slot_0_canSpawn);
  assign loader_slot_1_canSpawn = (((~ stations_0_valid) == 1'b0) && (! stations_1_valid));
  assign when_Tasker_l282_1 = (inputsArbiter_output_input_valid && loader_slot_1_canSpawn);
  assign when_Tasker_l305 = (stations_0_inputAccess && (|stations_0_afterAccess));
  assign when_Tasker_l306 = (stations_0_inputMiss && (|stations_0_afterBank));
  assign arbiter_logic_0_othersDoSomething = (({stations_1_doSomething,stations_0_doSomething} & stations_0_stronger) & 2'b10);
  always @(*) begin
    arbiter_selOH[0] = (stations_0_doSomething && (! (|arbiter_logic_0_othersDoSomething)));
    arbiter_selOH[1] = (stations_1_doSomething && (! (|arbiter_logic_1_othersDoSomething)));
  end

  assign when_Tasker_l305_1 = (stations_1_inputAccess && (|stations_1_afterAccess));
  assign when_Tasker_l306_1 = (stations_1_inputMiss && (|stations_1_afterBank));
  assign arbiter_logic_1_othersDoSomething = (({stations_1_doSomething,stations_0_doSomething} & stations_1_stronger) & 2'b01);
  assign _zz_stations_0_sel = arbiter_selOH[0];
  assign stations_0_sel = _zz_stations_0_sel;
  assign when_Tasker_l320 = stations_0_stronger[1];
  assign stations_1_sel = arbiter_selOH[1];
  assign when_Tasker_l320_1 = stations_1_stronger[0];
  assign arbiter_askRefresh = (io_refresh_valid && readyForRefresh);
  always @(*) begin
    io_refresh_ready = 1'b0;
    if(arbiter_askRefresh) begin
      case(arbiter_refreshState)
        2'b00 : begin
        end
        2'b01 : begin
        end
        2'b10 : begin
        end
        default : begin
          if(when_Tasker_l350) begin
            io_refresh_ready = 1'b1;
          end
        end
      endcase
    end
  end

  always @(*) begin
    io_output_prechargeAll = 1'b0;
    if(arbiter_askRefresh) begin
      case(arbiter_refreshState)
        2'b00 : begin
        end
        2'b01 : begin
          if(allowPrechargeAll_regNext) begin
            io_output_prechargeAll = 1'b1;
          end
        end
        2'b10 : begin
        end
        default : begin
        end
      endcase
    end
  end

  always @(*) begin
    io_output_refresh = 1'b0;
    if(arbiter_askRefresh) begin
      case(arbiter_refreshState)
        2'b00 : begin
        end
        2'b01 : begin
        end
        2'b10 : begin
          if(when_Tasker_l344) begin
            io_output_refresh = 1'b1;
          end
        end
        default : begin
        end
      endcase
    end
  end

  assign when_Tasker_l344 = (! RP_busy);
  assign when_Tasker_l350 = (! RFC_busy);
  assign when_Tasker_l362 = ({io_output_ports_1_active,io_output_ports_0_active} != 2'b00);
  assign when_Tasker_l370 = ({io_output_ports_1_read,io_output_ports_0_read} != 2'b00);
  assign when_Tasker_l373 = ({io_output_ports_1_write,io_output_ports_0_write} != 2'b00);
  assign when_Tasker_l362_1 = ({io_output_ports_1_active,io_output_ports_0_active} != 2'b00);
  assign when_Tasker_l370_1 = ({io_output_ports_1_read,io_output_ports_0_read} != 2'b00);
  assign when_Tasker_l373_1 = ({io_output_ports_1_write,io_output_ports_0_write} != 2'b00);
  assign selectedAddress_byte = (_zz_stations_0_sel ? io_output_ports_0_address_byte : io_output_ports_1_address_byte);
  assign selectedAddress_column = (_zz_stations_0_sel ? io_output_ports_0_address_column : io_output_ports_1_address_column);
  assign selectedAddress_bank = (_zz_stations_0_sel ? io_output_ports_0_address_bank : io_output_ports_1_address_bank);
  assign selectedAddress_row = (_zz_stations_0_sel ? io_output_ports_0_address_row : io_output_ports_1_address_row);
  assign when_Tasker_l380 = (|arbiter_selOH);
  always @(posedge clkout_system) begin
    RFC_value <= (RFC_value + _zz_RFC_value);
    if(io_output_refresh) begin
      RFC_value <= 7'h0;
    end
    RRD_value <= (RRD_value + _zz_RRD_value);
    if(when_Tasker_l38) begin
      RRD_value <= 4'b0000;
    end
    WTR_value <= (WTR_value + _zz_WTR_value);
    if(when_Tasker_l38_1) begin
      WTR_value <= 4'b0000;
    end
    RTW_value <= (RTW_value + _zz_RTW_value);
    if(when_Tasker_l38_2) begin
      RTW_value <= 4'b0000;
    end
    RP_value <= (RP_value + _zz_RP_value);
    if(io_output_prechargeAll) begin
      RP_value <= 4'b0000;
    end
    banks_0_WR_value <= (banks_0_WR_value + _zz_banks_0_WR_value);
    if(when_Tasker_l38_3) begin
      banks_0_WR_value <= 4'b0000;
    end
    banks_0_RAS_value <= (banks_0_RAS_value + _zz_banks_0_RAS_value);
    if(when_Tasker_l38_4) begin
      banks_0_RAS_value <= 4'b0000;
    end
    banks_0_RP_value <= (banks_0_RP_value + _zz_banks_0_RP_value);
    if(when_Tasker_l38_5) begin
      banks_0_RP_value <= 4'b0000;
    end
    banks_0_RCD_value <= (banks_0_RCD_value + _zz_banks_0_RCD_value);
    if(when_Tasker_l38_6) begin
      banks_0_RCD_value <= 4'b0000;
    end
    banks_0_RTP_value <= (banks_0_RTP_value + _zz_banks_0_RTP_value);
    if(when_Tasker_l38_7) begin
      banks_0_RTP_value <= 4'b0000;
    end
    banks_1_WR_value <= (banks_1_WR_value + _zz_banks_1_WR_value);
    if(when_Tasker_l38_8) begin
      banks_1_WR_value <= 4'b0000;
    end
    banks_1_RAS_value <= (banks_1_RAS_value + _zz_banks_1_RAS_value);
    if(when_Tasker_l38_9) begin
      banks_1_RAS_value <= 4'b0000;
    end
    banks_1_RP_value <= (banks_1_RP_value + _zz_banks_1_RP_value);
    if(when_Tasker_l38_10) begin
      banks_1_RP_value <= 4'b0000;
    end
    banks_1_RCD_value <= (banks_1_RCD_value + _zz_banks_1_RCD_value);
    if(when_Tasker_l38_11) begin
      banks_1_RCD_value <= 4'b0000;
    end
    banks_1_RTP_value <= (banks_1_RTP_value + _zz_banks_1_RTP_value);
    if(when_Tasker_l38_12) begin
      banks_1_RTP_value <= 4'b0000;
    end
    banks_2_WR_value <= (banks_2_WR_value + _zz_banks_2_WR_value);
    if(when_Tasker_l38_13) begin
      banks_2_WR_value <= 4'b0000;
    end
    banks_2_RAS_value <= (banks_2_RAS_value + _zz_banks_2_RAS_value);
    if(when_Tasker_l38_14) begin
      banks_2_RAS_value <= 4'b0000;
    end
    banks_2_RP_value <= (banks_2_RP_value + _zz_banks_2_RP_value);
    if(when_Tasker_l38_15) begin
      banks_2_RP_value <= 4'b0000;
    end
    banks_2_RCD_value <= (banks_2_RCD_value + _zz_banks_2_RCD_value);
    if(when_Tasker_l38_16) begin
      banks_2_RCD_value <= 4'b0000;
    end
    banks_2_RTP_value <= (banks_2_RTP_value + _zz_banks_2_RTP_value);
    if(when_Tasker_l38_17) begin
      banks_2_RTP_value <= 4'b0000;
    end
    banks_3_WR_value <= (banks_3_WR_value + _zz_banks_3_WR_value);
    if(when_Tasker_l38_18) begin
      banks_3_WR_value <= 4'b0000;
    end
    banks_3_RAS_value <= (banks_3_RAS_value + _zz_banks_3_RAS_value);
    if(when_Tasker_l38_19) begin
      banks_3_RAS_value <= 4'b0000;
    end
    banks_3_RP_value <= (banks_3_RP_value + _zz_banks_3_RP_value);
    if(when_Tasker_l38_20) begin
      banks_3_RP_value <= 4'b0000;
    end
    banks_3_RCD_value <= (banks_3_RCD_value + _zz_banks_3_RCD_value);
    if(when_Tasker_l38_21) begin
      banks_3_RCD_value <= 4'b0000;
    end
    banks_3_RTP_value <= (banks_3_RTP_value + _zz_banks_3_RTP_value);
    if(when_Tasker_l38_22) begin
      banks_3_RTP_value <= 4'b0000;
    end
    if(inputsArbiter_output_ready) begin
      inputsArbiter_output_rData_write <= inputsArbiter_output_payload_write;
      inputsArbiter_output_rData_address <= inputsArbiter_output_payload_address;
      inputsArbiter_output_rData_context <= inputsArbiter_output_payload_context;
      inputsArbiter_output_rData_burstLast <= inputsArbiter_output_payload_burstLast;
      inputsArbiter_output_rData_length <= inputsArbiter_output_payload_length;
    end
    stations_0_status_allowPrecharge <= 1'b1;
    stations_0_status_allowActive <= ((! RRD_busy) && 1'b1);
    stations_0_status_allowWrite <= ((! RTW_busy) && 1'b1);
    stations_0_status_allowRead <= ((! WTR_busy) && 1'b1);
    if(when_Tasker_l94_1) begin
      stations_0_status_allowPrecharge <= 1'b0;
    end
    if(when_Tasker_l95_1) begin
      stations_0_status_allowActive <= 1'b0;
    end
    if(when_Tasker_l96_1) begin
      stations_0_status_allowWrite <= 1'b0;
    end
    if(when_Tasker_l97_1) begin
      stations_0_status_allowRead <= 1'b0;
    end
    if(when_Tasker_l100_2) begin
      if(io_output_ports_0_precharge) begin
        stations_0_status_bankActive <= 1'b0;
      end
      if(io_output_ports_0_active) begin
        stations_0_status_bankActive <= 1'b1;
        stations_0_status_bankHit <= (io_output_ports_0_address_row == stations_0_address_row);
        stations_0_status_allowRead <= 1'b0;
        stations_0_status_allowWrite <= 1'b0;
        stations_0_status_allowPrecharge <= 1'b0;
      end
      if(when_Tasker_l111_2) begin
        stations_0_status_allowPrecharge <= 1'b0;
      end
      if(io_output_ports_0_precharge) begin
        stations_0_status_allowActive <= 1'b0;
      end
    end
    if(when_Tasker_l100_3) begin
      if(io_output_ports_1_precharge) begin
        stations_0_status_bankActive <= 1'b0;
      end
      if(io_output_ports_1_active) begin
        stations_0_status_bankActive <= 1'b1;
        stations_0_status_bankHit <= (io_output_ports_1_address_row == stations_0_address_row);
        stations_0_status_allowRead <= 1'b0;
        stations_0_status_allowWrite <= 1'b0;
        stations_0_status_allowPrecharge <= 1'b0;
      end
      if(when_Tasker_l111_3) begin
        stations_0_status_allowPrecharge <= 1'b0;
      end
      if(io_output_ports_1_precharge) begin
        stations_0_status_allowActive <= 1'b0;
      end
    end
    if(when_Tasker_l252) begin
      stations_0_offset <= (stations_0_offset + 4'b0001);
    end
    if(when_Tasker_l266) begin
      stations_0_frustration_counter <= (stations_0_frustration_counter + 4'b0001);
    end
    stations_1_status_allowPrecharge <= 1'b1;
    stations_1_status_allowActive <= ((! RRD_busy) && 1'b1);
    stations_1_status_allowWrite <= ((! RTW_busy) && 1'b1);
    stations_1_status_allowRead <= ((! WTR_busy) && 1'b1);
    if(when_Tasker_l94_2) begin
      stations_1_status_allowPrecharge <= 1'b0;
    end
    if(when_Tasker_l95_2) begin
      stations_1_status_allowActive <= 1'b0;
    end
    if(when_Tasker_l96_2) begin
      stations_1_status_allowWrite <= 1'b0;
    end
    if(when_Tasker_l97_2) begin
      stations_1_status_allowRead <= 1'b0;
    end
    if(when_Tasker_l100_4) begin
      if(io_output_ports_0_precharge) begin
        stations_1_status_bankActive <= 1'b0;
      end
      if(io_output_ports_0_active) begin
        stations_1_status_bankActive <= 1'b1;
        stations_1_status_bankHit <= (io_output_ports_0_address_row == stations_1_address_row);
        stations_1_status_allowRead <= 1'b0;
        stations_1_status_allowWrite <= 1'b0;
        stations_1_status_allowPrecharge <= 1'b0;
      end
      if(when_Tasker_l111_4) begin
        stations_1_status_allowPrecharge <= 1'b0;
      end
      if(io_output_ports_0_precharge) begin
        stations_1_status_allowActive <= 1'b0;
      end
    end
    if(when_Tasker_l100_5) begin
      if(io_output_ports_1_precharge) begin
        stations_1_status_bankActive <= 1'b0;
      end
      if(io_output_ports_1_active) begin
        stations_1_status_bankActive <= 1'b1;
        stations_1_status_bankHit <= (io_output_ports_1_address_row == stations_1_address_row);
        stations_1_status_allowRead <= 1'b0;
        stations_1_status_allowWrite <= 1'b0;
        stations_1_status_allowPrecharge <= 1'b0;
      end
      if(when_Tasker_l111_5) begin
        stations_1_status_allowPrecharge <= 1'b0;
      end
      if(io_output_ports_1_precharge) begin
        stations_1_status_allowActive <= 1'b0;
      end
    end
    if(when_Tasker_l252_1) begin
      stations_1_offset <= (stations_1_offset + 4'b0001);
    end
    if(when_Tasker_l266_1) begin
      stations_1_frustration_counter <= (stations_1_frustration_counter + 4'b0001);
    end
    if(when_Tasker_l282) begin
      stations_0_status_bankActive <= taskConstructor_s1_status_bankActive;
      stations_0_status_bankHit <= taskConstructor_s1_status_bankHit;
      stations_0_status_allowPrecharge <= taskConstructor_s1_status_allowPrecharge;
      stations_0_status_allowActive <= taskConstructor_s1_status_allowActive;
      stations_0_status_allowWrite <= taskConstructor_s1_status_allowWrite;
      stations_0_status_allowRead <= taskConstructor_s1_status_allowRead;
      stations_0_address_byte <= taskConstructor_s1_address_byte;
      stations_0_address_column <= (taskConstructor_s1_address_column & 9'h1e1);
      stations_0_address_bank <= taskConstructor_s1_address_bank;
      stations_0_address_row <= taskConstructor_s1_address_row;
      stations_0_offset <= loader_offset;
      stations_0_offsetLast <= loader_offsetLast;
      stations_0_write <= inputsArbiter_output_input_payload_write;
      stations_0_context <= inputsArbiter_output_input_payload_context;
      stations_0_frustration_counter <= 4'b0000;
    end
    if(when_Tasker_l282_1) begin
      stations_1_status_bankActive <= taskConstructor_s1_status_bankActive;
      stations_1_status_bankHit <= taskConstructor_s1_status_bankHit;
      stations_1_status_allowPrecharge <= taskConstructor_s1_status_allowPrecharge;
      stations_1_status_allowActive <= taskConstructor_s1_status_allowActive;
      stations_1_status_allowWrite <= taskConstructor_s1_status_allowWrite;
      stations_1_status_allowRead <= taskConstructor_s1_status_allowRead;
      stations_1_address_byte <= taskConstructor_s1_address_byte;
      stations_1_address_column <= (taskConstructor_s1_address_column & 9'h1e1);
      stations_1_address_bank <= taskConstructor_s1_address_bank;
      stations_1_address_row <= taskConstructor_s1_address_row;
      stations_1_offset <= loader_offset;
      stations_1_offsetLast <= loader_offsetLast;
      stations_1_write <= inputsArbiter_output_input_payload_write;
      stations_1_context <= inputsArbiter_output_input_payload_context;
      stations_1_frustration_counter <= 4'b0000;
    end
    if(when_Tasker_l362) begin
      stations_0_status_allowActive <= 1'b0;
    end
    if(when_Tasker_l370) begin
      stations_0_status_allowWrite <= 1'b0;
    end
    if(when_Tasker_l373) begin
      stations_0_status_allowRead <= 1'b0;
    end
    if(when_Tasker_l362_1) begin
      stations_1_status_allowActive <= 1'b0;
    end
    if(when_Tasker_l370_1) begin
      stations_1_status_allowWrite <= 1'b0;
    end
    if(when_Tasker_l373_1) begin
      stations_1_status_allowRead <= 1'b0;
    end
  end

  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      banks_0_active <= 1'b0;
      banks_1_active <= 1'b0;
      banks_2_active <= 1'b0;
      banks_3_active <= 1'b0;
      writeTockens_0_counter <= 6'h0;
      writeTockens_0_ready <= 1'b0;
      inputsArbiter_state <= 1'b1;
      inputsArbiter_tocken <= 5'h0;
      inputsArbiter_output_rValid <= 1'b0;
      stations_0_valid <= 1'b0;
      stations_0_stronger <= 2'b00;
      stations_0_afterBank <= 2'b00;
      stations_0_afterAccess <= 2'b00;
      stations_1_valid <= 1'b0;
      stations_1_stronger <= 2'b00;
      stations_1_afterBank <= 2'b00;
      stations_1_afterAccess <= 2'b00;
      arbiter_refreshState <= 2'b00;
    end else begin
      banks_0_active <= banks_0_activeNext;
      banks_1_active <= banks_1_activeNext;
      banks_2_active <= banks_2_activeNext;
      banks_3_active <= banks_3_activeNext;
      writeTockens_0_counter <= (_zz_writeTockens_0_counter - _zz_writeTockens_0_counter_2);
      if(when_Tasker_l131) begin
        writeTockens_0_ready <= 1'b1;
      end
      if(when_Tasker_l131_1) begin
        writeTockens_0_ready <= 1'b0;
      end
      if(inputsArbiter_tockenIncrement) begin
        inputsArbiter_tocken <= (inputsArbiter_tocken + 5'h01);
      end
      if(when_Tasker_l157) begin
        inputsArbiter_state <= inputsArbiter_state[0 : 0];
        inputsArbiter_tocken <= 5'h0;
      end
      if(inputsArbiter_output_ready) begin
        inputsArbiter_output_rValid <= inputsArbiter_output_valid;
      end
      if(when_Tasker_l252) begin
        if(stations_0_last) begin
          stations_0_valid <= 1'b0;
        end
      end
      if(when_Tasker_l252_1) begin
        if(stations_1_last) begin
          stations_1_valid <= 1'b0;
        end
      end
      if(when_Tasker_l282) begin
        stations_0_valid <= 1'b1;
        stations_0_stronger <= (loader_stronger & 2'b10);
        stations_0_afterBank <= (loader_afterBank & 2'b10);
        stations_0_afterAccess <= (loader_afterAccess & 2'b10);
      end
      if(when_Tasker_l282_1) begin
        stations_1_valid <= 1'b1;
        stations_1_stronger <= (loader_stronger & 2'b01);
        stations_1_afterBank <= (loader_afterBank & 2'b01);
        stations_1_afterAccess <= (loader_afterAccess & 2'b01);
      end
      if(stations_0_fire) begin
        stations_1_stronger[0] <= 1'b0;
        stations_1_afterAccess[0] <= 1'b0;
        stations_1_afterBank[0] <= 1'b0;
      end
      if(stations_1_fire) begin
        stations_0_stronger[1] <= 1'b0;
        stations_0_afterAccess[1] <= 1'b0;
        stations_0_afterBank[1] <= 1'b0;
      end
      if(arbiter_askRefresh) begin
        case(arbiter_refreshState)
          2'b00 : begin
            arbiter_refreshState <= 2'b01;
          end
          2'b01 : begin
            if(allowPrechargeAll_regNext) begin
              arbiter_refreshState <= 2'b10;
            end
          end
          2'b10 : begin
            if(when_Tasker_l344) begin
              arbiter_refreshState <= 2'b11;
            end
          end
          default : begin
            if(when_Tasker_l350) begin
              arbiter_refreshState <= 2'b00;
            end
          end
        endcase
      end
    end
  end

  always @(posedge clkout_system) begin
    allowPrechargeAll_regNext <= allowPrechargeAll;
  end


endmodule

module Refresher (
  input      [1:0]    io_config_readLatency,
  input      [3:0]    io_config_RAS,
  input      [3:0]    io_config_RP,
  input      [3:0]    io_config_WR,
  input      [3:0]    io_config_RCD,
  input      [3:0]    io_config_WTR,
  input      [3:0]    io_config_RTP,
  input      [3:0]    io_config_RRD,
  input      [3:0]    io_config_RTW,
  input      [6:0]    io_config_RFC,
  input      [15:0]   io_config_REF,
  input               io_config_autoRefresh,
  input               io_config_noActive,
  input      [0:0]    io_config_phase_active,
  input      [0:0]    io_config_phase_precharge,
  input      [0:0]    io_config_phase_read,
  input      [0:0]    io_config_phase_write,
  output              io_refresh_valid,
  input               io_refresh_ready,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  reg        [15:0]   value;
  wire                hit;
  wire                when_Refresher_l17;
  reg                 pending;
  wire                when_Refresher_l21;

  assign hit = (value == 16'h0);
  assign when_Refresher_l17 = (hit || (! io_config_autoRefresh));
  assign when_Refresher_l21 = (! io_config_autoRefresh);
  assign io_refresh_valid = pending;
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      value <= 16'h0;
      pending <= 1'b0;
    end else begin
      value <= (value - 16'h0001);
      if(when_Refresher_l17) begin
        value <= io_config_REF;
      end
      if(io_refresh_ready) begin
        pending <= 1'b0;
      end
      if(hit) begin
        pending <= 1'b1;
      end
      if(when_Refresher_l21) begin
        pending <= 1'b0;
      end
    end
  end


endmodule

module StreamFifoLowLatency_3 (
  input               io_push_valid,
  output              io_push_ready,
  input      [31:0]   io_push_payload_data,
  input      [3:0]    io_push_payload_mask,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [31:0]   io_pop_payload_data,
  output     [3:0]    io_pop_payload_mask,
  input               io_flush,
  output     [5:0]    io_occupancy,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [35:0]   _zz_ram_port0;
  wire       [4:0]    _zz_pushPtr_valueNext;
  wire       [0:0]    _zz_pushPtr_valueNext_1;
  wire       [4:0]    _zz_popPtr_valueNext;
  wire       [0:0]    _zz_popPtr_valueNext_1;
  wire       [35:0]   _zz_ram_port;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [4:0]    pushPtr_valueNext;
  reg        [4:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [4:0]    popPtr_valueNext;
  reg        [4:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [35:0]   _zz_io_pop_payload_data;
  wire                when_Stream_l1010;
  wire       [4:0]    ptrDif;
  (* ram_style = "distributed" *) reg [35:0] ram [0:31];

  assign _zz_pushPtr_valueNext_1 = pushPtr_willIncrement;
  assign _zz_pushPtr_valueNext = {4'd0, _zz_pushPtr_valueNext_1};
  assign _zz_popPtr_valueNext_1 = popPtr_willIncrement;
  assign _zz_popPtr_valueNext = {4'd0, _zz_popPtr_valueNext_1};
  assign _zz_ram_port = {io_push_payload_mask,io_push_payload_data};
  assign _zz_ram_port0 = ram[popPtr_value];
  always @(posedge clkout_system) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= _zz_ram_port;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(pushing) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing) begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush) begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 5'h1f);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @(*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_pushPtr_valueNext);
    if(pushPtr_willClear) begin
      pushPtr_valueNext = 5'h0;
    end
  end

  always @(*) begin
    popPtr_willIncrement = 1'b0;
    if(popping) begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    popPtr_willClear = 1'b0;
    if(io_flush) begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 5'h1f);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @(*) begin
    popPtr_valueNext = (popPtr_value + _zz_popPtr_valueNext);
    if(popPtr_willClear) begin
      popPtr_valueNext = 5'h0;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  assign io_pop_valid = (! empty);
  assign _zz_io_pop_payload_data = _zz_ram_port0;
  assign io_pop_payload_data = _zz_io_pop_payload_data[31 : 0];
  assign io_pop_payload_mask = _zz_io_pop_payload_data[35 : 32];
  assign when_Stream_l1010 = (pushing != popping);
  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      pushPtr_value <= 5'h0;
      popPtr_value <= 5'h0;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if(when_Stream_l1010) begin
        risingOccupancy <= pushing;
      end
      if(io_flush) begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module StreamFifoLowLatency_2 (
  input               io_push_valid,
  output              io_push_ready,
  input               io_push_payload_last,
  input      [31:0]   io_push_payload_fragment_data,
  input      [3:0]    io_push_payload_fragment_context,
  output              io_pop_valid,
  input               io_pop_ready,
  output              io_pop_payload_last,
  output     [31:0]   io_pop_payload_fragment_data,
  output     [3:0]    io_pop_payload_fragment_context,
  input               io_flush,
  output     [5:0]    io_occupancy,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [36:0]   _zz_ram_port0;
  wire       [4:0]    _zz_pushPtr_valueNext;
  wire       [0:0]    _zz_pushPtr_valueNext_1;
  wire       [4:0]    _zz_popPtr_valueNext;
  wire       [0:0]    _zz_popPtr_valueNext_1;
  wire       [36:0]   _zz_ram_port;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [4:0]    pushPtr_valueNext;
  reg        [4:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [4:0]    popPtr_valueNext;
  reg        [4:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [36:0]   _zz_io_pop_payload_last;
  wire       [35:0]   _zz_io_pop_payload_fragment_data;
  wire                when_Stream_l1010;
  wire       [4:0]    ptrDif;
  (* ram_style = "distributed" *) reg [36:0] ram [0:31];

  assign _zz_pushPtr_valueNext_1 = pushPtr_willIncrement;
  assign _zz_pushPtr_valueNext = {4'd0, _zz_pushPtr_valueNext_1};
  assign _zz_popPtr_valueNext_1 = popPtr_willIncrement;
  assign _zz_popPtr_valueNext = {4'd0, _zz_popPtr_valueNext_1};
  assign _zz_ram_port = {{io_push_payload_fragment_context,io_push_payload_fragment_data},io_push_payload_last};
  assign _zz_ram_port0 = ram[popPtr_value];
  always @(posedge clkout_system) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= _zz_ram_port;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(pushing) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing) begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush) begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 5'h1f);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @(*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_pushPtr_valueNext);
    if(pushPtr_willClear) begin
      pushPtr_valueNext = 5'h0;
    end
  end

  always @(*) begin
    popPtr_willIncrement = 1'b0;
    if(popping) begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    popPtr_willClear = 1'b0;
    if(io_flush) begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 5'h1f);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @(*) begin
    popPtr_valueNext = (popPtr_value + _zz_popPtr_valueNext);
    if(popPtr_willClear) begin
      popPtr_valueNext = 5'h0;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  assign io_pop_valid = (! empty);
  assign _zz_io_pop_payload_last = _zz_ram_port0;
  assign _zz_io_pop_payload_fragment_data = _zz_io_pop_payload_last[36 : 1];
  assign io_pop_payload_last = _zz_io_pop_payload_last[0];
  assign io_pop_payload_fragment_data = _zz_io_pop_payload_fragment_data[31 : 0];
  assign io_pop_payload_fragment_context = _zz_io_pop_payload_fragment_data[35 : 32];
  assign when_Stream_l1010 = (pushing != popping);
  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      pushPtr_value <= 5'h0;
      popPtr_value <= 5'h0;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if(when_Stream_l1010) begin
        risingOccupancy <= pushing;
      end
      if(io_flush) begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module StreamFifoLowLatency_1 (
  input               io_push_valid,
  output              io_push_ready,
  input               io_push_payload_write,
  input      [24:0]   io_push_payload_address,
  input      [3:0]    io_push_payload_context,
  input               io_push_payload_burstLast,
  input      [3:0]    io_push_payload_length,
  output              io_pop_valid,
  input               io_pop_ready,
  output              io_pop_payload_write,
  output     [24:0]   io_pop_payload_address,
  output     [3:0]    io_pop_payload_context,
  output              io_pop_payload_burstLast,
  output     [3:0]    io_pop_payload_length,
  input               io_flush,
  output     [4:0]    io_occupancy,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [34:0]   _zz_ram_port0;
  wire       [3:0]    _zz_pushPtr_valueNext;
  wire       [0:0]    _zz_pushPtr_valueNext_1;
  wire       [3:0]    _zz_popPtr_valueNext;
  wire       [0:0]    _zz_popPtr_valueNext_1;
  wire       [34:0]   _zz_ram_port;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [3:0]    pushPtr_valueNext;
  reg        [3:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [3:0]    popPtr_valueNext;
  reg        [3:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [34:0]   _zz_io_pop_payload_write;
  wire                when_Stream_l1010;
  wire       [3:0]    ptrDif;
  (* ram_style = "distributed" *) reg [34:0] ram [0:15];

  assign _zz_pushPtr_valueNext_1 = pushPtr_willIncrement;
  assign _zz_pushPtr_valueNext = {3'd0, _zz_pushPtr_valueNext_1};
  assign _zz_popPtr_valueNext_1 = popPtr_willIncrement;
  assign _zz_popPtr_valueNext = {3'd0, _zz_popPtr_valueNext_1};
  assign _zz_ram_port = {io_push_payload_length,{io_push_payload_burstLast,{io_push_payload_context,{io_push_payload_address,io_push_payload_write}}}};
  assign _zz_ram_port0 = ram[popPtr_value];
  always @(posedge clkout_system) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= _zz_ram_port;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(pushing) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing) begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush) begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 4'b1111);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @(*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_pushPtr_valueNext);
    if(pushPtr_willClear) begin
      pushPtr_valueNext = 4'b0000;
    end
  end

  always @(*) begin
    popPtr_willIncrement = 1'b0;
    if(popping) begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    popPtr_willClear = 1'b0;
    if(io_flush) begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 4'b1111);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @(*) begin
    popPtr_valueNext = (popPtr_value + _zz_popPtr_valueNext);
    if(popPtr_willClear) begin
      popPtr_valueNext = 4'b0000;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  assign io_pop_valid = (! empty);
  assign _zz_io_pop_payload_write = _zz_ram_port0;
  assign io_pop_payload_write = _zz_io_pop_payload_write[0];
  assign io_pop_payload_address = _zz_io_pop_payload_write[25 : 1];
  assign io_pop_payload_context = _zz_io_pop_payload_write[29 : 26];
  assign io_pop_payload_burstLast = _zz_io_pop_payload_write[30];
  assign io_pop_payload_length = _zz_io_pop_payload_write[34 : 31];
  assign when_Stream_l1010 = (pushing != popping);
  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      pushPtr_value <= 4'b0000;
      popPtr_value <= 4'b0000;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if(when_Stream_l1010) begin
        risingOccupancy <= pushing;
      end
      if(io_flush) begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module BmbToCorePort (
  input               io_input_cmd_valid,
  output reg          io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [24:0]   io_input_cmd_payload_fragment_address,
  input      [4:0]    io_input_cmd_payload_fragment_length,
  input      [31:0]   io_input_cmd_payload_fragment_data,
  input      [3:0]    io_input_cmd_payload_fragment_mask,
  input      [3:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output     [3:0]    io_input_rsp_payload_fragment_context,
  input               io_inputBurstLast,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_write,
  output     [24:0]   io_output_cmd_payload_address,
  output     [3:0]    io_output_cmd_payload_context,
  output              io_output_cmd_payload_burstLast,
  output     [3:0]    io_output_cmd_payload_length,
  output              io_output_writeData_valid,
  input               io_output_writeData_ready,
  output     [31:0]   io_output_writeData_payload_data,
  output     [3:0]    io_output_writeData_payload_mask,
  output     [0:0]    io_output_writeDataTocken,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [3:0]    io_output_rsp_payload_fragment_context,
  output     [0:0]    io_output_writeDataAdded,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [4:0]    _zz_cmdToRspCount;
  wire       [4:0]    _zz_cmdToRspCount_1;
  wire       [1:0]    _zz_cmdToRspCount_2;
  wire       [5:0]    _zz_rspPendingCounter;
  wire       [5:0]    _zz_rspPendingCounter_1;
  wire       [4:0]    _zz_rspPendingCounter_2;
  wire       [5:0]    _zz_rspPendingCounter_3;
  wire       [0:0]    _zz_rspPendingCounter_4;
  wire       [6:0]    _zz_toManyRsp;
  wire       [6:0]    _zz_toManyRsp_1;
  wire       [2:0]    _zz_io_output_cmd_payload_length;
  wire       [4:0]    cmdToRspCount;
  reg        [5:0]    rspPendingCounter;
  wire                io_input_cmd_fire;
  wire                io_output_rsp_fire;
  wire                toManyRsp;
  wire                when_Xdr_l423;
  wire       [3:0]    cmdContext_input;
  wire                io_input_cmd_fire_1;
  wire                io_input_cmd_fire_2;
  reg                 io_input_cmd_payload_first;
  wire                io_input_cmd_fire_3;
  wire       [3:0]    rspContext_input;

  assign _zz_cmdToRspCount = ({1'b0,io_output_cmd_payload_length} + _zz_cmdToRspCount_1);
  assign _zz_cmdToRspCount_2 = {1'b0,1'b1};
  assign _zz_cmdToRspCount_1 = {3'd0, _zz_cmdToRspCount_2};
  assign _zz_rspPendingCounter = (rspPendingCounter + _zz_rspPendingCounter_1);
  assign _zz_rspPendingCounter_2 = ((io_input_cmd_fire && io_input_cmd_payload_last) ? cmdToRspCount : 5'h0);
  assign _zz_rspPendingCounter_1 = {1'd0, _zz_rspPendingCounter_2};
  assign _zz_rspPendingCounter_4 = io_output_rsp_fire;
  assign _zz_rspPendingCounter_3 = {5'd0, _zz_rspPendingCounter_4};
  assign _zz_toManyRsp = ({1'b0,rspPendingCounter} + _zz_toManyRsp_1);
  assign _zz_toManyRsp_1 = {2'd0, cmdToRspCount};
  assign _zz_io_output_cmd_payload_length = (io_input_cmd_payload_fragment_length >>> 2);
  assign cmdToRspCount = (io_output_cmd_payload_write ? 5'h01 : _zz_cmdToRspCount);
  assign io_input_cmd_fire = (io_input_cmd_valid && io_input_cmd_ready);
  assign io_output_rsp_fire = (io_output_rsp_valid && io_output_rsp_ready);
  assign toManyRsp = (7'h20 < _zz_toManyRsp);
  always @(*) begin
    io_input_cmd_ready = (io_output_cmd_ready && (! toManyRsp));
    if(when_Xdr_l423) begin
      io_input_cmd_ready = 1'b0;
    end
  end

  assign when_Xdr_l423 = (! io_output_writeData_ready);
  assign cmdContext_input = io_input_cmd_payload_fragment_context;
  assign io_input_cmd_fire_1 = (io_input_cmd_valid && io_input_cmd_ready);
  assign io_input_cmd_fire_2 = (io_input_cmd_valid && io_input_cmd_ready);
  assign io_output_cmd_valid = (io_input_cmd_fire_1 && io_input_cmd_payload_first);
  assign io_output_cmd_payload_write = (io_input_cmd_payload_fragment_opcode == 1'b1);
  assign io_output_cmd_payload_address = io_input_cmd_payload_fragment_address;
  assign io_output_cmd_payload_length = {1'd0, _zz_io_output_cmd_payload_length};
  assign io_output_cmd_payload_context = cmdContext_input;
  assign io_output_cmd_payload_burstLast = io_inputBurstLast;
  assign io_input_cmd_fire_3 = (io_input_cmd_valid && io_input_cmd_ready);
  assign io_output_writeData_valid = (io_input_cmd_fire_3 && (io_input_cmd_payload_fragment_opcode == 1'b1));
  assign io_output_writeData_payload_data = io_input_cmd_payload_fragment_data;
  assign io_output_writeData_payload_mask = io_input_cmd_payload_fragment_mask;
  assign rspContext_input = io_output_rsp_payload_fragment_context[3 : 0];
  assign io_input_rsp_valid = io_output_rsp_valid;
  assign io_output_rsp_ready = io_input_rsp_ready;
  assign io_input_rsp_payload_fragment_opcode = 1'b0;
  assign io_input_rsp_payload_last = io_output_rsp_payload_last;
  assign io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = rspContext_input;
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      rspPendingCounter <= 6'h0;
      io_input_cmd_payload_first <= 1'b1;
    end else begin
      rspPendingCounter <= (_zz_rspPendingCounter - _zz_rspPendingCounter_3);
      if(io_input_cmd_fire_2) begin
        io_input_cmd_payload_first <= io_input_cmd_payload_last;
      end
    end
  end


endmodule

module BmbAlignedSpliter (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_source,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [24:0]   io_input_cmd_payload_fragment_address,
  input      [4:0]    io_input_cmd_payload_fragment_length,
  input      [31:0]   io_input_cmd_payload_fragment_data,
  input      [3:0]    io_input_cmd_payload_fragment_mask,
  input      [0:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_source,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output     [0:0]    io_input_rsp_payload_fragment_context,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [24:0]   io_output_cmd_payload_fragment_address,
  output     [4:0]    io_output_cmd_payload_fragment_length,
  output     [31:0]   io_output_cmd_payload_fragment_data,
  output     [3:0]    io_output_cmd_payload_fragment_mask,
  output     [3:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output reg          io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [3:0]    io_output_rsp_payload_fragment_context,
  output              io_outputBurstLast,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [5:0]    _zz_cmdLogic_lastAddress;
  wire       [4:0]    _zz_cmdLogic_lastAddress_1;
  wire       [3:0]    _zz_cmdLogic_beatsInSplit;
  wire       [2:0]    _zz_cmdLogic_beatsInSplit_1;
  wire       [3:0]    _zz_io_output_cmd_payload_last;
  wire       [3:0]    _zz_io_output_cmd_payload_last_1;
  wire       [11:0]   _zz_io_output_cmd_payload_fragment_address;
  wire       [11:0]   _zz_io_output_cmd_payload_fragment_address_1;
  wire       [11:0]   _zz_io_output_cmd_payload_fragment_address_2;
  wire       [11:0]   _zz_io_output_cmd_payload_fragment_address_3;
  wire       [4:0]    _zz_io_output_cmd_payload_fragment_address_4;
  wire       [2:0]    _zz_cmdLogic_beatCounter;
  wire       [0:0]    _zz_cmdLogic_beatCounter_1;
  reg        [2:0]    cmdLogic_beatCounter;
  wire       [4:0]    cmdLogic_headLenghtMax;
  wire       [5:0]    cmdLogic_lastAddress;
  wire       [4:0]    cmdLogic_tailLength;
  wire       [0:0]    cmdLogic_splitCount;
  reg                 cmdLogic_firstSplit;
  wire                io_output_cmd_fire;
  wire                when_BmbSpecificBridges_l256;
  wire                cmdLogic_lastSplit;
  reg        [24:0]   cmdLogic_addressBase;
  wire                when_BmbSpecificBridges_l260;
  wire       [3:0]    cmdLogic_beatsInSplit;
  wire       [0:0]    cmdLogic_context_source;
  wire                cmdLogic_context_last;
  wire                cmdLogic_context_write;
  wire       [0:0]    cmdLogic_context_input;
  wire       [1:0]    switch_Misc_l202;
  reg        [4:0]    _zz_io_output_cmd_payload_fragment_length;
  wire                io_output_cmd_fire_1;
  wire                io_input_cmd_fire;
  wire                when_BmbSpecificBridges_l296;
  wire       [0:0]    rspLogic_context_source;
  wire                rspLogic_context_last;
  wire                rspLogic_context_write;
  wire       [0:0]    rspLogic_context_input;
  wire       [3:0]    _zz_rspLogic_context_source;
  wire                when_Stream_l408;
  reg                 io_output_rsp_thrown_valid;
  wire                io_output_rsp_thrown_ready;
  wire                io_output_rsp_thrown_payload_last;
  wire       [0:0]    io_output_rsp_thrown_payload_fragment_opcode;
  wire       [31:0]   io_output_rsp_thrown_payload_fragment_data;
  wire       [3:0]    io_output_rsp_thrown_payload_fragment_context;

  assign _zz_cmdLogic_lastAddress_1 = io_input_cmd_payload_fragment_address[4 : 0];
  assign _zz_cmdLogic_lastAddress = {1'd0, _zz_cmdLogic_lastAddress_1};
  assign _zz_cmdLogic_beatsInSplit_1 = (cmdLogic_firstSplit ? io_input_cmd_payload_fragment_address[4 : 2] : 3'b000);
  assign _zz_cmdLogic_beatsInSplit = {1'd0, _zz_cmdLogic_beatsInSplit_1};
  assign _zz_io_output_cmd_payload_last = {1'd0, cmdLogic_beatCounter};
  assign _zz_io_output_cmd_payload_last_1 = (cmdLogic_beatsInSplit - 4'b0001);
  assign _zz_io_output_cmd_payload_fragment_address = (_zz_io_output_cmd_payload_fragment_address_1 + _zz_io_output_cmd_payload_fragment_address_3);
  assign _zz_io_output_cmd_payload_fragment_address_2 = cmdLogic_addressBase[11 : 0];
  assign _zz_io_output_cmd_payload_fragment_address_1 = _zz_io_output_cmd_payload_fragment_address_2;
  assign _zz_io_output_cmd_payload_fragment_address_4 = 5'h0;
  assign _zz_io_output_cmd_payload_fragment_address_3 = {7'd0, _zz_io_output_cmd_payload_fragment_address_4};
  assign _zz_cmdLogic_beatCounter_1 = (io_input_cmd_payload_fragment_opcode == 1'b1);
  assign _zz_cmdLogic_beatCounter = {2'd0, _zz_cmdLogic_beatCounter_1};
  assign cmdLogic_headLenghtMax = (5'h1f - io_input_cmd_payload_fragment_address[4 : 0]);
  assign cmdLogic_lastAddress = (_zz_cmdLogic_lastAddress + {1'b0,io_input_cmd_payload_fragment_length});
  assign cmdLogic_tailLength = cmdLogic_lastAddress[4 : 0];
  assign cmdLogic_splitCount = (cmdLogic_lastAddress >>> 5);
  assign io_output_cmd_fire = (io_output_cmd_valid && io_output_cmd_ready);
  assign when_BmbSpecificBridges_l256 = (io_output_cmd_fire && io_output_cmd_payload_last);
  assign cmdLogic_lastSplit = (1'b0 == cmdLogic_splitCount);
  always @(*) begin
    cmdLogic_addressBase = io_input_cmd_payload_fragment_address;
    if(when_BmbSpecificBridges_l260) begin
      cmdLogic_addressBase[4 : 0] = 5'h0;
    end
  end

  assign when_BmbSpecificBridges_l260 = (! cmdLogic_firstSplit);
  assign cmdLogic_beatsInSplit = (4'b1000 - _zz_cmdLogic_beatsInSplit);
  assign cmdLogic_context_input = io_input_cmd_payload_fragment_context;
  assign cmdLogic_context_last = cmdLogic_lastSplit;
  assign cmdLogic_context_write = (io_input_cmd_payload_fragment_opcode == 1'b1);
  assign cmdLogic_context_source = io_input_cmd_payload_fragment_source;
  assign io_output_cmd_valid = io_input_cmd_valid;
  assign io_output_cmd_payload_last = (io_input_cmd_payload_last || (_zz_io_output_cmd_payload_last == _zz_io_output_cmd_payload_last_1));
  assign io_output_cmd_payload_fragment_address = {cmdLogic_addressBase[24 : 12],_zz_io_output_cmd_payload_fragment_address};
  assign io_output_cmd_payload_fragment_context = {cmdLogic_context_input,{cmdLogic_context_write,{cmdLogic_context_last,cmdLogic_context_source}}};
  assign io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign switch_Misc_l202 = {cmdLogic_firstSplit,cmdLogic_lastSplit};
  always @(*) begin
    case(switch_Misc_l202)
      2'b10 : begin
        _zz_io_output_cmd_payload_fragment_length = cmdLogic_headLenghtMax;
      end
      2'b00 : begin
        _zz_io_output_cmd_payload_fragment_length = 5'h1f;
      end
      2'b01 : begin
        _zz_io_output_cmd_payload_fragment_length = cmdLogic_tailLength;
      end
      default : begin
        _zz_io_output_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length;
      end
    endcase
  end

  assign io_output_cmd_payload_fragment_length = _zz_io_output_cmd_payload_fragment_length;
  assign io_output_cmd_payload_fragment_data = io_input_cmd_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = io_input_cmd_payload_fragment_mask;
  assign io_outputBurstLast = cmdLogic_context_last;
  assign io_input_cmd_ready = (io_output_cmd_ready && ((io_input_cmd_payload_fragment_opcode == 1'b1) || cmdLogic_context_last));
  assign io_output_cmd_fire_1 = (io_output_cmd_valid && io_output_cmd_ready);
  assign io_input_cmd_fire = (io_input_cmd_valid && io_input_cmd_ready);
  assign when_BmbSpecificBridges_l296 = (io_input_cmd_fire && io_input_cmd_payload_last);
  assign _zz_rspLogic_context_source = io_output_rsp_payload_fragment_context;
  assign rspLogic_context_source = _zz_rspLogic_context_source[0 : 0];
  assign rspLogic_context_last = _zz_rspLogic_context_source[1];
  assign rspLogic_context_write = _zz_rspLogic_context_source[2];
  assign rspLogic_context_input = _zz_rspLogic_context_source[3 : 3];
  assign when_Stream_l408 = (! ((! rspLogic_context_write) || (rspLogic_context_last && io_output_rsp_payload_last)));
  always @(*) begin
    io_output_rsp_thrown_valid = io_output_rsp_valid;
    if(when_Stream_l408) begin
      io_output_rsp_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    io_output_rsp_ready = io_output_rsp_thrown_ready;
    if(when_Stream_l408) begin
      io_output_rsp_ready = 1'b1;
    end
  end

  assign io_output_rsp_thrown_payload_last = io_output_rsp_payload_last;
  assign io_output_rsp_thrown_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_output_rsp_thrown_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_output_rsp_thrown_payload_fragment_context = io_output_rsp_payload_fragment_context;
  assign io_input_rsp_valid = io_output_rsp_thrown_valid;
  assign io_output_rsp_thrown_ready = io_input_rsp_ready;
  assign io_input_rsp_payload_last = (io_output_rsp_payload_last && rspLogic_context_last);
  assign io_input_rsp_payload_fragment_source = rspLogic_context_source;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = rspLogic_context_input;
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      cmdLogic_beatCounter <= 3'b000;
      cmdLogic_firstSplit <= 1'b1;
    end else begin
      if(when_BmbSpecificBridges_l256) begin
        cmdLogic_firstSplit <= 1'b0;
      end
      if(io_output_cmd_fire_1) begin
        cmdLogic_beatCounter <= (cmdLogic_beatCounter + _zz_cmdLogic_beatCounter);
        if(io_output_cmd_payload_last) begin
          cmdLogic_beatCounter <= 3'b000;
        end
      end
      if(when_BmbSpecificBridges_l296) begin
        cmdLogic_firstSplit <= 1'b1;
      end
    end
  end


endmodule

module BmbAligner (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_source,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [24:0]   io_input_cmd_payload_fragment_address,
  input      [4:0]    io_input_cmd_payload_fragment_length,
  input      [31:0]   io_input_cmd_payload_fragment_data,
  input      [3:0]    io_input_cmd_payload_fragment_mask,
  input      [0:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_source,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output     [0:0]    io_input_rsp_payload_fragment_context,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_source,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output reg [24:0]   io_output_cmd_payload_fragment_address,
  output reg [4:0]    io_output_cmd_payload_fragment_length,
  output     [31:0]   io_output_cmd_payload_fragment_data,
  output     [3:0]    io_output_cmd_payload_fragment_mask,
  output     [0:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_source,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [0:0]    io_output_rsp_payload_fragment_context,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);


  assign io_output_cmd_valid = io_input_cmd_valid;
  assign io_input_cmd_ready = io_output_cmd_ready;
  assign io_input_rsp_valid = io_output_rsp_valid;
  assign io_output_rsp_ready = io_input_rsp_ready;
  assign io_output_cmd_payload_last = io_input_cmd_payload_last;
  assign io_input_rsp_payload_last = io_output_rsp_payload_last;
  assign io_output_cmd_payload_fragment_source = io_input_cmd_payload_fragment_source;
  assign io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  always @(*) begin
    io_output_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
    io_output_cmd_payload_fragment_address[1 : 0] = 2'b00;
  end

  always @(*) begin
    io_output_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length;
    io_output_cmd_payload_fragment_length[1 : 0] = 2'b11;
  end

  assign io_output_cmd_payload_fragment_data = io_input_cmd_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = io_input_cmd_payload_fragment_mask;
  assign io_output_cmd_payload_fragment_context = io_input_cmd_payload_fragment_context;
  assign io_input_rsp_payload_fragment_source = io_output_rsp_payload_fragment_source;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = io_output_rsp_payload_fragment_context;

endmodule

module BufferCC_1 (
  input               io_dataIn,
  output              io_dataOut,
  input               clkout_system,
  input               debugCdCtrl_logic_outputReset
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clkout_system) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module BufferCC (
  input               io_dataIn,
  output              io_dataOut,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module StreamFifoLowLatency (
  input               io_push_valid,
  output              io_push_ready,
  input               io_push_payload_write,
  input               io_push_payload_last,
  input      [3:0]    io_push_payload_context,
  output              io_pop_valid,
  input               io_pop_ready,
  output              io_pop_payload_write,
  output              io_pop_payload_last,
  output     [3:0]    io_pop_payload_context,
  input               io_flush,
  output     [3:0]    io_occupancy,
  input               clkout_system,
  input               systemCdCtrl_logic_outputReset
);

  wire       [5:0]    _zz_ram_port0;
  wire       [2:0]    _zz_pushPtr_valueNext;
  wire       [0:0]    _zz_pushPtr_valueNext_1;
  wire       [2:0]    _zz_popPtr_valueNext;
  wire       [0:0]    _zz_popPtr_valueNext_1;
  wire       [5:0]    _zz_ram_port;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [2:0]    pushPtr_valueNext;
  reg        [2:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [2:0]    popPtr_valueNext;
  reg        [2:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [5:0]    _zz_io_pop_payload_write;
  wire                when_Stream_l1010;
  wire       [2:0]    ptrDif;
  (* ram_style = "distributed" *) reg [5:0] ram [0:7];

  assign _zz_pushPtr_valueNext_1 = pushPtr_willIncrement;
  assign _zz_pushPtr_valueNext = {2'd0, _zz_pushPtr_valueNext_1};
  assign _zz_popPtr_valueNext_1 = popPtr_willIncrement;
  assign _zz_popPtr_valueNext = {2'd0, _zz_popPtr_valueNext_1};
  assign _zz_ram_port = {io_push_payload_context,{io_push_payload_last,io_push_payload_write}};
  assign _zz_ram_port0 = ram[popPtr_value];
  always @(posedge clkout_system) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= _zz_ram_port;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(pushing) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing) begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush) begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 3'b111);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @(*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_pushPtr_valueNext);
    if(pushPtr_willClear) begin
      pushPtr_valueNext = 3'b000;
    end
  end

  always @(*) begin
    popPtr_willIncrement = 1'b0;
    if(popping) begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    popPtr_willClear = 1'b0;
    if(io_flush) begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 3'b111);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @(*) begin
    popPtr_valueNext = (popPtr_value + _zz_popPtr_valueNext);
    if(popPtr_willClear) begin
      popPtr_valueNext = 3'b000;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  assign io_pop_valid = (! empty);
  assign _zz_io_pop_payload_write = _zz_ram_port0;
  assign io_pop_payload_write = _zz_io_pop_payload_write[0];
  assign io_pop_payload_last = _zz_io_pop_payload_write[1];
  assign io_pop_payload_context = _zz_io_pop_payload_write[5 : 2];
  assign when_Stream_l1010 = (pushing != popping);
  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @(posedge clkout_system) begin
    if(systemCdCtrl_logic_outputReset) begin
      pushPtr_value <= 3'b000;
      popPtr_value <= 3'b000;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if(when_Stream_l1010) begin
        risingOccupancy <= pushing;
      end
      if(io_flush) begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule
