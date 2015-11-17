;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Wed Nov 18 02:57:35 2015
;--------------------------------------------------------
	.module rpl_dag
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rpl_add_dag
	.globl _rpl_set_default_instance
	.globl _printf
	.globl _rpl_reset_dio_timer
	.globl _rpl_schedule_probing
	.globl _rpl_schedule_dao
	.globl _rpl_remove_routes_by_nexthop
	.globl _rpl_remove_routes
	.globl _dao_output
	.globl _uip_ds6_set_addr_iid
	.globl _uip_ds6_addr_lookup
	.globl _uip_ds6_addr_rm
	.globl _uip_ds6_addr_add
	.globl _uip_ds6_nbr_num
	.globl _uip_ds6_nbr_lladdr_from_ipaddr
	.globl _uip_ds6_nbr_ipaddr_from_lladdr
	.globl _uip_ds6_nbr_lookup
	.globl _uip_ds6_nbr_get_ll
	.globl _nbr_table_get_lladdr
	.globl _nbr_table_unlock
	.globl _nbr_table_lock
	.globl _nbr_table_remove
	.globl _nbr_table_get_from_lladdr
	.globl _nbr_table_add_lladdr
	.globl _nbr_table_next
	.globl _nbr_table_head
	.globl _nbr_table_register
	.globl _uip_ds6_defrt_rm
	.globl _uip_ds6_defrt_add
	.globl _ctimer_stop
	.globl _clock_time
	.globl _memset
	.globl _memcmp
	.globl _memcpy
	.globl _ACTIVE
	.globl _TX_BYTE
	.globl _RX_BYTE
	.globl _ERR
	.globl _FE
	.globl _SLAVE
	.globl _RE
	.globl _MODE
	.globl _T3OVFIF
	.globl _T3CH0IF
	.globl _T3CH1IF
	.globl _T4OVFIF
	.globl _T4CH0IF
	.globl _T4CH1IF
	.globl _OVFIM
	.globl _B_0
	.globl _B_1
	.globl _B_2
	.globl _B_3
	.globl _B_4
	.globl _B_5
	.globl _B_6
	.globl _B_7
	.globl _P2IF
	.globl _UTX0IF
	.globl _UTX1IF
	.globl _P1IF
	.globl _WDTIF
	.globl _ACC_0
	.globl _ACC_1
	.globl _ACC_2
	.globl _ACC_3
	.globl _ACC_4
	.globl _ACC_5
	.globl _ACC_6
	.globl _ACC_7
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _DMAIF
	.globl _T1IF
	.globl _T2IF
	.globl _T3IF
	.globl _T4IF
	.globl _P0IF
	.globl _STIF
	.globl _DMAIE
	.globl _T1IE
	.globl _T2IE
	.globl _T3IE
	.globl _T4IE
	.globl _P0IE
	.globl _RFERRIE
	.globl _ADCIE
	.globl _URX0IE
	.globl _URX1IE
	.globl _ENCIE
	.globl _STIE
	.globl _EA
	.globl _P2_0
	.globl _P2_1
	.globl _P2_2
	.globl _P2_3
	.globl _P2_4
	.globl _P2_5
	.globl _P2_6
	.globl _P2_7
	.globl _ENCIF_0
	.globl _ENCIF_1
	.globl _P1_0
	.globl _P1_1
	.globl _P1_2
	.globl _P1_3
	.globl _P1_4
	.globl _P1_5
	.globl _P1_6
	.globl _P1_7
	.globl _IT0
	.globl _RFERRIF
	.globl _IT1
	.globl _URX0IF
	.globl _ADCIF
	.globl _URX1IF
	.globl _P0_0
	.globl _P0_1
	.globl _P0_2
	.globl _P0_3
	.globl _P0_4
	.globl _P0_5
	.globl _P0_6
	.globl _P0_7
	.globl _WDCTL
	.globl _U1GCR
	.globl _U1UCR
	.globl _U1BAUD
	.globl _U1DBUF
	.globl _U1CSR
	.globl _U0GCR
	.globl _U0UCR
	.globl _U0BAUD
	.globl _U0DBUF
	.globl _U0CSR
	.globl _TIMIF
	.globl _T4CC1
	.globl _T4CCTL1
	.globl _T4CC0
	.globl _T4CCTL0
	.globl _T4CTL
	.globl _T4CNT
	.globl _T3CC1
	.globl _T3CCTL1
	.globl _T3CC0
	.globl _T3CCTL0
	.globl _T3CTL
	.globl _T3CNT
	.globl _T2MSEL
	.globl _T2IRQM
	.globl _T2MOVF2
	.globl _T2MOVF1
	.globl _T2MOVF0
	.globl _T2M1
	.globl _T2M0
	.globl _T2IRQF
	.globl _T2EVTCFG
	.globl _T2CTRL
	.globl _T1STAT
	.globl _T1CCTL2
	.globl _T1CCTL1
	.globl _T1CCTL0
	.globl _T1CTL
	.globl _T1CNTH
	.globl _T1CNTL
	.globl _T1CC2H
	.globl _T1CC2L
	.globl _T1CC1H
	.globl _T1CC1L
	.globl _T1CC0H
	.globl _T1CC0L
	.globl _CLKCONSTA
	.globl _CLKCONCMD
	.globl _SLEEPSTA
	.globl _SLEEPCMD
	.globl _STLOAD
	.globl _ST2
	.globl _ST1
	.globl _ST0
	.globl _RFERRF
	.globl _RFIRQF0
	.globl _RFST
	.globl _RFD
	.globl _RFIRQF1
	.globl _PSBANK
	.globl _FMAP
	.globl _MEMCTR
	.globl __XPAGE
	.globl _MPAGE
	.globl _PMUX
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _P2INP
	.globl _P1INP
	.globl _P2SEL
	.globl _P1SEL
	.globl _P0SEL
	.globl _APCFG
	.globl _PERCFG
	.globl _P0INP
	.globl _P2IEN
	.globl _P1IEN
	.globl _P0IEN
	.globl _PICTL
	.globl _P2IFG
	.globl _P1IFG
	.globl _P0IFG
	.globl _DMAREQ
	.globl _DMAARM
	.globl _DMA0CFGH
	.globl _DMA0CFGL
	.globl _DMA1CFGH
	.globl _DMA1CFGL
	.globl _DMAIRQ
	.globl _ENCCS
	.globl _ENCDO
	.globl _ENCDI
	.globl _RNDH
	.globl _RNDL
	.globl _ADCH
	.globl _ADCL
	.globl _ADCCON3
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _B
	.globl _IRCON2
	.globl _ACC
	.globl _PSW
	.globl _IRCON
	.globl _IP1
	.globl _IEN1
	.globl _IP0
	.globl _IEN0
	.globl _P2
	.globl _S1CON
	.globl _IEN2
	.globl _S0CON
	.globl _DPS
	.globl _P1
	.globl _TCON
	.globl _PCON
	.globl _DPH1
	.globl _DPL1
	.globl _DPH0
	.globl _DPL0
	.globl _SP
	.globl _P0
	.globl _rpl_parents
	.globl _default_instance
	.globl _instance_table
	.globl _X_IEEE_ADDR
	.globl _X_INFOPAGE
	.globl _X_P2DIR
	.globl _X_P1DIR
	.globl _X_P0DIR
	.globl _X_U1GCR
	.globl _X_U1UCR
	.globl _X_U1BAUD
	.globl _X_U1DBUF
	.globl _X_U1CSR
	.globl _X_P2INP
	.globl _X_P1INP
	.globl _X_P2SEL
	.globl _X_P1SEL
	.globl _X_P0SEL
	.globl _X_APCFG
	.globl _X_PERCFG
	.globl _X_T4CC1
	.globl _X_T4CCTL1
	.globl _X_T4CC0
	.globl _X_T4CCTL0
	.globl _X_T4CTL
	.globl _X_T4CNT
	.globl _X_RFIRQF0
	.globl _X_T1CCTL2
	.globl _X_T1CCTL1
	.globl _X_T1CCTL0
	.globl _X_T1CTL
	.globl _X_T1CNTH
	.globl _X_T1CNTL
	.globl _X_RFST
	.globl _X_T1CC2H
	.globl _X_T1CC2L
	.globl _X_T1CC1H
	.globl _X_T1CC1L
	.globl _X_T1CC0H
	.globl _X_T1CC0L
	.globl _X_RFD
	.globl _X_TIMIF
	.globl _X_DMAREQ
	.globl _X_DMAARM
	.globl _X_DMA0CFGH
	.globl _X_DMA0CFGL
	.globl _X_DMA1CFGH
	.globl _X_DMA1CFGL
	.globl _X_DMAIRQ
	.globl _X_T3CC1
	.globl _X_T3CCTL1
	.globl _X_T3CC0
	.globl _X_T3CCTL0
	.globl _X_T3CTL
	.globl _X_T3CNT
	.globl _X_WDCTL
	.globl _X_MEMCTR
	.globl _X_CLKCONCMD
	.globl _X_U0GCR
	.globl _X_U0UCR
	.globl _X_T2MSEL
	.globl _X_U0BAUD
	.globl _X_U0DBUF
	.globl _X_RFERRF
	.globl _X_SLEEPCMD
	.globl _X_RNDH
	.globl _X_RNDL
	.globl _X_ADCH
	.globl _X_ADCL
	.globl _X_ADCCON3
	.globl _X_ADCCON2
	.globl _X_ADCCON1
	.globl _X_ENCCS
	.globl _X_ENCDO
	.globl _X_ENCDI
	.globl _X_T1STAT
	.globl _X_PMUX
	.globl _X_STLOAD
	.globl _X_P2IEN
	.globl _X_P0IEN
	.globl _X_T2IRQM
	.globl _X_T2MOVF2
	.globl _X_T2MOVF1
	.globl _X_T2MOVF0
	.globl _X_T2M1
	.globl _X_T2M0
	.globl _X_T2IRQF
	.globl _X_P2
	.globl _X_PSBANK
	.globl _X_FMAP
	.globl _X_CLKCONSTA
	.globl _X_SLEEPSTA
	.globl _X_T2EVTCFG
	.globl _X_ST2
	.globl _X_ST1
	.globl _X_ST0
	.globl _X_T2CTRL
	.globl _X__XPAGE
	.globl _X_MPAGE
	.globl _X_RFIRQF1
	.globl _X_P1
	.globl _X_P0INP
	.globl _X_P1IEN
	.globl _X_PICTL
	.globl _X_P2IFG
	.globl _X_P1IFG
	.globl _X_P0IFG
	.globl _X_U0CSR
	.globl _X_P0
	.globl _USBF5
	.globl _USBF4
	.globl _USBF3
	.globl _USBF2
	.globl _USBF1
	.globl _USBF0
	.globl _USBCNTH
	.globl _USBCNTL
	.globl _USBCNT0
	.globl _USBCSOH
	.globl _USBCSOL
	.globl _USBMAXO
	.globl _USBCSIH
	.globl _USBCSIL
	.globl _USBCS0
	.globl _USBMAXI
	.globl _USBCTRL
	.globl _USBINDEX
	.globl _USBFRMH
	.globl _USBFRML
	.globl _USBCIE
	.globl _USBOIE
	.globl _USBIIE
	.globl _USBCIF
	.globl _USBOIF
	.globl _USBIIF
	.globl _USBPOW
	.globl _USBADDR
	.globl _CSPT
	.globl _CSPZ
	.globl _CSPY
	.globl _CSPX
	.globl _CSPSTAT
	.globl _CSPCTRL
	.globl _CSPPROG23
	.globl _CSPPROG22
	.globl _CSPPROG21
	.globl _CSPPROG20
	.globl _CSPPROG19
	.globl _CSPPROG18
	.globl _CSPPROG17
	.globl _CSPPROG16
	.globl _CSPPROG15
	.globl _CSPPROG14
	.globl _CSPPROG13
	.globl _CSPPROG12
	.globl _CSPPROG11
	.globl _CSPPROG10
	.globl _CSPPROG9
	.globl _CSPPROG8
	.globl _CSPPROG7
	.globl _CSPPROG6
	.globl _CSPPROG5
	.globl _CSPPROG4
	.globl _CSPPROG3
	.globl _CSPPROG2
	.globl _CSPPROG1
	.globl _CSPPROG0
	.globl _RFC_OBS_CTRL2
	.globl _RFC_OBS_CTRL1
	.globl _RFC_OBS_CTRL0
	.globl _TXFILTCFG
	.globl _PTEST1
	.globl _PTEST0
	.globl _ATEST
	.globl _DACTEST2
	.globl _DACTEST1
	.globl _DACTEST0
	.globl _MDMTEST1
	.globl _MDMTEST0
	.globl _ADCTEST2
	.globl _ADCTEST1
	.globl _ADCTEST0
	.globl _AGCCTRL3
	.globl _AGCCTRL2
	.globl _AGCCTRL1
	.globl _AGCCTRL0
	.globl _FSCAL3
	.globl _FSCAL2
	.globl _FSCAL1
	.globl _FSCAL0
	.globl _FSCTRL
	.globl _RXCTRL
	.globl _FREQEST
	.globl _MDMCTRL1
	.globl _MDMCTRL0
	.globl _RFRND
	.globl _RFERRM
	.globl _RFIRQM1
	.globl _RFIRQM0
	.globl _TXLAST_PTR
	.globl _TXFIRST_PTR
	.globl _RXP1_PTR
	.globl _RXLAST_PTR
	.globl _RXFIRST_PTR
	.globl _TXFIFOCNT
	.globl _RXFIFOCNT
	.globl _RXFIRST
	.globl _RSSISTAT
	.globl _RSSI
	.globl _CCACTRL1
	.globl _CCACTRL0
	.globl _FSMCTRL
	.globl _FIFOPCTRL
	.globl _FSMSTAT1
	.globl _FSMSTAT0
	.globl _TXCTRL
	.globl _TXPOWER
	.globl _FREQCTRL
	.globl _FREQTUNE
	.globl _RXMASKCLR
	.globl _RXMASKSET
	.globl _RXENABLE
	.globl _FRMCTRL1
	.globl _FRMCTRL0
	.globl _SRCEXTEN2
	.globl _SRCEXTEN1
	.globl _SRCEXTEN0
	.globl _SRCSHORTEN2
	.globl _SRCSHORTEN1
	.globl _SRCSHORTEN0
	.globl _SRCMATCH
	.globl _FRMFILT1
	.globl _FRMFILT0
	.globl _SHORT_ADDR1
	.globl _SHORT_ADDR0
	.globl _PAN_ID1
	.globl _PAN_ID0
	.globl _EXT_ADDR7
	.globl _EXT_ADDR6
	.globl _EXT_ADDR5
	.globl _EXT_ADDR4
	.globl _EXT_ADDR3
	.globl _EXT_ADDR2
	.globl _EXT_ADDR1
	.globl _EXT_ADDR0
	.globl _SRCSHORTPENDEN2
	.globl _SRCSHORTPENDEN1
	.globl _SRCSHORTPENDEN0
	.globl _SRCEXTPENDEN2
	.globl _SRCEXTPENDEN1
	.globl _SRCEXTPENDEN0
	.globl _SRCRESINDEX
	.globl _SRCRESMASK2
	.globl _SRCRESMASK1
	.globl _SRCRESMASK0
	.globl _SRC_ADDR_TABLE
	.globl _TXFIFO
	.globl _RXFIFO
	.globl _RFCORE_RAM
	.globl _CMPCTL
	.globl _OPAMPS
	.globl _OPAMPC
	.globl _STCV2
	.globl _STCV1
	.globl _STCV0
	.globl _STCS
	.globl _STCC
	.globl _T1CC4H
	.globl _T1CC4L
	.globl _T1CC3H
	.globl _T1CC3L
	.globl _XX_T1CC2H
	.globl _XX_T1CC2L
	.globl _XX_T1CC1H
	.globl _XX_T1CC1L
	.globl _XX_T1CC0H
	.globl _XX_T1CC0L
	.globl _T1CCTL4
	.globl _T1CCTL3
	.globl _XX_T1CCTL2
	.globl _XX_T1CCTL1
	.globl _XX_T1CCTL0
	.globl _CLD
	.globl _IRCTL
	.globl _CHIPINFO1
	.globl _CHIPINFO0
	.globl _FWDATA
	.globl _FADDRH
	.globl _FADDRL
	.globl _FCTL
	.globl _IVCTRL
	.globl _BATTMON
	.globl _SRCRC
	.globl _DBGDATA
	.globl _TESTREG0
	.globl _CHIPID
	.globl _CHVER
	.globl _OBSSEL5
	.globl _OBSSEL4
	.globl _OBSSEL3
	.globl _OBSSEL2
	.globl _OBSSEL1
	.globl _OBSSEL0
	.globl _I2CIO
	.globl _I2CWC
	.globl _I2CADDR
	.globl _I2CDATA
	.globl _I2CSTAT
	.globl _I2CCFG
	.globl _OPAMPMC
	.globl _MONMUX
	.globl _rpl_print_neighbor_list
	.globl _rpl_get_nbr
	.globl _rpl_dag_init
	.globl _rpl_get_parent
	.globl _rpl_get_parent_rank
	.globl _rpl_get_parent_link_metric
	.globl _rpl_get_parent_ipaddr
	.globl _rpl_set_root
	.globl _rpl_repair_root
	.globl _rpl_set_prefix
	.globl _rpl_set_default_route
	.globl _rpl_alloc_instance
	.globl _rpl_alloc_dag
	.globl _rpl_get_default_instance
	.globl _rpl_free_instance
	.globl _rpl_free_dag
	.globl _rpl_add_parent
	.globl _rpl_find_parent
	.globl _rpl_find_parent_any_dag
	.globl _rpl_select_dag
	.globl _rpl_select_parent
	.globl _rpl_remove_parent
	.globl _rpl_nullify_parent
	.globl _rpl_move_parent
	.globl _rpl_get_any_dag
	.globl _rpl_get_instance
	.globl _rpl_find_of
	.globl _rpl_join_instance
	.globl _rpl_local_repair
	.globl _rpl_recalculate_ranks
	.globl _rpl_process_parent_event
	.globl _rpl_process_dio
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL0	=	0x0082
_DPH0	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_PCON	=	0x0087
_TCON	=	0x0088
_P1	=	0x0090
_DPS	=	0x0092
_S0CON	=	0x0098
_IEN2	=	0x009a
_S1CON	=	0x009b
_P2	=	0x00a0
_IEN0	=	0x00a8
_IP0	=	0x00a9
_IEN1	=	0x00b8
_IP1	=	0x00b9
_IRCON	=	0x00c0
_PSW	=	0x00d0
_ACC	=	0x00e0
_IRCON2	=	0x00e8
_B	=	0x00f0
_ADCCON1	=	0x00b4
_ADCCON2	=	0x00b5
_ADCCON3	=	0x00b6
_ADCL	=	0x00ba
_ADCH	=	0x00bb
_RNDL	=	0x00bc
_RNDH	=	0x00bd
_ENCDI	=	0x00b1
_ENCDO	=	0x00b2
_ENCCS	=	0x00b3
_DMAIRQ	=	0x00d1
_DMA1CFGL	=	0x00d2
_DMA1CFGH	=	0x00d3
_DMA0CFGL	=	0x00d4
_DMA0CFGH	=	0x00d5
_DMAARM	=	0x00d6
_DMAREQ	=	0x00d7
_P0IFG	=	0x0089
_P1IFG	=	0x008a
_P2IFG	=	0x008b
_PICTL	=	0x008c
_P0IEN	=	0x00ab
_P1IEN	=	0x008d
_P2IEN	=	0x00ac
_P0INP	=	0x008f
_PERCFG	=	0x00f1
_APCFG	=	0x00f2
_P0SEL	=	0x00f3
_P1SEL	=	0x00f4
_P2SEL	=	0x00f5
_P1INP	=	0x00f6
_P2INP	=	0x00f7
_P0DIR	=	0x00fd
_P1DIR	=	0x00fe
_P2DIR	=	0x00ff
_PMUX	=	0x00ae
_MPAGE	=	0x0093
__XPAGE	=	0x0093
_MEMCTR	=	0x00c7
_FMAP	=	0x009f
_PSBANK	=	0x009f
_RFIRQF1	=	0x0091
_RFD	=	0x00d9
_RFST	=	0x00e1
_RFIRQF0	=	0x00e9
_RFERRF	=	0x00bf
_ST0	=	0x0095
_ST1	=	0x0096
_ST2	=	0x0097
_STLOAD	=	0x00ad
_SLEEPCMD	=	0x00be
_SLEEPSTA	=	0x009d
_CLKCONCMD	=	0x00c6
_CLKCONSTA	=	0x009e
_T1CC0L	=	0x00da
_T1CC0H	=	0x00db
_T1CC1L	=	0x00dc
_T1CC1H	=	0x00dd
_T1CC2L	=	0x00de
_T1CC2H	=	0x00df
_T1CNTL	=	0x00e2
_T1CNTH	=	0x00e3
_T1CTL	=	0x00e4
_T1CCTL0	=	0x00e5
_T1CCTL1	=	0x00e6
_T1CCTL2	=	0x00e7
_T1STAT	=	0x00af
_T2CTRL	=	0x0094
_T2EVTCFG	=	0x009c
_T2IRQF	=	0x00a1
_T2M0	=	0x00a2
_T2M1	=	0x00a3
_T2MOVF0	=	0x00a4
_T2MOVF1	=	0x00a5
_T2MOVF2	=	0x00a6
_T2IRQM	=	0x00a7
_T2MSEL	=	0x00c3
_T3CNT	=	0x00ca
_T3CTL	=	0x00cb
_T3CCTL0	=	0x00cc
_T3CC0	=	0x00cd
_T3CCTL1	=	0x00ce
_T3CC1	=	0x00cf
_T4CNT	=	0x00ea
_T4CTL	=	0x00eb
_T4CCTL0	=	0x00ec
_T4CC0	=	0x00ed
_T4CCTL1	=	0x00ee
_T4CC1	=	0x00ef
_TIMIF	=	0x00d8
_U0CSR	=	0x0086
_U0DBUF	=	0x00c1
_U0BAUD	=	0x00c2
_U0UCR	=	0x00c4
_U0GCR	=	0x00c5
_U1CSR	=	0x00f8
_U1DBUF	=	0x00f9
_U1BAUD	=	0x00fa
_U1UCR	=	0x00fb
_U1GCR	=	0x00fc
_WDCTL	=	0x00c9
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_7	=	0x0087
_P0_6	=	0x0086
_P0_5	=	0x0085
_P0_4	=	0x0084
_P0_3	=	0x0083
_P0_2	=	0x0082
_P0_1	=	0x0081
_P0_0	=	0x0080
_URX1IF	=	0x008f
_ADCIF	=	0x008d
_URX0IF	=	0x008b
_IT1	=	0x008a
_RFERRIF	=	0x0089
_IT0	=	0x0088
_P1_7	=	0x0097
_P1_6	=	0x0096
_P1_5	=	0x0095
_P1_4	=	0x0094
_P1_3	=	0x0093
_P1_2	=	0x0092
_P1_1	=	0x0091
_P1_0	=	0x0090
_ENCIF_1	=	0x0099
_ENCIF_0	=	0x0098
_P2_7	=	0x00a7
_P2_6	=	0x00a6
_P2_5	=	0x00a5
_P2_4	=	0x00a4
_P2_3	=	0x00a3
_P2_2	=	0x00a2
_P2_1	=	0x00a1
_P2_0	=	0x00a0
_EA	=	0x00af
_STIE	=	0x00ad
_ENCIE	=	0x00ac
_URX1IE	=	0x00ab
_URX0IE	=	0x00aa
_ADCIE	=	0x00a9
_RFERRIE	=	0x00a8
_P0IE	=	0x00bd
_T4IE	=	0x00bc
_T3IE	=	0x00bb
_T2IE	=	0x00ba
_T1IE	=	0x00b9
_DMAIE	=	0x00b8
_STIF	=	0x00c7
_P0IF	=	0x00c5
_T4IF	=	0x00c4
_T3IF	=	0x00c3
_T2IF	=	0x00c2
_T1IF	=	0x00c1
_DMAIF	=	0x00c0
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_ACC_7	=	0x00e7
_ACC_6	=	0x00e6
_ACC_5	=	0x00e5
_ACC_4	=	0x00e4
_ACC_3	=	0x00e3
_ACC_2	=	0x00e2
_ACC_1	=	0x00e1
_ACC_0	=	0x00e0
_WDTIF	=	0x00ec
_P1IF	=	0x00eb
_UTX1IF	=	0x00ea
_UTX0IF	=	0x00e9
_P2IF	=	0x00e8
_B_7	=	0x00f7
_B_6	=	0x00f6
_B_5	=	0x00f5
_B_4	=	0x00f4
_B_3	=	0x00f3
_B_2	=	0x00f2
_B_1	=	0x00f1
_B_0	=	0x00f0
_OVFIM	=	0x00de
_T4CH1IF	=	0x00dd
_T4CH0IF	=	0x00dc
_T4OVFIF	=	0x00db
_T3CH1IF	=	0x00da
_T3CH0IF	=	0x00d9
_T3OVFIF	=	0x00d8
_MODE	=	0x00ff
_RE	=	0x00fe
_SLAVE	=	0x00fd
_FE	=	0x00fc
_ERR	=	0x00fb
_RX_BYTE	=	0x00fa
_TX_BYTE	=	0x00f9
_ACTIVE	=	0x00f8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_MONMUX	=	0x61a6
_OPAMPMC	=	0x61a6
_I2CCFG	=	0x6230
_I2CSTAT	=	0x6231
_I2CDATA	=	0x6232
_I2CADDR	=	0x6233
_I2CWC	=	0x6234
_I2CIO	=	0x6235
_OBSSEL0	=	0x6243
_OBSSEL1	=	0x6244
_OBSSEL2	=	0x6245
_OBSSEL3	=	0x6246
_OBSSEL4	=	0x6247
_OBSSEL5	=	0x6248
_CHVER	=	0x6249
_CHIPID	=	0x624a
_TESTREG0	=	0x624b
_DBGDATA	=	0x6260
_SRCRC	=	0x6262
_BATTMON	=	0x6264
_IVCTRL	=	0x6265
_FCTL	=	0x6270
_FADDRL	=	0x6271
_FADDRH	=	0x6272
_FWDATA	=	0x6273
_CHIPINFO0	=	0x6276
_CHIPINFO1	=	0x6277
_IRCTL	=	0x6281
_CLD	=	0x6290
_XX_T1CCTL0	=	0x62a0
_XX_T1CCTL1	=	0x62a1
_XX_T1CCTL2	=	0x62a2
_T1CCTL3	=	0x62a3
_T1CCTL4	=	0x62a4
_XX_T1CC0L	=	0x62a6
_XX_T1CC0H	=	0x62a7
_XX_T1CC1L	=	0x62a8
_XX_T1CC1H	=	0x62a9
_XX_T1CC2L	=	0x62aa
_XX_T1CC2H	=	0x62ab
_T1CC3L	=	0x62ac
_T1CC3H	=	0x62ad
_T1CC4L	=	0x62ae
_T1CC4H	=	0x62af
_STCC	=	0x62b0
_STCS	=	0x62b1
_STCV0	=	0x62b2
_STCV1	=	0x62b3
_STCV2	=	0x62b4
_OPAMPC	=	0x62c0
_OPAMPS	=	0x62c1
_CMPCTL	=	0x62d0
_RFCORE_RAM	=	0x6000
_RXFIFO	=	0x6000
_TXFIFO	=	0x6080
_SRC_ADDR_TABLE	=	0x6100
_SRCRESMASK0	=	0x6160
_SRCRESMASK1	=	0x6161
_SRCRESMASK2	=	0x6162
_SRCRESINDEX	=	0x6163
_SRCEXTPENDEN0	=	0x6164
_SRCEXTPENDEN1	=	0x6165
_SRCEXTPENDEN2	=	0x6166
_SRCSHORTPENDEN0	=	0x6167
_SRCSHORTPENDEN1	=	0x6168
_SRCSHORTPENDEN2	=	0x6169
_EXT_ADDR0	=	0x616a
_EXT_ADDR1	=	0x616b
_EXT_ADDR2	=	0x616c
_EXT_ADDR3	=	0x616d
_EXT_ADDR4	=	0x616e
_EXT_ADDR5	=	0x616f
_EXT_ADDR6	=	0x6170
_EXT_ADDR7	=	0x6171
_PAN_ID0	=	0x6172
_PAN_ID1	=	0x6173
_SHORT_ADDR0	=	0x6174
_SHORT_ADDR1	=	0x6175
_FRMFILT0	=	0x6180
_FRMFILT1	=	0x6181
_SRCMATCH	=	0x6182
_SRCSHORTEN0	=	0x6183
_SRCSHORTEN1	=	0x6184
_SRCSHORTEN2	=	0x6185
_SRCEXTEN0	=	0x6186
_SRCEXTEN1	=	0x6187
_SRCEXTEN2	=	0x6188
_FRMCTRL0	=	0x6189
_FRMCTRL1	=	0x618a
_RXENABLE	=	0x618b
_RXMASKSET	=	0x618c
_RXMASKCLR	=	0x618d
_FREQTUNE	=	0x618e
_FREQCTRL	=	0x618f
_TXPOWER	=	0x6190
_TXCTRL	=	0x6191
_FSMSTAT0	=	0x6192
_FSMSTAT1	=	0x6193
_FIFOPCTRL	=	0x6194
_FSMCTRL	=	0x6195
_CCACTRL0	=	0x6196
_CCACTRL1	=	0x6197
_RSSI	=	0x6198
_RSSISTAT	=	0x6199
_RXFIRST	=	0x619a
_RXFIFOCNT	=	0x619b
_TXFIFOCNT	=	0x619c
_RXFIRST_PTR	=	0x619d
_RXLAST_PTR	=	0x619e
_RXP1_PTR	=	0x619f
_TXFIRST_PTR	=	0x61a1
_TXLAST_PTR	=	0x61a2
_RFIRQM0	=	0x61a3
_RFIRQM1	=	0x61a4
_RFERRM	=	0x61a5
_RFRND	=	0x61a7
_MDMCTRL0	=	0x61a8
_MDMCTRL1	=	0x61a9
_FREQEST	=	0x61aa
_RXCTRL	=	0x61ab
_FSCTRL	=	0x61ac
_FSCAL0	=	0x61ad
_FSCAL1	=	0x61ae
_FSCAL2	=	0x61af
_FSCAL3	=	0x61b0
_AGCCTRL0	=	0x61b1
_AGCCTRL1	=	0x61b2
_AGCCTRL2	=	0x61b3
_AGCCTRL3	=	0x61b4
_ADCTEST0	=	0x61b5
_ADCTEST1	=	0x61b6
_ADCTEST2	=	0x61b7
_MDMTEST0	=	0x61b8
_MDMTEST1	=	0x61b9
_DACTEST0	=	0x61ba
_DACTEST1	=	0x61bb
_DACTEST2	=	0x61bc
_ATEST	=	0x61bd
_PTEST0	=	0x61be
_PTEST1	=	0x61bf
_TXFILTCFG	=	0x61fa
_RFC_OBS_CTRL0	=	0x61eb
_RFC_OBS_CTRL1	=	0x61ec
_RFC_OBS_CTRL2	=	0x61ed
_CSPPROG0	=	0x61c0
_CSPPROG1	=	0x61c1
_CSPPROG2	=	0x61c2
_CSPPROG3	=	0x61c3
_CSPPROG4	=	0x61c4
_CSPPROG5	=	0x61c5
_CSPPROG6	=	0x61c6
_CSPPROG7	=	0x61c7
_CSPPROG8	=	0x61c8
_CSPPROG9	=	0x61c9
_CSPPROG10	=	0x61ca
_CSPPROG11	=	0x61cb
_CSPPROG12	=	0x61cc
_CSPPROG13	=	0x61cd
_CSPPROG14	=	0x61ce
_CSPPROG15	=	0x61cf
_CSPPROG16	=	0x61d0
_CSPPROG17	=	0x61d1
_CSPPROG18	=	0x61d2
_CSPPROG19	=	0x61d3
_CSPPROG20	=	0x61d4
_CSPPROG21	=	0x61d5
_CSPPROG22	=	0x61d6
_CSPPROG23	=	0x61d7
_CSPCTRL	=	0x61e0
_CSPSTAT	=	0x61e1
_CSPX	=	0x61e2
_CSPY	=	0x61e3
_CSPZ	=	0x61e4
_CSPT	=	0x61e5
_USBADDR	=	0x6200
_USBPOW	=	0x6201
_USBIIF	=	0x6202
_USBOIF	=	0x6204
_USBCIF	=	0x6206
_USBIIE	=	0x6207
_USBOIE	=	0x6209
_USBCIE	=	0x620b
_USBFRML	=	0x620c
_USBFRMH	=	0x620d
_USBINDEX	=	0x620e
_USBCTRL	=	0x620f
_USBMAXI	=	0x6210
_USBCS0	=	0x6211
_USBCSIL	=	0x6211
_USBCSIH	=	0x6212
_USBMAXO	=	0x6213
_USBCSOL	=	0x6214
_USBCSOH	=	0x6215
_USBCNT0	=	0x6216
_USBCNTL	=	0x6216
_USBCNTH	=	0x6217
_USBF0	=	0x6220
_USBF1	=	0x6222
_USBF2	=	0x6224
_USBF3	=	0x6226
_USBF4	=	0x6228
_USBF5	=	0x622a
_X_P0	=	0x7080
_X_U0CSR	=	0x7086
_X_P0IFG	=	0x7089
_X_P1IFG	=	0x708a
_X_P2IFG	=	0x708b
_X_PICTL	=	0x708c
_X_P1IEN	=	0x708d
_X_P0INP	=	0x708f
_X_P1	=	0x7090
_X_RFIRQF1	=	0x7091
_X_MPAGE	=	0x7093
_X__XPAGE	=	0x7093
_X_T2CTRL	=	0x7094
_X_ST0	=	0x7095
_X_ST1	=	0x7096
_X_ST2	=	0x7097
_X_T2EVTCFG	=	0x709c
_X_SLEEPSTA	=	0x709d
_X_CLKCONSTA	=	0x709e
_X_FMAP	=	0x709f
_X_PSBANK	=	0x709f
_X_P2	=	0x70a0
_X_T2IRQF	=	0x70a1
_X_T2M0	=	0x70a2
_X_T2M1	=	0x70a3
_X_T2MOVF0	=	0x70a4
_X_T2MOVF1	=	0x70a5
_X_T2MOVF2	=	0x70a6
_X_T2IRQM	=	0x70a7
_X_P0IEN	=	0x70ab
_X_P2IEN	=	0x70ac
_X_STLOAD	=	0x70ad
_X_PMUX	=	0x70ae
_X_T1STAT	=	0x70af
_X_ENCDI	=	0x70b1
_X_ENCDO	=	0x70b2
_X_ENCCS	=	0x70b3
_X_ADCCON1	=	0x70b4
_X_ADCCON2	=	0x70b5
_X_ADCCON3	=	0x70b6
_X_ADCL	=	0x70ba
_X_ADCH	=	0x70bb
_X_RNDL	=	0x70bc
_X_RNDH	=	0x70bd
_X_SLEEPCMD	=	0x70be
_X_RFERRF	=	0x70bf
_X_U0DBUF	=	0x70c1
_X_U0BAUD	=	0x70c2
_X_T2MSEL	=	0x70c3
_X_U0UCR	=	0x70c4
_X_U0GCR	=	0x70c5
_X_CLKCONCMD	=	0x70c6
_X_MEMCTR	=	0x70c7
_X_WDCTL	=	0x70c9
_X_T3CNT	=	0x70ca
_X_T3CTL	=	0x70cb
_X_T3CCTL0	=	0x70cc
_X_T3CC0	=	0x70cd
_X_T3CCTL1	=	0x70ce
_X_T3CC1	=	0x70cf
_X_DMAIRQ	=	0x70d1
_X_DMA1CFGL	=	0x70d2
_X_DMA1CFGH	=	0x70d3
_X_DMA0CFGL	=	0x70d4
_X_DMA0CFGH	=	0x70d5
_X_DMAARM	=	0x70d6
_X_DMAREQ	=	0x70d7
_X_TIMIF	=	0x70d8
_X_RFD	=	0x70d9
_X_T1CC0L	=	0x70da
_X_T1CC0H	=	0x70db
_X_T1CC1L	=	0x70dc
_X_T1CC1H	=	0x70dd
_X_T1CC2L	=	0x70de
_X_T1CC2H	=	0x70df
_X_RFST	=	0x70e1
_X_T1CNTL	=	0x70e2
_X_T1CNTH	=	0x70e3
_X_T1CTL	=	0x70e4
_X_T1CCTL0	=	0x70e5
_X_T1CCTL1	=	0x70e6
_X_T1CCTL2	=	0x70e7
_X_RFIRQF0	=	0x70e9
_X_T4CNT	=	0x70ea
_X_T4CTL	=	0x70eb
_X_T4CCTL0	=	0x70ec
_X_T4CC0	=	0x70ed
_X_T4CCTL1	=	0x70ee
_X_T4CC1	=	0x70ef
_X_PERCFG	=	0x70f1
_X_APCFG	=	0x70f2
_X_P0SEL	=	0x70f3
_X_P1SEL	=	0x70f4
_X_P2SEL	=	0x70f5
_X_P1INP	=	0x70f6
_X_P2INP	=	0x70f7
_X_U1CSR	=	0x70f8
_X_U1DBUF	=	0x70f9
_X_U1BAUD	=	0x70fa
_X_U1UCR	=	0x70fb
_X_U1GCR	=	0x70fc
_X_P0DIR	=	0x70fd
_X_P1DIR	=	0x70fe
_X_P2DIR	=	0x70ff
_X_INFOPAGE	=	0x7800
_X_IEEE_ADDR	=	0x780c
__rpl_parents_mem:
	.ds 36
