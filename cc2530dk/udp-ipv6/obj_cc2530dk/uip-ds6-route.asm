;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Wed Nov 18 02:57:31 2015
;--------------------------------------------------------
	.module uip_ds6_route
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uip_debug_ipaddr_print
	.globl _memb_free
	.globl _memb_alloc
	.globl _memb_init
	.globl _uip_ds6_nbr_lladdr_from_ipaddr
	.globl _uip_ds6_nbr_ipaddr_from_lladdr
	.globl _uip_ds6_nbr_lookup
	.globl _nbr_table_get_lladdr
	.globl _nbr_table_lock
	.globl _nbr_table_remove
	.globl _nbr_table_get_from_lladdr
	.globl _nbr_table_add_lladdr
	.globl _nbr_table_register
	.globl _list_item_next
	.globl _list_length
	.globl _list_remove
	.globl _list_add
	.globl _list_push
	.globl _list_tail
	.globl _list_head
	.globl _list_init
	.globl _stimer_expired
	.globl _stimer_set
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
	.globl _uip_ds6_notification_add
	.globl _uip_ds6_notification_rm
	.globl _uip_ds6_route_init
	.globl _uip_ds6_route_nexthop
	.globl _uip_ds6_route_head
	.globl _uip_ds6_route_next
	.globl _uip_ds6_route_num_routes
	.globl _uip_ds6_route_lookup
	.globl _uip_ds6_route_add
	.globl _uip_ds6_route_rm
	.globl _uip_ds6_route_rm_by_nexthop
	.globl _uip_ds6_defrt_add
	.globl _uip_ds6_defrt_rm
	.globl _uip_ds6_defrt_lookup
	.globl _uip_ds6_defrt_choose
	.globl _uip_ds6_defrt_periodic
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
__nbr_routes_mem:
	.ds 24
_neighborroutememb_memb_count:
	.ds 4
_neighborroutememb_memb_mem:
	.ds 24
_routememb_memb_count:
	.ds 4
_routememb_memb_mem:
	.ds 128
_defaultroutermemb_memb_count:
	.ds 2
_defaultroutermemb_memb_mem:
	.ds 56
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_nbr_routes_struct:
	.ds 10
_nbr_routes:
	.ds 3
_neighborroutememb:
	.ds 10
_routelist_list:
	.ds 3
_routelist:
	.ds 3
_routememb:
	.ds 10
_defaultrouterlist_list:
	.ds 3
_defaultrouterlist:
	.ds 3
_defaultroutermemb:
	.ds 10
_notificationlist_list:
	.ds 3
_notificationlist:
	.ds 3
