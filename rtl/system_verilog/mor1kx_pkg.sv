/* ****************************************************************************
  This Source Code Form is subject to the terms of the
  Open Hardware Description License, v. 1.0. If a copy
  of the OHDL was not distributed with this file, You
  can obtain one at http://juliusbaxter.net/ohdl/ohdl.txt

  Description: mor1kx defines package

  Copyright (C) 2017 Authors

  Author(s): Per Karlstrom <dev@per.karlstrom.se>

***************************************************************************** */

package mor1kx_pkg;
    /* ORBIS32 opcodes - top 6 bits */

    parameter int INSN_WIDTH = 32;

    parameter int IMM_WIDTH = 16;


    parameter int ALU_OPC_WIDTH = 4;
    typedef logic [ALU_OPC_WIDTH-1:0] alu_opc_t;

    typedef enum alu_opc_t {ALU_OPC_ADD   = 'h0,
                            ALU_OPC_ADDC  = 'h1,
                            ALU_OPC_SUB   = 'h2,
                            ALU_OPC_AND   = 'h3,
                            ALU_OPC_OR    = 'h4,
                            ALU_OPC_XOR   = 'h5,
                            ALU_OPC_MUL   = 'h6,
                            ALU_OPC_RESV  = 'h7,
                            ALU_OPC_SHRT  = 'h8,
                            ALU_OPC_DIV   = 'h9,
                            ALU_OPC_DIVU  = 'ha,
                            ALU_OPC_MULU  = 'hb,
                            ALU_OPC_EXTBH = 'hc,
                            ALU_OPC_EXTW  = 'hd,
                            ALU_OPC_CMOV  = 'he,
                            ALU_OPC_FFL1  = 'hf} alu_opcodes_t;

    parameter int ALU_OPC_SECONDARY_WIDTH = 3;
    typedef logic [ALU_OPC_WIDTH-1:0] alu_opc_secondary_t;

    typedef enum alu_opc_secondary_t {ALU_OPC_SECONDARY_SHRT_SLL = 'h0,
                                      ALU_OPC_SECONDARY_SHRT_SRL = 'h1,
                                      ALU_OPC_SECONDARY_SHRT_SRA = 'h2,
                                      ALU_OPC_SECONDARY_SHRT_ROR = 'h3} alu_secondary_opcodes_t;

    parameter int COMP_OPC_WIDTH = 4;
    typedef logic [COMP_OPC_WIDTH-1:0] comp_opc_t;

    typedef enum comp_opc_t {COMP_OPC_EQ  = 'h0,
                             COMP_OPC_NE  = 'h1,
                             COMP_OPC_GTU = 'h2,
                             COMP_OPC_GEU = 'h3,
                             COMP_OPC_LTU = 'h4,
                             COMP_OPC_LEU = 'h5,
                             COMP_OPC_GTS = 'ha,
                             COMP_OPC_GES = 'hb,
                             COMP_OPC_LTS = 'hc,
                             COMP_OPC_LES = 'hd} comp_opcodes_t;

    parameter int SYSTRAPSYNC_OPC_WIDTH = 3;
    typedef logic [SYSTRAPSYNC_OPC_WIDTH-1:0] systrapsync_opc_t;

    typedef enum systrapsync_opc_t {SYSTRAPSYNC_OPC_SYSCALL = 'h0,
                                    SYSTRAPSYNC_OPC_TRAP    = 'h2,
                                    SYSTRAPSYNC_OPC_MSYNC   = 'h4,
                                    SYSTRAPSYNC_OPC_PSYNC   = 'h5,
                                    SYSTRAPSYNC_OPC_CSYNC   = 'h6} systrapsync_opcodes_t;

    parameter int OPCODE_WIDTH = 6;
    typedef logic [OPCODE_WIDTH-1:0] opc_t;

    typedef enum opc_t {OPCODE_J           = {2'b00, 4'h0},
                        OPCODE_JAL         = {2'b00, 4'h1},
                        OPCODE_BNF         = {2'b00, 4'h3},
                        OPCODE_BF          = {2'b00, 4'h4},
                        OPCODE_NOP         = {2'b00, 4'h5},
                        OPCODE_MOVHI       = {2'b00, 4'h6},
                        OPCODE_MACRC       = {2'b00, 4'h6},
                        OPCODE_SYSTRAPSYNC = {2'b00, 4'h8},
                        OPCODE_RFE         = {2'b00, 4'h9},

/*
`define OR1K_OPCODE_SYS     {2'b00, 4'h8}
`define OR1K_OPCODE_TRAP    {2'b00, 4'h8}
`define OR1K_OPCODE_MSYNC   {2'b00, 4'h8}
`define OR1K_OPCODE_PSYNC   {2'b00, 4'h8}
`define OR1K_OPCODE_CSYNC   {2'b00, 4'h8}
 */

                        OPCODE_JR      = {2'b01, 4'h1},
                        OPCODE_JALR    = {2'b01, 4'h2},
                        OPCODE_MACI    = {2'b01, 4'h3},
                        OPCODE_LWA     = {2'b01, 4'hB},
                        OPCODE_CUST1   = {2'b01, 4'hC},
                        OPCODE_CUST2   = {2'b01, 4'hD},
                        OPCODE_CUST3   = {2'b01, 4'hE},
                        OPCODE_CUST4   = {2'b01, 4'hF},

                        OPCODE_LD      = {2'b10, 4'h0},
                        OPCODE_LWZ     = {2'b10, 4'h1},
                        OPCODE_LWS     = {2'b10, 4'h2},
                        OPCODE_LBZ     = {2'b10, 4'h3},
                        OPCODE_LBS     = {2'b10, 4'h4},
                        OPCODE_LHZ     = {2'b10, 4'h5},
                        OPCODE_LHS     = {2'b10, 4'h6},

                        OPCODE_ADDI    = {2'b10, 4'h7},
                        OPCODE_ADDIC   = {2'b10, 4'h8},
                        OPCODE_ANDI    = {2'b10, 4'h9},
                        OPCODE_ORI     = {2'b10, 4'hA},
                        OPCODE_XORI    = {2'b10, 4'hB},
                        OPCODE_MULI    = {2'b10, 4'hC},
                        OPCODE_MFSPR   = {2'b10, 4'hD},
/*
`define OR1K_OPCODE_SLLI    {2'b10, 4'hE}
`define OR1K_OPCODE_SRLI    {2'b10, 4'hE}
`define OR1K_OPCODE_SRAI    {2'b10, 4'hE}
`define OR1K_OPCODE_RORI    {2'b10, 4'hE}
*/
                        OPCODE_SHRTI    = {2'b10, 4'hE},

/*
`define OR1K_OPCODE_SFEQI   {2'b10, 4'hF}
`define OR1K_OPCODE_SFNEI   {2'b10, 4'hF}
`define OR1K_OPCODE_SFGTUI  {2'b10, 4'hF}
`define OR1K_OPCODE_SFGEUI  {2'b10, 4'hF}
`define OR1K_OPCODE_SFLTUI  {2'b10, 4'hF}
`define OR1K_OPCODE_SFLEUI  {2'b10, 4'hF}
`define OR1K_OPCODE_SFGTSI  {2'b10, 4'hF}
`define OR1K_OPCODE_SFGESI  {2'b10, 4'hF}
`define OR1K_OPCODE_SFLTSI  {2'b10, 4'hF}
`define OR1K_OPCODE_SFLESI  {2'b10, 4'hF}
*/
                        OPCODE_SFIMM   = {2'b10, 4'hF},

                        OPCODE_MTSPR   = {2'b11, 4'h0},
                        OPCODE_MAC     = {2'b11, 4'h1},
                        OPCODE_MSB     = {2'b11, 4'h1},

                        OPCODE_SWA     = {2'b11, 4'h3},
                        OPCODE_SD      = {2'b11, 4'h4},
                        OPCODE_SW      = {2'b11, 4'h5},
                        OPCODE_SB      = {2'b11, 4'h6},
                        OPCODE_SH      = {2'b11, 4'h7},

/*
`define OR1K_OPCODE_ADD     {2'b11, 4'h8}
`define OR1K_OPCODE_ADDC    {2'b11, 4'h8}
`define OR1K_OPCODE_SUB     {2'b11, 4'h8}
`define OR1K_OPCODE_AND     {2'b11, 4'h8}
`define OR1K_OPCODE_OR      {2'b11, 4'h8}
`define OR1K_OPCODE_XOR     {2'b11, 4'h8}
`define OR1K_OPCODE_MUL     {2'b11, 4'h8}

`define OR1K_OPCODE_SLL     {2'b11, 4'h8}
`define OR1K_OPCODE_SRL     {2'b11, 4'h8}
`define OR1K_OPCODE_SRA     {2'b11, 4'h8}
`define OR1K_OPCODE_ROR     {2'b11, 4'h8}
`define OR1K_OPCODE_DIV     {2'b11, 4'h8}
`define OR1K_OPCODE_DIVU    {2'b11, 4'h8}
`define OR1K_OPCODE_MULU    {2'b11, 4'h8}
`define OR1K_OPCODE_EXTBS   {2'b11, 4'h8}
`define OR1K_OPCODE_EXTHS   {2'b11, 4'h8}
`define OR1K_OPCODE_EXTWS   {2'b11, 4'h8}
`define OR1K_OPCODE_EXTBZ   {2'b11, 4'h8}
`define OR1K_OPCODE_EXTHZ   {2'b11, 4'h8}
`define OR1K_OPCODE_EXTWZ   {2'b11, 4'h8}
`define OR1K_OPCODE_CMOV    {2'b11, 4'h8}
`define OR1K_OPCODE_FF1     {2'b11, 4'h8}
`define OR1K_OPCODE_FL1     {2'b11, 4'h8}
*/
                        OPCODE_ALU     = {2'b11, 4'h8},

/*
`define OR1K_OPCODE_SFEQ    {2'b11, 4'h9}
`define OR1K_OPCODE_SFNE    {2'b11, 4'h9}
`define OR1K_OPCODE_SFGTU   {2'b11, 4'h9}
`define OR1K_OPCODE_SFGEU   {2'b11, 4'h9}
`define OR1K_OPCODE_SFLTU   {2'b11, 4'h9}
`define OR1K_OPCODE_SFLEU   {2'b11, 4'h9}
`define OR1K_OPCODE_SFGTS   {2'b11, 4'h9}
`define OR1K_OPCODE_SFGES   {2'b11, 4'h9}
`define OR1K_OPCODE_SFLTS   {2'b11, 4'h9}
`define OR1K_OPCODE_SFLES   {2'b11, 4'h9}
*/
                        OPCODE_SF      = {2'b11, 4'h9},

                        OPCODE_CUST5   = {2'b11, 4'hC},
                        OPCODE_CUST6   = {2'b11, 4'hD},
                        OPCODE_CUST7   = {2'b11, 4'hE},
                        OPCODE_CUST8   = {2'b11, 4'hF},

//
// ORFPX32 opcodes
//
                        OPCODE_FPU  = {2'b11, 4'h2}} opcodes_t;
// FP OPs
// MSbit indicates FPU operation valid
    parameter int FPUOP_WIDTH = 8;
    typedef logic [FPUOP_WIDTH-1:0] fpuop_t;

// FPU unit from Usselman takes 5 cycles from decode, so 4 ex. cycles
    parameter int FPUOP_CYCLES = 3'd4;
// FP instruction is double precision if bit 4 is set. We're a 32-bit
// implementation thus do not support double precision FP
    parameter int OR1K_FPUOP_DOUBLE_BIT = 4;
    typedef enum fpuop_t {FPUOP_ADD      = 8'b0000_0000,
                          FPUOP_SUB      = 8'b0000_0001,
                          FPUOP_MUL      = 8'b0000_0010,
                          FPUOP_DIV      = 8'b0000_0011,
                          FPUOP_ITOF     = 8'b0000_0100,
                          FPUOP_FTOI     = 8'b0000_0101,
                          FPUOP_REM      = 8'b0000_0110,
                          FPUOP_RESERVED = 8'b0000_0111,
                          // FP Compare instructions
                          FPCOP_SFEQ     = 8'b0000_1000,
                          FPCOP_SFNE     = 8'b0000_1001,
                          FPCOP_SFGT     = 8'b0000_1010,
                          FPCOP_SFGE     = 8'b0000_1011,
                          FPCOP_SFLT     = 8'b0000_1100,
                          FPCOP_SFLE     = 8'b0000_1101} fpu_opcodes_t;


//
// OR1K SPR defines
//
`include "mor1kx-sprs.v"

/* Exception addresses */
    parameter int EXCEPTION_ADDRESS_WIDTH = 5;
    typedef logic [EXCEPTION_ADDRESS_WIDTH-1:0] exception_adr_t;

    typedef enum exception_adr_t {RESET_VECTOR   = 5'h01,
                                  BERR_VECTOR    = 5'h02,
                                  DPF_VECTOR     = 5'h03,
                                  IPF_VECTOR     = 5'h04,
                                  TT_VECTOR      = 5'h05,
                                  ALIGN_VECTOR   = 5'h06,
                                  ILLEGAL_VECTOR = 5'h07,
                                  INT_VECTOR     = 5'h08,
                                  DTLB_VECTOR    = 5'h09,
                                  ITLB_VECTOR    = 5'h0a,
                                  RANGE_VECTOR   = 5'h0b,
                                  SYSCALL_VECTOR = 5'h0c,
                                  FP_VECTOR      = 5'h0d,
                                  TRAP_VECTOR    = 5'h0e} exception_address_t;

// Whether we'll allow things using AYNC reset to have it:
//`define OR_ASYNC_RST or posedge rst

// Implementation version defines
    parameter byte CPUID = 8'h01;
// mor1kx breaks up the VR2 version register to be 3 8-bit fields
// MSB is major version, middle byte is minor version number
// and final byte is the pipeline identifier.
    parameter byte VERSION_MAJOR = 8'd5;
    parameter byte VERSION_MINOR = 8'd0;

// mor1kx implementation-specific register definitions
    parameter byte PIPEID_CAPPUCCINO = 8'd1;
    parameter byte PIPEID_ESPRESSO = 8'd2;
    parameter byte PIPEID_PRONTOESPRESSO = 8'd3;

endpackage
