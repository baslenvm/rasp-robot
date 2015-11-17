;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Wed Nov 18 02:57:35 2015
;--------------------------------------------------------
	.module rpl
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rpl_ipv6_neighbor_callback
	.globl _rpl_link_neighbor_callback
	.globl _rpl_reset_periodic_timer
	.globl _rpl_cancel_dao
	.globl _rpl_schedule_dao_immediately
	.globl _rpl_find_parent_any_dag
	.globl _rpl_free_dag
	.globl _rpl_icmp6_register_handlers
	.globl _dao_output_target
	.globl _dao_output
	.globl _rpl_dag_init
	.globl _uip_ds6_set_addr_iid
	.globl _uip_ds6_maddr_add
	.globl _uip_ds6_route_next
	.globl _uip_ds6_route_head
	.globl _uip_ds6_route_nexthop
	.globl _uip_ds6_route_rm
	.globl _uip_ds6_route_add
	.globl _clock_time
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
	.globl _rpl_get_mode
	.globl _rpl_set_mode
	.globl _rpl_purge_routes
	.globl _rpl_remove_routes
	.globl _rpl_remove_routes_by_nexthop
	.globl _rpl_add_route
	.globl _rpl_purge_dags
	.globl _rpl_init
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
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_mode:
	.ds 1
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
;Allocation info for local variables in function 'rpl_get_mode'
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl.c:65: rpl_get_mode(void)
;	-----------------------------------------
;	 function rpl_get_mode
;	-----------------------------------------
_rpl_get_mode:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	/opt/contiki/core/net/rpl/rpl.c:67: return mode;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_set_mode'
;------------------------------------------------------------
;m                         Allocated to registers r7 
;oldmode                   Allocated to registers r6 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl.c:71: rpl_set_mode(enum rpl_mode m)
;	-----------------------------------------
;	 function rpl_set_mode
;	-----------------------------------------
_rpl_set_mode:
	mov	r7,dpl