_num_routes:
	.ds 2
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
;Allocation info for local variables in function 'call_route_callback'
;------------------------------------------------------------
;route                     Allocated to stack - sp -9
;nexthop                   Allocated to stack - sp -12
;event                     Allocated to stack - sp -3
;num                       Allocated to stack - sp -1
;n                         Allocated to registers r3 r4 r5 
;sloc0                     Allocated to stack - sp -1
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:111: call_route_callback(int event, uip_ipaddr_t *route,
;	-----------------------------------------
;	 function call_route_callback
;	-----------------------------------------
_call_route_callback:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	dpl
	push	dph
	inc	sp
	inc	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:116: for(n = list_head(notificationlist);
	mov	dptr,#_notificationlist
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
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	a
	cjne	@r0,#0x01,00120$
	inc	r0
	cjne	@r0,#0x00,00120$
	inc	a
00120$:
	mov	r2,a
00107$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:117: n != NULL;
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00122$
	ljmp	00109$
00122$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:119: if(event == UIP_DS6_NOTIFICATION_DEFRT_ADD ||
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00101$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:120: event == UIP_DS6_NOTIFICATION_DEFRT_RM) {
	mov	a,r2
	jz	00102$
00101$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:121: num = list_length(defaultrouterlist);
	push	ar2
	mov	dptr,#_defaultrouterlist
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_list_length
	mov	r1,#(_list_length >> 8)
	mov	r2,#(_list_length >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	pop	ar2
	sjmp	00103$
00102$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:123: num = num_routes;
	mov	dptr,#_num_routes
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,sp
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00103$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:125: n->callback(event, route, nexthop, num);
	push	ar2
	mov	a,#0x03
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
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
	push	ar5
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
	push	ar2
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:118: n = list_item_next(n)) {
	mov	ar2,r3
	mov	ar6,r4
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_item_next
	mov	r1,#(_list_item_next >> 8)
	mov	r2,#(_list_item_next >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar3,r2
	mov	ar4,r6
	mov	ar5,r7
	pop	ar2
	ljmp	00107$
00109$:
	mov	a,sp
	add	a,#0xFC
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_notification_add'
;------------------------------------------------------------
;c                         Allocated to stack - sp -5
;n                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:130: uip_ds6_notification_add(struct uip_ds6_notification *n,
;	-----------------------------------------
;	 function uip_ds6_notification_add
;	-----------------------------------------
_uip_ds6_notification_add:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:133: if(n != NULL && c != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00104$
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00104$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:134: n->callback = c;
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
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:135: list_add(notificationlist, n);
	mov	dptr,#_notificationlist
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
	mov	r0,#_list_add
	mov	r1,#(_list_add >> 8)
	mov	r2,#(_list_add >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00104$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_notification_rm'
;------------------------------------------------------------
;n                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:140: uip_ds6_notification_rm(struct uip_ds6_notification *n)
;	-----------------------------------------
;	 function uip_ds6_notification_rm
;	-----------------------------------------
_uip_ds6_notification_rm:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:142: list_remove(notificationlist, n);
	mov	dptr,#_notificationlist
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
	mov	r0,#_list_remove
	mov	r1,#(_list_remove >> 8)
	mov	r2,#(_list_remove >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_route_init'
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:147: uip_ds6_route_init(void)
;	-----------------------------------------
;	 function uip_ds6_route_init
;	-----------------------------------------
_uip_ds6_route_init:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:149: memb_init(&routememb);
	mov	dptr,#_routememb
	mov	b,#0x00
	mov	r0,#_memb_init
	mov	r1,#(_memb_init >> 8)
	mov	r2,#(_memb_init >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:150: list_init(routelist);
	mov	dptr,#_routelist
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
	mov	r0,#_list_init
	mov	r1,#(_list_init >> 8)
	mov	r2,#(_list_init >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:151: nbr_table_register(nbr_routes,
	mov	dptr,#_nbr_routes
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#_rm_routelist_callback
	push	acc
	mov	a,#(_rm_routelist_callback >> 8)
	push	acc
	mov	a,#(_rm_routelist_callback >> 16)
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
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:154: memb_init(&defaultroutermemb);
	mov	dptr,#_defaultroutermemb
	mov	b,#0x00
	mov	r0,#_memb_init
	mov	r1,#(_memb_init >> 8)
	mov	r2,#(_memb_init >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:155: list_init(defaultrouterlist);
	mov	dptr,#_defaultrouterlist
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
	mov	r0,#_list_init
	mov	r1,#(_list_init >> 8)
	mov	r2,#(_list_init >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:158: list_init(notificationlist);
	mov	dptr,#_notificationlist
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
	mov	r0,#_list_init
	mov	r1,#(_list_init >> 8)
	mov	r2,#(_list_init >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_route_nexthop_lladdr'
;------------------------------------------------------------
;route                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:163: uip_ds6_route_nexthop_lladdr(uip_ds6_route_t *route)
;	-----------------------------------------
;	 function uip_ds6_route_nexthop_lladdr
;	-----------------------------------------
_uip_ds6_route_nexthop_lladdr:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:165: if(route != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:167: route->neighbor_routes);
	mov	a,#0x03
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
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:166: return (uip_lladdr_t *)nbr_table_get_lladdr(nbr_routes,
	mov	dptr,#_nbr_routes
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	sjmp	00104$
00102$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:169: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00104$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_route_nexthop'
;------------------------------------------------------------
;route                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:174: uip_ds6_route_nexthop(uip_ds6_route_t *route)
;	-----------------------------------------
;	 function uip_ds6_route_nexthop
;	-----------------------------------------
_uip_ds6_route_nexthop:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:176: if(route != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:177: return uip_ds6_nbr_ipaddr_from_lladdr(uip_ds6_route_nexthop_lladdr(route));
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_uip_ds6_route_nexthop_lladdr
	mov	r1,#(_uip_ds6_route_nexthop_lladdr >> 8)
	mov	r2,#(_uip_ds6_route_nexthop_lladdr >> 16)
	lcall	__sdcc_banked_call
	mov	r0,#_uip_ds6_nbr_ipaddr_from_lladdr
	mov	r1,#(_uip_ds6_nbr_ipaddr_from_lladdr >> 8)
	mov	r2,#(_uip_ds6_nbr_ipaddr_from_lladdr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	sjmp	00104$
00102$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:179: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00104$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_route_head'
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:184: uip_ds6_route_head(void)
;	-----------------------------------------
;	 function uip_ds6_route_head
;	-----------------------------------------
_uip_ds6_route_head:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:186: return list_head(routelist);
	mov	dptr,#_routelist
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
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_route_next'
;------------------------------------------------------------
;r                         Allocated to registers r5 r6 r7 
;n                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:190: uip_ds6_route_next(uip_ds6_route_t *r)
;	-----------------------------------------
;	 function uip_ds6_route_next
;	-----------------------------------------
_uip_ds6_route_next:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:192: if(r != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:193: uip_ds6_route_t *n = list_item_next(r);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_item_next
	mov	r1,#(_list_item_next >> 8)
	mov	r2,#(_list_item_next >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:194: return n;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	sjmp	00103$
00102$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:196: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00103$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_route_num_routes'
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:200: uip_ds6_route_num_routes(void)
;	-----------------------------------------
;	 function uip_ds6_route_num_routes
;	-----------------------------------------
_uip_ds6_route_num_routes:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:202: return num_routes;
	mov	dptr,#_num_routes
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_route_lookup'
;------------------------------------------------------------
;addr                      Allocated to stack - sp -11
;r                         Allocated to stack - sp -6
;found_route               Allocated to stack - sp -3
;longestmatch              Allocated to stack - sp +0
;sloc0                     Allocated to stack - sp -1
;sloc1                     Allocated to stack - sp -8
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:206: uip_ds6_route_lookup(uip_ipaddr_t *addr)
;	-----------------------------------------
;	 function uip_ds6_route_lookup
;	-----------------------------------------
_uip_ds6_route_lookup:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x09
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:217: found_route = NULL;
	mov	sp,a
	add	a,#0xfd
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:218: longestmatch = 0;
	mov	r0,sp
	mov	@r0,#0x00
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:219: for(r = uip_ds6_route_head();
	mov	r0,#_uip_ds6_route_head
	mov	r1,#(_uip_ds6_route_head >> 8)
	mov	r2,#(_uip_ds6_route_head >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
00113$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:220: r != NULL;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	a
	push	acc
	push	acc
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
	jnz	00135$
	ljmp	00108$
00135$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:222: if(r->length >= longestmatch &&
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x1F
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
	mov	r6,a
	mov	r0,sp
	clr	c
	mov	a,r6
	subb	a,@r0
	jnc	00136$
	ljmp	00114$
00136$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:223: uip_ipaddr_prefixcmp(addr, &r->ipaddr, r->length)) {
	push	ar2
	push	ar3
	push	ar7
	mov	a,r6
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r7,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar7,@r0
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar5
	push	ar6
	mov	dpl,r3
	mov	dph,r4
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
	pop	ar2
	pop	ar3
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar3
	pop	ar2
	jnz	00114$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:224: longestmatch = r->length;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	r0,sp
	lcall	__gptrget
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:225: found_route = r;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
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
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:227: if(longestmatch == 128) {
	mov	r0,sp
	cjne	@r0,#0x80,00138$
	sjmp	00108$
00138$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:228: break;
00114$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:221: r = uip_ds6_route_next(r)) {
	mov	a,sp
	add	a,#0xfa
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
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00113$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:235: PRINT6ADDR(addr);
00108$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:243: if(found_route != NULL && found_route != list_head(routelist)) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00139$
	ljmp	00110$
00139$:
	mov	dptr,#_routelist
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
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfd
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
	jz	00110$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:249: list_remove(routelist, found_route);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_routelist
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_remove
	mov	r1,#(_list_remove >> 8)
	mov	r2,#(_list_remove >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:250: list_push(routelist, found_route);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_routelist
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_push
	mov	r1,#(_list_push >> 8)
	mov	r2,#(_list_push >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00110$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:253: return found_route;
	mov	a,sp
	add	a,#0xfd
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
;Allocation info for local variables in function 'uip_ds6_route_add'
;------------------------------------------------------------
;length                    Allocated to stack - sp -15
;nexthop                   Allocated to stack - sp -18
;ipaddr                    Allocated to stack - sp -11
;r                         Allocated to stack - sp -8
;nbrr                      Allocated to registers r4 r3 r2 
;nexthop_lladdr            Allocated to stack - sp -5
;current_nexthop           Allocated to registers r5 r6 r7 
;routes                    Allocated to stack - sp -2
;oldest                    Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp +10
;sloc1                     Allocated to stack - sp +13
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:257: uip_ds6_route_add(uip_ipaddr_t *ipaddr, uint8_t length,
;	-----------------------------------------
;	 function uip_ds6_route_add
;	-----------------------------------------
_uip_ds6_route_add:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x09
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:268: const uip_lladdr_t *nexthop_lladdr = uip_ds6_nbr_lladdr_from_ipaddr(nexthop);
	mov	sp,a
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_ds6_nbr_lladdr_from_ipaddr
	mov	r1,#(_uip_ds6_nbr_lladdr_from_ipaddr >> 8)
	mov	r2,#(_uip_ds6_nbr_lladdr_from_ipaddr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:269: if(nexthop_lladdr == NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:273: return NULL;
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00121$
00102$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:279: r = uip_ds6_route_lookup(ipaddr);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_ds6_route_lookup
	mov	r1,#(_uip_ds6_route_lookup >> 8)
	mov	r2,#(_uip_ds6_route_lookup >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:280: if(r != NULL) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00151$
	ljmp	00107$
00151$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:282: current_nexthop = uip_ds6_route_nexthop(r);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_ds6_route_nexthop
	mov	r1,#(_uip_ds6_route_nexthop >> 8)
	mov	r2,#(_uip_ds6_route_nexthop >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r3,dph
	mov	r2,b
	mov	ar5,r4
	mov	ar6,r3
	mov	ar7,r2
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:283: if(current_nexthop != NULL && uip_ipaddr_cmp(nexthop, current_nexthop)) {
	mov	a,r4
	orl	a,r3
	jz	00104$
	mov	a,sp
	add	a,#0xee
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
	jnz	00104$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:285: return r;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ljmp	00121$
00104$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:291: uip_ds6_route_rm(r);
	mov	a,sp
	add	a,#0xf8
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
00107$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:299: if(uip_ds6_route_num_routes() == UIP_DS6_ROUTE_NB) {
	mov	r0,#_uip_ds6_route_num_routes
	mov	r1,#(_uip_ds6_route_num_routes >> 8)
	mov	r2,#(_uip_ds6_route_num_routes >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0x04,00109$
	cjne	r7,#0x00,00109$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:304: oldest = list_tail(routelist); /* uip_ds6_route_head(); */
	mov	dptr,#_routelist
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
	mov	r0,#_list_tail
	mov	r1,#(_list_tail >> 8)
	mov	r2,#(_list_tail >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:308: uip_ds6_route_rm(oldest);
	mov	r0,#_uip_ds6_route_rm
	mov	r1,#(_uip_ds6_route_rm >> 8)
	mov	r2,#(_uip_ds6_route_rm >> 16)
	lcall	__sdcc_banked_call
00109$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:321: (linkaddr_t *)nexthop_lladdr);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:320: routes = nbr_table_get_from_lladdr(nbr_routes,
	mov	dptr,#_nbr_routes
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:323: if(routes == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00156$
	ljmp	00116$
00156$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:330: (linkaddr_t *)nexthop_lladdr);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:329: routes = nbr_table_add_lladdr(nbr_routes,
	mov	dptr,#_nbr_routes
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	r0,#_nbr_table_add_lladdr
	mov	r1,#(_nbr_table_add_lladdr >> 8)
	mov	r2,#(_nbr_table_add_lladdr >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	dec	sp
	dec	sp
	dec	sp
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:331: if(routes == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:335: return NULL;
	jnz	00112$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00121$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:337: LIST_STRUCT_INIT(routes, route_list);
00112$:
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_list_init
	mov	r1,#(_list_init >> 8)
	mov	r2,#(_list_init >> 16)
	lcall	__sdcc_banked_call
00116$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:341: r = memb_alloc(&routememb);
	mov	dptr,#_routememb
	mov	b,#0x00
	mov	r0,#_memb_alloc
	mov	r1,#(_memb_alloc >> 8)
	mov	r2,#(_memb_alloc >> 16)
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
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:343: if(r == NULL) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:347: return NULL;
	jnz	00118$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00121$
00118$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:352: list_push(routelist, r);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_routelist
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
	mov	r0,#_list_push
	mov	r1,#(_list_push >> 8)
	mov	r2,#(_list_push >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:354: nbrr = memb_alloc(&neighborroutememb);
	mov	dptr,#_neighborroutememb
	mov	b,#0x00
	mov	r0,#_memb_alloc
	mov	r1,#(_memb_alloc >> 8)
	mov	r2,#(_memb_alloc >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar4,r5
	mov	ar3,r6
	mov	ar2,r7
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:355: if(nbrr == NULL) {
	mov	a,r4
	orl	a,r3
	jnz	00120$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:359: memb_free(&routememb, r);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_routememb
	mov	b,#0x00
	mov	r0,#_memb_free
	mov	r1,#(_memb_free >> 8)
	mov	r2,#(_memb_free >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:360: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	00121$
00120$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:363: nbrr->route = r;
	mov	a,#0x03
	add	a,r4
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r2
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
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:365: list_add(routes->route_list, nbrr);
	mov	ar5,r4
	mov	ar6,r3
	mov	ar7,r2
	mov	r0,sp
	dec	r0
	dec	r0
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
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_list_add
	mov	r1,#(_list_add >> 8)
	mov	r2,#(_list_add >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:366: r->neighbor_routes = routes;
	mov	a,sp
	add	a,#0xf8
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
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:367: num_routes++;
	mov	dptr,#_num_routes
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:372: nbr_table_lock(nbr_routes, routes);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_nbr_routes
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
	mov	r0,#_nbr_table_lock
	mov	r1,#(_nbr_table_lock >> 8)
	mov	r2,#(_nbr_table_lock >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:375: uip_ipaddr_copy(&(r->ipaddr), ipaddr);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
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
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:376: r->length = length;
	mov	sp,a
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:379: memset(&r->state, 0, sizeof(UIP_DS6_ROUTE_STATE_TYPE));
	mov	a,sp
	add	a,#0xf8
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
	mov	a,#0x09
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:390: call_route_callback(UIP_DS6_NOTIFICATION_ROUTE_ADD, ipaddr, nexthop);
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x0002
	mov	r0,#_call_route_callback
	mov	r1,#(_call_route_callback >> 8)
	mov	r2,#(_call_route_callback >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:396: return r;
	mov	sp,a
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00121$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF4
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_route_rm'
;------------------------------------------------------------
;route                     Allocated to stack - sp -8
;neighbor_route            Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -5
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:401: uip_ds6_route_rm(uip_ds6_route_t *route)
;	-----------------------------------------
;	 function uip_ds6_route_rm
;	-----------------------------------------
_uip_ds6_route_rm:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:407: if(route != NULL && route->neighbor_routes != NULL) {
	mov	sp,a
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00136$
	ljmp	00107$
00136$:
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00137$
	ljmp	00107$
00137$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:414: list_remove(routelist, route);
	mov	a,sp
	add	a,#0xf8
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
	mov	dptr,#_routelist
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_remove
	mov	r1,#(_list_remove >> 8)
	mov	r2,#(_list_remove >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:417: for(neighbor_route = list_head(route->neighbor_routes->route_list);
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
	mov	a,#0x03
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
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
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
00111$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:418: neighbor_route != NULL && neighbor_route->route != route;
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	push	acc
	push	acc
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
	jnz	00138$
	ljmp	00101$
00138$:
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xfb
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
	jnz	00139$
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00101$
00139$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:419: neighbor_route = list_item_next(neighbor_route));
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_list_item_next
	mov	r1,#(_list_item_next >> 8)
	mov	r2,#(_list_item_next >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
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
	ljmp	00111$
00101$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:421: if(neighbor_route == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00103$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:423: uip_debug_ipaddr_print(&route->ipaddr);
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x06
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
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_uip_debug_ipaddr_print
	mov	r1,#(_uip_debug_ipaddr_print >> 8)
	mov	r2,#(_uip_debug_ipaddr_print >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:468: return;
	pop	ar4
	pop	ar3
	pop	ar2
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:423: uip_debug_ipaddr_print(&route->ipaddr);
00103$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:426: list_remove(route->neighbor_routes->route_list, neighbor_route);
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	a,#0x03
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_remove
	mov	r1,#(_list_remove >> 8)
	mov	r2,#(_list_remove >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:427: if(list_head(route->neighbor_routes->route_list) == NULL) {
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
	mov	a,#0x03
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
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r5
	orl	a,r6
	jnz	00105$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:431: nbr_table_remove(nbr_routes, route->neighbor_routes->route_list);
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
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_nbr_routes
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_nbr_table_remove
	mov	r1,#(_nbr_table_remove >> 8)
	mov	r2,#(_nbr_table_remove >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00105$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:433: memb_free(&routememb, route);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_routememb
	mov	b,#0x00
	mov	r0,#_memb_free
	mov	r1,#(_memb_free >> 8)
	mov	r2,#(_memb_free >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:434: memb_free(&neighborroutememb, neighbor_route);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_neighborroutememb
	mov	b,#0x00
	mov	r0,#_memb_free
	mov	r1,#(_memb_free >> 8)
	mov	r2,#(_memb_free >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:436: num_routes--;
	mov	dptr,#_num_routes
	movx	a,@dptr
	add	a,#0xFF
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xFF
	mov	r7,a
	mov	dptr,#_num_routes
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:442: &route->ipaddr, uip_ds6_route_nexthop(route));
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_ds6_route_nexthop
	mov	r1,#(_uip_ds6_route_nexthop >> 8)
	mov	r2,#(_uip_ds6_route_nexthop >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:441: call_route_callback(UIP_DS6_NOTIFICATION_ROUTE_RM,
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#0x0003
	mov	r0,#_call_route_callback
	mov	r1,#(_call_route_callback >> 8)
	mov	r2,#(_call_route_callback >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
00107$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:468: return;
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rm_routelist'
;------------------------------------------------------------
;routes                    Allocated to stack - sp -5
;r                         Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:472: rm_routelist(struct uip_ds6_route_neighbor_routes *routes)
;	-----------------------------------------
;	 function rm_routelist
;	-----------------------------------------
_rm_routelist:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:478: if(routes != NULL && routes->route_list != NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00121$
	ljmp	00107$
00121$:
	mov	a,sp
	add	a,#0xfb
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
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,r7
	orl	a,r6
	jnz	00122$
	ljmp	00107$
00122$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:480: r = list_head(routes->route_list);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
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
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:481: while(r != NULL) {
00101$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00123$
	ljmp	00103$
00123$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:482: uip_ds6_route_rm(r->route);
	mov	r0,sp
	dec	r0
	dec	r0
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_uip_ds6_route_rm
	mov	r1,#(_uip_ds6_route_rm >> 8)
	mov	r2,#(_uip_ds6_route_rm >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:483: r = list_head(routes->route_list);
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
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
	ljmp	00101$
00103$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:485: nbr_table_remove(nbr_routes, routes);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_nbr_routes
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
00107$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rm_routelist_callback'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:493: rm_routelist_callback(nbr_table_item_t *ptr)
;	-----------------------------------------
;	 function rm_routelist_callback
;	-----------------------------------------
_rm_routelist_callback:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:495: rm_routelist((struct uip_ds6_route_neighbor_routes *)ptr);
	mov	r0,#_rm_routelist
	mov	r1,#(_rm_routelist >> 8)
	mov	r2,#(_rm_routelist >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_route_rm_by_nexthop'
;------------------------------------------------------------
;nexthop                   Allocated to registers r5 r6 r7 
;nexthop_lladdr            Allocated to registers r5 r6 r7 
;routes                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:499: uip_ds6_route_rm_by_nexthop(uip_ipaddr_t *nexthop)
;	-----------------------------------------
;	 function uip_ds6_route_rm_by_nexthop
;	-----------------------------------------
_uip_ds6_route_rm_by_nexthop:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:505: nexthop_lladdr = uip_ds6_nbr_lladdr_from_ipaddr(nexthop);
	mov	r0,#_uip_ds6_nbr_lladdr_from_ipaddr
	mov	r1,#(_uip_ds6_nbr_lladdr_from_ipaddr >> 8)
	mov	r2,#(_uip_ds6_nbr_lladdr_from_ipaddr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:507: (linkaddr_t *)nexthop_lladdr);
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:506: routes = nbr_table_get_from_lladdr(nbr_routes,
	mov	dptr,#_nbr_routes
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
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:508: rm_routelist(routes);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_rm_routelist
	mov	r1,#(_rm_routelist >> 8)
	mov	r2,#(_rm_routelist >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_defrt_add'
;------------------------------------------------------------
;interval                  Allocated to stack - sp -9
;ipaddr                    Allocated to registers r5 r6 r7 
;d                         Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:512: uip_ds6_defrt_add(uip_ipaddr_t *ipaddr, unsigned long interval)
;	-----------------------------------------
;	 function uip_ds6_defrt_add
;	-----------------------------------------
_uip_ds6_defrt_add:
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:521: d = uip_ds6_defrt_lookup(ipaddr);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_uip_ds6_defrt_lookup
	mov	r1,#(_uip_ds6_defrt_lookup >> 8)
	mov	r2,#(_uip_ds6_defrt_lookup >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:522: if(d == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00120$
	ljmp	00105$
00120$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:523: d = memb_alloc(&defaultroutermemb);
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_defaultroutermemb
	mov	b,#0x00
	mov	r0,#_memb_alloc
	mov	r1,#(_memb_alloc >> 8)
	mov	r2,#(_memb_alloc >> 16)
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
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:524: if(d == NULL) {
	pop	ar7
	pop	ar6
	pop	ar5
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:528: return NULL;
	jnz	00103$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00109$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:531: PRINT6ADDR(ipaddr);
00103$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:535: list_push(defaultrouterlist, d);
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_defaultrouterlist
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
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_list_push
	mov	r1,#(_list_push >> 8)
	mov	r2,#(_list_push >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:556: return d;
	pop	ar7
	pop	ar6
	pop	ar5
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:535: list_push(defaultrouterlist, d);
00105$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:538: uip_ipaddr_copy(&d->ipaddr, ipaddr);
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	push	ar5
	push	ar6
	push	ar7
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
	push	ar7
	push	ar6
	push	ar5
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
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:539: if(interval != 0) {
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	00107$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:540: stimer_set(&d->lifetime, interval);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x13
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
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
	mov	r0,#_stimer_set
	mov	r1,#(_stimer_set >> 8)
	mov	r2,#(_stimer_set >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:541: d->isinfinite = 0;
	mov	r0,sp
	dec	r0
	dec	r0
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
	clr	a
	lcall	__gptrput
	sjmp	00108$
00107$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:543: d->isinfinite = 1;
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	a,#0x01
	lcall	__gptrput
00108$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:549: call_route_callback(UIP_DS6_NOTIFICATION_DEFRT_ADD, ipaddr, ipaddr);
	push	ar5
	push	ar6
	push	ar7
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	r0,#_call_route_callback
	mov	r1,#(_call_route_callback >> 8)
	mov	r2,#(_call_route_callback >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:556: return d;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00109$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_defrt_rm'
;------------------------------------------------------------
;defrt                     Allocated to stack - sp -2
;d                         Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - sp +4
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:560: uip_ds6_defrt_rm(uip_ds6_defrt_t *defrt)
;	-----------------------------------------
;	 function uip_ds6_defrt_rm
;	-----------------------------------------
_uip_ds6_defrt_rm:
	push	dpl
	push	dph
	push	b
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:569: for(d = list_head(defaultrouterlist);
	mov	dptr,#_defaultrouterlist
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
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
00105$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:570: d != NULL;
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00118$
	ljmp	00107$
00118$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:572: if(d == defrt) {
	mov	r0,sp
	dec	r0
	dec	r0
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
	jz	00120$
	ljmp	00106$
00120$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:574: list_remove(defaultrouterlist, defrt);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar2,@r0
	mov	dptr,#_defaultrouterlist
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_remove
	mov	r1,#(_list_remove >> 8)
	mov	r2,#(_list_remove >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:575: memb_free(&defaultroutermemb, defrt);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_defaultroutermemb
	mov	b,#0x00
	mov	r0,#_memb_free
	mov	r1,#(_memb_free >> 8)
	mov	r2,#(_memb_free >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:579: &defrt->ipaddr, &defrt->ipaddr);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:578: call_route_callback(UIP_DS6_NOTIFICATION_DEFRT_RM,
	push	ar5
	push	ar6
	push	ar7
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0001
	mov	r0,#_call_route_callback
	mov	r1,#(_call_route_callback >> 8)
	mov	r2,#(_call_route_callback >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:581: return;
	sjmp	00107$
00106$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:571: d = list_item_next(d)) {
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_item_next
	mov	r1,#(_list_item_next >> 8)
	mov	r2,#(_list_item_next >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	ljmp	00105$
00107$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_defrt_lookup'
;------------------------------------------------------------
;ipaddr                    Allocated to stack - sp -5
;d                         Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:591: uip_ds6_defrt_lookup(uip_ipaddr_t *ipaddr)
;	-----------------------------------------
;	 function uip_ds6_defrt_lookup
;	-----------------------------------------
_uip_ds6_defrt_lookup:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:594: for(d = list_head(defaultrouterlist);
	mov	dptr,#_defaultrouterlist
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
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
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
00105$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:595: d != NULL;
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	push	acc
	push	acc
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
	jnz	00118$
	ljmp	00103$
00118$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:597: if(uip_ipaddr_cmp(&d->ipaddr, ipaddr)) {
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
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
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
	jnz	00106$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:598: return d;
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
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:596: d = list_item_next(d)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_list_item_next
	mov	r1,#(_list_item_next >> 8)
	mov	r2,#(_list_item_next >> 16)
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
00103$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:601: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00107$:
	xch	a,r0
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_defrt_choose'
;------------------------------------------------------------
;d                         Allocated to stack - sp -2
;bestnbr                   Allocated to registers r2 r3 r4 
;addr                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:605: uip_ds6_defrt_choose(void)
;	-----------------------------------------
;	 function uip_ds6_defrt_choose
;	-----------------------------------------
_uip_ds6_defrt_choose:
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:611: addr = NULL;
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:612: for(d = list_head(defaultrouterlist);
	mov	dptr,#_defaultrouterlist
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
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00107$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:613: d != NULL;
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	push	acc
	push	acc
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
	jnz	00123$
	ljmp	00105$
00123$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:618: bestnbr = uip_ds6_nbr_lookup(&d->ipaddr);
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	r0,#_uip_ds6_nbr_lookup
	mov	r1,#(_uip_ds6_nbr_lookup >> 8)
	mov	r2,#(_uip_ds6_nbr_lookup >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	ar2,r7
	mov	ar3,r6
	mov	ar4,r5
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:619: if(bestnbr != NULL && bestnbr->state != NBR_INCOMPLETE) {
	mov	a,r7
	orl	a,r6
	jz	00102$
	mov	a,#0x22
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00102$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:623: return &d->ipaddr;
	mov	r0,sp
	dec	r0
	dec	r0
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
	sjmp	00109$
00102$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:625: addr = &d->ipaddr;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:614: d = list_item_next(d)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_list_item_next
	mov	r1,#(_list_item_next >> 8)
	mov	r2,#(_list_item_next >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	ljmp	00107$
00105$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:631: return addr;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
00109$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ds6_defrt_periodic'
;------------------------------------------------------------
;d                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:635: uip_ds6_defrt_periodic(void)
;	-----------------------------------------
;	 function uip_ds6_defrt_periodic
;	-----------------------------------------
_uip_ds6_defrt_periodic:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:638: d = list_head(defaultrouterlist);
	mov	dptr,#_defaultrouterlist
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
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:639: while(d != NULL) {
00105$:
	mov	a,r5
	orl	a,r6
	jnz	00122$
	ljmp	00108$
00122$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:640: if(!d->isinfinite &&
	mov	a,#0x1B
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
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:641: stimer_expired(&d->lifetime)) {
	mov	a,#0x13
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
	mov	r0,#_stimer_expired
	mov	r1,#(_stimer_expired >> 8)
	mov	r2,#(_stimer_expired >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00102$
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:643: uip_ds6_defrt_rm(d);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_uip_ds6_defrt_rm
	mov	r1,#(_uip_ds6_defrt_rm >> 8)
	mov	r2,#(_uip_ds6_defrt_rm >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:644: d = list_head(defaultrouterlist);
	mov	dptr,#_defaultrouterlist
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
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	ljmp	00105$
00102$:
;	/opt/contiki/core/net/ipv6/uip-ds6-route.c:646: d = list_item_next(d);
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_list_item_next
	mov	r1,#(_list_item_next >> 8)
	mov	r2,#(_list_item_next >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	ljmp	00105$
00108$:
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__nbr_routes_struct:
	.byte #0x00,#0x00	;  0
	.byte #0x06,#0x00	;  6
	.byte #0x00,#0x00,#0x00
	.byte __nbr_routes_mem, (__nbr_routes_mem >> 8),#0x00
__xinit__nbr_routes:
	.byte _nbr_routes_struct, (_nbr_routes_struct >> 8),#0x00
__xinit__neighborroutememb:
	.byte #0x06,#0x00	; 6
	.byte #0x04,#0x00	; 4
	.byte _neighborroutememb_memb_count, (_neighborroutememb_memb_count >> 8),#0x00
	.byte _neighborroutememb_memb_mem, (_neighborroutememb_memb_mem >> 8),#0x00
__xinit__routelist_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__routelist:
	.byte _routelist_list, (_routelist_list >> 8),#0x00
__xinit__routememb:
	.byte #0x20,#0x00	; 32
	.byte #0x04,#0x00	; 4
	.byte _routememb_memb_count, (_routememb_memb_count >> 8),#0x00
	.byte _routememb_memb_mem, (_routememb_memb_mem >> 8),#0x00
__xinit__defaultrouterlist_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__defaultrouterlist:
	.byte _defaultrouterlist_list, (_defaultrouterlist_list >> 8),#0x00
__xinit__defaultroutermemb:
	.byte #0x1C,#0x00	; 28
	.byte #0x02,#0x00	; 2
	.byte _defaultroutermemb_memb_count, (_defaultroutermemb_memb_count >> 8),#0x00
	.byte _defaultroutermemb_memb_mem, (_defaultroutermemb_memb_mem >> 8),#0x00
__xinit__notificationlist_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__notificationlist:
	.byte _notificationlist_list, (_notificationlist_list >> 8),#0x00
__xinit__num_routes:
	.byte #0x00,#0x00	;  0
	.area CABS    (ABS,CODE)
