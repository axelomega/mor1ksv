/* ****************************************************************************
  This Source Code Form is subject to the terms of the
  Open Hardware Description License, v. 1.0. If a copy
  of the OHDL was not distributed with this file, You
  can obtain one at http://juliusbaxter.net/ohdl/ohdl.txt

  Description: mor1kx defines package

  Copyright (C) 2017 Authors

  Author(s): Per Karlstrom <dev@per.karlstrom.se>

***************************************************************************** */

package Mor1kxSprs_pkg;

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
        logic [3:0]  context_id;
        logic [10:0] reserved;
        logic        user_mode_read_access;
        logic        always_set;
        logic        exception_prefix;
        logic        delay_slot_exception;
        logic        overflow_exception_enable;
        logic        overflow_flag;
        logic        carry_flag;
        logic        flag;
        logic        cid_enable;
        logic        little_endian_enable;
        logic        instruction_mmu_enable;
        logic        data_mmu_enable;
        logic        instruction_cache_enable;
        logic        data_cache_enable;
        logic        interrupt_exception_enable;
        logic        timer_exception_enable;
        logic        supervisor_mode;
    } supervision_t;

    // DEPRECATED
    typedef struct packed {
        logic [7:0] ver;
        logic [7:0] cfg; /* Configuration Template */
        logic [8:0] reserved; /* Reserved */
        logic       uvrp; /* Updated Version Registers Present */
        logic [5:0] rev;    /* Revision */
    } version_t;

    typedef struct packed {
        logic [7:0]  custom_unit;
        logic [12:0] reserved;
        logic        tick_timer;
        logic        power_management;
        logic        programmable_interrupt_controller;
        logic        performance_counters;
        logic        debug_unit;
        logic        mac;
        logic        instruction_mmu;
        logic        data_mmu;
        logic        instruction_cache;
        logic        data_cache;
        logic        upr;
    } unit_present_t;

    typedef struct packed {
        logic [16:0] reserved; /* Arith. exception regs */
        logic        aecsrp;   /* Implementation specific regs */
        logic        isrp;     /* Exception vector base addr reg */
        logic        evbarp;   /* Arch. version registers */
        logic        avrp;     /* No delay-slot implementation */
        logic        nd;
        logic        ov64s;
        logic        of64s;
        logic        of32s;
        logic        ob64s;
        logic        ob32s;
        logic        cfg;      /* Number of shadow GPRs */
        logic [3:0]  nsgf;
    } cpu_configuration_t;

    typedef struct packed {
        logic [7:0]  cpuid;
        logic [23:0] ver;
    } version_register2_t;

    typedef struct packed {
        logic [7:0] maj;
        logic [7:0] min;
        logic [7:0] rev;
        logic [7:0] reserved;
    } architecture_version_t;

    typedef struct packed {
        logic [18:0] evba;
        logic [12:0] reserved;
    } exception_vector_bar_t;

    typedef struct packed {
        logic [24:0] reserved;
        logic ovmacadde;
        logic cymacadde;
        logic dbze;
        logic ovmule;
        logic cymule;
        logic ovadde;
        logic cyadde;
    } airthmetic_exception_t;

    typedef enum bit [1:0] {TTMR_M_DISABLED      = 2'b00,
                            TTMR_M_RESTART       = 2'b01,
                            TTMR_M_STOP_ON_MATCH = 2'b10,
                            TTMR_M_CONTINUE      = 2'b11} tick_timer_mode_t;

    typedef struct packed {
        tick_timer_mode_t m;
        logic ie;    /* interrupt enable */
        logic ip;    /* interrupt pending */
        logic [27:0] tp;  /* time period */
    } tick_timer_t;

    typedef struct packed {
        logic cbwbri;       /* Cache Block Write-Back Register Implemented */
        logic cbfri;        /* Cache Block Flush Register Implemented */
        logic cblri;        /* Cache Block Lock Register Implemented */
        logic cbpri;        /* Cache Block Prefetch Register Implemented */
        logic cbiri;        /* Cache Block Invalidate Register Implemented */
        logic ccri;         /* Cache Control Register Implemented */
        logic cws;          /* Cache Write Strategy */
        logic cbs;          /* Cache Block Size */
        logic [3:0] ncs;    /* Number of Cache Sets */
        logic [2:0] ncw;    /* Number of Cache Ways */
    } data_cache_cfg_t;

    typedef struct packed {
        logic cblri;     /* Cache Block Lock Register Implemented */
        logic cbpri;     /* Cache Block Prefetch Register Implemented */
        logic cbiri;     /* Cache Block Invalidate Register Implemented */
        logic ccri;      /* Cache Control Register Implemented */
        logic cbs;       /* Cache Block Size */
        logic [3:0] ncs; /* Number of Cache Sets */
        logic [2:0] ncw; /* Number of Cache Ways */
    } instruction_cache_cfg_t;

    typedef struct packed {
        logic htr;       /* Hardware TLB Reload */
        logic teiri;     /* TLB Entry Invalidate Register Implemented */
        logic pri;       /* Protection Register Implemented */
        logic cri;       /* Control Register Implemented */
        logic [2:0] nae; /* Number of ATB entries */
        logic [2:0] nts; /* Number of TLB sets */
        logic [1:0] ntw; /* Number of TLB ways */
    } mmu_cfg_t;

    typedef logic [1:0] chain_watchpoint_t;
    typedef struct packed {
        logic       ete;
        logic       dxfw;
        logic       bt;
        logic       st;
        chain_watchpoint_t [10:0] cw;
    } debug_mode1_t;

    typedef struct packed {
        logic te;
        logic fpe;
        logic sce;
        logic re;
        logic ime;
        logic dme;
        logic inte;
        logic iie;
        logic ae;
        logic tte;
        logic ipfe;
        logic dpfe;
        logic busee;
        logic rste;
    } debug_t;

    typedef struct packed {
        logic       dzf;
        logic       inf;
        logic       ivf;
        logic       ixf;
        logic       zf;
        logic       qnf;
        logic       snf;
        logic       unf;
        logic       ovf;
    } fpcsr_flags_t;

    typedef struct packed {
        fpcsr_flags_t flags_mask;
        fpcsr_flags_t flags;
        logic [1:0] rm;
        logic       fpee;
    } fpcsr_t;

    typedef struct packed {
        logic [5:0] reserved;
        logic [5:0] wpe;
        logic dds;
        logic itlbm;
        logic dtlbm;
        logic bs;
        logic lsus;
        logic ifs;
        logic icm;
        logic dcm;
        logic if;
        logic sa;
        logic la;
        logic cium;
        logic cism;
        logic reserved;
        logic cp;
    } perfomance_counter_mode_t;

    parameter int sr_width = 16;
    parameter bit [sr_width-1:0] sr_reset_value = sr_width'('h8001);
endpackage