_instance_table::
	.ds 237
_default_instance::
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_rpl_parents_struct:
	.ds 10
_rpl_parents::
	.ds 3
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area BANK1   (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_print_neighbor_list'
;------------------------------------------------------------
;curr_dio_interval         Allocated to stack - sp -11
;curr_rank                 Allocated to stack - sp -9
;p                         Allocated to stack - sp -7
;now                       Allocated to stack - sp -4
;nbr                       Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -22
;sloc1                     Allocated to stack - sp -19
;sloc2                     Allocated to stack - sp -17
;sloc3                     Allocated to stack - sp -15
;sloc4                     Allocated to stack - sp -13
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:86: rpl_print_neighbor_list()
;	-----------------------------------------
;	 function rpl_print_neighbor_list
;	-----------------------------------------
_rpl_print_neighbor_list:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,sp
	add	a,#0x17
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:88: if(default_instance != NULL && default_instance->current_dag != NULL &&
	mov	dptr,#_default_instance
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00139$
	ljmp	00109$
00139$:
	mov	a,#0x0A
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jnz	00140$
	ljmp	00109$
00140$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:89: default_instance->of != NULL && default_instance->of->calculate_rank != NULL) {
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x07
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00141$
	ljmp	00109$
00141$:
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	a,#0x0C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	a,r2
	orl	a,r3
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00142$
	ljmp	00109$
00142$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:90: int curr_dio_interval = default_instance->dio_intcurrent;
	mov	a,#0x8A
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rpl/rpl-dag.c:91: int curr_rank = default_instance->current_dag->rank;
	mov	a,#0x1A
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:92: rpl_parent_t *p = nbr_table_head(rpl_parents);
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	mov	r0,#_nbr_table_head
	mov	r1,#(_nbr_table_head >> 8)
	mov	r2,#(_nbr_table_head >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r6,b
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
;	/opt/contiki/core/net/rpl/rpl-dag.c:93: clock_time_t now = clock_time();
	mov	r0,#_clock_time
	mov	r1,#(_clock_time >> 8)
	mov	r2,#(_clock_time >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:95: printf("RPL: rank %u dioint %u, %u nbr(s)\n", curr_rank, curr_dio_interval, uip_ds6_nbr_num());
	mov	r0,#_uip_ds6_nbr_num
	mov	r1,#(_uip_ds6_nbr_num >> 8)
	mov	r2,#(_uip_ds6_nbr_num >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r7,dph
	push	ar2
	push	ar7
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:96: while(p != NULL) {
00101$:
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00143$
	ljmp	00103$
00143$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:97: uip_ds6_nbr_t *nbr = rpl_get_nbr(p);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_get_nbr
	mov	r1,#(_rpl_get_nbr >> 8)
	mov	r2,#(_rpl_get_nbr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r5,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:103: (unsigned)((now - p->last_tx_time) / (60 * CLOCK_SECOND)));
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	subb	a,r5
	mov	r5,a
	clr	a
	push	acc
	mov	a,#0x1E
	push	acc
;	/opt/contiki/core/net/rpl/rpl-dag.c:102: p == default_instance->current_dag->preferred_parent ? '*' : ' ',
	mov	dpl,r2
	mov	dph,r5
	lcall	__divuint
	xch	a,r0
	mov	a,sp
	add	a,#0xf1
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	mov	dptr,#_default_instance
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0A
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x17
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	push	ar2
	push	ar4
	push	ar6
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00145$
	sjmp	00111$
00145$:
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	@r0,#0x2A
	inc	r0
	mov	@r0,#0x00
	sjmp	00112$
00111$:
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	@r0,#0x20
	inc	r0
	mov	@r0,#0x00
00112$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:101: default_instance->of->calculate_rank(p, 0),
	mov	dptr,#_default_instance
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x07
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x0C
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar6
	push	ar3
	push	ar2
	clr	a
	push	acc
	push	acc
	push	ar2
	push	ar3
	push	ar6
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xe5
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
;	/opt/contiki/core/net/rpl/rpl-dag.c:100: p->rank, nbr ? nbr->link_metric : 0,
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00113$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x23
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	sjmp	00114$
00113$:
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00114$:
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:99: nbr_table_get_lladdr(rpl_parents, p)->u8[7],
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar3
	push	ar4
	push	ar6
	mov	dpl,r2
	mov	dph,r5
	mov	b,r7
	mov	r0,#_nbr_table_get_lladdr
	mov	r1,#(_nbr_table_get_lladdr >> 8)
	mov	r2,#(_nbr_table_get_lladdr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
;	/opt/contiki/core/net/rpl/rpl-dag.c:98: printf("RPL: nbr %3u %5u, %5u => %5u %c (last tx %u min ago)\n",
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf1
;	/opt/contiki/core/net/rpl/rpl-dag.c:104: p = nbr_table_next(rpl_parents, p);
	mov	sp,a
	add	a,#0xf9
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar3
	push	ar4
	push	ar6
	mov	dpl,r2
	mov	dph,r5
	mov	b,r7
	mov	r0,#_nbr_table_next
	mov	r1,#(_nbr_table_next >> 8)
	mov	r2,#(_nbr_table_next >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00101$
00103$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:106: printf("RPL: end of list\n");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00109$:
	mov	a,sp
	add	a,#0xE9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_get_nbr'
;------------------------------------------------------------
;parent                    Allocated to registers r5 r6 r7 
;lladdr                    Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:111: rpl_get_nbr(rpl_parent_t *parent)
;	-----------------------------------------
;	 function rpl_get_nbr
;	-----------------------------------------
_rpl_get_nbr:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:114: lladdr = nbr_table_get_lladdr(rpl_parents, parent);
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_nbr_table_get_lladdr
	mov	r1,#(_nbr_table_get_lladdr >> 8)
	mov	r2,#(_nbr_table_get_lladdr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:115: if(lladdr != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:116: return nbr_table_get_from_lladdr(ds6_neighbors, lladdr);
	mov	dptr,#_ds6_neighbors
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_nbr_table_get_from_lladdr
	mov	r1,#(_nbr_table_get_from_lladdr >> 8)
	mov	r2,#(_nbr_table_get_from_lladdr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	sjmp	00104$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:118: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00104$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nbr_callback'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:123: nbr_callback(void *ptr)
;	-----------------------------------------
;	 function nbr_callback
;	-----------------------------------------
_nbr_callback:
;	/opt/contiki/core/net/rpl/rpl-dag.c:125: rpl_remove_parent(ptr);
	mov	r0,#_rpl_remove_parent
	mov	r1,#(_rpl_remove_parent >> 8)
	mov	r2,#(_rpl_remove_parent >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_dag_init'
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:129: rpl_dag_init(void)
;	-----------------------------------------
;	 function rpl_dag_init
;	-----------------------------------------
_rpl_dag_init:
;	/opt/contiki/core/net/rpl/rpl-dag.c:131: nbr_table_register(rpl_parents, (nbr_table_callback *)nbr_callback);
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#_nbr_callback
	push	acc
	mov	a,#(_nbr_callback >> 8)
	push	acc
	mov	a,#(_nbr_callback >> 16)
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_nbr_table_register
	mov	r1,#(_nbr_table_register >> 8)
	mov	r2,#(_nbr_table_register >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_get_parent'
;------------------------------------------------------------
;addr                      Allocated to registers r5 r6 r7 
;p                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:135: rpl_get_parent(uip_lladdr_t *addr)
;	-----------------------------------------
;	 function rpl_get_parent
;	-----------------------------------------
_rpl_get_parent:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:137: rpl_parent_t *p = nbr_table_get_from_lladdr(rpl_parents, (linkaddr_t *)addr);
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_nbr_table_get_from_lladdr
	mov	r1,#(_nbr_table_get_from_lladdr >> 8)
	mov	r2,#(_nbr_table_get_from_lladdr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:138: return p;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_get_parent_rank'
;------------------------------------------------------------
;addr                      Allocated to registers r5 r6 r7 
;p                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:142: rpl_get_parent_rank(uip_lladdr_t *addr)
;	-----------------------------------------
;	 function rpl_get_parent_rank
;	-----------------------------------------
_rpl_get_parent_rank:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:144: rpl_parent_t *p = nbr_table_get_from_lladdr(rpl_parents, (linkaddr_t *)addr);
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_nbr_table_get_from_lladdr
	mov	r1,#(_nbr_table_get_from_lladdr >> 8)
	mov	r2,#(_nbr_table_get_from_lladdr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	/opt/contiki/core/net/rpl/rpl-dag.c:145: if(p != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:146: return p->rank;
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	sjmp	00104$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:148: return 0;
	mov	dptr,#0x0000
00104$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_get_parent_link_metric'
;------------------------------------------------------------
;addr                      Allocated to registers r5 r6 r7 
;nbr                       Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:153: rpl_get_parent_link_metric(const uip_lladdr_t *addr)
;	-----------------------------------------
;	 function rpl_get_parent_link_metric
;	-----------------------------------------
_rpl_get_parent_link_metric:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:156: nbr = nbr_table_get_from_lladdr(ds6_neighbors, (const linkaddr_t *)addr);
	mov	dptr,#_ds6_neighbors
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_nbr_table_get_from_lladdr
	mov	r1,#(_nbr_table_get_from_lladdr >> 8)
	mov	r2,#(_nbr_table_get_from_lladdr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	/opt/contiki/core/net/rpl/rpl-dag.c:158: if(nbr != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:159: return nbr->link_metric;
	mov	a,#0x23
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	sjmp	00104$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:161: return 0;
	mov	dptr,#0x0000
00104$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_get_parent_ipaddr'
;------------------------------------------------------------
;p                         Allocated to registers r5 r6 r7 
;lladdr                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:166: rpl_get_parent_ipaddr(rpl_parent_t *p)
;	-----------------------------------------
;	 function rpl_get_parent_ipaddr
;	-----------------------------------------
_rpl_get_parent_ipaddr:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:168: linkaddr_t *lladdr = nbr_table_get_lladdr(rpl_parents, p);
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_nbr_table_get_lladdr
	mov	r1,#(_nbr_table_get_lladdr >> 8)
	mov	r2,#(_nbr_table_get_lladdr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:169: return uip_ds6_nbr_ipaddr_from_lladdr((uip_lladdr_t *)lladdr);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_uip_ds6_nbr_ipaddr_from_lladdr
	mov	r1,#(_uip_ds6_nbr_ipaddr_from_lladdr >> 8)
	mov	r2,#(_uip_ds6_nbr_ipaddr_from_lladdr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_set_preferred_parent'
;------------------------------------------------------------
;p                         Allocated to stack - sp -8
;dag                       Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:173: rpl_set_preferred_parent(rpl_dag_t *dag, rpl_parent_t *p)
;	-----------------------------------------
;	 function rpl_set_preferred_parent
;	-----------------------------------------
_rpl_set_preferred_parent:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:175: if(dag != NULL && dag->preferred_parent != p) {
	mov	a,r5
	orl	a,r6
	jnz	00112$
	ljmp	00104$
00112$:
	mov	a,#0x17
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00113$
	ljmp	00104$
00113$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:192: nbr_table_unlock(rpl_parents, dag->preferred_parent);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_nbr_table_unlock
	mov	r1,#(_nbr_table_unlock >> 8)
	mov	r2,#(_nbr_table_unlock >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:193: nbr_table_lock(rpl_parents, p);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_nbr_table_lock
	mov	r1,#(_nbr_table_lock >> 8)
	mov	r2,#(_nbr_table_lock >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:194: dag->preferred_parent = p;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
00104$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lollipop_greater_than'
;------------------------------------------------------------
;b                         Allocated to stack - sp -4
;a                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:201: lollipop_greater_than(int a, int b)
;	-----------------------------------------
;	 function lollipop_greater_than
;	-----------------------------------------
_lollipop_greater_than:
	mov	r6,dpl
	mov	r7,dph
;	/opt/contiki/core/net/rpl/rpl-dag.c:204: if(a > RPL_LOLLIPOP_CIRCULAR_REGION && b <= RPL_LOLLIPOP_CIRCULAR_REGION) {
	clr	c
	mov	a,#0x7F
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,#0x7F
	subb	a,@r0
	mov	a,#(0x00 ^ 0x80)
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:205: return (RPL_LOLLIPOP_MAX_VALUE + 1 + b - a) > RPL_LOLLIPOP_SEQUENCE_WINDOWS;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar4,@r0
	mov	a,#0x01
	inc	r0
	add	a,@r0
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r6
	mov	r4,a
	mov	a,r5
	subb	a,r7
	mov	r5,a
	clr	c
	mov	a,#0x10
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	sjmp	00104$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:209: return (a > b && (a - b) < RPL_LOLLIPOP_SEQUENCE_WINDOWS) ||
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r4,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,#0x10
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00107$
00111$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:210: (a < b && (b - a) > (RPL_LOLLIPOP_CIRCULAR_REGION + 1-
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	mov	r7,a
	clr	c
	mov	a,#0x70
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00107$
00106$:
	mov	r7,#0x00
	sjmp	00108$
00107$:
	mov	r7,#0x01
00108$:
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
00104$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remove_parents'
;------------------------------------------------------------
;minimum_rank              Allocated to stack - sp -10
;dag                       Allocated to stack - sp -5
;p                         Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:216: remove_parents(rpl_dag_t *dag, rpl_rank_t minimum_rank)
;	-----------------------------------------
;	 function remove_parents
;	-----------------------------------------
_remove_parents:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:223: p = nbr_table_head(rpl_parents);
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_nbr_table_head
	mov	r1,#(_nbr_table_head >> 8)
	mov	r2,#(_nbr_table_head >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:224: while(p != NULL) {
00104$:
	mov	a,r2
	orl	a,r3
	jnz	00121$
	ljmp	00107$
00121$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:225: if(dag == p->dag && p->rank >= minimum_rank) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00123$
	sjmp	00102$
00123$:
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	clr	c
	mov	a,r5
	subb	a,@r0
	mov	a,r6
	inc	r0
	subb	a,@r0
	jc	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:226: rpl_remove_parent(p);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_rpl_remove_parent
	mov	r1,#(_rpl_remove_parent >> 8)
	mov	r2,#(_rpl_remove_parent >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:228: p = nbr_table_next(rpl_parents, p);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_nbr_table_next
	mov	r1,#(_nbr_table_next >> 8)
	mov	r2,#(_nbr_table_next >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	ljmp	00104$
00107$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nullify_parents'
;------------------------------------------------------------
;minimum_rank              Allocated to stack - sp -10
;dag                       Allocated to stack - sp -5
;p                         Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:233: nullify_parents(rpl_dag_t *dag, rpl_rank_t minimum_rank)
;	-----------------------------------------
;	 function nullify_parents
;	-----------------------------------------
_nullify_parents:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:240: p = nbr_table_head(rpl_parents);
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_nbr_table_head
	mov	r1,#(_nbr_table_head >> 8)
	mov	r2,#(_nbr_table_head >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:241: while(p != NULL) {
00104$:
	mov	a,r2
	orl	a,r3
	jnz	00121$
	ljmp	00107$
00121$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:242: if(dag == p->dag && p->rank >= minimum_rank) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00123$
	sjmp	00102$
00123$:
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	clr	c
	mov	a,r5
	subb	a,@r0
	mov	a,r6
	inc	r0
	subb	a,@r0
	jc	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:243: rpl_nullify_parent(p);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_rpl_nullify_parent
	mov	r1,#(_rpl_nullify_parent >> 8)
	mov	r2,#(_rpl_nullify_parent >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:245: p = nbr_table_next(rpl_parents, p);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_nbr_table_next
	mov	r1,#(_nbr_table_next >> 8)
	mov	r2,#(_nbr_table_next >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	ljmp	00104$
00107$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'should_send_dao'
;------------------------------------------------------------
;dio                       Allocated to stack - sp -5
;p                         Allocated to stack - sp -8
;instance                  Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:250: should_send_dao(rpl_instance_t *instance, rpl_dio_t *dio, rpl_parent_t *p)
;	-----------------------------------------
;	 function should_send_dao
;	-----------------------------------------
_should_send_dao:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:253: if(instance->mop == RPL_MOP_NO_DOWNWARD_ROUTES) {
	mov	a,#0x85
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:254: return 0;
	mov	dptr,#0x0000
	ljmp	00103$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:257: return p == instance->current_dag->preferred_parent &&
	mov	a,#0x0A
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x17
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00116$
	sjmp	00105$
00116$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:258: (lollipop_greater_than(dio->dtsn, p->dtsn));
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,#0x19
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	mov	r6,#0x00
	push	ar5
	push	ar7
	mov	dpl,r3
	mov	dph,r6
	mov	r0,#_lollipop_greater_than
	mov	r1,#(_lollipop_greater_than >> 8)
	mov	r2,#(_lollipop_greater_than >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00106$
00105$:
	mov	r7,#0x00
	sjmp	00107$
00106$:
	mov	r7,#0x01
00107$:
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
00103$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'acceptable_rank'
;------------------------------------------------------------
;rank                      Allocated to stack - sp -11
;dag                       Allocated to stack - sp -6
;sloc0                     Allocated to stack - sp -3
;sloc1                     Allocated to stack - sp -1
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:262: acceptable_rank(rpl_dag_t *dag, rpl_rank_t rank)
;	-----------------------------------------
;	 function acceptable_rank
;	-----------------------------------------
_acceptable_rank:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
;	/opt/contiki/core/net/rpl/rpl-dag.c:264: return rank != INFINITE_RANK &&
	mov	sp,a
	add	a,#0xf5
	mov	r0,a
	clr	a
	cjne	@r0,#0xFF,00116$
	inc	r0
	cjne	@r0,#0xFF,00116$
	inc	a
00116$:
	jz	00118$
	ljmp	00103$
00118$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:265: ((dag->instance->max_rankinc == 0) ||
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x8D
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x00,00119$
	inc	r0
	cjne	@r0,#0x00,00119$
	ljmp	00104$
00119$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:266: DAG_RANK(rank, dag->instance) <= DAG_RANK(dag->min_rank + dag->instance->max_rankinc, dag->instance));
	mov	a,#0x8F
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__divuint
	xch	a,r0
	mov	a,sp
	add	a,#0xfb
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x10
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	push	ar2
	push	ar3
	mov	dpl,r5
	mov	dph,r6
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	r0,sp
	dec	r0
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	jnc	00104$
00103$:
	mov	r7,#0x00
	sjmp	00105$
00104$:
	mov	r7,#0x01
00105$:
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_dag'
;------------------------------------------------------------
;dag_id                    Allocated to stack - sp -12
;instance_id               Allocated to registers r7 
;instance                  Allocated to registers r2 r3 r4 
;dag                       Allocated to stack - sp -4
;i                         Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -6
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:270: get_dag(uint8_t instance_id, uip_ipaddr_t *dag_id)
;	-----------------------------------------
;	 function get_dag
;	-----------------------------------------
_get_dag:
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:276: instance = rpl_get_instance(instance_id);
	mov	r0,#_rpl_get_instance
	mov	r1,#(_rpl_get_instance >> 8)
	mov	r2,#(_rpl_get_instance >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	/opt/contiki/core/net/rpl/rpl-dag.c:277: if(instance == NULL) {
	mov	a,r5
	orl	a,r6
;	/opt/contiki/core/net/rpl/rpl-dag.c:278: return NULL;
	jnz	00114$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00109$
;	/opt/contiki/core/net/rpl/rpl-dag.c:281: for(i = 0; i < RPL_MAX_DAG_PER_INSTANCE; ++i) {
00114$:
	mov	a,#0x0D
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00107$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:282: dag = &instance->dag_table[i];
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	add	a,r5
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:283: if(dag->used && uip_ipaddr_cmp(&dag->dag_id, dag_id)) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x15
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00108$
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	push	ar5
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_memcmp
	mov	r1,#(_memcmp >> 8)
	mov	r2,#(_memcmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00108$
;	/opt/contiki/core/net/rpl/rpl-dag.c:284: return dag;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	sjmp	00109$
00108$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:281: for(i = 0; i < RPL_MAX_DAG_PER_INSTANCE; ++i) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x39
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	inc	@r0
	cjne	@r0,#0x00,00129$
	inc	r0
	inc	@r0
00129$:
	mov	r0,sp
	dec	r0
	clr	c
	mov	a,@r0
	subb	a,#0x02
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00130$
	ljmp	00107$
00130$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:288: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00109$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_set_root'
;------------------------------------------------------------
;dag_id                    Allocated to stack - sp -23
;instance_id               Allocated to stack - sp -17
;dag                       Allocated to stack - sp -8
;instance                  Allocated to stack - sp -5
;version                   Allocated to stack - sp -2
;i                         Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -16
;sloc1                     Allocated to stack - sp -13
;sloc2                     Allocated to stack - sp -11
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:292: rpl_set_root(uint8_t instance_id, uip_ipaddr_t *dag_id)
;	-----------------------------------------
;	 function rpl_set_root
;	-----------------------------------------
_rpl_set_root:
	push	dpl
	mov	a,sp
	add	a,#0x11
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:299: version = RPL_LOLLIPOP_INIT;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,#0xF0
;	/opt/contiki/core/net/rpl/rpl-dag.c:300: instance = rpl_get_instance(instance_id);
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	mov	r0,#_rpl_get_instance
	mov	r1,#(_rpl_get_instance >> 8)
	mov	r2,#(_rpl_get_instance >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	/opt/contiki/core/net/rpl/rpl-dag.c:301: if(instance != NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00153$
	ljmp	00115$
00153$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:302: for(i = 0; i < RPL_MAX_DAG_PER_INSTANCE; ++i) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x0D
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar3,@r0
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00121$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:303: dag = &instance->dag_table[i];
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	add	a,r5
	mov	r7,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r6,a
	mov	ar2,r3
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar2
;	/opt/contiki/core/net/rpl/rpl-dag.c:304: if(dag->used) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x15
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00154$
	ljmp	00122$
00154$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:305: if(uip_ipaddr_cmp(&dag->dag_id, dag_id)) {
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,sp
	add	a,#0xf5
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar4
	push	ar3
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcmp
	mov	r1,#(_memcmp >> 8)
	mov	r2,#(_memcmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00108$
;	/opt/contiki/core/net/rpl/rpl-dag.c:306: version = dag->version;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	r0,sp
	dec	r0
	dec	r0
	lcall	__gptrget
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:307: RPL_LOLLIPOP_INCREMENT(version);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	add	a,#0xff - 0x7F
	jnc	00102$
	mov	r0,sp
	dec	r0
	dec	r0
	inc	@r0
	sjmp	00108$
00102$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	a
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x7F
	anl	a,r7
	mov	@r0,a
00108$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:309: if(dag == dag->instance->current_dag) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x0A
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00158$
	sjmp	00110$
00158$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:311: dag->instance->current_dag = NULL;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00110$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:315: rpl_free_dag(dag);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar5
	push	ar4
	push	ar3
	mov	r0,#_rpl_free_dag
	mov	r1,#(_rpl_free_dag >> 8)
	mov	r2,#(_rpl_free_dag >> 16)
	lcall	__sdcc_banked_call
	pop	ar3
	pop	ar4
	pop	ar5
00122$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:302: for(i = 0; i < RPL_MAX_DAG_PER_INSTANCE; ++i) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x39
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	inc	@r0
	cjne	@r0,#0x00,00159$
	inc	r0
	inc	@r0
00159$:
	mov	r0,sp
	dec	r0
	clr	c
	mov	a,@r0
	subb	a,#0x02
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00160$
	ljmp	00121$
00160$:
00115$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:320: dag = rpl_alloc_dag(instance_id, dag_id);
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	mov	r0,#_rpl_alloc_dag
	mov	r1,#(_rpl_alloc_dag >> 8)
	mov	r2,#(_rpl_alloc_dag >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:321: if(dag == NULL) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	/opt/contiki/core/net/rpl/rpl-dag.c:323: return NULL;
	jnz	00117$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00123$
00117$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:326: instance = dag->instance;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:328: dag->version = version;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:329: dag->joined = 1;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x16
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:330: dag->grounded = RPL_GROUNDED;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x13
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:331: dag->preference = RPL_PREFERENCE;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:332: instance->mop = RPL_MOP_DEFAULT;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x85
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:333: instance->of = &RPL_OF;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,#_rpl_mrhof
	lcall	__gptrput
	inc	dptr
	mov	a,#(_rpl_mrhof >> 8)
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:334: rpl_set_preferred_parent(dag, NULL);
	push	ar7
	push	ar6
	push	ar2
	push	acc
	push	acc
	push	acc
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_set_preferred_parent
	mov	r1,#(_rpl_set_preferred_parent >> 8)
	mov	r2,#(_rpl_set_preferred_parent >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:336: memcpy(&dag->dag_id, dag_id, sizeof(dag->dag_id));
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,sp
	add	a,#0xf5
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	push	ar7
	push	ar6
	push	ar2
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:338: instance->dio_intdoubl = RPL_DIO_INTERVAL_DOUBLINGS;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x86
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x08
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:339: instance->dio_intmin = RPL_DIO_INTERVAL_MIN;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x87
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x0C
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:342: instance->dio_intcurrent = RPL_DIO_INTERVAL_MIN +
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x8A
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x14
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:344: instance->dio_redundancy = RPL_DIO_REDUNDANCY;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x88
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x0A
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:345: instance->max_rankinc = RPL_MAX_RANKINC;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x8D
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x07
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:346: instance->min_hoprankinc = RPL_MIN_HOPRANKINC;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf5
	mov	r1,a
	mov	a,#0x8F
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	inc	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:347: instance->default_lifetime = RPL_DEFAULT_LIFETIME;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x89
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0xFF
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:348: instance->lifetime_unit = RPL_DEFAULT_LIFETIME_UNIT;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x91
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:350: dag->rank = ROOT_RANK(instance);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xf0
	mov	r1,a
	mov	a,#0x1A
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:352: if(instance->current_dag != dag && instance->current_dag != NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x0A
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00119$
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00119$
;	/opt/contiki/core/net/rpl/rpl-dag.c:354: rpl_remove_routes(instance->current_dag);
	push	ar2
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_rpl_remove_routes
	mov	r1,#(_rpl_remove_routes >> 8)
	mov	r2,#(_rpl_remove_routes >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:356: instance->current_dag->joined = 0;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x16
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:372: return dag;
	pop	ar7
	pop	ar6
	pop	ar2
;	/opt/contiki/core/net/rpl/rpl-dag.c:356: instance->current_dag->joined = 0;
00119$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:359: instance->current_dag = dag;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:360: instance->dtsn_out = RPL_LOLLIPOP_INIT;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x84
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0xF0
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:361: instance->of->update_metric_container(instance);
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x0F
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar7
	push	ar6
	push	ar2
	push	ar2
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:362: default_instance = instance;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dptr,#_default_instance
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:370: rpl_reset_dio_timer(instance);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_reset_dio_timer
	mov	r1,#(_rpl_reset_dio_timer >> 8)
	mov	r2,#(_rpl_reset_dio_timer >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl-dag.c:372: return dag;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00123$:
	xch	a,r0
	mov	a,sp
	add	a,#0xEE
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_repair_root'
;------------------------------------------------------------
;instance_id               Allocated to registers r7 
;instance                  Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -4
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:376: rpl_repair_root(uint8_t instance_id)
;	-----------------------------------------
;	 function rpl_repair_root
;	-----------------------------------------
_rpl_repair_root:
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:380: instance = rpl_get_instance(instance_id);
	mov	r0,#_rpl_get_instance
	mov	r1,#(_rpl_get_instance >> 8)
	mov	r2,#(_rpl_get_instance >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:381: if(instance == NULL ||
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00101$
;	/opt/contiki/core/net/rpl/rpl-dag.c:382: instance->current_dag->rank != ROOT_RANK(instance)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0A
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x1A
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x8F
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00128$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00128$
	sjmp	00107$
00128$:
00101$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:384: return 0;
	mov	dptr,#0x0000
	ljmp	00116$
;	/opt/contiki/core/net/rpl/rpl-dag.c:388: RPL_LOLLIPOP_INCREMENT(instance->current_dag->version);
00107$:
	mov	a,#0x12
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r4,a
	add	a,#0xff - 0x7F
	jnc	00105$
	mov	a,r4
	inc	a
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	sjmp	00108$
00105$:
	mov	a,r4
	inc	a
	anl	a,#0x7F
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
00108$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:389: RPL_LOLLIPOP_INCREMENT(instance->dtsn_out);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x84
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r4,a
	add	a,#0xff - 0x7F
	jnc	00111$
	mov	a,r4
	inc	a
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	sjmp	00114$
00111$:
	mov	a,r4
	inc	a
	anl	a,#0x7F
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
00114$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:391: rpl_reset_dio_timer(instance);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_reset_dio_timer
	mov	r1,#(_rpl_reset_dio_timer >> 8)
	mov	r2,#(_rpl_reset_dio_timer >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl-dag.c:392: return 1;
	mov	dptr,#0x0001
00116$:
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_ip_from_prefix'
;------------------------------------------------------------
;prefix                    Allocated to stack - sp -10
;ipaddr                    Allocated to stack - sp -4
;sloc0                     Allocated to stack - sp -1
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:396: set_ip_from_prefix(uip_ipaddr_t *ipaddr, rpl_prefix_t *prefix)
;	-----------------------------------------
;	 function set_ip_from_prefix
;	-----------------------------------------
_set_ip_from_prefix:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:398: memset(ipaddr, 0, sizeof(uip_ipaddr_t));
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:399: memcpy(ipaddr, &prefix->prefix, (prefix->length + 7) / 8);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x14
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r7
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r7
	lcall	__divsint
	xch	a,r0
	mov	a,sp
	add	a,#0xfa
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,sp
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:400: uip_ds6_set_addr_iid(ipaddr, &uip_lladdr);
	mov	a,#_uip_lladdr
	push	acc
	mov	a,#(_uip_lladdr >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_ds6_set_addr_iid
	mov	r1,#(_uip_ds6_set_addr_iid >> 8)
	mov	r2,#(_uip_ds6_set_addr_iid >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_prefix'
;------------------------------------------------------------
;new_prefix                Allocated to stack - sp -29
;last_prefix               Allocated to stack - sp -23
;ipaddr                    Allocated to stack - sp -15
;rep                       Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - sp -20
;sloc1                     Allocated to stack - sp +2
;sloc2                     Allocated to stack - sp -17
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:404: check_prefix(rpl_prefix_t *last_prefix, rpl_prefix_t *new_prefix)
;	-----------------------------------------
;	 function check_prefix
;	-----------------------------------------
_check_prefix:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x15
;	/opt/contiki/core/net/rpl/rpl-dag.c:409: if(last_prefix != NULL && new_prefix != NULL &&
	mov	sp,a
	add	a,#0xe9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00144$
	ljmp	00102$
00144$:
	mov	a,sp
	add	a,#0xe3
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00145$
	ljmp	00102$
00145$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:410: last_prefix->length == new_prefix->length &&
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xe3
	mov	r0,a
	mov	a,sp
	add	a,#0xec
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	a,r2
	cjne	a,ar7,00146$
	sjmp	00147$
00146$:
	ljmp	00102$
00147$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:411: uip_ipaddr_prefixcmp(&last_prefix->prefix, &new_prefix->prefix, new_prefix->length) &&
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r4,a
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_memcmp
	mov	r1,#(_memcmp >> 8)
	mov	r2,#(_memcmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,r6
	orl	a,r7
	jnz	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:412: last_prefix->flags == new_prefix->flags) {
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,#0x15
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x15
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	a,r5
	cjne	a,ar4,00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:414: return;
	ljmp	00115$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:417: if(last_prefix != NULL) {
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00110$
;	/opt/contiki/core/net/rpl/rpl-dag.c:418: set_ip_from_prefix(&ipaddr, last_prefix);
	mov	a,sp
	add	a,#0xF1
	mov	r7,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	r0,#_set_ip_from_prefix
	mov	r1,#(_set_ip_from_prefix >> 8)
	mov	r2,#(_set_ip_from_prefix >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:419: rep = uip_ds6_addr_lookup(&ipaddr);
	mov	r6,#0x00
	mov	r5,#0x40
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	r0,#_uip_ds6_addr_lookup
	mov	r1,#(_uip_ds6_addr_lookup >> 8)
	mov	r2,#(_uip_ds6_addr_lookup >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	/opt/contiki/core/net/rpl/rpl-dag.c:420: if(rep != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00110$
;	/opt/contiki/core/net/rpl/rpl-dag.c:424: uip_ds6_addr_rm(rep);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_uip_ds6_addr_rm
	mov	r1,#(_uip_ds6_addr_rm >> 8)
	mov	r2,#(_uip_ds6_addr_rm >> 16)
	lcall	__sdcc_banked_call
00110$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:428: if(new_prefix != NULL) {
	mov	a,sp
	add	a,#0xe3
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00153$
	ljmp	00115$
00153$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:429: set_ip_from_prefix(&ipaddr, new_prefix);
	mov	a,sp
	add	a,#0xF1
	mov	r7,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	r0,#_set_ip_from_prefix
	mov	r1,#(_set_ip_from_prefix >> 8)
	mov	r2,#(_set_ip_from_prefix >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:430: if(uip_ds6_addr_lookup(&ipaddr) == NULL) {
	mov	ar6,r7
	mov	r5,#0x00
	mov	r4,#0x40
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	push	ar7
	mov	r0,#_uip_ds6_addr_lookup
	mov	r1,#(_uip_ds6_addr_lookup >> 8)
	mov	r2,#(_uip_ds6_addr_lookup >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	pop	ar7
	mov	a,r4
	orl	a,r5
;	/opt/contiki/core/net/rpl/rpl-dag.c:434: uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);
	jnz	00115$
	mov	r6,a
	mov	r5,#0x40
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	r0,#_uip_ds6_addr_add
	mov	r1,#(_uip_ds6_addr_add >> 8)
	mov	r2,#(_uip_ds6_addr_add >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00115$:
	mov	a,sp
	add	a,#0xE8
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_set_prefix'
;------------------------------------------------------------
;prefix                    Allocated to stack - sp -37
;len                       Allocated to stack - sp -39
;dag                       Allocated to registers r5 r6 r7 
;last_prefix               Allocated to stack - sp -21
;last_len                  Allocated to stack - sp -25
;sloc0                     Allocated to stack - sp -31
;sloc1                     Allocated to stack - sp -24
;sloc2                     Allocated to stack - sp -25
;sloc3                     Allocated to stack - sp -28
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:440: rpl_set_prefix(rpl_dag_t *dag, uip_ipaddr_t *prefix, unsigned len)
;	-----------------------------------------
;	 function rpl_set_prefix
;	-----------------------------------------
_rpl_set_prefix:
	mov	a,sp
	add	a,#0x20
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:443: uint8_t last_len = dag->prefix_info.length;
	mov	a,#0x1F
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	a,#0x14
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:445: if(len > 128) {
	mov	a,sp
	add	a,#0xd9
	mov	r0,a
	clr	c
	mov	a,#0x80
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	jnc	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:446: return 0;
	mov	dptr,#0x0000
	ljmp	00108$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:448: if(dag->prefix_info.length != 0) {
	mov	a,r4
	jz	00104$
;	/opt/contiki/core/net/rpl/rpl-dag.c:449: memcpy(&last_prefix, &dag->prefix_info, sizeof(rpl_prefix_t));
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xEB
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x16
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xe3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:465: return 1;
;	/opt/contiki/core/net/rpl/rpl-dag.c:449: memcpy(&last_prefix, &dag->prefix_info, sizeof(rpl_prefix_t));
00104$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:451: memset(&dag->prefix_info.prefix, 0, sizeof(dag->prefix_info.prefix));
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:452: memcpy(&dag->prefix_info.prefix, prefix, (len + 7) / 8);
	mov	a,sp
	add	a,#0xd9
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	@r0,ar3
	mov	a,r4
	swap	a
	rl	a
	xch	a,@r0
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x1F
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xdb
	mov	r0,a
	mov	a,sp
	add	a,#0xe4
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:453: dag->prefix_info.length = len;
	mov	a,sp
	add	a,#0xd9
	mov	r0,a
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:454: dag->prefix_info.flags = UIP_ND6_RA_FLAG_AUTONOMOUS;
	mov	a,#0x15
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x40
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:458: if(last_len == 0) {
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	a,@r0
	jnz	00106$
;	/opt/contiki/core/net/rpl/rpl-dag.c:460: check_prefix(NULL, &dag->prefix_info);
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0x00
	mov	r0,#_check_prefix
	mov	r1,#(_check_prefix >> 8)
	mov	r2,#(_check_prefix >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	sjmp	00107$
00106$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:463: check_prefix(&last_prefix, &dag->prefix_info);
	mov	a,sp
	add	a,#0xEB
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	r0,#_check_prefix
	mov	r1,#(_check_prefix >> 8)
	mov	r2,#(_check_prefix >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00107$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:465: return 1;
	mov	dptr,#0x0001
00108$:
	mov	a,sp
	add	a,#0xE0
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_set_default_route'
;------------------------------------------------------------
;from                      Allocated to stack - sp -12
;instance                  Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - sp -3
;sloc1                     Allocated to stack - sp -6
;sloc2                     Allocated to stack - sp -3
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:469: rpl_set_default_route(rpl_instance_t *instance, uip_ipaddr_t *from)
;	-----------------------------------------
;	 function rpl_set_default_route
;	-----------------------------------------
_rpl_set_default_route:
	mov	a,sp
	add	a,#0x07
	mov	sp,a
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:471: if(instance->def_route != NULL) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x7F
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,r7
	orl	a,r6
	jz	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:475: uip_ds6_defrt_rm(instance->def_route);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_uip_ds6_defrt_rm
	mov	r1,#(_uip_ds6_defrt_rm >> 8)
	mov	r2,#(_uip_ds6_defrt_rm >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:476: instance->def_route = NULL;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:479: if(from != NULL) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00125$
	ljmp	00108$
00125$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:484: RPL_DEFAULT_ROUTE_INFINITE_LIFETIME ? 0 : RPL_LIFETIME(instance, instance->default_lifetime));
	mov	a,#0x91
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x89
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	ar7,r4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	r7,#0x00
	mov	r6,#0x00
	mov	r5,#0x00
	push	ar2
	push	ar7
	push	ar6
	push	ar5
;	/opt/contiki/core/net/rpl/rpl-dag.c:483: instance->def_route = uip_ds6_defrt_add(from,
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_ds6_defrt_add
	mov	r1,#(_uip_ds6_defrt_add >> 8)
	mov	r2,#(_uip_ds6_defrt_add >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:485: if(instance->def_route == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00109$
;	/opt/contiki/core/net/rpl/rpl-dag.c:486: return 0;
	mov	dptr,#0x0000
	sjmp	00110$
00108$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:490: if(instance->def_route != NULL) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00109$
;	/opt/contiki/core/net/rpl/rpl-dag.c:491: uip_ds6_defrt_rm(instance->def_route);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_uip_ds6_defrt_rm
	mov	r1,#(_uip_ds6_defrt_rm >> 8)
	mov	r2,#(_uip_ds6_defrt_rm >> 16)
	lcall	__sdcc_banked_call
00109$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:496: return 1;
	mov	dptr,#0x0001
00110$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_alloc_instance'
;------------------------------------------------------------
;instance_id               Allocated to stack - sp -6
;instance                  Allocated to stack - sp -2
;end                       Allocated to registers r6 r5 r4 
;sloc0                     Allocated to stack - sp -5
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:500: rpl_alloc_instance(uint8_t instance_id)
;	-----------------------------------------
;	 function rpl_alloc_instance
;	-----------------------------------------
_rpl_alloc_instance:
	push	dpl
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:504: for(instance = &instance_table[0], end = instance + RPL_MAX_INSTANCES;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,#_instance_table
	inc	r0
	mov	@r0,#(_instance_table >> 8)
	inc	r0
	mov	@r0,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xED
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar4,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
00105$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:505: instance < end; ++instance) {
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00118$
	ljmp	00103$
00118$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:506: if(instance->used == 0) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x83
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jz	00119$
	ljmp	00106$
00119$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:507: memset(instance, 0, sizeof(*instance));
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,#0xED
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:508: instance->instance_id = instance_id;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x82
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:509: instance->def_route = NULL;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x7F
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:510: instance->used = 1;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:512: rpl_schedule_probing(instance);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_schedule_probing
	mov	r1,#(_rpl_schedule_probing >> 8)
	mov	r2,#(_rpl_schedule_probing >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl-dag.c:514: return instance;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	sjmp	00107$
00106$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:505: instance < end; ++instance) {
	mov	a,#0xED
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar7
	ljmp	00105$
00103$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:517: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00107$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_alloc_dag'
;------------------------------------------------------------
;dag_id                    Allocated to stack - sp -14
;instance_id               Allocated to registers r7 
;dag                       Allocated to stack - sp -5
;end                       Allocated to registers r7 r3 r2 
;instance                  Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -8
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:521: rpl_alloc_dag(uint8_t instance_id, uip_ipaddr_t *dag_id)
;	-----------------------------------------
;	 function rpl_alloc_dag
;	-----------------------------------------
_rpl_alloc_dag:
	mov	a,sp
	add	a,#0x09
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:526: instance = rpl_get_instance(instance_id);
	mov  r7,dpl
	push	ar7
	mov	r0,#_rpl_get_instance
	mov	r1,#(_rpl_get_instance >> 8)
	mov	r2,#(_rpl_get_instance >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	/opt/contiki/core/net/rpl/rpl-dag.c:527: if(instance == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00104$
;	/opt/contiki/core/net/rpl/rpl-dag.c:528: instance = rpl_alloc_instance(instance_id);
	mov	dpl,r7
	mov	r0,#_rpl_alloc_instance
	mov	r1,#(_rpl_alloc_instance >> 8)
	mov	r2,#(_rpl_alloc_instance >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:529: if(instance == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	/opt/contiki/core/net/rpl/rpl-dag.c:531: return NULL;
	jnz	00104$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00111$
00104$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:535: for(dag = &instance->dag_table[0], end = dag + RPL_MAX_DAG_PER_INSTANCE; dag < end; ++dag) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,#0x0D
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x72
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
00109$:
	push	ar7
	push	ar3
	push	ar2
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00130$
	ljmp	00107$
00130$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:536: if(!dag->used) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x15
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jz	00131$
	ljmp	00110$
00131$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:537: memset(dag, 0, sizeof(*dag));
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x39
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:538: dag->used = 1;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:539: dag->rank = INFINITE_RANK;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1A
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:540: dag->min_rank = INFINITE_RANK;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x10
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:541: dag->instance = instance;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:542: return dag;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	sjmp	00111$
00110$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:535: for(dag = &instance->dag_table[0], end = dag + RPL_MAX_DAG_PER_INSTANCE; dag < end; ++dag) {
	mov	a,#0x39
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	ljmp	00109$
00107$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:547: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00111$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_set_default_instance'
;------------------------------------------------------------
;instance                  Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:551: rpl_set_default_instance(rpl_instance_t *instance)
;	-----------------------------------------
;	 function rpl_set_default_instance
;	-----------------------------------------
_rpl_set_default_instance:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:553: default_instance = instance;
	mov	dptr,#_default_instance
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_get_default_instance'
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:557: rpl_get_default_instance(void)
;	-----------------------------------------
;	 function rpl_get_default_instance
;	-----------------------------------------
_rpl_get_default_instance:
;	/opt/contiki/core/net/rpl/rpl-dag.c:559: return default_instance;
	mov	dptr,#_default_instance
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_free_instance'
;------------------------------------------------------------
;instance                  Allocated to registers r5 r6 r7 
;dag                       Allocated to registers r2 r3 r4 
;end                       Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:563: rpl_free_instance(rpl_instance_t *instance)
;	-----------------------------------------
;	 function rpl_free_instance
;	-----------------------------------------
_rpl_free_instance:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:571: for(dag = &instance->dag_table[0], end = dag + RPL_MAX_DAG_PER_INSTANCE; dag < end; ++dag) {
	mov	a,#0x0D
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x72
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
00107$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnc	00103$
;	/opt/contiki/core/net/rpl/rpl-dag.c:572: if(dag->used) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x15
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00108$
;	/opt/contiki/core/net/rpl/rpl-dag.c:573: rpl_free_dag(dag);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_rpl_free_dag
	mov	r1,#(_rpl_free_dag >> 8)
	mov	r2,#(_rpl_free_dag >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00108$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:571: for(dag = &instance->dag_table[0], end = dag + RPL_MAX_DAG_PER_INSTANCE; dag < end; ++dag) {
	mov	a,#0x39
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	sjmp	00107$
00103$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:577: rpl_set_default_route(instance, NULL);
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_rpl_set_default_route
	mov	r1,#(_rpl_set_default_route >> 8)
	mov	r2,#(_rpl_set_default_route >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:580: ctimer_stop(&instance->probing_timer);
	mov	a,#0x95
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_ctimer_stop
	mov	r1,#(_ctimer_stop >> 8)
	mov	r2,#(_ctimer_stop >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:582: ctimer_stop(&instance->dio_timer);
	mov	a,#0xAB
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_ctimer_stop
	mov	r1,#(_ctimer_stop >> 8)
	mov	r2,#(_ctimer_stop >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:583: ctimer_stop(&instance->dao_timer);
	mov	a,#0xC1
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_ctimer_stop
	mov	r1,#(_ctimer_stop >> 8)
	mov	r2,#(_ctimer_stop >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:584: ctimer_stop(&instance->dao_lifetime_timer);
	mov	a,#0xD7
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_ctimer_stop
	mov	r1,#(_ctimer_stop >> 8)
	mov	r2,#(_ctimer_stop >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:586: if(default_instance == instance) {
	mov	dptr,#_default_instance
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00127$
	sjmp	00105$
00127$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:587: default_instance = NULL;
	mov	dptr,#_default_instance
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00105$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:590: instance->used = 0;
	mov	a,#0x83
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_free_dag'
;------------------------------------------------------------
;dag                       Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:594: rpl_free_dag(rpl_dag_t *dag)
;	-----------------------------------------
;	 function rpl_free_dag
;	-----------------------------------------
_rpl_free_dag:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:596: if(dag->joined) {
	mov	a,#0x16
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00113$
	ljmp	00104$
00113$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:600: dag->joined = 0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:603: rpl_remove_routes(dag);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_rpl_remove_routes
	mov	r1,#(_rpl_remove_routes >> 8)
	mov	r2,#(_rpl_remove_routes >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:606: if((dag->prefix_info.flags & UIP_ND6_RA_FLAG_AUTONOMOUS)) {
	mov	a,#0x1F
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x15
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	pop	ar7
	pop	ar6
	pop	ar5
	jnb	acc.6,00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:607: check_prefix(&dag->prefix_info, NULL);
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_check_prefix
	mov	r1,#(_check_prefix >> 8)
	mov	r2,#(_check_prefix >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:610: remove_parents(dag, 0);
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_remove_parents
	mov	r1,#(_remove_parents >> 8)
	mov	r2,#(_remove_parents >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
00104$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:612: dag->used = 0;
	mov	a,#0x15
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_add_parent'
;------------------------------------------------------------
;dio                       Allocated to stack - sp -17
;addr                      Allocated to stack - sp -20
;dag                       Allocated to registers r4 r3 r2 
;p                         Allocated to stack - sp -8
;lladdr                    Allocated to stack - sp -5
;nbr                       Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -11
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:616: rpl_add_parent(rpl_dag_t *dag, rpl_dio_t *dio, uip_ipaddr_t *addr)
;	-----------------------------------------
;	 function rpl_add_parent
;	-----------------------------------------
_rpl_add_parent:
	mov	a,sp
	add	a,#0x0C
	mov	sp,a
	mov	r4,dpl
	mov	r3,dph
	mov	r2,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:618: rpl_parent_t *p = NULL;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rpl/rpl-dag.c:621: const uip_lladdr_t *lladdr = uip_ds6_nbr_lladdr_from_ipaddr(addr);
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_uip_ds6_nbr_lladdr_from_ipaddr
	mov	r1,#(_uip_ds6_nbr_lladdr_from_ipaddr >> 8)
	mov	r2,#(_uip_ds6_nbr_lladdr_from_ipaddr >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xf8
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	/opt/contiki/core/net/rpl/rpl-dag.c:626: if(lladdr != NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00123$
	ljmp	00108$
00123$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:628: p = nbr_table_add_lladdr(rpl_parents, (linkaddr_t *)lladdr);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_nbr_table_add_lladdr
	mov	r1,#(_nbr_table_add_lladdr >> 8)
	mov	r2,#(_nbr_table_add_lladdr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:629: if(p == NULL) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00124$
	ljmp	00108$
00124$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:633: nbr = rpl_get_nbr(p);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_rpl_get_nbr
	mov	r1,#(_rpl_get_nbr >> 8)
	mov	r2,#(_rpl_get_nbr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:635: p->dag = dag;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:636: p->rank = dio->rank;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xf5
	mov	r1,a
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x12
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:637: p->dtsn = dio->dtsn;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x19
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:640: if(nbr != NULL && nbr->link_metric == 0) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00108$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x23
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jnz	00108$
;	/opt/contiki/core/net/rpl/rpl-dag.c:641: nbr->link_metric = RPL_INIT_LINK_METRIC * RPL_DAG_MC_ETX_DIVISOR;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x02
	lcall	__gptrput
00108$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:649: return p;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	xch	a,r0
	mov	a,sp
	add	a,#0xF4
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'find_parent_any_dag_any_instance'
;------------------------------------------------------------
;addr                      Allocated to registers r5 r6 r7 
;ds6_nbr                   Allocated to registers r5 r6 r7 
;lladdr                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:653: find_parent_any_dag_any_instance(uip_ipaddr_t *addr)
;	-----------------------------------------
;	 function find_parent_any_dag_any_instance
;	-----------------------------------------
_find_parent_any_dag_any_instance:
;	/opt/contiki/core/net/rpl/rpl-dag.c:655: uip_ds6_nbr_t *ds6_nbr = uip_ds6_nbr_lookup(addr);
	mov	r0,#_uip_ds6_nbr_lookup
	mov	r1,#(_uip_ds6_nbr_lookup >> 8)
	mov	r2,#(_uip_ds6_nbr_lookup >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl-dag.c:656: const uip_lladdr_t *lladdr = uip_ds6_nbr_get_ll(ds6_nbr);
	mov	r0,#_uip_ds6_nbr_get_ll
	mov	r1,#(_uip_ds6_nbr_get_ll >> 8)
	mov	r2,#(_uip_ds6_nbr_get_ll >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:657: return nbr_table_get_from_lladdr(rpl_parents, (linkaddr_t *)lladdr);
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_nbr_table_get_from_lladdr
	mov	r1,#(_nbr_table_get_from_lladdr >> 8)
	mov	r2,#(_nbr_table_get_from_lladdr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_find_parent'
;------------------------------------------------------------
;addr                      Allocated to stack - sp -8
;dag                       Allocated to stack - sp -2
;p                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:661: rpl_find_parent(rpl_dag_t *dag, uip_ipaddr_t *addr)
;	-----------------------------------------
;	 function rpl_find_parent
;	-----------------------------------------
_rpl_find_parent:
	push	dpl
	push	dph
	push	b
;	/opt/contiki/core/net/rpl/rpl-dag.c:663: rpl_parent_t *p = find_parent_any_dag_any_instance(addr);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_find_parent_any_dag_any_instance
	mov	r1,#(_find_parent_any_dag_any_instance >> 8)
	mov	r2,#(_find_parent_any_dag_any_instance >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:664: if(p != NULL && p->dag == dag) {
	mov	a,r2
	orl	a,r3
	jz	00102$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00115$
	sjmp	00102$
00115$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:665: return p;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	sjmp	00105$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:667: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00105$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'find_parent_dag'
;------------------------------------------------------------
;addr                      Allocated to stack - sp -5
;instance                  Allocated to registers 
;p                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:672: find_parent_dag(rpl_instance_t *instance, uip_ipaddr_t *addr)
;	-----------------------------------------
;	 function find_parent_dag
;	-----------------------------------------
_find_parent_dag:
;	/opt/contiki/core/net/rpl/rpl-dag.c:674: rpl_parent_t *p = find_parent_any_dag_any_instance(addr);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_find_parent_any_dag_any_instance
	mov	r1,#(_find_parent_any_dag_any_instance >> 8)
	mov	r2,#(_find_parent_any_dag_any_instance >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	/opt/contiki/core/net/rpl/rpl-dag.c:675: if(p != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:676: return p->dag;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	sjmp	00104$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:678: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00104$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_find_parent_any_dag'
;------------------------------------------------------------
;addr                      Allocated to stack - sp -8
;instance                  Allocated to stack - sp -2
;p                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:683: rpl_find_parent_any_dag(rpl_instance_t *instance, uip_ipaddr_t *addr)
;	-----------------------------------------
;	 function rpl_find_parent_any_dag
;	-----------------------------------------
_rpl_find_parent_any_dag:
	push	dpl
	push	dph
	push	b
;	/opt/contiki/core/net/rpl/rpl-dag.c:685: rpl_parent_t *p = find_parent_any_dag_any_instance(addr);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_find_parent_any_dag_any_instance
	mov	r1,#(_find_parent_any_dag_any_instance >> 8)
	mov	r2,#(_find_parent_any_dag_any_instance >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:686: if(p && p->dag && p->dag->instance == instance) {
	mov	a,r2
	orl	a,r3
	jz	00102$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00102$
	mov	a,#0x1C
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00120$
	sjmp	00102$
00120$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:687: return p;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	sjmp	00106$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:689: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00106$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_select_dag'
;------------------------------------------------------------
;p                         Allocated to stack - sp -26
;instance                  Allocated to stack - sp -20
;last_parent               Allocated to stack - sp -5
;dag                       Allocated to stack - sp -8
;end                       Allocated to registers r5 r6 r7 
;best_dag                  Allocated to stack - sp -2
;old_rank                  Allocated to registers 
;sloc0                     Allocated to stack - sp -17
;sloc1                     Allocated to stack - sp -14
;sloc2                     Allocated to stack - sp -11
;sloc3                     Allocated to stack - sp +6
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:694: rpl_select_dag(rpl_instance_t *instance, rpl_parent_t *p)
;	-----------------------------------------
;	 function rpl_select_dag
;	-----------------------------------------
_rpl_select_dag:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x12
;	/opt/contiki/core/net/rpl/rpl-dag.c:701: last_parent = instance->current_dag->preferred_parent;
	mov	sp,a
	add	a,#0xec
	mov	r0,a
	mov	a,#0x0A
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,#0x17
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:703: best_dag = instance->current_dag;
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
;	/opt/contiki/core/net/rpl/rpl-dag.c:704: if(best_dag->rank != ROOT_RANK(instance)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x8F
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00221$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00221$
	ljmp	00117$
00221$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:705: if(rpl_select_parent(p->dag) != NULL) {
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xe3
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_rpl_select_parent
	mov	r1,#(_rpl_select_parent >> 8)
	mov	r2,#(_rpl_select_parent >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00222$
	ljmp	00114$
00222$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:706: if(p->dag != best_dag) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00223$
	ljmp	00117$
00223$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:707: best_dag = instance->of->best_dag(best_dag, p->dag);
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x09
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00117$
00114$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:709: } else if(p->dag == best_dag) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00225$
	ljmp	00117$
00225$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:710: best_dag = NULL;
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rpl/rpl-dag.c:711: for(dag = &instance->dag_table[0], end = dag + RPL_MAX_DAG_PER_INSTANCE; dag < end; ++dag) {
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r1,a
	mov	a,#0x0D
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x72
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,sp
	add	a,#0xef
	mov	r1,a
	mov	a,#0x07
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00150$:
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00226$
	ljmp	00117$
00226$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:712: if(dag->used && dag->preferred_parent != NULL && dag->preferred_parent->rank != INFINITE_RANK) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,#0x15
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00227$
	ljmp	00151$
00227$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,#0x17
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00228$
	ljmp	00151$
00228$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	cjne	r5,#0xFF,00229$
	cjne	r6,#0xFF,00229$
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00151$
00229$:
	pop	ar7
	pop	ar6
	pop	ar5
;	/opt/contiki/core/net/rpl/rpl-dag.c:713: if(best_dag == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00104$
;	/opt/contiki/core/net/rpl/rpl-dag.c:714: best_dag = dag;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	ljmp	00151$
00104$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:716: best_dag = instance->of->best_dag(best_dag, dag);
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x09
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:784: return best_dag;
	pop	ar7
	pop	ar6
	pop	ar5
;	/opt/contiki/core/net/rpl/rpl-dag.c:716: best_dag = instance->of->best_dag(best_dag, dag);
00151$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:711: for(dag = &instance->dag_table[0], end = dag + RPL_MAX_DAG_PER_INSTANCE; dag < end; ++dag) {
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x39
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	ljmp	00150$
00117$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:723: if(best_dag == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	/opt/contiki/core/net/rpl/rpl-dag.c:725: return NULL;
	jnz	00119$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00152$
00119$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:728: if(instance->current_dag != best_dag) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00232$
	ljmp	00126$
00232$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:730: rpl_remove_routes(instance->current_dag);
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_rpl_remove_routes
	mov	r1,#(_rpl_remove_routes >> 8)
	mov	r2,#(_rpl_remove_routes >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:736: if(best_dag->prefix_info.flags & UIP_ND6_RA_FLAG_AUTONOMOUS) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r1,a
	mov	a,#0x1F
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x15
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	pop	ar4
	pop	ar3
	pop	ar2
	jnb	acc.6,00123$
;	/opt/contiki/core/net/rpl/rpl-dag.c:737: check_prefix(&instance->current_dag->prefix_info, &best_dag->prefix_info);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x1F
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_check_prefix
	mov	r1,#(_check_prefix >> 8)
	mov	r2,#(_check_prefix >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	sjmp	00124$
00123$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:738: } else if(instance->current_dag->prefix_info.flags & UIP_ND6_RA_FLAG_AUTONOMOUS) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x1F
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,#0x34
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	jnb	acc.6,00124$
;	/opt/contiki/core/net/rpl/rpl-dag.c:739: check_prefix(&instance->current_dag->prefix_info, NULL);
	push	ar4
	push	ar3
	push	ar2
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_check_prefix
	mov	r1,#(_check_prefix >> 8)
	mov	r2,#(_check_prefix >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
00124$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:742: best_dag->joined = 1;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x16
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:743: instance->current_dag->joined = 0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x16
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:744: instance->current_dag = best_dag;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
00126$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:747: instance->of->update_metric_container(instance);
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x0F
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:749: best_dag->rank = instance->of->calculate_rank(best_dag->preferred_parent, 0);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1A
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x0C
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r1,a
	mov	a,#0x17
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	clr	a
	push	acc
	push	acc
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:750: if(last_parent == NULL || best_dag->rank < best_dag->min_rank) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00132$
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x10
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00133$
00132$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:751: best_dag->min_rank = best_dag->rank;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	ljmp	00134$
00133$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:752: } else if(!acceptable_rank(best_dag, best_dag->rank)) {
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_acceptable_rank
	mov	r1,#(_acceptable_rank >> 8)
	mov	r2,#(_acceptable_rank >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jz	00237$
	ljmp	00134$
00237$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:754: rpl_set_preferred_parent(instance->current_dag, NULL);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_rpl_set_preferred_parent
	mov	r1,#(_rpl_set_preferred_parent >> 8)
	mov	r2,#(_rpl_set_preferred_parent >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:755: if(instance->mop != RPL_MOP_NO_DOWNWARD_ROUTES && last_parent != NULL) {
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x85
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00128$
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00128$
;	/opt/contiki/core/net/rpl/rpl-dag.c:757: dao_output(last_parent, RPL_ZERO_LIFETIME);
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_dao_output
	mov	r1,#(_dao_output >> 8)
	mov	r2,#(_dao_output >> 16)
	lcall	__sdcc_banked_call
	dec	sp
00128$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:759: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	00152$
00134$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:762: if(best_dag->preferred_parent != last_parent) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00240$
	ljmp	00148$
00240$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:763: rpl_set_default_route(instance, rpl_get_parent_ipaddr(best_dag->preferred_parent));
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_rpl_get_parent_ipaddr
	mov	r1,#(_rpl_get_parent_ipaddr >> 8)
	mov	r2,#(_rpl_get_parent_ipaddr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_set_default_route
	mov	r1,#(_rpl_set_default_route >> 8)
	mov	r2,#(_rpl_set_default_route >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:767: if(instance->mop != RPL_MOP_NO_DOWNWARD_ROUTES) {
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x85
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00145$
;	/opt/contiki/core/net/rpl/rpl-dag.c:768: if(last_parent != NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00141$
;	/opt/contiki/core/net/rpl/rpl-dag.c:770: dao_output(last_parent, RPL_ZERO_LIFETIME);
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_dao_output
	mov	r1,#(_dao_output >> 8)
	mov	r2,#(_dao_output >> 16)
	lcall	__sdcc_banked_call
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:773: RPL_LOLLIPOP_INCREMENT(instance->dtsn_out);
00141$:
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x84
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r4,a
	add	a,#0xff - 0x7F
	jnc	00139$
	mov	a,r4
	inc	a
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	sjmp	00142$
00139$:
	mov	a,r4
	inc	a
	anl	a,#0x7F
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
00142$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:774: rpl_schedule_dao(instance);
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_schedule_dao
	mov	r1,#(_rpl_schedule_dao >> 8)
	mov	r2,#(_rpl_schedule_dao >> 16)
	lcall	__sdcc_banked_call
00145$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:776: rpl_reset_dio_timer(instance);
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_reset_dio_timer
	mov	r1,#(_rpl_reset_dio_timer >> 8)
	mov	r2,#(_rpl_reset_dio_timer >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl-dag.c:780: } else if(best_dag->rank != old_rank) {
00148$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:784: return best_dag;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00152$:
	xch	a,r0
	mov	a,sp
	add	a,#0xEB
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'best_parent'
;------------------------------------------------------------
;dag                       Allocated to stack - sp -8
;p                         Allocated to stack - sp -5
;best                      Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:788: best_parent(rpl_dag_t *dag)
;	-----------------------------------------
;	 function best_parent
;	-----------------------------------------
_best_parent:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:792: best = NULL;
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rpl/rpl-dag.c:794: p = nbr_table_head(rpl_parents);
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_nbr_table_head
	mov	r1,#(_nbr_table_head >> 8)
	mov	r2,#(_nbr_table_head >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:795: while(p != NULL) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
00108$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00128$
	ljmp	00110$
00128$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:796: if(p->dag != dag || p->rank == INFINITE_RANK) {
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00130$
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00106$
00130$:
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0xFF,00131$
	cjne	r3,#0xFF,00131$
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00106$
00131$:
	pop	ar4
	pop	ar3
	pop	ar2
;	/opt/contiki/core/net/rpl/rpl-dag.c:798: } else if(best == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:799: best = p;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	ljmp	00106$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:801: best = dag->instance->of->best_parent(best, p);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00106$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:803: p = nbr_table_next(rpl_parents, p);
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar4
	push	ar3
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_nbr_table_next
	mov	r1,#(_nbr_table_next >> 8)
	mov	r2,#(_nbr_table_next >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00108$
00110$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:806: return best;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	xch	a,r0
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_select_parent'
;------------------------------------------------------------
;dag                       Allocated to stack - sp -5
;best                      Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:810: rpl_select_parent(rpl_dag_t *dag)
;	-----------------------------------------
;	 function rpl_select_parent
;	-----------------------------------------
_rpl_select_parent:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:812: rpl_parent_t *best = best_parent(dag);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_best_parent
	mov	r1,#(_best_parent >> 8)
	mov	r2,#(_best_parent >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:814: if(best != NULL) {
	mov	a,r2
	orl	a,r3
	jnz	00109$
	ljmp	00102$
00109$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:815: rpl_set_preferred_parent(dag, best);
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_set_preferred_parent
	mov	r1,#(_rpl_set_preferred_parent >> 8)
	mov	r2,#(_rpl_set_preferred_parent >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:816: dag->rank = dag->instance->of->calculate_rank(dag->preferred_parent, 0);
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x1A
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x1C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x0C
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x17
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	clr	a
	push	acc
	push	acc
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00103$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:818: dag->rank = INFINITE_RANK;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00103$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:821: return best;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	xch	a,r0
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_remove_parent'
;------------------------------------------------------------
;parent                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:825: rpl_remove_parent(rpl_parent_t *parent)
;	-----------------------------------------
;	 function rpl_remove_parent
;	-----------------------------------------
_rpl_remove_parent:
;	/opt/contiki/core/net/rpl/rpl-dag.c:831: rpl_nullify_parent(parent);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_rpl_nullify_parent
	mov	r1,#(_rpl_nullify_parent >> 8)
	mov	r2,#(_rpl_nullify_parent >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:833: nbr_table_remove(rpl_parents, parent);
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_nbr_table_remove
	mov	r1,#(_nbr_table_remove >> 8)
	mov	r2,#(_nbr_table_remove >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_nullify_parent'
;------------------------------------------------------------
;parent                    Allocated to registers r5 r6 r7 
;dag                       Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -8
;sloc1                     Allocated to stack - sp -5
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:837: rpl_nullify_parent(rpl_parent_t *parent)
;	-----------------------------------------
;	 function rpl_nullify_parent
;	-----------------------------------------
_rpl_nullify_parent:
	mov	a,sp
	add	a,#0x09
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:839: rpl_dag_t *dag = parent->dag;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	dec	r0
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:842: if(parent == dag->preferred_parent || dag->preferred_parent == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x17
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00107$
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00125$
	ljmp	00110$
00125$:
00107$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:843: dag->rank = INFINITE_RANK;
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1A
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:844: if(dag->joined) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x16
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00126$
	ljmp	00110$
00126$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:845: if(dag->instance->def_route != NULL) {
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf5
	mov	r1,a
	mov	a,#0x1C
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x7F
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:849: uip_ds6_defrt_rm(dag->instance->def_route);
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_uip_ds6_defrt_rm
	mov	r1,#(_uip_ds6_defrt_rm >> 8)
	mov	r2,#(_uip_ds6_defrt_rm >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:850: dag->instance->def_route = NULL;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x7F
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:855: rpl_set_preferred_parent(dag, NULL);
	pop	ar4
	pop	ar3
	pop	ar2
;	/opt/contiki/core/net/rpl/rpl-dag.c:850: dag->instance->def_route = NULL;
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:853: if(parent == dag->preferred_parent) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00129$
	sjmp	00110$
00129$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:854: dao_output(parent, RPL_ZERO_LIFETIME);
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_dao_output
	mov	r1,#(_dao_output >> 8)
	mov	r2,#(_dao_output >> 16)
	lcall	__sdcc_banked_call
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:855: rpl_set_preferred_parent(dag, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_set_preferred_parent
	mov	r1,#(_rpl_set_preferred_parent >> 8)
	mov	r2,#(_rpl_set_preferred_parent >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00110$:
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_move_parent'
;------------------------------------------------------------
;dag_dst                   Allocated to stack - sp -8
;parent                    Allocated to stack - sp -11
;dag_src                   Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:866: rpl_move_parent(rpl_dag_t *dag_src, rpl_dag_t *dag_dst, rpl_parent_t *parent)
;	-----------------------------------------
;	 function rpl_move_parent
;	-----------------------------------------
_rpl_move_parent:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:868: if(parent == dag_src->preferred_parent) {
	mov	a,#0x17
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00124$
	ljmp	00107$
00124$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:869: rpl_set_preferred_parent(dag_src, NULL);
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_rpl_set_preferred_parent
	mov	r1,#(_rpl_set_preferred_parent >> 8)
	mov	r2,#(_rpl_set_preferred_parent >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:870: dag_src->rank = INFINITE_RANK;
	mov	a,#0x1A
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:871: if(dag_src->joined && dag_src->instance->def_route != NULL) {
	mov	a,#0x16
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00125$
	ljmp	00108$
00125$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x7F
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jnz	00126$
	ljmp	00108$
00126$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:876: uip_ds6_defrt_rm(dag_src->instance->def_route);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_uip_ds6_defrt_rm
	mov	r1,#(_uip_ds6_defrt_rm >> 8)
	mov	r2,#(_uip_ds6_defrt_rm >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl-dag.c:877: dag_src->instance->def_route = NULL;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x7F
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	sjmp	00108$
00107$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:879: } else if(dag_src->joined) {
	mov	a,#0x16
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00108$
;	/opt/contiki/core/net/rpl/rpl-dag.c:881: rpl_remove_routes_by_nexthop(rpl_get_parent_ipaddr(parent), dag_src);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_rpl_get_parent_ipaddr
	mov	r1,#(_rpl_get_parent_ipaddr >> 8)
	mov	r2,#(_rpl_get_parent_ipaddr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_rpl_remove_routes_by_nexthop
	mov	r1,#(_rpl_remove_routes_by_nexthop >> 8)
	mov	r2,#(_rpl_remove_routes_by_nexthop >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00108$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:888: parent->dag = dag_dst;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_get_any_dag'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;sloc0                     Allocated to stack - sp -7
;sloc1                     Allocated to stack - sp -5
;sloc2                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:892: rpl_get_any_dag(void)
;	-----------------------------------------
;	 function rpl_get_any_dag
;	-----------------------------------------
_rpl_get_any_dag:
	mov	a,sp
	add	a,#0x08
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:896: for(i = 0; i < RPL_MAX_INSTANCES; ++i) {
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
00105$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:897: if(instance_table[i].used && instance_table[i].current_dag->joined) {
	mov	a,r4
	add	a,#_instance_table
	mov	r2,a
	mov	a,r5
	addc	a,#(_instance_table >> 8)
	mov	r3,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x83
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	jz	00106$
	push	ar6
	push	ar7
	mov	a,#0x0A
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,sp
	add	a,#0xfc
	mov	r1,a
	mov	a,#0x16
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	pop	ar7
	pop	ar6
	jz	00106$
;	/opt/contiki/core/net/rpl/rpl-dag.c:898: return instance_table[i].current_dag;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	sjmp	00107$
00106$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:896: for(i = 0; i < RPL_MAX_INSTANCES; ++i) {
	mov	a,#0xED
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	inc	r6
	cjne	r6,#0x00,00123$
	inc	r7
00123$:
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00124$
	ljmp	00105$
00124$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:901: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00107$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_get_instance'
;------------------------------------------------------------
;instance_id               Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;sloc0                     Allocated to stack - sp -6
;sloc1                     Allocated to stack - sp -4
;sloc2                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:905: rpl_get_instance(uint8_t instance_id)
;	-----------------------------------------
;	 function rpl_get_instance
;	-----------------------------------------
_rpl_get_instance:
	mov	a,sp
	add	a,#0x07
	mov	sp,a
	mov	r7,dpl
;	/opt/contiki/core/net/rpl/rpl-dag.c:909: for(i = 0; i < RPL_MAX_INSTANCES; ++i) {
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
00105$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:910: if(instance_table[i].used && instance_table[i].instance_id == instance_id) {
	push	ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,r3
	add	a,#_instance_table
	mov	@r0,a
	mov	a,r4
	addc	a,#(_instance_table >> 8)
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,#0x83
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	pop	ar7
	jz	00106$
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x82
	add	a,@r0
	mov	dpl,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	a,ar7,00106$
;	/opt/contiki/core/net/rpl/rpl-dag.c:911: return &instance_table[i];
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,sp
	add	a,#0xfc
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	sjmp	00107$
00106$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:909: for(i = 0; i < RPL_MAX_INSTANCES; ++i) {
	mov	a,#0xED
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	inc	r5
	cjne	r5,#0x00,00124$
	inc	r6
00124$:
	clr	c
	mov	a,r5
	subb	a,#0x01
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00125$
	ljmp	00105$
00125$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:914: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00107$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_find_of'
;------------------------------------------------------------
;ocp                       Allocated to stack - sp -4
;i                         Allocated to registers r4 r5 
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:918: rpl_find_of(rpl_ocp_t ocp)
;	-----------------------------------------
;	 function rpl_find_of
;	-----------------------------------------
_rpl_find_of:
	push	dpl
	push	dph
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:922: for(i = 0;
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
00104$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:925: if(objective_functions[i]->ocp == ocp) {
	push	ar4
	push	ar5
	mov	a,r2
	add	a,#_objective_functions
	mov	dpl,a
	mov	a,r3
	addc	a,#(_objective_functions >> 8)
	mov	dph,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	a
	movc	a,@a+dptr
	mov	@r0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	cjne	a,ar4,00117$
	inc	r0
	mov	a,@r0
	cjne	a,ar5,00117$
	sjmp	00118$
00117$:
	pop	ar5
	pop	ar4
	sjmp	00105$
00118$:
	pop	ar5
	pop	ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:926: return objective_functions[i];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	sjmp	00106$
00105$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:924: i++) {
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	inc	r4
	cjne	r4,#0x00,00119$
	inc	r5
00119$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:923: i < sizeof(objective_functions) / sizeof(objective_functions[0]);
	clr	c
	mov	a,r4
	subb	a,#0x01
	mov	a,r5
	subb	a,#0x00
	jnc	00120$
	ljmp	00104$
00120$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:930: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00106$:
	xch	a,r0
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_join_instance'
;------------------------------------------------------------
;dio                       Allocated to stack - sp -27
;from                      Allocated to stack - sp -21
;instance                  Allocated to stack - sp -8
;dag                       Allocated to stack - sp -5
;p                         Allocated to stack - sp -2
;of                        Allocated to stack - sp -18
;sloc0                     Allocated to stack - sp -18
;sloc1                     Allocated to stack - sp -15
;sloc2                     Allocated to stack - sp -12
;sloc3                     Allocated to stack - sp -9
;sloc4                     Allocated to stack - sp +4
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:934: rpl_join_instance(uip_ipaddr_t *from, rpl_dio_t *dio)
;	-----------------------------------------
;	 function rpl_join_instance
;	-----------------------------------------
_rpl_join_instance:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x13
;	/opt/contiki/core/net/rpl/rpl-dag.c:943: of = rpl_find_of(dio->ocp);
	mov	sp,a
	add	a,#0xe5
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x10
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_rpl_find_of
	mov	r1,#(_rpl_find_of >> 8)
	mov	r2,#(_rpl_find_of >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:944: if(of == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:947: return;
	ljmp	00113$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:950: dag = rpl_alloc_dag(dio->instance_id, &dio->dag_id);
	mov	a,#0x18
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	r0,#_rpl_alloc_dag
	mov	r1,#(_rpl_alloc_dag >> 8)
	mov	r2,#(_rpl_alloc_dag >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:951: if(dag == NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00104$
;	/opt/contiki/core/net/rpl/rpl-dag.c:953: return;
	ljmp	00113$
00104$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:956: instance = dag->instance;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:958: p = rpl_add_parent(dag, dio, from);
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_add_parent
	mov	r1,#(_rpl_add_parent >> 8)
	mov	r2,#(_rpl_add_parent >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
;	/opt/contiki/core/net/rpl/rpl-dag.c:962: if(p == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00106$
;	/opt/contiki/core/net/rpl/rpl-dag.c:964: instance->used = 0;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x83
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:965: return;
	ljmp	00113$
00106$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:967: p->dtsn = dio->dtsn;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf1
	mov	r1,a
	mov	a,#0x07
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x19
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:972: if(dio->prefix_info.flags & UIP_ND6_RA_FLAG_AUTONOMOUS) {
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x3A
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,#0x4F
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	jnb	acc.6,00108$
;	/opt/contiki/core/net/rpl/rpl-dag.c:973: check_prefix(NULL, &dio->prefix_info);
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x00
	mov	r0,#_check_prefix
	mov	r1,#(_check_prefix >> 8)
	mov	r2,#(_check_prefix >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
00108$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:976: dag->joined = 1;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x16
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:977: dag->preference = dio->preference;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf4
	mov	r1,a
	mov	a,#0x14
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x16
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:978: dag->grounded = dio->grounded;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf4
	mov	r1,a
	mov	a,#0x13
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x14
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:979: dag->version = dio->version;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf4
	mov	r1,a
	mov	a,#0x12
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x17
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:981: instance->of = of;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xf4
	mov	r1,a
	mov	a,#0x07
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xee
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:982: instance->mop = dio->mop;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xee
	mov	r1,a
	mov	a,#0x85
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x15
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:983: instance->current_dag = dag;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x0A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:984: instance->dtsn_out = RPL_LOLLIPOP_INIT;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x84
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xF0
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:986: instance->max_rankinc = dio->dag_max_rankinc;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xee
	mov	r1,a
	mov	a,#0x8D
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x20
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:987: instance->min_hoprankinc = dio->dag_min_hoprankinc;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xee
	mov	r1,a
	mov	a,#0x8F
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x22
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:988: instance->dio_intdoubl = dio->dag_intdoubl;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xee
	mov	r1,a
	mov	a,#0x86
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x1A
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xf7
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:989: instance->dio_intmin = dio->dag_intmin;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xee
	mov	r1,a
	mov	a,#0x87
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x1B
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:990: instance->dio_intcurrent = instance->dio_intmin + instance->dio_intdoubl;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xee
	mov	r1,a
	mov	a,#0x8A
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:991: instance->dio_redundancy = dio->dag_redund;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xee
	mov	r1,a
	mov	a,#0x88
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x1C
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:992: instance->default_lifetime = dio->default_lifetime;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xee
	mov	r1,a
	mov	a,#0x89
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x1D
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:993: instance->lifetime_unit = dio->lifetime_unit;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xee
	mov	r1,a
	mov	a,#0x91
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x1E
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:995: memcpy(&dag->dag_id, &dio->dag_id, sizeof(dio->dag_id));
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
;	/opt/contiki/core/net/rpl/rpl-dag.c:998: memcpy(&dag->prefix_info, &dio->prefix_info, sizeof(rpl_prefix_t));
	mov	sp,a
	add	a,#0xf1
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1F
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,#0x16
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:1000: rpl_set_preferred_parent(dag, p);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_set_preferred_parent
	mov	r1,#(_rpl_set_preferred_parent >> 8)
	mov	r2,#(_rpl_set_preferred_parent >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:1001: instance->of->update_metric_container(instance);
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x0F
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:1002: dag->rank = instance->of->calculate_rank(p, 0);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x0C
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1004: dag->min_rank = dag->rank;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x10
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1006: if(default_instance == NULL) {
	mov	dptr,#_default_instance
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00110$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1007: default_instance = instance;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dptr,#_default_instance
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
00110$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1017: rpl_reset_dio_timer(instance);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_reset_dio_timer
	mov	r1,#(_rpl_reset_dio_timer >> 8)
	mov	r2,#(_rpl_reset_dio_timer >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl-dag.c:1018: rpl_set_default_route(instance, from);
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_set_default_route
	mov	r1,#(_rpl_set_default_route >> 8)
	mov	r2,#(_rpl_set_default_route >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:1020: if(instance->mop != RPL_MOP_NO_DOWNWARD_ROUTES) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x85
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00113$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1021: rpl_schedule_dao(instance);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_schedule_dao
	mov	r1,#(_rpl_schedule_dao >> 8)
	mov	r2,#(_rpl_schedule_dao >> 16)
	lcall	__sdcc_banked_call
00113$:
	mov	a,sp
	add	a,#0xEA
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_add_dag'
;------------------------------------------------------------
;dio                       Allocated to stack - sp -29
;from                      Allocated to stack - sp -23
;instance                  Allocated to stack - sp -11
;dag                       Allocated to stack - sp -8
;previous_dag              Allocated to stack - sp -5
;p                         Allocated to stack - sp -2
;of                        Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -20
;sloc1                     Allocated to stack - sp -17
;sloc2                     Allocated to stack - sp -16
;sloc3                     Allocated to stack - sp -14
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:1030: rpl_add_dag(uip_ipaddr_t *from, rpl_dio_t *dio)
;	-----------------------------------------
;	 function rpl_add_dag
;	-----------------------------------------
_rpl_add_dag:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x15
;	/opt/contiki/core/net/rpl/rpl-dag.c:1037: dag = rpl_alloc_dag(dio->instance_id, &dio->dag_id);
	mov	sp,a
	add	a,#0xe3
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x18
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	r0,#_rpl_alloc_dag
	mov	r1,#(_rpl_alloc_dag >> 8)
	mov	r2,#(_rpl_alloc_dag >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:1038: if(dag == NULL) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1040: return;
	ljmp	00120$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1043: instance = dag->instance;
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:1045: previous_dag = find_parent_dag(instance, from);
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_find_parent_dag
	mov	r1,#(_find_parent_dag >> 8)
	mov	r2,#(_find_parent_dag >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:1046: if(previous_dag == NULL) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00108$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1050: p = rpl_add_parent(dag, dio, from);
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_add_parent
	mov	r1,#(_rpl_add_parent >> 8)
	mov	r2,#(_rpl_add_parent >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
;	/opt/contiki/core/net/rpl/rpl-dag.c:1051: if(p == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00160$
	ljmp	00109$
00160$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1053: dag->used = 0;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x15
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1054: return;
	ljmp	00120$
00108$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1058: p = rpl_find_parent(previous_dag, from);
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_find_parent
	mov	r1,#(_rpl_find_parent >> 8)
	mov	r2,#(_rpl_find_parent >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:1059: if(p != NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00109$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1060: rpl_move_parent(previous_dag, dag, p);
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_move_parent
	mov	r1,#(_rpl_move_parent >> 8)
	mov	r2,#(_rpl_move_parent >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
00109$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1063: p->rank = dio->rank;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xec
	mov	r1,a
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x12
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1067: of = rpl_find_of(dio->ocp);
	mov	a,#0x10
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_rpl_find_of
	mov	r1,#(_rpl_find_of >> 8)
	mov	r2,#(_rpl_find_of >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:1068: if(of != instance->of ||
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,sp
	add	a,#0xec
	mov	r1,a
	mov	a,#0x07
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00163$
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00110$
00163$:
	pop	ar4
	pop	ar3
	pop	ar2
;	/opt/contiki/core/net/rpl/rpl-dag.c:1069: instance->mop != dio->mop ||
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x85
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,#0x15
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00164$
	sjmp	00165$
00164$:
	ljmp	00110$
00165$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1070: instance->max_rankinc != dio->dag_max_rankinc ||
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x8D
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,#0x20
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00166$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00166$
	sjmp	00167$
00166$:
	ljmp	00110$
00167$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1071: instance->min_hoprankinc != dio->dag_min_hoprankinc ||
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x8F
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,#0x22
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00168$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00168$
	sjmp	00169$
00168$:
	ljmp	00110$
00169$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1072: instance->dio_intdoubl != dio->dag_intdoubl ||
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x86
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,#0x1A
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00170$
	sjmp	00171$
00170$:
	ljmp	00110$
00171$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1073: instance->dio_intmin != dio->dag_intmin ||
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x87
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,#0x1B
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00172$
	sjmp	00173$
00172$:
	ljmp	00110$
00173$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1074: instance->dio_redundancy != dio->dag_redund ||
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x88
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,#0x1C
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00174$
	sjmp	00175$
00174$:
	ljmp	00110$
00175$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1075: instance->default_lifetime != dio->default_lifetime ||
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x89
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,#0x1D
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00110$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1076: instance->lifetime_unit != dio->lifetime_unit) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x91
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,#0x1E
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00178$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00178$
	sjmp	00111$
00178$:
00110$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1079: rpl_remove_parent(p);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_remove_parent
	mov	r1,#(_rpl_remove_parent >> 8)
	mov	r2,#(_rpl_remove_parent >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl-dag.c:1080: dag->used = 0;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x15
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1081: return;
	ljmp	00120$
00111$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1084: dag->used = 1;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x15
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1085: dag->grounded = dio->grounded;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r1,a
	mov	a,#0x13
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x14
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1086: dag->preference = dio->preference;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r1,a
	mov	a,#0x14
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x16
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1087: dag->version = dio->version;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r1,a
	mov	a,#0x12
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x17
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1089: memcpy(&dag->dag_id, &dio->dag_id, sizeof(dio->dag_id));
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar3
	push	ar2
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:1092: memcpy(&dag->prefix_info, &dio->prefix_info, sizeof(rpl_prefix_t));
	mov	a,#0x3A
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x1F
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar3
	push	ar2
	mov	a,#0x16
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
;	/opt/contiki/core/net/rpl/rpl-dag.c:1094: rpl_set_preferred_parent(dag, p);
	mov	sp,a
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_set_preferred_parent
	mov	r1,#(_rpl_set_preferred_parent >> 8)
	mov	r2,#(_rpl_set_preferred_parent >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:1095: dag->rank = instance->of->calculate_rank(p, 0);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r1,a
	mov	a,#0x1A
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x0C
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	clr	a
	push	acc
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xe8
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xf0
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1096: dag->min_rank = dag->rank; /* So far this is the lowest rank we know of. */
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x10
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1105: rpl_process_parent_event(instance, p);
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_process_parent_event
	mov	r1,#(_rpl_process_parent_event >> 8)
	mov	r2,#(_rpl_process_parent_event >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:1106: p->dtsn = dio->dtsn;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x07
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x19
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
00120$:
	mov	a,sp
	add	a,#0xE8
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'global_repair'
;------------------------------------------------------------
;dag                       Allocated to stack - sp -23
;dio                       Allocated to stack - sp -26
;from                      Allocated to stack - sp -17
;p                         Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -14
;sloc1                     Allocated to stack - sp -11
;sloc2                     Allocated to stack - sp -8
;sloc3                     Allocated to stack - sp -2
;sloc4                     Allocated to stack - sp -1
;sloc5                     Allocated to stack - sp -5
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:1112: global_repair(uip_ipaddr_t *from, rpl_dag_t *dag, rpl_dio_t *dio)
;	-----------------------------------------
;	 function global_repair
;	-----------------------------------------
_global_repair:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0F
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:1116: remove_parents(dag, 0);
	clr	a
	push	acc
	push	acc
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_remove_parents
	mov	r1,#(_remove_parents >> 8)
	mov	r2,#(_remove_parents >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:1117: dag->version = dio->version;
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x17
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1120: dag->instance->dio_intdoubl = dio->dag_intdoubl;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x1C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x86
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x1A
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1121: dag->instance->dio_intmin = dio->dag_intmin;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x87
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x1B
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1122: dag->instance->dio_redundancy = dio->dag_redund;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x88
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1123: dag->instance->default_lifetime = dio->default_lifetime;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x89
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x1D
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1124: dag->instance->lifetime_unit = dio->lifetime_unit;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x91
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x1E
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1126: dag->instance->of->reset(dag);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:1127: dag->min_rank = INFINITE_RANK;
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf5
	mov	r1,a
	mov	a,#0x10
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1128: RPL_LOLLIPOP_INCREMENT(dag->instance->dtsn_out);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r1,a
	mov	a,#0x1C
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x84
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	ar5,r4
	mov	dpl,r6
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov  r4,a
	add	a,#0xff - 0x7F
	jnc	00102$
	mov	a,r4
	inc	a
	mov	r7,a
	mov	dpl,r6
	mov	dph,r3
	mov	b,r5
	lcall	__gptrput
	sjmp	00105$
00102$:
	mov	a,r4
	inc	a
	anl	a,#0x7F
	mov	r4,a
	mov	dpl,r6
	mov	dph,r3
	mov	b,r5
	lcall	__gptrput
00105$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1130: p = rpl_add_parent(dag, dio, from);
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_add_parent
	mov	r1,#(_rpl_add_parent >> 8)
	mov	r2,#(_rpl_add_parent >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:1131: if(p == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00108$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1133: dag->rank = INFINITE_RANK;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	ljmp	00110$
00108$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1135: dag->rank = dag->instance->of->calculate_rank(p, 0);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x07
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x0C
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1136: dag->min_rank = dag->rank;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1138: rpl_process_parent_event(dag->instance, p);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_rpl_process_parent_event
	mov	r1,#(_rpl_process_parent_event >> 8)
	mov	r2,#(_rpl_process_parent_event >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00110$:
	mov	a,sp
	add	a,#0xEE
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_local_repair'
;------------------------------------------------------------
;instance                  Allocated to registers r5 r6 r7 
;i                         Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -6
;sloc1                     Allocated to stack - sp -4
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:1148: rpl_local_repair(rpl_instance_t *instance)
;	-----------------------------------------
;	 function rpl_local_repair
;	-----------------------------------------
_rpl_local_repair:
	mov	a,sp
	add	a,#0x07
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-dag.c:1152: if(instance == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00112$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1154: return;
	ljmp	00108$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1157: for(i = 0; i < RPL_MAX_DAG_PER_INSTANCE; i++) {
00112$:
	mov	a,#0x0D
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00106$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1158: if(instance->dag_table[i].used) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,sp
	add	a,#0xf9
	mov	r1,a
	mov	a,@r0
	add	a,r2
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,ar4
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x15
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00107$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1159: instance->dag_table[i].rank = INFINITE_RANK;
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x1A
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1160: nullify_parents(&instance->dag_table[i], 0);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	clr	a
	push	acc
	push	acc
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_nullify_parents
	mov	r1,#(_nullify_parents >> 8)
	mov	r2,#(_nullify_parents >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:1164: rpl_reset_dio_timer(instance);
	pop	ar4
	pop	ar3
	pop	ar2
;	/opt/contiki/core/net/rpl/rpl-dag.c:1160: nullify_parents(&instance->dag_table[i], 0);
00107$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1157: for(i = 0; i < RPL_MAX_DAG_PER_INSTANCE; i++) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x39
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	inc	@r0
	cjne	@r0,#0x00,00125$
	inc	r0
	inc	@r0
00125$:
	mov	r0,sp
	dec	r0
	clr	c
	mov	a,@r0
	subb	a,#0x02
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00126$
	ljmp	00106$
00126$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1164: rpl_reset_dio_timer(instance);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_rpl_reset_dio_timer
	mov	r1,#(_rpl_reset_dio_timer >> 8)
	mov	r2,#(_rpl_reset_dio_timer >> 16)
	lcall	__sdcc_banked_call
00108$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_recalculate_ranks'
;------------------------------------------------------------
;p                         Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:1170: rpl_recalculate_ranks(void)
;	-----------------------------------------
;	 function rpl_recalculate_ranks
;	-----------------------------------------
_rpl_recalculate_ranks:
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:1179: p = nbr_table_head(rpl_parents);
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_nbr_table_head
	mov	r1,#(_nbr_table_head >> 8)
	mov	r2,#(_nbr_table_head >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:1180: while(p != NULL) {
00107$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00127$
	ljmp	00110$
00127$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1181: if(p->dag != NULL && p->dag->instance && (p->flags & RPL_PARENT_FLAG_UPDATED)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jnz	00128$
	ljmp	00104$
00128$:
	mov	a,#0x1C
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jnz	00129$
	ljmp	00104$
00129$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	jnb	acc.0,00104$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1182: p->flags &= ~RPL_PARENT_FLAG_UPDATED;
	anl	ar7,#0xFE
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1184: if(!rpl_process_parent_event(p->dag->instance, p)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x1C
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_rpl_process_parent_event
	mov	r1,#(_rpl_process_parent_event >> 8)
	mov	r2,#(_rpl_process_parent_event >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00104$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1188: p = nbr_table_next(rpl_parents, p);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_rpl_parents
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_nbr_table_next
	mov	r1,#(_nbr_table_next >> 8)
	mov	r2,#(_nbr_table_next >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00107$
00110$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_process_parent_event'
;------------------------------------------------------------
;p                         Allocated to stack - sp -12
;instance                  Allocated to stack - sp -6
;return_value              Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -3
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:1193: rpl_process_parent_event(rpl_instance_t *instance, rpl_parent_t *p)
;	-----------------------------------------
;	 function rpl_process_parent_event
;	-----------------------------------------
_rpl_process_parent_event:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:1202: return_value = 1;
	mov	r0,sp
	dec	r0
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rpl/rpl-dag.c:1204: if(!acceptable_rank(p->dag, p->rank)) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_acceptable_rank
	mov	r1,#(_acceptable_rank >> 8)
	mov	r2,#(_acceptable_rank >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jz	00119$
	ljmp	00105$
00119$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1208: rpl_nullify_parent(p);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_rpl_nullify_parent
	mov	r1,#(_rpl_nullify_parent >> 8)
	mov	r2,#(_rpl_nullify_parent >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:1209: if(p != instance->current_dag->preferred_parent) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x0A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x17
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00102$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1210: return 0;
	mov	dptr,#0x0000
	sjmp	00108$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1212: return_value = 0;
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00105$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1216: if(rpl_select_dag(instance, p) == NULL) {
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_select_dag
	mov	r1,#(_rpl_select_dag >> 8)
	mov	r2,#(_rpl_select_dag >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	a,r5
	orl	a,r6
	jnz	00107$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1219: rpl_local_repair(instance);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_local_repair
	mov	r1,#(_rpl_local_repair >> 8)
	mov	r2,#(_rpl_local_repair >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl-dag.c:1220: return 0;
	mov	dptr,#0x0000
	sjmp	00108$
00107$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1238: return return_value;
	mov	r0,sp
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
00108$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_process_dio'
;------------------------------------------------------------
;dio                       Allocated to stack - sp -35
;from                      Allocated to stack - sp -29
;instance                  Allocated to stack - sp -8
;dag                       Allocated to stack - sp -2
;previous_dag              Allocated to registers r5 r6 r7 
;p                         Allocated to stack - sp -5
;sloc0                     Allocated to stack - sp -26
;sloc1                     Allocated to stack - sp -23
;sloc2                     Allocated to stack - sp -20
;sloc3                     Allocated to stack - sp -18
;sloc4                     Allocated to stack - sp -15
;sloc5                     Allocated to stack - sp -12
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-dag.c:1242: rpl_process_dio(uip_ipaddr_t *from, rpl_dio_t *dio)
;	-----------------------------------------
;	 function rpl_process_dio
;	-----------------------------------------
_rpl_process_dio:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x1B
;	/opt/contiki/core/net/rpl/rpl-dag.c:1253: if(dio->mop != RPL_MOP_DEFAULT) {
	mov	sp,a
	add	a,#0xdd
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x15
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x02,00271$
	sjmp	00102$
00271$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1256: return;
	ljmp	00173$
00102$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1259: dag = get_dag(dio->instance_id, &dio->dag_id);
	mov	a,#0x18
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	r0,#_get_dag
	mov	r1,#(_get_dag >> 8)
	mov	r2,#(_get_dag >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:1260: instance = rpl_get_instance(dio->instance_id);
	mov	a,sp
	add	a,#0xdd
	mov	r0,a
	mov	a,sp
	add	a,#0xf1
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	mov	r0,#_rpl_get_instance
	mov	r1,#(_rpl_get_instance >> 8)
	mov	r2,#(_rpl_get_instance >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:1262: if(dag != NULL && instance != NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00272$
	ljmp	00123$
00272$:
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00273$
	ljmp	00123$
00273$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1263: if(lollipop_greater_than(dio->version, dag->version)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xe6
	mov	r1,a
	mov	a,#0x12
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,sp
	add	a,#0xe9
	mov	r1,a
	mov	a,#0x17
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	push	ar6
	push	ar4
	mov	dpl,r5
	mov	dph,r7
	mov	r0,#_lollipop_greater_than
	mov	r1,#(_lollipop_greater_than >> 8)
	mov	r2,#(_lollipop_greater_than >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00274$
	ljmp	00117$
00274$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1264: if(dag->rank == ROOT_RANK(instance)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1A
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x8F
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r2
	cjne	a,ar4,00275$
	mov	a,r3
	cjne	a,ar6,00275$
	sjmp	00276$
00275$:
	ljmp	00114$
00276$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1266: dag->version = dio->version;
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1267: RPL_LOLLIPOP_INCREMENT(dag->version);
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	mov	a,r7
	add	a,#0xff - 0x7F
	jnc	00104$
	mov	a,r6
	inc	a
	mov	r7,a
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	sjmp	00107$
00104$:
	mov	a,r6
	inc	a
	anl	a,#0x7F
	mov	r7,a
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
00107$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1268: rpl_reset_dio_timer(instance);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_reset_dio_timer
	mov	r1,#(_rpl_reset_dio_timer >> 8)
	mov	r2,#(_rpl_reset_dio_timer >> 16)
	lcall	__sdcc_banked_call
	ljmp	00115$
00114$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1271: if(dio->prefix_info.length != 0) {
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x3A
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x4E
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	jz	00112$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1272: if(dio->prefix_info.flags & UIP_ND6_RA_FLAG_AUTONOMOUS) {
	push	ar7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,#0x4F
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	pop	ar7
	jnb	acc.6,00112$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1274: rpl_set_prefix(dag, &dio->prefix_info.prefix, dio->prefix_info.length);
	mov	r6,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_set_prefix
	mov	r1,#(_rpl_set_prefix >> 8)
	mov	r2,#(_rpl_set_prefix >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00112$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1277: global_repair(from, dag, dio);
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xdd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_global_repair
	mov	r1,#(_global_repair >> 8)
	mov	r2,#(_global_repair >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
00115$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1279: return;
	ljmp	00173$
00117$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1282: if(lollipop_greater_than(dag->version, dio->version)) {
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	r6,#0x00
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	mov	dpl,r4
	mov	dph,r5
	mov	r0,#_lollipop_greater_than
	mov	r1,#(_lollipop_greater_than >> 8)
	mov	r2,#(_lollipop_greater_than >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jz	00123$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1285: if(dag->joined) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x16
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00123$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1286: rpl_reset_dio_timer(instance);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_reset_dio_timer
	mov	r1,#(_rpl_reset_dio_timer >> 8)
	mov	r2,#(_rpl_reset_dio_timer >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl-dag.c:1287: return;
	ljmp	00173$
00123$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1292: if(instance == NULL) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00126$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1294: rpl_join_instance(from, dio);
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_join_instance
	mov	r1,#(_rpl_join_instance >> 8)
	mov	r2,#(_rpl_join_instance >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:1295: return;
	ljmp	00173$
00126$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1298: if(instance->current_dag->rank == ROOT_RANK(instance) && instance->current_dag != dag) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x0A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x1A
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xee
	mov	r1,a
	mov	a,#0x8F
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xec
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,@r0
	cjne	a,ar2,00283$
	inc	r0
	mov	a,@r0
	cjne	a,ar3,00283$
	sjmp	00284$
00283$:
	sjmp	00128$
00284$:
	mov	r0,sp
	dec	r0
	dec	r0
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00128$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1300: return;
	ljmp	00173$
00128$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1303: if(dag == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00131$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1306: rpl_add_dag(from, dio);
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_add_dag
	mov	r1,#(_rpl_add_dag >> 8)
	mov	r2,#(_rpl_add_dag >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:1307: return;
	ljmp	00173$
00131$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1315: if(dio->rank < ROOT_RANK(instance)) {
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,sp
	add	a,#0xe6
	mov	r1,a
	mov	a,#0x12
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	clr	c
	mov	a,r7
	subb	a,@r0
	mov	a,r6
	inc	r0
	subb	a,@r0
	jnc	00136$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1318: return;
	ljmp	00173$
00136$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1319: } else if(dio->rank == INFINITE_RANK && dag->joined) {
	cjne	r7,#0xFF,00137$
	cjne	r6,#0xFF,00137$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x16
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00137$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1320: rpl_reset_dio_timer(instance);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_reset_dio_timer
	mov	r1,#(_rpl_reset_dio_timer >> 8)
	mov	r2,#(_rpl_reset_dio_timer >> 16)
	lcall	__sdcc_banked_call
00137$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1324: if(dio->prefix_info.length != 0) {
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x3A
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x4E
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,@r0
	jz	00141$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1325: if(dio->prefix_info.flags & UIP_ND6_RA_FLAG_AUTONOMOUS) {
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x4F
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	jnb	acc.6,00141$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1327: rpl_set_prefix(dag, &dio->prefix_info.prefix, dio->prefix_info.length);
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar6,@r0
	mov	r7,#0x00
	push	ar6
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_set_prefix
	mov	r1,#(_rpl_set_prefix >> 8)
	mov	r2,#(_rpl_set_prefix >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-dag.c:1412: p->dtsn = dio->dtsn;
;	/opt/contiki/core/net/rpl/rpl-dag.c:1327: rpl_set_prefix(dag, &dio->prefix_info.prefix, dio->prefix_info.length);
00141$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1331: if(dag->rank == ROOT_RANK(instance)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	cjne	a,ar6,00145$
	mov	a,r4
	cjne	a,ar7,00145$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1332: if(dio->rank != INFINITE_RANK) {
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	cjne	r6,#0xFF,00295$
	cjne	r7,#0xFF,00295$
	sjmp	00143$
00295$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1333: instance->dio_counter++;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x8C
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	inc	r7
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
00143$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1335: return;
	ljmp	00173$
00145$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1339: dag->lifetime = (1UL << (instance->dio_intmin + instance->dio_intdoubl)) / 1000;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xe9
	mov	r1,a
	mov	a,#0x35
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x87
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	r6,#0x00
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x86
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,#0x00
	add	a,r7
	mov	r2,a
	mov	a,r4
	addc	a,r6
	mov	b,r2
	inc	b
	mov	r2,#0x01
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r7,#0x00
	sjmp	00297$
00296$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	r7,a
00297$:
	djnz	b,00296$
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	add	a,#0xe9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1351: p = rpl_find_parent(dag, from);
	mov	a,sp
	add	a,#0xe3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_find_parent
	mov	r1,#(_rpl_find_parent >> 8)
	mov	r2,#(_rpl_find_parent >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-dag.c:1352: if(p == NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00298$
	ljmp	00158$
00298$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1353: previous_dag = find_parent_dag(instance, from);
	mov	a,sp
	add	a,#0xe3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_find_parent_dag
	mov	r1,#(_find_parent_dag >> 8)
	mov	r2,#(_find_parent_dag >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-dag.c:1354: if(previous_dag == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00151$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1356: p = rpl_add_parent(dag, dio, from);
	mov	a,sp
	add	a,#0xe3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_add_parent
	mov	r1,#(_rpl_add_parent >> 8)
	mov	r2,#(_rpl_add_parent >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:1357: if(p == NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00300$
	ljmp	00159$
00300$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1361: return;
	ljmp	00173$
00151$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1367: p = rpl_find_parent(previous_dag, from);
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_rpl_find_parent
	mov	r1,#(_rpl_find_parent >> 8)
	mov	r2,#(_rpl_find_parent >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl-dag.c:1368: if(p != NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00301$
	ljmp	00159$
00301$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1369: rpl_move_parent(previous_dag, dag, p);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_rpl_move_parent
	mov	r1,#(_rpl_move_parent >> 8)
	mov	r2,#(_rpl_move_parent >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	sjmp	00159$
00158$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1373: if(p->rank == dio->rank) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	cjne	a,ar4,00159$
	mov	a,r6
	cjne	a,ar7,00159$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1375: if(dag->joined) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x16
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00159$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1376: instance->dio_counter++;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x8C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
00159$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1380: p->rank = dio->rank;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1383: p->flags |= RPL_PARENT_FLAG_UPDATED;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	orl	ar4,#0x01
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-dag.c:1397: if(rpl_process_parent_event(instance, p) == 0) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_process_parent_event
	mov	r1,#(_rpl_process_parent_event >> 8)
	mov	r2,#(_rpl_process_parent_event >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00161$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1399: return;
	ljmp	00173$
00161$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1403: if(dag->joined && p == dag->preferred_parent) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x16
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00306$
	ljmp	00171$
00306$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x17
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00308$
	ljmp	00171$
00308$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1404: if(should_send_dao(instance, dio, p)) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_should_send_dao
	mov	r1,#(_should_send_dao >> 8)
	mov	r2,#(_should_send_dao >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	a,r6
	orl	a,r7
	jz	00169$
;	/opt/contiki/core/net/rpl/rpl-dag.c:1405: RPL_LOLLIPOP_INCREMENT(instance->dtsn_out);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x84
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r4,a
	add	a,#0xff - 0x7F
	jnc	00163$
	mov	a,r4
	inc	a
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	sjmp	00166$
00163$:
	mov	a,r4
	inc	a
	anl	a,#0x7F
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
00166$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1406: rpl_schedule_dao(instance);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_schedule_dao
	mov	r1,#(_rpl_schedule_dao >> 8)
	mov	r2,#(_rpl_schedule_dao >> 16)
	lcall	__sdcc_banked_call
00169$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1410: uip_ds6_defrt_add(from, RPL_DEFAULT_ROUTE_INFINITE_LIFETIME ? 0 : RPL_LIFETIME(instance, instance->default_lifetime));
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x91
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x89
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	r7,#0x00
	mov	r6,#0x00
	mov	r5,#0x00
	push	ar2
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_ds6_defrt_add
	mov	r1,#(_uip_ds6_defrt_add >> 8)
	mov	r2,#(_uip_ds6_defrt_add >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00171$:
;	/opt/contiki/core/net/rpl/rpl-dag.c:1412: p->dtsn = dio->dtsn;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x19
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
00173$:
	mov	a,sp
	add	a,#0xE2
	mov	sp,a
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_objective_functions:
	.byte _rpl_mrhof, (_rpl_mrhof >> 8),#0x00
___str_0:
	.ascii "RPL: rank %u dioint %u, %u nbr(s)"
	.db 0x0A
	.db 0x00
___str_1:
	.ascii "RPL: nbr %3u %5u, %5u => %5u %c (last tx %u min ago)"
	.db 0x0A
	.db 0x00
___str_2:
	.ascii "RPL: end of list"
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
__xinit__rpl_parents_struct:
	.byte #0x00,#0x00	;  0
	.byte #0x09,#0x00	;  9
	.byte #0x00,#0x00,#0x00
	.byte __rpl_parents_mem, (__rpl_parents_mem >> 8),#0x00
__xinit__rpl_parents:
	.byte _rpl_parents_struct, (_rpl_parents_struct >> 8),#0x00
	.area CABS    (ABS,CODE)
