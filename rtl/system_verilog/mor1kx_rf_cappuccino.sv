
`include "mor1kx-defines.v"

module mor1kx_rf_cappuccino
  #(parameter string FEATURE_FASTCONTEXTS = "NONE",
    parameter int OPTION_RF_CLEAR_ON_INIT = 0,
    parameter int OPTION_RF_NUM_SHADOW_GPR = 0,
    parameter int OPTION_RF_ADDR_WIDTH = 5,
    parameter int OPTION_RF_WORDS = 32,
    parameter int FEATURE_DEBUGUNIT = "NONE",
    parameter int OPTION_OPERAND_WIDTH = 32)
   (input 			      clk,
    input 			      rst,

    // pipeline control signal in
    input 			      padv_decode_i,
    input 			      padv_execute_i,
    input 			      padv_ctrl_i,


    input 			      decode_valid_i,

    input 			      fetch_rf_adr_valid_i,

    // GPR numbers
    input [OPTION_RF_ADDR_WIDTH-1:0]  fetch_rfa_adr_i,
    input [OPTION_RF_ADDR_WIDTH-1:0]  fetch_rfb_adr_i,

    input [OPTION_RF_ADDR_WIDTH-1:0]  decode_rfa_adr_i,
    input [OPTION_RF_ADDR_WIDTH-1:0]  decode_rfb_adr_i,

    input [OPTION_RF_ADDR_WIDTH-1:0]  execute_rfd_adr_i,
    input [OPTION_RF_ADDR_WIDTH-1:0]  ctrl_rfd_adr_i,
    input [OPTION_RF_ADDR_WIDTH-1:0]  wb_rfd_adr_i,

    // SPR interface
    input [15:0] 		      spr_bus_addr_i,
    input 			      spr_bus_stb_i,
    input 			      spr_bus_we_i,
    input [OPTION_OPERAND_WIDTH-1:0]  spr_bus_dat_i,
    output 			      spr_gpr_ack_o,
    output [OPTION_OPERAND_WIDTH-1:0] spr_gpr_dat_o,

    // Write back signal indications
    input 			      execute_rf_wb_i,
    input 			      ctrl_rf_wb_i,
    input 			      wb_rf_wb_i,

    input [OPTION_OPERAND_WIDTH-1:0]  result_i,
    input [OPTION_OPERAND_WIDTH-1:0]  ctrl_alu_result_i,

    input 			      pipeline_flush_i,

    output [OPTION_OPERAND_WIDTH-1:0] decode_rfa_o,
    output [OPTION_OPERAND_WIDTH-1:0] decode_rfb_o,
    output [OPTION_OPERAND_WIDTH-1:0] execute_rfa_o,
    output [OPTION_OPERAND_WIDTH-1:0] execute_rfb_o
    );