;	/opt/contiki/core/net/rpl/rpl.c:73: enum rpl_mode oldmode = mode;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r6,a
;	/opt/contiki/core/net/rpl/rpl.c:77: if(m == RPL_MODE_MESH) {
	mov	a,r7
	jnz	00111$
;	/opt/contiki/core/net/rpl/rpl.c:84: mode = m;
	mov	dptr,#_mode
	mov	a,r7
	movx	@dptr,a
;	/opt/contiki/core/net/rpl/rpl.c:86: if(default_instance != NULL) {
	mov	dptr,#_default_instance
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_default_instance
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00131$
	ljmp	00112$
00131$:
;	/opt/contiki/core/net/rpl/rpl.c:87: rpl_schedule_dao_immediately(default_instance);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar6
	mov	r0,#_rpl_schedule_dao_immediately
	mov	r1,#(_rpl_schedule_dao_immediately >> 8)
	mov	r2,#(_rpl_schedule_dao_immediately >> 16)
	lcall	__sdcc_banked_call
	pop	ar6
	ljmp	00112$
00111$:
;	/opt/contiki/core/net/rpl/rpl.c:89: } else if(m == RPL_MODE_FEATHER) {
	cjne	r7,#0x01,00132$
	sjmp	00133$
00132$:
	ljmp	00108$
00133$:
;	/opt/contiki/core/net/rpl/rpl.c:92: if(default_instance != NULL) {
	mov	dptr,#_default_instance
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_default_instance
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00106$
;	/opt/contiki/core/net/rpl/rpl.c:94: if(default_instance->current_dag != NULL) {
	mov	a,#0x0A
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,r3
	orl	a,r4
	jz	00104$
;	/opt/contiki/core/net/rpl/rpl.c:95: dao_output(default_instance->current_dag->preferred_parent, RPL_ZERO_LIFETIME);
	mov	a,#0x17
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	push	ar7
	push	ar6
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_dao_output
	mov	r1,#(_dao_output >> 8)
	mov	r2,#(_dao_output >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	pop	ar6
	pop	ar7
00104$:
;	/opt/contiki/core/net/rpl/rpl.c:97: rpl_cancel_dao(default_instance);
	mov	dptr,#_default_instance
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	mov	r0,#_rpl_cancel_dao
	mov	r1,#(_rpl_cancel_dao >> 8)
	mov	r2,#(_rpl_cancel_dao >> 16)
	lcall	__sdcc_banked_call
	pop	ar6
	pop	ar7
00106$:
;	/opt/contiki/core/net/rpl/rpl.c:102: mode = m;
	mov	dptr,#_mode
	mov	a,r7
	movx	@dptr,a
	sjmp	00112$
00108$:
;	/opt/contiki/core/net/rpl/rpl.c:104: mode = m;
	mov	dptr,#_mode
	mov	a,r7
	movx	@dptr,a
00112$:
;	/opt/contiki/core/net/rpl/rpl.c:107: return oldmode;
	mov	dpl,r6
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_purge_routes'
;------------------------------------------------------------
;r                         Allocated to stack - sp -21
;prefix                    Allocated to stack - sp -18
;dag                       Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -28
;sloc1                     Allocated to stack - sp -24
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl.c:111: rpl_purge_routes(void)
;	-----------------------------------------
;	 function rpl_purge_routes
;	-----------------------------------------
_rpl_purge_routes:
	mov	a,sp
	add	a,#0x1D
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl.c:121: r = uip_ds6_route_head();
	mov	r0,#_uip_ds6_route_head
	mov	r1,#(_uip_ds6_route_head >> 8)
	mov	r2,#(_uip_ds6_route_head >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl.c:123: while(r != NULL) {
00103$:
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00137$
	ljmp	00105$
00137$:
;	/opt/contiki/core/net/rpl/rpl.c:124: if(r->state.lifetime >= 1) {
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,sp
	add	a,#0xe8
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
	add	a,#0xe8
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,#0x01
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00102$
;	/opt/contiki/core/net/rpl/rpl.c:130: r->state.lifetime--;
	dec	r4
	cjne	r4,#0xFF,00139$
	dec	r5
	cjne	r5,#0xFF,00139$
	dec	r6
	cjne	r6,#0xFF,00139$
	dec	r7
00139$:
	mov	a,sp
	add	a,#0xe8
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
00102$:
;	/opt/contiki/core/net/rpl/rpl.c:132: r = uip_ds6_route_next(r);
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_ds6_route_next
	mov	r1,#(_uip_ds6_route_next >> 8)
	mov	r2,#(_uip_ds6_route_next >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00103$
00105$:
;	/opt/contiki/core/net/rpl/rpl.c:136: r = uip_ds6_route_head();
	mov	r0,#_uip_ds6_route_head
	mov	r1,#(_uip_ds6_route_head >> 8)
	mov	r2,#(_uip_ds6_route_head >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl.c:138: while(r != NULL) {
00111$:
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00140$
	ljmp	00114$
00140$:
;	/opt/contiki/core/net/rpl/rpl.c:139: if(r->state.lifetime < 1) {
	mov	a,sp
	add	a,#0xeb
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
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,#0x01
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	mov	a,r4
	subb	a,#0x00
	jc	00141$
	ljmp	00109$
00141$:
;	/opt/contiki/core/net/rpl/rpl.c:142: uip_ipaddr_copy(&prefix, &r->ipaddr);
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	ar4,r7
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	mov	a,sp
	add	a,#0xEE
	mov	@r0,a
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	r7,#0x40
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
;	/opt/contiki/core/net/rpl/rpl.c:143: uip_ds6_route_rm(r);
	mov	sp,a
	add	a,#0xeb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_ds6_route_rm
	mov	r1,#(_uip_ds6_route_rm >> 8)
	mov	r2,#(_uip_ds6_route_rm >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl.c:144: r = uip_ds6_route_head();
	mov	r0,#_uip_ds6_route_head
	mov	r1,#(_uip_ds6_route_head >> 8)
	mov	r2,#(_uip_ds6_route_head >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl.c:147: dag = default_instance->current_dag;
	mov	dptr,#_default_instance
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
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
;	/opt/contiki/core/net/rpl/rpl.c:149: if(dag->rank != ROOT_RANK(default_instance)) {
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
	mov	a,#0x8F
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
	mov	a,r2
	cjne	a,ar5,00142$
	mov	a,r3
	cjne	a,ar6,00142$
	ljmp	00111$
00142$:
;	/opt/contiki/core/net/rpl/rpl.c:151: dao_output_target(dag->preferred_parent, &prefix, RPL_ZERO_LIFETIME);
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	mov	r5,#0x40
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
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_dao_output_target
	mov	r1,#(_dao_output_target >> 8)
	mov	r2,#(_dao_output_target >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl.c:153: return;
	sjmp	00114$
00109$:
;	/opt/contiki/core/net/rpl/rpl.c:157: r = uip_ds6_route_next(r);
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_ds6_route_next
	mov	r1,#(_uip_ds6_route_next >> 8)
	mov	r2,#(_uip_ds6_route_next >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00111$
00114$:
	mov	a,sp
	add	a,#0xE3
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_remove_routes'
;------------------------------------------------------------
;dag                       Allocated to stack - sp -2
;r                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl.c:177: rpl_remove_routes(rpl_dag_t *dag)
;	-----------------------------------------
;	 function rpl_remove_routes
;	-----------------------------------------
_rpl_remove_routes:
	push	dpl
	push	dph
	push	b
;	/opt/contiki/core/net/rpl/rpl.c:184: r = uip_ds6_route_head();
	mov	r0,#_uip_ds6_route_head
	mov	r1,#(_uip_ds6_route_head >> 8)
	mov	r2,#(_uip_ds6_route_head >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	/opt/contiki/core/net/rpl/rpl.c:186: while(r != NULL) {
00104$:
	mov	a,r2
	orl	a,r3
	jnz	00118$
	ljmp	00107$
00118$:
;	/opt/contiki/core/net/rpl/rpl.c:187: if(r->state.dag == dag) {
	mov	a,#0x16
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,#0x04
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
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
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
	jz	00120$
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00102$
00120$:
	pop	ar4
	pop	ar3
	pop	ar2
;	/opt/contiki/core/net/rpl/rpl.c:188: uip_ds6_route_rm(r);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_uip_ds6_route_rm
	mov	r1,#(_uip_ds6_route_rm >> 8)
	mov	r2,#(_uip_ds6_route_rm >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl.c:189: r = uip_ds6_route_head();
	mov	r0,#_uip_ds6_route_head
	mov	r1,#(_uip_ds6_route_head >> 8)
	mov	r2,#(_uip_ds6_route_head >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	ljmp	00104$
00102$:
;	/opt/contiki/core/net/rpl/rpl.c:191: r = uip_ds6_route_next(r);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_uip_ds6_route_next
	mov	r1,#(_uip_ds6_route_next >> 8)
	mov	r2,#(_uip_ds6_route_next >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	ljmp	00104$
00107$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_remove_routes_by_nexthop'
;------------------------------------------------------------
;dag                       Allocated to stack - sp -11
;nexthop                   Allocated to stack - sp -5
;r                         Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl.c:210: rpl_remove_routes_by_nexthop(uip_ipaddr_t *nexthop, rpl_dag_t *dag)
;	-----------------------------------------
;	 function rpl_remove_routes_by_nexthop
;	-----------------------------------------
_rpl_remove_routes_by_nexthop:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/net/rpl/rpl.c:214: r = uip_ds6_route_head();
	mov	r0,#_uip_ds6_route_head
	mov	r1,#(_uip_ds6_route_head >> 8)
	mov	r2,#(_uip_ds6_route_head >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl.c:216: while(r != NULL) {
00105$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00122$
	ljmp	00108$
00122$:
;	/opt/contiki/core/net/rpl/rpl.c:217: if(uip_ipaddr_cmp(uip_ds6_route_nexthop(r), nexthop) &&
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_uip_ds6_route_nexthop
	mov	r1,#(_uip_ds6_route_nexthop >> 8)
	mov	r2,#(_uip_ds6_route_nexthop >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
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
	jz	00123$
	ljmp	00102$
00123$:
;	/opt/contiki/core/net/rpl/rpl.c:218: r->state.dag == dag) {
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
	mov	a,#0x04
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
	add	a,#0xf5
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
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
	jz	00125$
	sjmp	00102$
00125$:
;	/opt/contiki/core/net/rpl/rpl.c:219: uip_ds6_route_rm(r);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_ds6_route_rm
	mov	r1,#(_uip_ds6_route_rm >> 8)
	mov	r2,#(_uip_ds6_route_rm >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl.c:220: r = uip_ds6_route_head();
	mov	r0,#_uip_ds6_route_head
	mov	r1,#(_uip_ds6_route_head >> 8)
	mov	r2,#(_uip_ds6_route_head >> 16)
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
	ljmp	00105$
00102$:
;	/opt/contiki/core/net/rpl/rpl.c:222: r = uip_ds6_route_next(r);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_ds6_route_next
	mov	r1,#(_uip_ds6_route_next >> 8)
	mov	r2,#(_uip_ds6_route_next >> 16)
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
	ljmp	00105$
00108$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_add_route'
;------------------------------------------------------------
;prefix                    Allocated to stack - sp -18
;prefix_len                Allocated to stack - sp -20
;next_hop                  Allocated to stack - sp -23
;dag                       Allocated to stack - sp -12
;rep                       Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -6
;sloc1                     Allocated to stack - sp -9
;sloc2                     Allocated to stack - sp -6
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl.c:229: rpl_add_route(rpl_dag_t *dag, uip_ipaddr_t *prefix, int prefix_len,
;	-----------------------------------------
;	 function rpl_add_route
;	-----------------------------------------
_rpl_add_route:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0A
;	/opt/contiki/core/net/rpl/rpl.c:234: if((rep = uip_ds6_route_add(prefix, prefix_len, next_hop)) == NULL) {
	mov	sp,a
	add	a,#0xec
	mov	r0,a
	mov	ar4,@r0
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
	push	ar4
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_ds6_route_add
	mov	r1,#(_uip_ds6_route_add >> 8)
	mov	r2,#(_uip_ds6_route_add >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	a,r2
	orl	a,r3
;	/opt/contiki/core/net/rpl/rpl.c:236: return NULL;
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00103$
00102$:
;	/opt/contiki/core/net/rpl/rpl.c:239: rep->state.dag = dag;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf7
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1A
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl.c:240: rep->state.lifetime = RPL_LIFETIME(dag->instance, dag->instance->default_lifetime);
	mov	a,sp
	add	a,#0xf4
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
	mov	a,#0x91
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
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x89
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
	mov	r6,#0x00
	mov	r4,#0x00
	push	ar5
	push	ar7
	push	ar6
	push	ar4
	mov	a,sp
	add	a,#0xf6
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
	add	a,#0xf7
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
;	/opt/contiki/core/net/rpl/rpl.c:241: rep->state.learned_from = RPL_ROUTE_FROM_INTERNAL;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1D
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
;	/opt/contiki/core/net/rpl/rpl.c:249: return rep;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00103$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF3
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_link_neighbor_callback'
;------------------------------------------------------------
;status                    Allocated to stack - sp -29
;numtx                     Allocated to stack - sp -31
;addr                      Allocated to registers r5 r6 r7 
;ipaddr                    Allocated to stack - sp -18
;parent                    Allocated to stack - sp -2
;instance                  Allocated to registers 
;end                       Allocated to registers 
;sloc0                     Allocated to stack - sp -24
;sloc1                     Allocated to stack - sp -21
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl.c:253: rpl_link_neighbor_callback(const linkaddr_t *addr, int status, int numtx)
;	-----------------------------------------
;	 function rpl_link_neighbor_callback
;	-----------------------------------------
_rpl_link_neighbor_callback:
	mov	a,sp
	add	a,#0x19
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl.c:260: uip_ip6addr(&ipaddr, 0xfe80, 0, 0, 0, 0, 0, 0, 0);
	mov	a,sp
	add	a,#0xEE
	mov	r0,a
	mov	@r0,#0xFE
	inc	r0
	mov	@r0,#0x80
	mov	a,sp
	add	a,#0xEE
	mov	r4,a
	add	a,#0x02
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x04
	add	a,r4
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x06
	add	a,r4
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x08
	add	a,r4
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x0A
	add	a,r4
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x0C
	add	a,r4
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x0E
	add	a,r4
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rpl/rpl.c:261: uip_ds6_set_addr_iid(&ipaddr, (uip_lladdr_t *)addr);
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xEE
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	r7,#0x40
	push	ar4
	mov	a,sp
	add	a,#0xe7
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
	mov	b,r7
	mov	r0,#_uip_ds6_set_addr_iid
	mov	r1,#(_uip_ds6_set_addr_iid >> 8)
	mov	r2,#(_uip_ds6_set_addr_iid >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
;	/opt/contiki/core/net/rpl/rpl.c:263: for(instance = &instance_table[0], end = instance + RPL_MAX_INSTANCES; instance < end; ++instance) {
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	@r0,ar4
	mov	r4,#_instance_table
	mov	r5,#(_instance_table >> 8)
	mov	r6,#0x00
00112$:
	mov	a,#(_instance_table + 0x00ed)
	push	acc
	mov	a,#((_instance_table + 0x00ed) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00132$
	ljmp	00114$
00132$:
;	/opt/contiki/core/net/rpl/rpl.c:264: if(instance->used == 1 ) {
	mov	a,#0x83
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x01,00133$
	sjmp	00134$
00133$:
	ljmp	00113$
00134$:
;	/opt/contiki/core/net/rpl/rpl.c:265: parent = rpl_find_parent_any_dag(instance, &ipaddr);
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	r7,#0x40
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	push	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	r0,#_rpl_find_parent_any_dag
	mov	r1,#(_rpl_find_parent_any_dag >> 8)
	mov	r2,#(_rpl_find_parent_any_dag >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl.c:266: if(parent != NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00135$
	ljmp	00113$
00135$:
;	/opt/contiki/core/net/rpl/rpl.c:269: parent->flags |= RPL_PARENT_FLAG_UPDATED;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xeb
	mov	r1,a
	mov	a,#0x08
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
	add	a,#0xeb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	orl	ar7,#0x01
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl.c:270: if(instance->of->neighbor_link_callback != NULL) {
	mov	a,#0x07
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r2
	orl	a,r3
	jnz	00136$
	ljmp	00113$
00136$:
;	/opt/contiki/core/net/rpl/rpl.c:271: instance->of->neighbor_link_callback(parent, status, numtx);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xdb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xdb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	push	ar7
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
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl.c:272: parent->last_tx_time = clock_time();
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xeb
	mov	r1,a
	mov	a,#0x05
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
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#_clock_time
	mov	r1,#(_clock_time >> 8)
	mov	r2,#(_clock_time >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	pop	ar6
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00113$:
;	/opt/contiki/core/net/rpl/rpl.c:263: for(instance = &instance_table[0], end = instance + RPL_MAX_INSTANCES; instance < end; ++instance) {
	mov	a,#0xED
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	ljmp	00112$
00114$:
	mov	a,sp
	add	a,#0xE7
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_ipv6_neighbor_callback'
;------------------------------------------------------------
;nbr                       Allocated to stack - sp -2
;p                         Allocated to registers r5 r6 r7 
;instance                  Allocated to registers 
;end                       Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl.c:280: rpl_ipv6_neighbor_callback(uip_ds6_nbr_t *nbr)
;	-----------------------------------------
;	 function rpl_ipv6_neighbor_callback
;	-----------------------------------------
_rpl_ipv6_neighbor_callback:
	push	dpl
	push	dph
	push	b
;	/opt/contiki/core/net/rpl/rpl.c:289: for(instance = &instance_table[0], end = instance + RPL_MAX_INSTANCES; instance < end; ++instance) {
	mov	r2,#_instance_table
	mov	r3,#(_instance_table >> 8)
	mov	r4,#0x00
00107$:
	mov	a,#(_instance_table + 0x00ed)
	push	acc
	mov	a,#((_instance_table + 0x00ed) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00124$
	ljmp	00109$
00124$:
;	/opt/contiki/core/net/rpl/rpl.c:290: if(instance->used == 1 ) {
	mov	a,#0x83
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
	cjne	r5,#0x01,00125$
	sjmp	00126$
00125$:
	ljmp	00108$
00126$:
;	/opt/contiki/core/net/rpl/rpl.c:291: p = rpl_find_parent_any_dag(instance, &nbr->ipaddr);
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_rpl_find_parent_any_dag
	mov	r1,#(_rpl_find_parent_any_dag >> 8)
	mov	r2,#(_rpl_find_parent_any_dag >> 16)
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
;	/opt/contiki/core/net/rpl/rpl.c:292: if(p != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	/opt/contiki/core/net/rpl/rpl.c:293: p->rank = INFINITE_RANK;
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x03
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
;	/opt/contiki/core/net/rpl/rpl.c:296: p->flags |= RPL_PARENT_FLAG_UPDATED;
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
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
;	/opt/contiki/core/net/rpl/rpl.c:289: for(instance = &instance_table[0], end = instance + RPL_MAX_INSTANCES; instance < end; ++instance) {
	pop	ar4
	pop	ar3
	pop	ar2
;	/opt/contiki/core/net/rpl/rpl.c:296: p->flags |= RPL_PARENT_FLAG_UPDATED;
00108$:
;	/opt/contiki/core/net/rpl/rpl.c:289: for(instance = &instance_table[0], end = instance + RPL_MAX_INSTANCES; instance < end; ++instance) {
	mov	a,#0xED
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	ljmp	00107$
00109$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_purge_dags'
;------------------------------------------------------------
;instance                  Allocated to registers 
;end                       Allocated to registers 
;i                         Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -13
;sloc1                     Allocated to stack - sp -2
;sloc2                     Allocated to stack - sp -10
;sloc3                     Allocated to stack - sp -7
;sloc4                     Allocated to stack - sp +6
;sloc5                     Allocated to stack - sp -4
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl.c:303: rpl_purge_dags(void)
;	-----------------------------------------
;	 function rpl_purge_dags
;	-----------------------------------------
_rpl_purge_dags:
	mov	a,sp
	add	a,#0x0E
;	/opt/contiki/core/net/rpl/rpl.c:309: for(instance = &instance_table[0], end = instance + RPL_MAX_INSTANCES;
	mov	sp,a
	add	a,#0xfc
	mov	r0,a
	mov	@r0,#_instance_table
	inc	r0
	mov	@r0,#(_instance_table >> 8)
	inc	r0
	mov	@r0,#0x00
00115$:
;	/opt/contiki/core/net/rpl/rpl.c:310: instance < end; ++instance) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#(_instance_table + 0x00ed)
	push	acc
	mov	a,#((_instance_table + 0x00ed) >> 8)
	push	acc
	clr	a
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
	jc	00142$
	ljmp	00117$
00142$:
;	/opt/contiki/core/net/rpl/rpl.c:311: if(instance->used) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x83
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
	jnz	00143$
	ljmp	00116$
00143$:
;	/opt/contiki/core/net/rpl/rpl.c:312: for(i = 0; i < RPL_MAX_DAG_PER_INSTANCE; i++) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,sp
	add	a,#0xf3
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
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r6,#0x00
	mov	r5,#0x00
00112$:
;	/opt/contiki/core/net/rpl/rpl.c:313: if(instance->dag_table[i].used) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	a,r6
	add	a,@r0
	mov	@r1,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf6
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
	jnz	00144$
	ljmp	00113$
00144$:
;	/opt/contiki/core/net/rpl/rpl.c:314: if(instance->dag_table[i].lifetime == 0) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,sp
	add	a,#0xf9
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
	add	a,#0xf9
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r7
	jnz	00104$
;	/opt/contiki/core/net/rpl/rpl.c:315: if(!instance->dag_table[i].joined) {
	mov	a,sp
	add	a,#0xf6
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
	jnz	00113$
;	/opt/contiki/core/net/rpl/rpl.c:319: rpl_free_dag(&instance->dag_table[i]);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	push	ar5
	mov	r0,#_rpl_free_dag
	mov	r1,#(_rpl_free_dag >> 8)
	mov	r2,#(_rpl_free_dag >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	sjmp	00113$
00104$:
;	/opt/contiki/core/net/rpl/rpl.c:322: instance->dag_table[i].lifetime--;
	dec	r2
	cjne	r2,#0xFF,00147$
	dec	r3
	cjne	r3,#0xFF,00147$
	dec	r4
	cjne	r4,#0xFF,00147$
	dec	r7
00147$:
	mov	a,sp
	add	a,#0xf9
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
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00113$:
;	/opt/contiki/core/net/rpl/rpl.c:312: for(i = 0; i < RPL_MAX_DAG_PER_INSTANCE; i++) {
	mov	a,#0x39
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	r0,sp
	dec	r0
	inc	@r0
	cjne	@r0,#0x00,00148$
	inc	r0
	inc	@r0
00148$:
	mov	r0,sp
	dec	r0
	clr	c
	mov	a,@r0
	subb	a,#0x02
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00149$
	ljmp	00112$
00149$:
00116$:
;	/opt/contiki/core/net/rpl/rpl.c:310: instance < end; ++instance) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xED
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	ljmp	00115$
00117$:
	mov	a,sp
	add	a,#0xF2
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_init'
;------------------------------------------------------------
;rplmaddr                  Allocated to stack - sp -15
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl.c:331: rpl_init(void)
;	-----------------------------------------
;	 function rpl_init
;	-----------------------------------------
_rpl_init:
	mov	a,sp
	add	a,#0x10
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl.c:335: default_instance = NULL;
	mov	dptr,#_default_instance
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/rpl/rpl.c:337: rpl_dag_init();
	mov	r0,#_rpl_dag_init
	mov	r1,#(_rpl_dag_init >> 8)
	mov	r2,#(_rpl_dag_init >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl.c:338: rpl_reset_periodic_timer();
	mov	r0,#_rpl_reset_periodic_timer
	mov	r1,#(_rpl_reset_periodic_timer >> 8)
	mov	r2,#(_rpl_reset_periodic_timer >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl.c:339: rpl_icmp6_register_handlers();
	mov	r0,#_rpl_icmp6_register_handlers
	mov	r1,#(_rpl_icmp6_register_handlers >> 8)
	mov	r2,#(_rpl_icmp6_register_handlers >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl.c:342: uip_create_linklocal_rplnodes_mcast(&rplmaddr);
	mov	a,sp
	add	a,#0xF1
	mov	r0,a
	mov	@r0,#0xFF
	inc	r0
	mov	@r0,#0x02
	mov	a,sp
	add	a,#0xF1
	mov	r7,a
	add	a,#0x02
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x04
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x06
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x08
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x0A
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x0C
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x0E
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x1A
;	/opt/contiki/core/net/rpl/rpl.c:343: uip_ds6_maddr_add(&rplmaddr);
	mov	a,sp
	add	a,#0xF1
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	r0,#_uip_ds6_maddr_add
	mov	r1,#(_uip_ds6_maddr_add >> 8)
	mov	r2,#(_uip_ds6_maddr_add >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl.c:349: RPL_OF.reset(NULL);
	mov	dptr,#_rpl_mrhof
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0x00
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xF0
	mov	sp,a
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__mode:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
