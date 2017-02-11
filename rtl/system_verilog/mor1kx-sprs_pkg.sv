/* ****************************************************************************
  This Source Code Form is subject to the terms of the
  Open Hardware Description License, v. 1.0. If a copy
  of the OHDL was not distributed with this file, You
  can obtain one at http://juliusbaxter.net/ohdl/ohdl.txt

  Description: mor1kx defines package

  Copyright (C) 2017 Authors

  Author(s): Per Karlstrom <dev@per.karlstrom.se>

***************************************************************************** */

package mor1kx_sprs_pkg;

typedef enum int {SPR_SYS_BASE       = {5'd0},
                  SPR_VR_ADDR        = {5'd0,11'd0},
                  SPR_UPR_ADDR       = {5'd0,11'd1},
                  SPR_CPUCFGR_ADDR   = {5'd0,11'd2},
                  SPR_DMMUCFGR_ADDR  = {5'd0,11'd3},
                  SPR_IMMUCFGR_ADDR  = {5'd0,11'd4},
                  SPR_DCCFGR_ADDR    = {5'd0,11'd5},
                  SPR_ICCFGR_ADDR    = {5'd0,11'd6},
                  SPR_DCFGR_ADDR     = {5'd0,11'd7},
                  SPR_PCCFGR_ADDR    = {5'd0,11'd8},
                  SPR_VR2_ADDR       = {5'd0,11'd9},
                  SPR_AVR_ADDR       = {5'd0,11'd10},
                  SPR_EVBAR_ADDR     = {5'd0,11'd11},
                  SPR_AECR_ADDR      = {5'd0,11'd12},
                  SPR_AESR_ADDR      = {5'd0,11'd13},
                  SPR_NPC_ADDR       = {5'd0,11'd16},
                  SPR_SR_ADDR        = {5'd0,11'd17},
                  SPR_PPC_ADDR       = {5'd0,11'd18},
                  SPR_FPCSR_ADDR     = {5'd0,11'd20},
                  SPR_ISR0_ADDR      = {5'd0,11'd21},
                  SPR_EPCR0_ADDR     = {5'd0,11'd32},
                  SPR_EEAR0_ADDR     = {5'd0,11'd48},
                  SPR_ESR0_ADDR      = {5'd0,11'd64},
                  SPR_COREID_ADDR    = {5'd0,11'd128},
                  SPR_NUMCORES_ADDR  = {5'd0,11'd129},
                  SPR_GPR0_ADDR      = {5'd0,11'd1024},

                  SPR_DMMU_BASE      = {5'd1},
                  SPR_DMMUCR_ADDR    = {5'd1,11'd0},
                  SPR_DMMUPR_ADDR    = {5'd1,11'd1},
                  SPR_DTLBEIR_ADDR   = {5'd1,11'd2},
                  SPR_DATBMR0_ADDR   = {5'd1,11'd4},
                  SPR_DATBTR0_ADDR   = {5'd1,11'd8},
                  SPR_DTLBW0MR0_ADDR = {5'd1,11'd512},
                  SPR_DTLBW0TR0_ADDR = {5'd1,11'd640},
                  SPR_DTLBW1MR0_ADDR = {5'd1,11'd768},
                  SPR_DTLBW1TR0_ADDR = {5'd1,11'd896},
                  SPR_DTLBW2MR0_ADDR = {5'd1,11'd1024},
                  SPR_DTLBW2TR0_ADDR = {5'd1,11'd1152},
                  SPR_DTLBW3MR0_ADDR = {5'd1,11'd1280},
                  SPR_DTLBW3TR0_ADDR = {5'd1,11'd1408},

                  SPR_IMMU_BASE      = {5'd2},
                  SPR_IMMUCR_ADDR    = {5'd2,11'd0},
                  SPR_IMMUPR_ADDR    = {5'd2,11'd1},
                  SPR_ITLBEIR_ADDR   = {5'd2,11'd2},
                  SPR_IATBMR0_ADDR   = {5'd2,11'd4},
                  SPR_IATBTR0_ADDR   = {5'd2,11'd8},
                  SPR_ITLBW0MR0_ADDR = {5'd2,11'd512},
                  SPR_ITLBW0TR0_ADDR = {5'd2,11'd640},
                  SPR_ITLBW1MR0_ADDR = {5'd2,11'd768},
                  SPR_ITLBW1TR0_ADDR = {5'd2,11'd896},
                  SPR_ITLBW2MR0_ADDR = {5'd2,11'd1024},
                  SPR_ITLBW2TR0_ADDR = {5'd2,11'd1152},
                  SPR_ITLBW3MR0_ADDR = {5'd2,11'd1280},
                  SPR_ITLBW3TR0_ADDR = {5'd2,11'd1408},

                  SPR_DC_BASE        = {5'd3},
                  SPR_DCCR_ADDR      = {5'd3,11'd0},
                  SPR_DCBPR_ADDR     = {5'd3,11'd1},
                  SPR_DCBFR_ADDR     = {5'd3,11'd2},
                  SPR_DCBIR_ADDR     = {5'd3,11'd3},
                  SPR_DCBWR_ADDR     = {5'd3,11'd4},
                  SPR_DCBLR_ADDR     = {5'd3,11'd5},

                  SPR_IC_BASE        = {5'd4},
                  SPR_ICCR_ADDR      = {5'd4,11'd0},
                  SPR_ICBPR_ADDR     = {5'd4,11'd1},
                  SPR_ICBIR_ADDR     = {5'd4,11'd2},
                  SPR_ICBLR_ADDR     = {5'd4,11'd3},

                  SPR_MAC_BASE       = {5'd5},
                  SPR_MACLO_ADDR     = {5'd5,11'd1},
                  SPR_MACHI_ADDR     = {5'd5,11'd2},

                  SPR_DU_BASE        = {5'd6},
                  SPR_DVR0_ADDR      = {5'd6,11'd0},
                  SPR_DCR0_ADDR      = {5'd6,11'd8},
                  SPR_DMR1_ADDR      = {5'd6,11'd16},
                  SPR_DMR2_ADDR      = {5'd6,11'd17},
                  SPR_DCWR0_ADDR     = {5'd6,11'd18},
                  SPR_DSR_ADDR       = {5'd6,11'd20},
                  SPR_DRR_ADDR       = {5'd6,11'd21},

                  SPR_PC_BASE        = {5'd7},
                  SPR_PCCR0_ADDR     = {5'd7,11'd0},
                  SPR_PCCR1_ADDR     = {5'd7,11'd1},
                  SPR_PCCR2_ADDR     = {5'd7,11'd2},
                  SPR_PCCR3_ADDR     = {5'd7,11'd3},
                  SPR_PCCR4_ADDR     = {5'd7,11'd4},
                  SPR_PCCR5_ADDR     = {5'd7,11'd5},
                  SPR_PCCR6_ADDR     = {5'd7,11'd6},
                  SPR_PCCR7_ADDR     = {5'd7,11'd7},
                  SPR_PCMR0_ADDR     = {5'd7,11'd8},
                  SPR_PCMR1_ADDR     = {5'd7,11'd9},
                  SPR_PCMR2_ADDR     = {5'd7,11'd10},
                  SPR_PCMR3_ADDR     = {5'd7,11'd11},
                  SPR_PCMR4_ADDR     = {5'd7,11'd12},
                  SPR_PCMR5_ADDR     = {5'd7,11'd13},
                  SPR_PCMR6_ADDR     = {5'd7,11'd14},
                  SPR_PCMR7_ADDR     = {5'd7,11'd15},

                  SPR_PM_BASE        = {5'd8},
                  SPR_PMR_ADDR       = {5'd8,11'd0},

                  SPR_PIC_BASE       = {5'd9},
                  SPR_PICMR_ADDR     = {5'd9,11'd0},
                  SPR_PICSR_ADDR     = {5'd9,11'd2},

                  SPR_TT_BASE        = {5'd10},
                  SPR_TTMR_ADDR      = {5'd10,11'd0},
                  SPR_TTCR_ADDR      = {5'd10,11'd1},

                  SPR_FPU_BASE       = {5'd11}} spr_addresses_t;


    typedef struct packed {
        logic [3:0]  cid;  /* Context ID */
        logic [10:0] reserved;
        logic      sumra; /* SPR user read mode access */
        logic      fo;    /* Fixed to one */
        logic      eph;   /* Exception prefix high */
        logic      dsx;   /* Delay slot exception */
        logic      ove;   /* Overflow exception enable */
        logic      ov;    /* Overflow flag */
        logic      cy;    /* Carry flag */
        logic      f;     /* Flag */
        logic      ce;    /* CID enable */
        logic      lee;   /* Little-endian enable */
        logic      ime;   /* Instruction MMU enable */
        logic      dme;   /* Data MMU enable */
        logic      ice;   /* Instruction cache enable */
        logic      dce;   /* Data cache enable */
        logic      iee;   /* Interrupt exception enable */
        logic      tee;   /* Timer exception enable */
        logic      sm;    /* Supervisor mode */
    } supervision_t;

// Version register - DEPRECATED
    typedef struct packed {
        logic [7:0] ver;
        logic [7:0] cfg; /* Configuration Template */
        logic [8:0] reserved; /* Reserved */
        logic       uvrp; /* Updated Version Registers Present */
        logic [5:0] rev;    /* Revision */
    } version_t;

// Unit Present register
    typedef struct packed {
        logic [7:0]  cup;
        logic [12:0] reserved;
        logic        ttp;
        logic        pmp;
        logic        picp;
        logic        pcup;
        logic        dup;
        logic        mp;
        logic        imp;
        logic        dmp;
        logic        icp;
        logic        dcp;
        logic        up;
    } unit_present_t;

endpackage
