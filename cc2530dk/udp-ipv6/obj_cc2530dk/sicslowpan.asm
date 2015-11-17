;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Wed Nov 18 02:57:32 2015
;--------------------------------------------------------
	.module sicslowpan
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sicslowpan_driver
	.globl _llprefix
	.globl _unc_mxconf
	.globl _unc_ctxconf
	.globl _unc_llconf
	.globl _sicslowpan_init
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _packetbuf_set_datalen
	.globl _packetbuf_datalen
	.globl _packetbuf_dataptr
	.globl _packetbuf_clear
	.globl _uip_ds6_set_addr_iid
	.globl _uip_ds6_link_neighbor_callback
	.globl _linkaddr_copy
	.globl _tcpip_set_outputfunc
	.globl _tcpip_input
	.globl _watchdog_periodic
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
	.globl _rime_sniffer_add
	.globl _rime_sniffer_remove
	.globl _sicslowpan_get_last_rssi
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
_packetbuf_ptr:
	.ds 3
_packetbuf_hdr_len:
	.ds 1
_packetbuf_payload_len:
	.ds 2
_uncomp_hdr_len:
	.ds 1
_last_tx_status:
	.ds 2
_last_rssi:
	.ds 2
_addr_contexts:
	.ds 10
_context:
	.ds 3
_hc06_ptr:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_callback:
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
;Allocation info for local variables in function 'rime_sniffer_add'
;------------------------------------------------------------
;s                         Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:270: rime_sniffer_add(struct rime_sniffer *s)
;	-----------------------------------------
;	 function rime_sniffer_add
;	-----------------------------------------
_rime_sniffer_add:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_callback
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:272: callback = s;
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rime_sniffer_remove'
;------------------------------------------------------------
;s                         Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:276: rime_sniffer_remove(struct rime_sniffer *s)
;	-----------------------------------------
;	 function rime_sniffer_remove
;	-----------------------------------------
_rime_sniffer_remove:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:278: callback = NULL;
	mov	dptr,#_callback
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_packet_attrs'
;------------------------------------------------------------
;c                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:282: set_packet_attrs()
;	-----------------------------------------
;	 function set_packet_attrs
;	-----------------------------------------
_set_packet_attrs:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:284: int c = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	/opt/contiki/core/net/ipv6/sicslowpan.c:286: packetbuf_set_attr(PACKETBUF_ATTR_NETWORK_ID, UIP_IP_BUF->proto);
	mov	dptr,#(_uip_aligned_buf + 0x0006)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,#0x02
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/ipv6/sicslowpan.c:289: if(UIP_IP_BUF->proto == UIP_PROTO_UDP) {
	mov	dptr,#(_uip_aligned_buf + 0x0006)
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x11,00111$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:290: c = UIP_UDP_BUF->srcport;
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:291: if(UIP_UDP_BUF->destport < c) {
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	00112$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:292: c = UIP_UDP_BUF->destport;
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	sjmp	00112$
00111$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:294: } else if(UIP_IP_BUF->proto == UIP_PROTO_TCP) {
	mov	dptr,#(_uip_aligned_buf + 0x0006)
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x06,00108$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:295: c = UIP_TCP_BUF->srcport;
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:296: if(UIP_TCP_BUF->destport < c) {
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	00112$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:297: c = UIP_TCP_BUF->destport;
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	sjmp	00112$
00108$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:299: } else if(UIP_IP_BUF->proto == UIP_PROTO_ICMP6) {
	mov	dptr,#(_uip_aligned_buf + 0x0006)
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x3A,00112$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:300: c = UIP_ICMP_BUF->type << 8 | UIP_ICMP_BUF->icode;
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_uip_aligned_buf + 0x0029)
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
	mov	ar6,r5
	mov	ar7,r4
00112$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:303: packetbuf_set_attr(PACKETBUF_ATTR_CHANNEL, c);
	push	ar6
	push	ar7
	mov	dpl,#0x01
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'addr_context_lookup_by_prefix'
;------------------------------------------------------------
;ipaddr                    Allocated to stack - sp -9
;i                         Allocated to registers r3 r4 
;sloc0                     Allocated to stack - sp -6
;sloc1                     Allocated to stack - sp -2
;sloc2                     Allocated to stack - sp -4
;sloc3                     Allocated to stack - sp -1
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:365: addr_context_lookup_by_prefix(uip_ipaddr_t *ipaddr)
;	-----------------------------------------
;	 function addr_context_lookup_by_prefix
;	-----------------------------------------
_addr_context_lookup_by_prefix:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:370: for(i = 0; i < SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS; i++) {
	clr	a
	mov	r3,a
	mov	r4,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00105$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:371: if((addr_contexts[i].used == 1) &&
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	add	a,#_addr_contexts
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,#(_addr_contexts >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00121$
	sjmp	00122$
00121$:
	ljmp	00106$
00122$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:372: uip_ipaddr_prefixcmp(&addr_contexts[i].prefix, ipaddr, 64)) {
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,sp
	add	a,#0xfa
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
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r0
	add	a,#_addr_contexts
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,#(_addr_contexts >> 8)
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	r6,#0x00
	push	ar4
	push	ar3
	mov	a,#0x08
	push	acc
	clr	a
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
	mov	dpl,r2
	mov	dph,r7
	mov	b,r6
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
	pop	ar4
	pop	ar3
	mov	a,r6
	orl	a,r7
	jnz	00106$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:373: return &addr_contexts[i];
	mov	r0,sp
	dec	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	sjmp	00107$
00106$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:370: for(i = 0; i < SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS; i++) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x0A
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r3
	cjne	r3,#0x00,00124$
	inc	r4
00124$:
	clr	c
	mov	a,r3
	subb	a,#0x01
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00125$
	ljmp	00105$
00125$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:377: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00107$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF6
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'addr_context_lookup_by_number'
;------------------------------------------------------------
;number                    Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:382: addr_context_lookup_by_number(uint8_t number)
;	-----------------------------------------
;	 function addr_context_lookup_by_number
;	-----------------------------------------
_addr_context_lookup_by_number:
	mov	r7,dpl
;	/opt/contiki/core/net/ipv6/sicslowpan.c:387: for(i = 0; i < SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS; i++) {
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
00105$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:388: if((addr_contexts[i].used == 1) &&
	mov	a,r3
	add	a,#_addr_contexts
	mov	dpl,a
	mov	a,r4
	addc	a,#(_addr_contexts >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,00106$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:389: addr_contexts[i].number == number) {
	mov	a,r3
	add	a,#_addr_contexts
	mov	r1,a
	mov	a,r4
	addc	a,#(_addr_contexts >> 8)
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	cjne	a,ar7,00106$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:390: return &addr_contexts[i];
	mov	ar0,r2
	mov	r2,#0x00
	mov	dpl,r1
	mov	dph,r0
	mov	b,r2
	sjmp	00107$
00106$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:387: for(i = 0; i < SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS; i++) {
	mov	a,#0x0A
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	inc	r5
	cjne	r5,#0x00,00125$
	inc	r6
00125$:
	clr	c
	mov	a,r5
	subb	a,#0x01
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:394: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00107$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compress_addr_64'
;------------------------------------------------------------
;ipaddr                    Allocated to stack - sp -12
;lladdr                    Allocated to stack - sp -15
;bitpos                    Allocated to stack - sp -6
;sloc0                     Allocated to stack - sp -5
;sloc1                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:398: compress_addr_64(uint8_t bitpos, uip_ipaddr_t *ipaddr, uip_lladdr_t *lladdr)
;	-----------------------------------------
;	 function compress_addr_64
;	-----------------------------------------
_compress_addr_64:
	push	dpl
	mov	a,sp
	add	a,#0x06
;	/opt/contiki/core/net/ipv6/sicslowpan.c:400: if(uip_is_addr_mac_addr_based(ipaddr, lladdr)) {
	mov	sp,a
	add	a,#0xf4
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	a,sp
	add	a,#0xf1
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
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	xrl	ar7,#0x02
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	cjne	a,ar7,00159$
	sjmp	00160$
00159$:
	ljmp	00109$
00160$:
	mov	a,#0x09
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00161$
	sjmp	00162$
00161$:
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00109$
00162$:
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,#0x0A
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00163$
	sjmp	00164$
00163$:
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00109$
00164$:
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,#0x0B
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00165$
	sjmp	00166$
00165$:
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00109$
00166$:
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,#0x0C
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00167$
	sjmp	00168$
00167$:
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00109$
00168$:
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,#0x0D
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00169$
	sjmp	00170$
00169$:
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00109$
00170$:
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,#0x0E
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00171$
	sjmp	00172$
00171$:
	pop	ar6
	pop	ar5
	pop	ar4
	sjmp	00109$
00172$:
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,#0x0F
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00173$
	sjmp	00174$
00173$:
	pop	ar6
	pop	ar5
	pop	ar4
	sjmp	00109$
00174$:
	pop	ar6
	pop	ar5
	pop	ar4
;	/opt/contiki/core/net/ipv6/sicslowpan.c:401: return 3 << bitpos; /* 0-bits */
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,#0x03
	sjmp	00177$
00175$:
	add	a,acc
00177$:
	djnz	b,00175$
	mov	r7,a
	mov	dpl,a
	ljmp	00118$
00109$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:402: } else if(sicslowpan_is_iid_16_bit_compressable(ipaddr)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	orl	a,r3
	jz	00178$
	ljmp	00102$
00178$:
	mov	a,#0x0A
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
	jz	00179$
	ljmp	00102$
00179$:
	mov	a,#0x0B
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
	cjne	r2,#0xFF,00180$
	sjmp	00181$
00180$:
	ljmp	00102$
00181$:
	mov	a,#0x0C
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
	cjne	r2,#0xFE,00182$
	sjmp	00183$
00182$:
	ljmp	00102$
00183$:
	mov	a,#0x0D
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
	jnz	00102$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:404: memcpy(hc06_ptr, &ipaddr->u16[7], 2);
	mov	a,#0x0E
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:405: hc06_ptr += 2;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:406: return 2 << bitpos; /* 16-bits */
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,#0x02
	sjmp	00187$
00185$:
	add	a,acc
00187$:
	djnz	b,00185$
	mov	r7,a
	mov	dpl,a
	sjmp	00118$
00102$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:409: memcpy(hc06_ptr, &ipaddr->u16[4], 8);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x08
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
;	/opt/contiki/core/net/ipv6/sicslowpan.c:410: hc06_ptr += 8;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x08
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:411: return 1 << bitpos; /* 64-bits */
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,#0x01
	sjmp	00190$
00188$:
	add	a,acc
00190$:
	djnz	b,00188$
	mov	r7,a
	mov	dpl,a
00118$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uncompress_addr'
;------------------------------------------------------------
;prefix                    Allocated to stack - sp -12
;pref_post_count           Allocated to stack - sp -13
;lladdr                    Allocated to stack - sp -16
;ipaddr                    Allocated to stack - sp -6
;prefcount                 Allocated to stack - sp +0
;postcount                 Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -3
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:423: uncompress_addr(uip_ipaddr_t *ipaddr, uint8_t const prefix[],
;	-----------------------------------------
;	 function uncompress_addr
;	-----------------------------------------
_uncompress_addr:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
;	/opt/contiki/core/net/ipv6/sicslowpan.c:426: uint8_t prefcount = pref_post_count >> 4;
	mov	sp,a
	add	a,#0xf3
	mov	r0,a
	mov	r1,sp
	mov	a,@r0
	swap	a
	anl	a,#0x0F
	mov	@r1,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:427: uint8_t postcount = pref_post_count & 0x0f;
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	r1,sp
	dec	r1
	mov	a,#0x0F
	anl	a,@r0
	mov	@r1,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:429: prefcount = prefcount == 15 ? 16 : prefcount;
	mov	r0,sp
	cjne	@r0,#0x0F,00115$
	mov	r2,#0x10
	sjmp	00116$
00115$:
	mov	r0,sp
	mov	ar2,@r0
00116$:
	mov	r0,sp
	mov	@r0,ar2
;	/opt/contiki/core/net/ipv6/sicslowpan.c:430: postcount = postcount == 15 ? 16 : postcount;
	mov	r0,sp
	dec	r0
	cjne	@r0,#0x0F,00117$
	mov	r2,#0x10
	sjmp	00118$
00117$:
	mov	r0,sp
	dec	r0
	mov	ar2,@r0
00118$:
	mov	r0,sp
	dec	r0
	mov	@r0,ar2
;	/opt/contiki/core/net/ipv6/sicslowpan.c:434: if(prefcount > 0) {
	mov	r0,sp
	mov	a,@r0
	jz	00102$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:435: memcpy(ipaddr, prefix, prefcount);
	mov	a,sp
	mov	r0,a
	add	a,#0xfd
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
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
;	/opt/contiki/core/net/ipv6/sicslowpan.c:450: uip_ds6_set_addr_iid(ipaddr, lladdr);
;	/opt/contiki/core/net/ipv6/sicslowpan.c:435: memcpy(ipaddr, prefix, prefcount);
00102$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:437: if(prefcount + postcount < 16) {
	mov	r0,sp
	mov	ar4,@r0
	mov	r7,#0x00
	mov	r0,sp
	dec	r0
	mov	ar5,@r0
	mov	r6,#0x00
	mov	a,r5
	add	a,r4
	mov	r2,a
	mov	a,r6
	addc	a,r7
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:438: memset(&ipaddr->u8[prefcount], 0, 16 - (prefcount + postcount));
	mov	a,r5
	add	a,r4
	mov	r4,a
	mov	a,r6
	addc	a,r7
	mov	r7,a
	mov	a,#0x10
	clr	c
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	r1,sp
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	push	ar4
	push	ar7
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00104$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:440: if(postcount > 0) {
	mov	r0,sp
	dec	r0
	mov	a,@r0
	jnz	00149$
	ljmp	00111$
00149$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:441: memcpy(&ipaddr->u8[16 - postcount], hc06_ptr, postcount);
	mov	r0,sp
	dec	r0
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r0,sp
	dec	r0
	mov	a,#0x10
	clr	c
	subb	a,@r0
	mov	r3,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar4
	push	ar5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:442: if(postcount == 2 && prefcount < 11) {
	mov	r0,sp
	dec	r0
	cjne	@r0,#0x02,00106$
	mov	r0,sp
	cjne	@r0,#0x0B,00152$
00152$:
	jnc	00106$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:444: ipaddr->u8[11] = 0xff;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x0B
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
;	/opt/contiki/core/net/ipv6/sicslowpan.c:445: ipaddr->u8[12] = 0xfe;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x0C
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
	mov	a,#0xFE
	lcall	__gptrput
00106$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:447: hc06_ptr += postcount;
	mov	dptr,#_hc06_ptr
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
	mov	dptr,#_hc06_ptr
	mov	a,@r0
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00113$
00111$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:448: } else if (prefcount > 0) {
	mov	r0,sp
	mov	a,@r0
	jz	00113$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:450: uip_ds6_set_addr_iid(ipaddr, lladdr);
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
	mov	a,sp
	add	a,#0xf7
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
00113$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compress_hdr_hc06'
;------------------------------------------------------------
;link_destaddr             Allocated to stack - sp -10
;tmp                       Allocated to registers r5 
;iphc0                     Allocated to stack - sp -1
;iphc1                     Allocated to stack - sp +0
;sloc0                     Allocated to stack - sp -7
;sloc1                     Allocated to stack - sp -6
;sloc2                     Allocated to stack - sp -3
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:493: compress_hdr_hc06(linkaddr_t *link_destaddr)
;	-----------------------------------------
;	 function compress_hdr_hc06
;	-----------------------------------------
_compress_hdr_hc06:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x08
	mov	sp,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:507: hc06_ptr = packetbuf_ptr + 2;
	mov	dptr,#_packetbuf_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x02
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:515: iphc0 = SICSLOWPAN_DISPATCH_IPHC;
	mov	r0,sp
	dec	r0
	mov	@r0,#0x60
;	/opt/contiki/core/net/ipv6/sicslowpan.c:516: iphc1 = 0;
	mov	r0,sp
	mov	@r0,#0x00
;	/opt/contiki/core/net/ipv6/sicslowpan.c:517: PACKETBUF_IPHC_BUF[2] = 0; /* might not be used - but needs to be cleared */
	mov	dptr,#_packetbuf_hdr_len
	movx	a,@dptr
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,#0x02
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
;	/opt/contiki/core/net/ipv6/sicslowpan.c:529: if(addr_context_lookup_by_prefix(&UIP_IP_BUF->destipaddr) != NULL ||
	mov	dptr,#(_uip_aligned_buf + 0x0018)
	mov	b,#0x00
	mov	r0,#_addr_context_lookup_by_prefix
	mov	r1,#(_addr_context_lookup_by_prefix >> 8)
	mov	r2,#(_addr_context_lookup_by_prefix >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,r3
	orl	a,r4
;	/opt/contiki/core/net/ipv6/sicslowpan.c:530: addr_context_lookup_by_prefix(&UIP_IP_BUF->srcipaddr) != NULL) {
	jnz	00101$
	mov	dptr,#(_uip_aligned_buf + 0x0008)
	mov	b,a
	mov	r0,#_addr_context_lookup_by_prefix
	mov	r1,#(_addr_context_lookup_by_prefix >> 8)
	mov	r2,#(_addr_context_lookup_by_prefix >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,r3
	orl	a,r4
	jz	00102$
00101$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:533: iphc1 |= SICSLOWPAN_IPHC_CID;
	mov	r0,sp
	mov	@r0,#0x80
;	/opt/contiki/core/net/ipv6/sicslowpan.c:534: hc06_ptr++;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00102$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:545: tmp = (UIP_IP_BUF->vtc << 4) | (UIP_IP_BUF->tcflow >> 4);
	mov	dptr,#_uip_aligned_buf
	movx	a,@dptr
	swap	a
	anl	a,#0xF0
	mov	r5,a
	mov	dptr,#(_uip_aligned_buf + 0x0001)
	movx	a,@dptr
	swap	a
	anl	a,#0x0F
	orl	ar5,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:546: tmp = ((tmp & 0x03) << 6) | (tmp >> 2);
	mov	a,#0x03
	anl	a,r5
	rr	a
	rr	a
	anl	a,#0xC0
	mov	r4,a
	mov	a,r5
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r3,a
	orl	ar4,a
	mov	ar5,r4
;	/opt/contiki/core/net/ipv6/sicslowpan.c:548: if(((UIP_IP_BUF->tcflow & 0x0F) == 0) &&
	mov	dptr,#(_uip_aligned_buf + 0x0001)
	movx	a,@dptr
	mov	r4,a
	anl	a,#0x0F
	jz	00373$
	sjmp	00113$
00373$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:549: (UIP_IP_BUF->flow == 0)) {
	mov	dptr,#(_uip_aligned_buf + 0x0002)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	00113$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:551: iphc0 |= SICSLOWPAN_IPHC_FL_C;
	mov	r0,sp
	dec	r0
	mov	@r0,#0x70
;	/opt/contiki/core/net/ipv6/sicslowpan.c:552: if(((UIP_IP_BUF->vtc & 0x0F) == 0) &&
	mov	dptr,#_uip_aligned_buf
	movx	a,@dptr
	mov	r4,a
	anl	a,#0x0F
	jz	00376$
	sjmp	00105$
00376$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:553: ((UIP_IP_BUF->tcflow & 0xF0) == 0)) {
	mov	dptr,#(_uip_aligned_buf + 0x0001)
	movx	a,@dptr
	mov	r4,a
	anl	a,#0xF0
	jz	00378$
	sjmp	00105$
00378$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:555: iphc0 |= SICSLOWPAN_IPHC_TC_C;
	mov	r0,sp
	dec	r0
	mov	@r0,#0x78
	ljmp	00114$
00105$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:558: *hc06_ptr = tmp;
	mov	dptr,#_hc06_ptr
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
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:559: hc06_ptr += 1;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	ljmp	00114$
00113$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:563: if(((UIP_IP_BUF->vtc & 0x0F) == 0) &&
	mov	dptr,#_uip_aligned_buf
	movx	a,@dptr
	mov	r4,a
	anl	a,#0x0F
	jz	00380$
	ljmp	00109$
00380$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:564: ((UIP_IP_BUF->tcflow & 0xF0) == 0)) {
	mov	dptr,#(_uip_aligned_buf + 0x0001)
	movx	a,@dptr
	mov	r4,a
	anl	a,#0xF0
	jz	00382$
	ljmp	00109$
00382$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:566: iphc0 |= SICSLOWPAN_IPHC_TC_C;
	mov	r0,sp
	dec	r0
	mov	@r0,#0x68
;	/opt/contiki/core/net/ipv6/sicslowpan.c:567: *hc06_ptr = (tmp & 0xc0) |
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0xC0
	anl	a,r5
	mov	r6,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:568: (UIP_IP_BUF->tcflow & 0x0F);
	mov	dptr,#(_uip_aligned_buf + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0F
	anl	a,r7
	orl	ar6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:569: memcpy(hc06_ptr + 1, &UIP_IP_BUF->flow, 2);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00383$
	inc	r6
00383$:
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#(_uip_aligned_buf + 0x0002)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0002) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:570: hc06_ptr += 3;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x03
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00114$
00109$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:573: memcpy(hc06_ptr, &UIP_IP_BUF->vtc, 4);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar5
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_aligned_buf
	push	acc
	mov	a,#(_uip_aligned_buf >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
;	/opt/contiki/core/net/ipv6/sicslowpan.c:575: *hc06_ptr = tmp;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:576: hc06_ptr += 4;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x04
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00114$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:584: if(UIP_IP_BUF->proto == UIP_PROTO_UDP) {
	mov	dptr,#(_uip_aligned_buf + 0x0006)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x11,00117$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:585: iphc0 |= SICSLOWPAN_IPHC_NH_C;
	mov	r0,sp
	dec	r0
	mov	a,@r0
	orl	a,#0x04
	mov	@r0,a
00117$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:593: if ((iphc0 & SICSLOWPAN_IPHC_NH_C) == 0) {
	mov	r0,sp
	dec	r0
	mov	a,@r0
	jb	acc.2,00119$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:594: *hc06_ptr = UIP_IP_BUF->proto;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_uip_aligned_buf + 0x0006)
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:595: hc06_ptr += 1;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00119$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:605: switch(UIP_IP_BUF->ttl) {
	mov	dptr,#(_uip_aligned_buf + 0x0007)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00387$
	sjmp	00120$
00387$:
	cjne	r7,#0x40,00388$
	sjmp	00121$
00388$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:606: case 1:
	cjne	r7,#0xFF,00123$
	sjmp	00122$
00120$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:607: iphc0 |= SICSLOWPAN_IPHC_TTL_1;
	mov	r0,sp
	dec	r0
	mov	a,@r0
	orl	a,#0x01
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:608: break;
;	/opt/contiki/core/net/ipv6/sicslowpan.c:609: case 64:
	sjmp	00124$
00121$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:610: iphc0 |= SICSLOWPAN_IPHC_TTL_64;
	mov	r0,sp
	dec	r0
	mov	a,@r0
	orl	a,#0x02
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:611: break;
;	/opt/contiki/core/net/ipv6/sicslowpan.c:612: case 255:
	sjmp	00124$
00122$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:613: iphc0 |= SICSLOWPAN_IPHC_TTL_255;
	mov	r0,sp
	dec	r0
	mov	a,@r0
	orl	a,#0x03
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:614: break;
;	/opt/contiki/core/net/ipv6/sicslowpan.c:615: default:
	sjmp	00124$
00123$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:616: *hc06_ptr = UIP_IP_BUF->ttl;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_uip_aligned_buf + 0x0007)
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:617: hc06_ptr += 1;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:619: }
00124$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:622: if(uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr)) {
	mov	dptr,#(_uip_aligned_buf + 0x0008)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jnz	00136$
	mov	dptr,#(_uip_aligned_buf + 0x000a)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jnz	00136$
	mov	dptr,#(_uip_aligned_buf + 0x000c)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jnz	00136$
	mov	dptr,#(_uip_aligned_buf + 0x000e)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jnz	00136$
	mov	dptr,#(_uip_aligned_buf + 0x0010)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jnz	00136$
	mov	dptr,#(_uip_aligned_buf + 0x0012)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jnz	00136$
	mov	dptr,#(_uip_aligned_buf + 0x0014)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jnz	00136$
	mov	dptr,#(_uip_aligned_buf + 0x0016)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jnz	00136$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:624: iphc1 |= SICSLOWPAN_IPHC_SAC;
	mov	r0,sp
	mov	a,@r0
	orl	a,#0x40
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:625: iphc1 |= SICSLOWPAN_IPHC_SAM_00;
	ljmp	00137$
00136$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:626: } else if((context = addr_context_lookup_by_prefix(&UIP_IP_BUF->srcipaddr))
	mov	dptr,#(_uip_aligned_buf + 0x0008)
	mov	b,#0x00
	mov	r0,#_addr_context_lookup_by_prefix
	mov	r1,#(_addr_context_lookup_by_prefix >> 8)
	mov	r2,#(_addr_context_lookup_by_prefix >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r7,b
	mov	dptr,#_context
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	orl	a,r5
	jnz	00398$
	ljmp	00133$
00398$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:631: iphc1 |= SICSLOWPAN_IPHC_CID | SICSLOWPAN_IPHC_SAC;
	mov	r0,sp
	mov	a,@r0
	orl	a,#0xC0
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:632: PACKETBUF_IPHC_BUF[2] |= context->number << 4;
	mov	dptr,#_packetbuf_hdr_len
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	dptr,#_packetbuf_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	r4
	cjne	r4,#0x00,00399$
	inc	r5
00399$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	swap	a
	anl	a,#0xF0
	orl	ar6,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:636: &UIP_IP_BUF->srcipaddr, &uip_lladdr);
;	/opt/contiki/core/net/ipv6/sicslowpan.c:635: iphc1 |= compress_addr_64(SICSLOWPAN_IPHC_SAM_BIT,
	mov	a,#_uip_lladdr
	push	acc
	mov	a,#(_uip_lladdr >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#(_uip_aligned_buf + 0x0008)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0008) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x04
	mov	r0,#_compress_addr_64
	mov	r1,#(_compress_addr_64 >> 8)
	mov	r2,#(_compress_addr_64 >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	r0,sp
	mov	a,r7
	orl	a,@r0
	mov	@r0,a
	ljmp	00137$
00133$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:638: } else if(uip_is_addr_linklocal(&UIP_IP_BUF->srcipaddr) &&
	mov	dptr,#(_uip_aligned_buf + 0x0008)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFE,00126$
	mov	dptr,#(_uip_aligned_buf + 0x0009)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,00126$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:639: UIP_IP_BUF->destipaddr.u16[1] == 0 &&
	mov	dptr,#(_uip_aligned_buf + 0x001a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00126$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:640: UIP_IP_BUF->destipaddr.u16[2] == 0 &&
	mov	dptr,#(_uip_aligned_buf + 0x001c)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00126$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:641: UIP_IP_BUF->destipaddr.u16[3] == 0) {
	mov	dptr,#(_uip_aligned_buf + 0x001e)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00126$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:643: &UIP_IP_BUF->srcipaddr, &uip_lladdr);
;	/opt/contiki/core/net/ipv6/sicslowpan.c:642: iphc1 |= compress_addr_64(SICSLOWPAN_IPHC_SAM_BIT,
	mov	a,#_uip_lladdr
	push	acc
	mov	a,#(_uip_lladdr >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#(_uip_aligned_buf + 0x0008)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0008) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x04
	mov	r0,#_compress_addr_64
	mov	r1,#(_compress_addr_64 >> 8)
	mov	r2,#(_compress_addr_64 >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	r0,sp
	mov	a,r7
	orl	a,@r0
	mov	@r0,a
	sjmp	00137$
00126$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:647: memcpy(hc06_ptr, &UIP_IP_BUF->srcipaddr.u16[0], 16);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	a,#(_uip_aligned_buf + 0x0008)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0008) >> 8)
	push	acc
	clr	a
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
;	/opt/contiki/core/net/ipv6/sicslowpan.c:648: hc06_ptr += 16;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x10
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00137$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:652: if(uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) {
	mov	dptr,#(_uip_aligned_buf + 0x0018)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFF,00407$
	sjmp	00408$
00407$:
	ljmp	00181$
00408$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:654: iphc1 |= SICSLOWPAN_IPHC_M;
	mov	r0,sp
	mov	a,@r0
	orl	a,#0x08
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:655: if(sicslowpan_is_mcast_addr_compressable8(&UIP_IP_BUF->destipaddr)) {
	mov	dptr,#(_uip_aligned_buf + 0x0019)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00409$
	sjmp	00410$
00409$:
	ljmp	00161$
00410$:
	mov	dptr,#(_uip_aligned_buf + 0x001a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00411$
	ljmp	00161$
00411$:
	mov	dptr,#(_uip_aligned_buf + 0x001c)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00161$
	mov	dptr,#(_uip_aligned_buf + 0x001e)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00161$
	mov	dptr,#(_uip_aligned_buf + 0x0020)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00161$
	mov	dptr,#(_uip_aligned_buf + 0x0022)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00161$
	mov	dptr,#(_uip_aligned_buf + 0x0024)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00161$
	mov	dptr,#(_uip_aligned_buf + 0x0026)
	movx	a,@dptr
	jnz	00161$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:656: iphc1 |= SICSLOWPAN_IPHC_DAM_11;
	mov	r0,sp
	mov	a,@r0
	orl	a,#0x03
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:658: *hc06_ptr = UIP_IP_BUF->destipaddr.u8[15];
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_uip_aligned_buf + 0x0027)
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:659: hc06_ptr += 1;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00182$
00161$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:660: } else if(sicslowpan_is_mcast_addr_compressable32(&UIP_IP_BUF->destipaddr)) {
	mov	dptr,#(_uip_aligned_buf + 0x001a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00418$
	ljmp	00153$
00418$:
	mov	dptr,#(_uip_aligned_buf + 0x001c)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00419$
	ljmp	00153$
00419$:
	mov	dptr,#(_uip_aligned_buf + 0x001e)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00420$
	ljmp	00153$
00420$:
	mov	dptr,#(_uip_aligned_buf + 0x0020)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00421$
	ljmp	00153$
00421$:
	mov	dptr,#(_uip_aligned_buf + 0x0022)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00153$
	mov	dptr,#(_uip_aligned_buf + 0x0024)
	movx	a,@dptr
	jnz	00153$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:661: iphc1 |= SICSLOWPAN_IPHC_DAM_10;
	mov	r0,sp
	mov	a,@r0
	orl	a,#0x02
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:663: *hc06_ptr = UIP_IP_BUF->destipaddr.u8[1];
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_uip_aligned_buf + 0x0019)
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:664: memcpy(hc06_ptr + 1, &UIP_IP_BUF->destipaddr.u8[13], 3);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00424$
	inc	r6
00424$:
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	a,#(_uip_aligned_buf + 0x0025)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0025) >> 8)
	push	acc
	clr	a
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
;	/opt/contiki/core/net/ipv6/sicslowpan.c:665: hc06_ptr += 4;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x04
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00182$
00153$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:666: } else if(sicslowpan_is_mcast_addr_compressable48(&UIP_IP_BUF->destipaddr)) {
	mov	dptr,#(_uip_aligned_buf + 0x001a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00425$
	ljmp	00146$
00425$:
	mov	dptr,#(_uip_aligned_buf + 0x001c)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00426$
	ljmp	00146$
00426$:
	mov	dptr,#(_uip_aligned_buf + 0x001e)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00427$
	ljmp	00146$
00427$:
	mov	dptr,#(_uip_aligned_buf + 0x0020)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00146$
	mov	dptr,#(_uip_aligned_buf + 0x0022)
	movx	a,@dptr
	jnz	00146$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:667: iphc1 |= SICSLOWPAN_IPHC_DAM_01;
	mov	r0,sp
	mov	a,@r0
	orl	a,#0x01
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:669: *hc06_ptr = UIP_IP_BUF->destipaddr.u8[1];
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_uip_aligned_buf + 0x0019)
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:670: memcpy(hc06_ptr + 1, &UIP_IP_BUF->destipaddr.u8[11], 5);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00430$
	inc	r6
00430$:
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	mov	a,#(_uip_aligned_buf + 0x0023)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0023) >> 8)
	push	acc
	clr	a
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
;	/opt/contiki/core/net/ipv6/sicslowpan.c:671: hc06_ptr += 6;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x06
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00182$
00146$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:675: memcpy(hc06_ptr, &UIP_IP_BUF->destipaddr.u8[0], 16);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	a,#(_uip_aligned_buf + 0x0018)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0018) >> 8)
	push	acc
	clr	a
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
;	/opt/contiki/core/net/ipv6/sicslowpan.c:676: hc06_ptr += 16;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x10
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00182$
00181$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:680: if((context = addr_context_lookup_by_prefix(&UIP_IP_BUF->destipaddr)) != NULL) {
	mov	dptr,#(_uip_aligned_buf + 0x0018)
	mov	b,#0x00
	mov	r0,#_addr_context_lookup_by_prefix
	mov	r1,#(_addr_context_lookup_by_prefix >> 8)
	mov	r2,#(_addr_context_lookup_by_prefix >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	dptr,#_context
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	orl	a,r6
	jnz	00431$
	ljmp	00178$
00431$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:682: iphc1 |= SICSLOWPAN_IPHC_DAC;
	mov	r0,sp
	mov	a,@r0
	orl	a,#0x04
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:683: PACKETBUF_IPHC_BUF[2] |= context->number;
	mov	dptr,#_packetbuf_hdr_len
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	dptr,#_packetbuf_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x02
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
	mov	r4,a
	inc	r5
	cjne	r5,#0x00,00432$
	inc	r6
00432$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	orl	ar4,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:687: &UIP_IP_BUF->destipaddr, (uip_lladdr_t *)link_destaddr);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	/opt/contiki/core/net/ipv6/sicslowpan.c:686: iphc1 |= compress_addr_64(SICSLOWPAN_IPHC_DAM_BIT,
	push	ar5
	push	ar6
	push	ar7
	mov	a,#(_uip_aligned_buf + 0x0018)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0018) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x00
	mov	r0,#_compress_addr_64
	mov	r1,#(_compress_addr_64 >> 8)
	mov	r2,#(_compress_addr_64 >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	r0,sp
	mov	a,r7
	orl	a,@r0
	mov	@r0,a
	ljmp	00182$
00178$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:689: } else if(uip_is_addr_linklocal(&UIP_IP_BUF->destipaddr) &&
	mov	dptr,#(_uip_aligned_buf + 0x0018)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFE,00171$
	mov	dptr,#(_uip_aligned_buf + 0x0019)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,00171$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:690: UIP_IP_BUF->destipaddr.u16[1] == 0 &&
	mov	dptr,#(_uip_aligned_buf + 0x001a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00171$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:691: UIP_IP_BUF->destipaddr.u16[2] == 0 &&
	mov	dptr,#(_uip_aligned_buf + 0x001c)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00171$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:692: UIP_IP_BUF->destipaddr.u16[3] == 0) {
	mov	dptr,#(_uip_aligned_buf + 0x001e)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00171$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:694: &UIP_IP_BUF->destipaddr, (uip_lladdr_t *)link_destaddr);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	/opt/contiki/core/net/ipv6/sicslowpan.c:693: iphc1 |= compress_addr_64(SICSLOWPAN_IPHC_DAM_BIT,
	push	ar5
	push	ar6
	push	ar7
	mov	a,#(_uip_aligned_buf + 0x0018)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0018) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x00
	mov	r0,#_compress_addr_64
	mov	r1,#(_compress_addr_64 >> 8)
	mov	r2,#(_compress_addr_64 >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	r0,sp
	mov	a,r7
	orl	a,@r0
	mov	@r0,a
	sjmp	00182$
00171$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:698: memcpy(hc06_ptr, &UIP_IP_BUF->destipaddr.u16[0], 16);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	a,#(_uip_aligned_buf + 0x0018)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0018) >> 8)
	push	acc
	clr	a
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
;	/opt/contiki/core/net/ipv6/sicslowpan.c:699: hc06_ptr += 16;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x10
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00182$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:703: uncomp_hdr_len = UIP_IPH_LEN;
	mov	dptr,#_uncomp_hdr_len
	mov	a,#0x28
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:707: if(UIP_IP_BUF->proto == UIP_PROTO_UDP) {
	mov	dptr,#(_uip_aligned_buf + 0x0006)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x11,00440$
	sjmp	00441$
00440$:
	ljmp	00196$
00441$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:711: if(((UIP_HTONS(UIP_UDP_BUF->srcport) & 0xfff0) == SICSLOWPAN_UDP_4_BIT_PORT_MIN) &&
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar7,r6
	mov	r6,#0x00
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	anl	ar6,#0xF0
	cjne	r6,#0xB0,00442$
	cjne	r7,#0xF0,00442$
	sjmp	00443$
00442$:
	ljmp	00190$
00443$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:712: ((UIP_HTONS(UIP_UDP_BUF->destport) & 0xfff0) == SICSLOWPAN_UDP_4_BIT_PORT_MIN)) {
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar7,r6
	mov	r6,#0x00
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	anl	ar6,#0xF0
	cjne	r6,#0xB0,00444$
	cjne	r7,#0xF0,00444$
	sjmp	00445$
00444$:
	ljmp	00190$
00445$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:714: *hc06_ptr = SICSLOWPAN_NHC_UDP_CS_P_11;
	mov	dptr,#_hc06_ptr
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
	mov	a,#0xF3
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:716: *(hc06_ptr + 1) =
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00446$
	inc	r6
00446$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:717: (uint8_t)((UIP_HTONS(UIP_UDP_BUF->srcport) -
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	inc	r0
	mov	@r0,ar3
	dec	r0
	mov	@r0,#0x00
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	a,r2
	add	a,#0x50
	mov	r2,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,r2
	swap	a
	anl	a,#0xF0
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:719: (uint8_t)((UIP_HTONS(UIP_UDP_BUF->destport) -
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	inc	r0
	mov	@r0,ar3
	dec	r0
	mov	@r0,#0x00
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	a,r2
	add	a,#0x50
	xch	a,r0
	mov	a,sp
	add	a,#0xfa
	xch	a,r0
	add	a,@r0
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:721: hc06_ptr += 2;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00193$
00190$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:722: } else if((UIP_HTONS(UIP_UDP_BUF->destport) & 0xff00) == SICSLOWPAN_UDP_8_BIT_PORT_MIN) {
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar7,r6
	mov	r6,#0x00
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	mov	r6,#0x00
	cjne	r6,#0x00,00447$
	cjne	r7,#0xF0,00447$
	sjmp	00448$
00447$:
	ljmp	00187$
00448$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:724: *hc06_ptr = SICSLOWPAN_NHC_UDP_CS_P_01;
	mov	dptr,#_hc06_ptr
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
	mov	a,#0xF1
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:726: memcpy(hc06_ptr + 1, &UIP_UDP_BUF->srcport, 2);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00449$
	inc	r6
00449$:
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#(_uip_aligned_buf + 0x0028)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0028) >> 8)
	push	acc
	clr	a
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
;	/opt/contiki/core/net/ipv6/sicslowpan.c:727: *(hc06_ptr + 3) =
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:728: (uint8_t)((UIP_HTONS(UIP_UDP_BUF->destport) -
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	inc	r0
	mov	@r0,ar3
	dec	r0
	mov	@r0,#0x00
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:730: hc06_ptr += 4;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x04
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00193$
00187$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:731: } else if((UIP_HTONS(UIP_UDP_BUF->srcport) & 0xff00) == SICSLOWPAN_UDP_8_BIT_PORT_MIN) {
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar7,r6
	mov	r6,#0x00
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	mov	r6,#0x00
	cjne	r6,#0x00,00450$
	cjne	r7,#0xF0,00450$
	sjmp	00451$
00450$:
	ljmp	00184$
00451$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:733: *hc06_ptr = SICSLOWPAN_NHC_UDP_CS_P_10;
	mov	dptr,#_hc06_ptr
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
	mov	a,#0xF2
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:735: *(hc06_ptr + 1) =
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00452$
	inc	r6
00452$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:736: (uint8_t)((UIP_HTONS(UIP_UDP_BUF->srcport) -
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	inc	r0
	mov	@r0,ar3
	dec	r0
	mov	@r0,#0x00
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:738: memcpy(hc06_ptr + 2, &UIP_UDP_BUF->destport, 2);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#(_uip_aligned_buf + 0x002a)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x002a) >> 8)
	push	acc
	clr	a
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
;	/opt/contiki/core/net/ipv6/sicslowpan.c:739: hc06_ptr += 4;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x04
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00193$
00184$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:742: *hc06_ptr = SICSLOWPAN_NHC_UDP_CS_P_00;
	mov	dptr,#_hc06_ptr
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
	mov	a,#0xF0
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:744: memcpy(hc06_ptr + 1, &UIP_UDP_BUF->srcport, 4);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00453$
	inc	r6
00453$:
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#(_uip_aligned_buf + 0x0028)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0028) >> 8)
	push	acc
	clr	a
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
;	/opt/contiki/core/net/ipv6/sicslowpan.c:745: hc06_ptr += 5;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x05
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:748: if(1) {
00193$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:749: memcpy(hc06_ptr, &UIP_UDP_BUF->udpchksum, 2);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#(_uip_aligned_buf + 0x002e)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x002e) >> 8)
	push	acc
	clr	a
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
;	/opt/contiki/core/net/ipv6/sicslowpan.c:750: hc06_ptr += 2;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:752: uncomp_hdr_len += UIP_UDPH_LEN;
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	add	a,#0x08
	movx	@dptr,a
00196$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:762: PACKETBUF_IPHC_BUF[0] = iphc0;
	mov	dptr,#_packetbuf_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_packetbuf_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,r4
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar2,r6
	mov	dpl,r7
	mov	dph,r3
	mov	b,r2
	mov	r0,sp
	dec	r0
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:763: PACKETBUF_IPHC_BUF[1] = iphc1;
	mov	dptr,#_packetbuf_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_packetbuf_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,r4
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar2,r6
	inc	r7
	cjne	r7,#0x00,00454$
	inc	r3
00454$:
	mov	dpl,r7
	mov	dph,r3
	mov	b,r2
	mov	r0,sp
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:765: packetbuf_hdr_len = hc06_ptr - packetbuf_ptr;
	mov	dptr,#_packetbuf_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	clr	c
	subb	a,r5
	mov	r5,a
	mov	a,r3
	subb	a,r6
	mov	r6,a
	mov	dptr,#_packetbuf_hdr_len
	mov	a,r5
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:766: return;
	mov	a,sp
	add	a,#0xF5
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uncompress_hdr_hc06'
;------------------------------------------------------------
;ip_len                    Allocated to stack - sp -8
;tmp                       Allocated to registers r3 
;iphc0                     Allocated to stack - sp -3
;iphc1                     Allocated to stack - sp -2
;sci                       Allocated to registers r6 
;prefix                    Allocated to stack - sp -1
;dci                       Allocated to registers r7 
;checksum_compressed       Allocated to registers r3 
;len                       Allocated to registers r6 r7 
;sloc0                     Allocated to stack - sp -6
;sloc1                     Allocated to stack - sp +7
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:786: uncompress_hdr_hc06(uint16_t ip_len)
;	-----------------------------------------
;	 function uncompress_hdr_hc06
;	-----------------------------------------
_uncompress_hdr_hc06:
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:790: hc06_ptr = packetbuf_ptr + packetbuf_hdr_len + 2;
	mov	dptr,#_packetbuf_hdr_len
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_packetbuf_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:792: iphc0 = PACKETBUF_IPHC_BUF[0];
	mov	dpl,r5
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:793: iphc1 = PACKETBUF_IPHC_BUF[1];
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	r0,sp
	dec	r0
	dec	r0
	lcall	__gptrget
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:796: if(iphc1 & SICSLOWPAN_IPHC_CID) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	jnb	acc.7,00102$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:798: hc06_ptr++;
	mov	dptr,#_hc06_ptr
	mov	a,#0x03
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00102$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:802: if((iphc0 & SICSLOWPAN_IPHC_FL_C) == 0) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnb	acc.4,00245$
	ljmp	00110$
00245$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:804: if((iphc0 & SICSLOWPAN_IPHC_TC_C) == 0) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnb	acc.3,00246$
	ljmp	00104$
00246$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:806: memcpy(&SICSLOWPAN_IP_BUF->tcflow, hc06_ptr + 1, 3);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	r4
	cjne	r4,#0x00,00247$
	inc	r5
00247$:
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	push	ar6
	mov	dptr,#(_uip_aligned_buf + 0x0001)
	mov	b,#0x00
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:807: tmp = *hc06_ptr;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:808: hc06_ptr += 4;
	mov	dptr,#_hc06_ptr
	mov	a,#0x04
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:811: SICSLOWPAN_IP_BUF->vtc = 0x60 | ((tmp >> 2) & 0x0f);
	mov	a,r3
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r6,a
	mov	a,#0x0F
	anl	a,r6
	orl	a,#0x60
	mov	dptr,#_uip_aligned_buf
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:813: SICSLOWPAN_IP_BUF->tcflow = ((tmp >> 2) & 0x30) | (tmp << 6) |
	anl	ar6,#0x30
	mov	a,r3
	rr	a
	rr	a
	anl	a,#0xC0
	orl	ar6,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:814: (SICSLOWPAN_IP_BUF->tcflow & 0x0f);
	mov	dptr,#(_uip_aligned_buf + 0x0001)
	movx	a,@dptr
	anl	a,#0x0F
	mov	r5,a
	orl	ar6,a
	mov	dptr,#(_uip_aligned_buf + 0x0001)
	mov	a,r6
	movx	@dptr,a
	ljmp	00111$
00104$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:817: SICSLOWPAN_IP_BUF->vtc = 0x60;
	mov	dptr,#_uip_aligned_buf
	mov	a,#0x60
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:819: SICSLOWPAN_IP_BUF->tcflow = (*hc06_ptr & 0x0F) |
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x0F
	anl	a,r4
	mov	r6,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:820: ((*hc06_ptr >> 2) & 0x30);
	mov	a,r4
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r4,a
	mov	a,#0x30
	anl	a,r4
	orl	ar6,a
	mov	dptr,#(_uip_aligned_buf + 0x0001)
	mov	a,r6
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:821: memcpy(&SICSLOWPAN_IP_BUF->flow, hc06_ptr + 1, 2);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	r4
	cjne	r4,#0x00,00248$
	inc	r5
00248$:
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	push	ar6
	mov	dptr,#(_uip_aligned_buf + 0x0002)
	mov	b,#0x00
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:822: hc06_ptr += 3;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x03
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	ljmp	00111$
00110$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:827: if((iphc0 & SICSLOWPAN_IPHC_TC_C) == 0) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jb	acc.3,00107$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:829: SICSLOWPAN_IP_BUF->vtc = 0x60 | ((*hc06_ptr >> 2) & 0x0f);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r4,a
	mov	a,#0x0F
	anl	a,r4
	orl	a,#0x60
	mov	dptr,#_uip_aligned_buf
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:830: SICSLOWPAN_IP_BUF->tcflow = ((*hc06_ptr << 6) & 0xC0) | ((*hc06_ptr >> 2) & 0x30);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	rr	a
	rr	a
	anl	a,#0xC0
	mov	r6,a
	anl	ar6,#0xC0
	mov	a,r4
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r4,a
	mov	a,#0x30
	anl	a,r4
	orl	ar6,a
	mov	dptr,#(_uip_aligned_buf + 0x0001)
	mov	a,r6
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:831: SICSLOWPAN_IP_BUF->flow = 0;
	mov	dptr,#(_uip_aligned_buf + 0x0002)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:832: hc06_ptr += 1;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	sjmp	00111$
00107$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:835: SICSLOWPAN_IP_BUF->vtc = 0x60;
	mov	dptr,#_uip_aligned_buf
	mov	a,#0x60
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:836: SICSLOWPAN_IP_BUF->tcflow = 0;
	mov	dptr,#(_uip_aligned_buf + 0x0001)
	clr	a
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:837: SICSLOWPAN_IP_BUF->flow = 0;
	mov	dptr,#(_uip_aligned_buf + 0x0002)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00111$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:842: if((iphc0 & SICSLOWPAN_IPHC_NH_C) == 0) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jb	acc.2,00113$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:844: SICSLOWPAN_IP_BUF->proto = *hc06_ptr;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#(_uip_aligned_buf + 0x0006)
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:846: hc06_ptr += 1;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
00113$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:850: if((iphc0 & 0x03) != SICSLOWPAN_IPHC_TTL_I) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	anl	a,#0x03
	jz	00115$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:851: SICSLOWPAN_IP_BUF->ttl = ttl_values[iphc0 & 0x03];
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x03
	anl	a,@r0
	mov	dptr,#_ttl_values
	movc	a,@a+dptr
	mov	r6,a
	mov	dptr,#(_uip_aligned_buf + 0x0007)
	movx	@dptr,a
	sjmp	00116$
00115$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:853: SICSLOWPAN_IP_BUF->ttl = *hc06_ptr;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#(_uip_aligned_buf + 0x0007)
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:854: hc06_ptr += 1;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
00116$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:858: tmp = ((iphc1 & SICSLOWPAN_IPHC_SAM_11) >> SICSLOWPAN_IPHC_SAM_BIT) & 0x03;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x30
	anl	a,@r0
	swap	a
	anl	a,#0x0F
	mov	r6,a
	mov	a,#0x03
	anl	a,r6
	mov	r3,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:861: if(iphc1 & SICSLOWPAN_IPHC_SAC) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	jb	acc.6,00252$
	ljmp	00122$
00252$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:862: uint8_t sci = (iphc1 & SICSLOWPAN_IPHC_CID) ?
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	jnb	acc.7,00157$
	mov	dptr,#_packetbuf_hdr_len
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_packetbuf_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	swap	a
	anl	a,#0x0F
	mov	r6,a
	sjmp	00158$
00157$:
	mov	r6,#0x00
00158$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:866: if (tmp != 0) {
	mov	a,r3
	jz	00120$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:867: context = addr_context_lookup_by_number(sci);
	mov	dpl,r6
	push	ar3
	mov	r0,#_addr_context_lookup_by_number
	mov	r1,#(_addr_context_lookup_by_number >> 8)
	mov	r2,#(_addr_context_lookup_by_number >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	pop	ar3
	mov	dptr,#_context
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:868: if(context == NULL) {
	mov	a,r4
	orl	a,r5
	jnz	00120$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:870: return;
	ljmp	00155$
00120$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:876: (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x1A
	push	ar3
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	pop	ar3
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	/opt/contiki/core/net/ipv6/sicslowpan.c:875: tmp != 0 ? context->prefix : NULL, unc_ctxconf[tmp],
	mov	a,r3
	mov	dptr,#_unc_ctxconf
	movc	a,@a+dptr
	mov	r2,a
	mov	a,r3
	jz	00159$
	push	ar2
	mov	dptr,#_context
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	pop	ar2
	sjmp	00160$
00159$:
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00160$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:874: uncompress_addr(&SICSLOWPAN_IP_BUF->srcipaddr,
	mov	a,sp
	add	a,#0xfa
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
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_uip_aligned_buf + 0x0008)
	mov	b,#0x00
	mov	r0,#_uncompress_addr
	mov	r1,#(_uncompress_addr >> 8)
	mov	r2,#(_uncompress_addr >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00123$
00122$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:880: (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x1A
	push	ar3
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar3
;	/opt/contiki/core/net/ipv6/sicslowpan.c:879: uncompress_addr(&SICSLOWPAN_IP_BUF->srcipaddr, llprefix, unc_llconf[tmp],
	mov	a,r3
	mov	dptr,#_unc_llconf
	movc	a,@a+dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	mov	a,#_llprefix
	push	acc
	mov	a,#(_llprefix >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dptr,#(_uip_aligned_buf + 0x0008)
	mov	b,#0x00
	mov	r0,#_uncompress_addr
	mov	r1,#(_uncompress_addr >> 8)
	mov	r2,#(_uncompress_addr >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00123$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:885: tmp = ((iphc1 & SICSLOWPAN_IPHC_DAM_11) >> SICSLOWPAN_IPHC_DAM_BIT) & 0x03;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x03
	anl	a,@r0
	mov	r7,a
	mov	a,#0x03
	anl	a,r7
	mov	r3,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:888: if(iphc1 & SICSLOWPAN_IPHC_M) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	jnb	acc.3,00136$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:890: if(iphc1 & SICSLOWPAN_IPHC_DAC) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	jnb	acc.2,00258$
	ljmp	00137$
00258$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:898: uint8_t prefix[] = {0xff, 0x02};
	mov	r1,sp
	dec	r1
	mov	@r1,#0xFF
	mov	a,r1
	inc	a
	mov	r0,a
	mov	@r0,#0x02
;	/opt/contiki/core/net/ipv6/sicslowpan.c:899: if(tmp > 0 && tmp < 3) {
	mov	a,r3
	jz	00125$
	cjne	r3,#0x03,00260$
00260$:
	jnc	00125$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:900: prefix[1] = *hc06_ptr;
	mov	dptr,#_hc06_ptr
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
	lcall	__gptrget
	mov	r4,a
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:901: hc06_ptr++;
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00125$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:905: unc_mxconf[tmp], NULL);
	mov	a,r3
	mov	dptr,#_unc_mxconf
	movc	a,@a+dptr
	mov	r7,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:904: uncompress_addr(&SICSLOWPAN_IP_BUF->destipaddr, prefix,
	mov	ar6,r1
	mov	r5,#0x00
	mov	r4,#0x40
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dptr,#(_uip_aligned_buf + 0x0018)
	mov	b,#0x00
	mov	r0,#_uncompress_addr
	mov	r1,#(_uncompress_addr >> 8)
	mov	r2,#(_uncompress_addr >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	ljmp	00137$
00136$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:910: if(iphc1 & SICSLOWPAN_IPHC_DAC) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	jb	acc.2,00262$
	ljmp	00133$
00262$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:911: uint8_t dci = (iphc1 & SICSLOWPAN_IPHC_CID) ?
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	jnb	acc.7,00161$
	mov	dptr,#_packetbuf_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_packetbuf_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x0F
	anl	a,r4
	mov	r7,a
	sjmp	00162$
00161$:
	mov	r7,#0x00
00162$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:913: context = addr_context_lookup_by_number(dci);
	mov	dpl,r7
	push	ar3
	mov	r0,#_addr_context_lookup_by_number
	mov	r1,#(_addr_context_lookup_by_number >> 8)
	mov	r2,#(_addr_context_lookup_by_number >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar3
	mov	dptr,#_context
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:916: if(context == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00131$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:918: return;
	ljmp	00155$
00131$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:922: (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
	mov	dpl,#0x1B
	push	ar3
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar3
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/ipv6/sicslowpan.c:921: unc_ctxconf[tmp],
	mov	a,r3
	mov	dptr,#_unc_ctxconf
	movc	a,@a+dptr
	mov	r6,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:920: uncompress_addr(&SICSLOWPAN_IP_BUF->destipaddr, context->prefix,
	mov	dptr,#_context
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar2
	push	ar4
	push	ar7
	mov	dptr,#(_uip_aligned_buf + 0x0018)
	mov	b,#0x00
	mov	r0,#_uncompress_addr
	mov	r1,#(_uncompress_addr >> 8)
	mov	r2,#(_uncompress_addr >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00137$
00133$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:927: (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
	mov	dpl,#0x1B
	push	ar3
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar3
;	/opt/contiki/core/net/ipv6/sicslowpan.c:926: unc_llconf[tmp],
	mov	a,r3
	mov	dptr,#_unc_llconf
	movc	a,@a+dptr
	mov	r4,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:925: uncompress_addr(&SICSLOWPAN_IP_BUF->destipaddr, llprefix,
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	mov	a,#_llprefix
	push	acc
	mov	a,#(_llprefix >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dptr,#(_uip_aligned_buf + 0x0018)
	mov	b,#0x00
	mov	r0,#_uncompress_addr
	mov	r1,#(_uncompress_addr >> 8)
	mov	r2,#(_uncompress_addr >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00137$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:930: uncomp_hdr_len += UIP_IPH_LEN;
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	add	a,#0x28
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:933: if((iphc0 & SICSLOWPAN_IPHC_NH_C)) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jb	acc.2,00265$
	ljmp	00149$
00265$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:935: if((*hc06_ptr & SICSLOWPAN_NHC_UDP_MASK) == SICSLOWPAN_NHC_UDP_ID) {
	mov	dptr,#_hc06_ptr
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
	lcall	__gptrget
	mov	r5,a
	anl	ar5,#0xF8
	cjne	r5,#0xF0,00266$
	sjmp	00267$
00266$:
	ljmp	00149$
00267$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:937: SICSLOWPAN_IP_BUF->proto = UIP_PROTO_UDP;
	mov	dptr,#(_uip_aligned_buf + 0x0006)
	mov	a,#0x11
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:938: checksum_compressed = *hc06_ptr & SICSLOWPAN_NHC_UDP_CHECKSUMC;
	mov	dptr,#_hc06_ptr
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
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x04
	anl	a,r4
	mov	r3,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:940: switch(*hc06_ptr & SICSLOWPAN_NHC_UDP_CS_P_11) {
	anl	ar4,#0xF3
	cjne	r4,#0xF0,00268$
	sjmp	00138$
00268$:
	cjne	r4,#0xF1,00269$
	ljmp	00139$
00269$:
	cjne	r4,#0xF2,00270$
	ljmp	00140$
00270$:
	cjne	r4,#0xF3,00271$
	ljmp	00141$
00271$:
	ljmp	00142$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:941: case SICSLOWPAN_NHC_UDP_CS_P_00:
00138$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:943: memcpy(&SICSLOWPAN_UDP_BUF->srcport, hc06_ptr + 1, 2);
	push	ar3
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar3
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	mov	b,#0x00
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
;	/opt/contiki/core/net/ipv6/sicslowpan.c:944: memcpy(&SICSLOWPAN_UDP_BUF->destport, hc06_ptr + 3, 2);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	push	ar3
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	mov	b,#0x00
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
;	/opt/contiki/core/net/ipv6/sicslowpan.c:947: hc06_ptr += 5;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x05
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:948: break;
	pop	ar3
	ljmp	00143$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:950: case SICSLOWPAN_NHC_UDP_CS_P_01:
00139$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:953: memcpy(&SICSLOWPAN_UDP_BUF->srcport, hc06_ptr + 1, 2);
	push	ar3
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar3
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	mov	b,#0x00
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
;	/opt/contiki/core/net/ipv6/sicslowpan.c:954: SICSLOWPAN_UDP_BUF->destport = UIP_HTONS(SICSLOWPAN_UDP_8_BIT_PORT_MIN + (*(hc06_ptr + 3)));
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
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
	mov	r4,#0x00
	mov	ar7,r2
	mov	a,#0xF0
	add	a,r4
	mov	r6,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	inc	r0
	mov	@r0,ar7
	dec	r0
	mov	@r0,#0x00
	mov	ar2,r6
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	mov	a,r2
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:957: hc06_ptr += 4;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x04
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:958: break;
	pop	ar3
	ljmp	00143$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:960: case SICSLOWPAN_NHC_UDP_CS_P_10:
00140$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:963: SICSLOWPAN_UDP_BUF->srcport = UIP_HTONS(SICSLOWPAN_UDP_8_BIT_PORT_MIN +
	push	ar3
	mov	a,#0x01
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
	mov	r4,#0x00
	mov	ar7,r2
	mov	a,#0xF0
	add	a,r4
	mov	r6,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	inc	r0
	mov	@r0,ar7
	dec	r0
	mov	@r0,#0x00
	mov	ar2,r6
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	mov	a,r2
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:965: memcpy(&SICSLOWPAN_UDP_BUF->destport, hc06_ptr + 2, 2);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	push	ar3
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	mov	b,#0x00
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
;	/opt/contiki/core/net/ipv6/sicslowpan.c:968: hc06_ptr += 4;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x04
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:969: break;
	pop	ar3
	ljmp	00143$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:971: case SICSLOWPAN_NHC_UDP_CS_P_11:
00141$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:973: SICSLOWPAN_UDP_BUF->srcport = UIP_HTONS(SICSLOWPAN_UDP_4_BIT_PORT_MIN +
	inc	r5
	cjne	r5,#0x00,00272$
	inc	r6
00272$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	swap	a
	anl	a,#0x0F
	mov	r5,a
	mov	r7,#0x00
	mov	a,#0xB0
	add	a,r5
	mov	r5,a
	mov	a,#0xF0
	addc	a,r7
	mov	r7,a
	mov	ar6,r5
	mov	r4,#0x00
	mov	ar5,r7
	mov	r7,#0x00
	mov	a,r5
	orl	ar4,a
	mov	a,r7
	orl	ar6,a
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	mov	a,r4
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:975: SICSLOWPAN_UDP_BUF->destport = UIP_HTONS(SICSLOWPAN_UDP_4_BIT_PORT_MIN +
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00273$
	inc	r6
00273$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	anl	ar5,#0x0F
	mov	r7,#0x00
	mov	a,#0xB0
	add	a,r5
	mov	r5,a
	mov	a,#0xF0
	addc	a,r7
	mov	r7,a
	mov	ar6,r5
	mov	r4,#0x00
	mov	ar5,r7
	mov	r7,#0x00
	mov	a,r5
	orl	ar4,a
	mov	a,r7
	orl	ar6,a
	mov	dptr,#(_uip_aligned_buf + 0x002a)
	mov	a,r4
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:979: hc06_ptr += 2;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:980: break;
;	/opt/contiki/core/net/ipv6/sicslowpan.c:982: default:
	sjmp	00143$
00142$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:984: return;
	ljmp	00155$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:985: }
00143$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:986: if(!checksum_compressed) { /* has_checksum, default  */
	mov	a,r3
	jnz	00145$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:987: memcpy(&SICSLOWPAN_UDP_BUF->udpchksum, hc06_ptr, 2);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_uip_aligned_buf + 0x002e)
	mov	b,#0x00
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:988: hc06_ptr += 2;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00145$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:993: uncomp_hdr_len += UIP_UDPH_LEN;
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	add	a,#0x08
	movx	@dptr,a
00149$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1002: packetbuf_hdr_len = hc06_ptr - packetbuf_ptr;
	mov	dptr,#_packetbuf_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	clr	c
	subb	a,r5
	mov	r5,a
	mov	a,r3
	subb	a,r6
	mov	r6,a
	mov	dptr,#_packetbuf_hdr_len
	mov	a,r5
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1005: if(ip_len == 0) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00151$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1006: int len = packetbuf_datalen() - packetbuf_hdr_len + uncomp_hdr_len - UIP_IPH_LEN;
	mov	r0,#_packetbuf_datalen
	mov	r1,#(_packetbuf_datalen >> 8)
	mov	r2,#(_packetbuf_datalen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_packetbuf_hdr_len
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,r6
	clr	c
	subb	a,r5
	mov	r6,a
	mov	a,r7
	subb	a,r4
	mov	r7,a
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	mov	a,r6
	add	a,#0xD8
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1008: SICSLOWPAN_IP_BUF->len[0] = len >> 8;
	mov	r5,a
	mov	dptr,#(_uip_aligned_buf + 0x0004)
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1009: SICSLOWPAN_IP_BUF->len[1] = len & 0x00FF;
	mov	r7,#0x00
	mov	dptr,#(_uip_aligned_buf + 0x0005)
	mov	a,r6
	movx	@dptr,a
	sjmp	00152$
00151$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1012: SICSLOWPAN_IP_BUF->len[0] = (ip_len - UIP_IPH_LEN) >> 8;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	add	a,#0xD8
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	mov	r7,a
	mov	dptr,#(_uip_aligned_buf + 0x0004)
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1013: SICSLOWPAN_IP_BUF->len[1] = (ip_len - UIP_IPH_LEN) & 0x00FF;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	add	a,#0xD8
	mov	r6,a
	mov	dptr,#(_uip_aligned_buf + 0x0005)
	movx	@dptr,a
00152$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1017: if(SICSLOWPAN_IP_BUF->proto == UIP_PROTO_UDP) {
	mov	dptr,#(_uip_aligned_buf + 0x0006)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x11,00154$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1018: memcpy(&SICSLOWPAN_UDP_BUF->udplen, &SICSLOWPAN_IP_BUF->len[0], 2);
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#(_uip_aligned_buf + 0x0004)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0004) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#(_uip_aligned_buf + 0x002c)
	mov	b,#0x00
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00154$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1021: return;
00155$:
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compress_hdr_ipv6'
;------------------------------------------------------------
;link_destaddr             Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1291: compress_hdr_ipv6(linkaddr_t *link_destaddr)
;	-----------------------------------------
;	 function compress_hdr_ipv6
;	-----------------------------------------
_compress_hdr_ipv6:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1293: *packetbuf_ptr = SICSLOWPAN_DISPATCH_IPV6;
	mov	dptr,#_packetbuf_ptr
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
	mov	a,#0x41
	lcall	__gptrput
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1294: packetbuf_hdr_len += SICSLOWPAN_IPV6_HDR_LEN;
	mov	dptr,#_packetbuf_hdr_len
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1295: memcpy(packetbuf_ptr + packetbuf_hdr_len, UIP_IP_BUF, UIP_IPH_LEN);
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_packetbuf_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,r4
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar2,r6
	mov	a,#0x28
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_aligned_buf
	push	acc
	mov	a,#(_uip_aligned_buf >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r3
	mov	b,r2
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1296: packetbuf_hdr_len += UIP_IPH_LEN;
	mov	dptr,#_packetbuf_hdr_len
	movx	a,@dptr
	add	a,#0x28
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1297: uncomp_hdr_len += UIP_IPH_LEN;
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	add	a,#0x28
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1298: return;
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_sent'
;------------------------------------------------------------
;status                    Allocated to stack - sp -4
;transmissions             Allocated to stack - sp -6
;ptr                       Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1310: packet_sent(void *ptr, int status, int transmissions)
;	-----------------------------------------
;	 function packet_sent
;	-----------------------------------------
_packet_sent:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1312: uip_ds6_link_neighbor_callback(status, transmissions);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	r0,#_uip_ds6_link_neighbor_callback
	mov	r1,#(_uip_ds6_link_neighbor_callback >> 8)
	mov	r2,#(_uip_ds6_link_neighbor_callback >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1314: if(callback != NULL) {
	mov	dptr,#_callback
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_callback
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00102$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1315: callback->output_callback(status);
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
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1317: last_tx_status = status;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dptr,#_last_tx_status
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;dest                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1326: send_packet(linkaddr_t *dest)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1332: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, dest);
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,#0x1B
	mov	r0,#_packetbuf_set_addr
	mov	r1,#(_packetbuf_set_addr >> 8)
	mov	r2,#(_packetbuf_set_addr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1341: NETSTACK_LLSEC.send(&packet_sent, NULL);
	mov	dptr,#(_nullsec_driver + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_packet_sent
	mov	b,#(_packet_sent >> 16)
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1345: watchdog_periodic();
	mov	r0,#_watchdog_periodic
	mov	r1,#(_watchdog_periodic >> 8)
	mov	r2,#(_watchdog_periodic >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output'
;------------------------------------------------------------
;localdest                 Allocated to registers r5 r6 r7 
;framer_hdrlen             Allocated to registers r6 r5 
;max_payload               Allocated to stack - sp -9
;dest                      Allocated to stack - sp -7
;processed_ip_out_len      Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -16
;sloc1                     Allocated to stack - sp -15
;sloc2                     Allocated to stack - sp -13
;sloc3                     Allocated to stack - sp -12
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1358: output(const uip_lladdr_t *localdest)
;	-----------------------------------------
;	 function output
;	-----------------------------------------
_output:
	mov	a,sp
	add	a,#0x11
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1370: uncomp_hdr_len = 0;
	mov	dptr,#_uncomp_hdr_len
	clr	a
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1371: packetbuf_hdr_len = 0;
	mov	dptr,#_packetbuf_hdr_len
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1374: packetbuf_clear();
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_packetbuf_clear
	mov	r1,#(_packetbuf_clear >> 8)
	mov	r2,#(_packetbuf_clear >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1375: packetbuf_ptr = packetbuf_dataptr();
	mov	r0,#_packetbuf_dataptr
	mov	r1,#(_packetbuf_dataptr >> 8)
	mov	r2,#(_packetbuf_dataptr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	dptr,#_packetbuf_ptr
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1377: packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS,
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x09
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1380: if(callback) {
	mov	dptr,#_callback
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00102$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1383: set_packet_attrs();
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_set_packet_attrs
	mov	r1,#(_set_packet_attrs >> 8)
	mov	r2,#(_set_packet_attrs >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1391: if(UIP_IP_BUF->proto == UIP_PROTO_TCP &&
	mov	dptr,#(_uip_aligned_buf + 0x0006)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x06,00107$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1392: (UIP_TCP_BUF->flags & TCP_FIN) == 0 &&
	mov	dptr,#(_uip_aligned_buf + 0x0035)
	movx	a,@dptr
	mov	r4,a
	jb	acc.0,00107$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1393: (UIP_TCP_BUF->flags & TCP_CTL) != TCP_ACK) {
	mov	dptr,#(_uip_aligned_buf + 0x0035)
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x3F
	cjne	r4,#0x10,00155$
	sjmp	00107$
00155$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1394: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_TYPE,
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0D
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00108$
00107$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1396: } else if(UIP_IP_BUF->proto == UIP_PROTO_TCP &&
	mov	dptr,#(_uip_aligned_buf + 0x0006)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x06,00108$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1397: (UIP_TCP_BUF->flags & TCP_FIN) == TCP_FIN) {
	mov	dptr,#(_uip_aligned_buf + 0x0035)
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x01
	cjne	r4,#0x01,00108$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1398: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_TYPE,
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0D
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
00108$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1408: if(localdest == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00112$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1409: linkaddr_copy(&dest, &linkaddr_null);
	mov	a,sp
	add	a,#0xF9
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,#_linkaddr_null
	push	acc
	mov	a,#(_linkaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	sjmp	00114$
00112$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1411: linkaddr_copy(&dest, (const linkaddr_t *)localdest);
	mov	a,sp
	add	a,#0xF9
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1416: if(uip_len >= COMPRESSION_THRESHOLD) {
00114$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1425: compress_hdr_hc06(&dest);
	mov	a,sp
	add	a,#0xF9
	mov	r7,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar7
	mov	r0,#_compress_hdr_hc06
	mov	r1,#(_compress_hdr_hc06 >> 8)
	mov	r2,#(_compress_hdr_hc06 >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1437: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, &dest);
	mov	ar6,r7
	mov	r5,#0x00
	mov	r4,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,#0x1B
	mov	r0,#_packetbuf_set_addr
	mov	r1,#(_packetbuf_set_addr >> 8)
	mov	r2,#(_packetbuf_set_addr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1438: framer_hdrlen = NETSTACK_FRAMER.length();
	mov	dptr,#_framer_802154
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	push	ar6
	push	ar4
	push	ar5
	push	ar6
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	ar6,r4
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1439: if(framer_hdrlen < 0) {
	mov	a,r5
	jnb	acc.7,00118$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1441: framer_hdrlen = 21;
	mov	r6,#0x15
	mov	r5,#0x00
00118$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1446: max_payload = MAC_MAX_PAYLOAD - framer_hdrlen;
	push	ar7
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x7D
	clr	c
	subb	a,r6
	mov	@r0,a
	clr	a
	subb	a,r5
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1448: if((int)uip_len - (int)uncomp_hdr_len > max_payload - (int)packetbuf_hdr_len) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar2,r3
	mov	ar7,r4
	mov	dptr,#_uncomp_hdr_len
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,sp
	add	a,#0xf0
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,r2
	clr	c
	subb	a,@r0
	mov	r2,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
	mov	dptr,#_packetbuf_hdr_len
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,r2
	mov	a,r6
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	pop	ar7
	jnc	00120$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1560: return 0;
	mov	dpl,#0x00
	ljmp	00122$
00120$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1569: uip_len - uncomp_hdr_len);
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,r3
	clr	c
	subb	a,r5
	mov	@r0,a
	mov	a,r4
	subb	a,r6
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1568: memcpy(packetbuf_ptr + packetbuf_hdr_len, (uint8_t *)UIP_IP_BUF + uncomp_hdr_len,
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	add	a,#_uip_aligned_buf
	mov	r2,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r5,a
	mov	r6,#0x00
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	dptr,#_packetbuf_ptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	push	ar7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
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
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1570: packetbuf_set_datalen(uip_len - uncomp_hdr_len + packetbuf_hdr_len);
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	clr	c
	subb	a,r6
	mov	r3,a
	mov	a,r4
	subb	a,r5
	mov	r4,a
	mov	dptr,#_packetbuf_hdr_len
	movx	a,@dptr
	mov	r5,#0x00
	add	a,r3
	mov	r3,a
	mov	a,r5
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	r0,#_packetbuf_set_datalen
	mov	r1,#(_packetbuf_set_datalen >> 8)
	mov	r2,#(_packetbuf_set_datalen >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1571: send_packet(&dest);
	mov	r6,#0x00
	mov	r5,#0x40
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	r0,#_send_packet
	mov	r1,#(_send_packet >> 8)
	mov	r2,#(_send_packet >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1573: return 1;
	mov	dpl,#0x01
00122$:
	mov	a,sp
	add	a,#0xEF
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'input'
;------------------------------------------------------------
;frag_size                 Allocated to registers 
;frag_offset               Allocated to registers 
;is_fragment               Allocated to registers 
;req_size                  Allocated to registers r2 r3 
;sloc0                     Allocated to stack - sp -5
;sloc1                     Allocated to stack - sp -4
;sloc2                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1590: input(void)
;	-----------------------------------------
;	 function input
;	-----------------------------------------
_input:
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1604: uncomp_hdr_len = 0;
	mov	dptr,#_uncomp_hdr_len
	clr	a
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1605: packetbuf_hdr_len = 0;
	mov	dptr,#_packetbuf_hdr_len
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1608: packetbuf_ptr = packetbuf_dataptr();
	mov	r0,#_packetbuf_dataptr
	mov	r1,#(_packetbuf_dataptr >> 8)
	mov	r2,#(_packetbuf_dataptr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	dptr,#_packetbuf_ptr
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1612: last_rssi = (signed short)packetbuf_attr(PACKETBUF_ATTR_RSSI);
	mov	dpl,#0x04
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_last_rssi
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1731: if((PACKETBUF_HC1_PTR[PACKETBUF_HC1_DISPATCH] & 0xe0) == SICSLOWPAN_DISPATCH_IPHC) {
	mov	dptr,#_packetbuf_hdr_len
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	dptr,#_packetbuf_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
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
	mov	r7,a
	mov	a,#0xE0
	anl	a,r7
	mov	r3,a
	cjne	r3,#0x60,00105$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1733: uncompress_hdr_hc06(frag_size);
	mov	dptr,#0x0000
	mov	r0,#_uncompress_hdr_hc06
	mov	r1,#(_uncompress_hdr_hc06 >> 8)
	mov	r2,#(_uncompress_hdr_hc06 >> 16)
	lcall	__sdcc_banked_call
	sjmp	00106$
00105$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1736: switch(PACKETBUF_HC1_PTR[PACKETBUF_HC1_DISPATCH]) {
	cjne	r7,#0x41,00102$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1745: packetbuf_hdr_len += SICSLOWPAN_IPV6_HDR_LEN;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dptr,#_packetbuf_hdr_len
	mov	a,@r0
	inc	a
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1748: memcpy(SICSLOWPAN_IP_BUF, packetbuf_ptr + packetbuf_hdr_len, UIP_IPH_LEN);
	movx	a,@dptr
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,#0x28
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	push	ar6
	mov	dptr,#_uip_aligned_buf
	mov	b,#0x00
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1751: packetbuf_hdr_len += UIP_IPH_LEN;
	mov	dptr,#_packetbuf_hdr_len
	movx	a,@dptr
	add	a,#0x28
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1752: uncomp_hdr_len += UIP_IPH_LEN;
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	add	a,#0x28
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1753: break;
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1754: default:
	sjmp	00106$
00102$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1758: return;
	ljmp	00113$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1759: }
00106$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1772: if(packetbuf_datalen() < packetbuf_hdr_len) {
	mov	r0,#_packetbuf_datalen
	mov	r1,#(_packetbuf_datalen >> 8)
	mov	r2,#(_packetbuf_datalen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_packetbuf_hdr_len
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	clr	c
	mov	a,r6
	subb	a,r5
	mov	a,r7
	subb	a,r4
	jnc	00108$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1774: return;
	ljmp	00113$
00108$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1776: packetbuf_payload_len = packetbuf_datalen() - packetbuf_hdr_len;
	mov	r0,#_packetbuf_datalen
	mov	r1,#(_packetbuf_datalen >> 8)
	mov	r2,#(_packetbuf_datalen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_packetbuf_hdr_len
	movx	a,@dptr
	mov	r5,a
	mov	r3,a
	mov	r4,#0x00
	mov	a,r6
	clr	c
	subb	a,r3
	mov	r6,a
	mov	a,r7
	subb	a,r4
	mov	r7,a
	mov	dptr,#_packetbuf_payload_len
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1780: int req_size = UIP_LLH_LEN + uncomp_hdr_len + (uint16_t)(frag_offset << 3)
	mov	dptr,#_uncomp_hdr_len
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	mov	ar2,r6
	mov	ar3,r7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1782: if(req_size > sizeof(sicslowpan_buf)) {
	clr	c
	mov	a,#0xF0
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1787: return;
	ljmp	00113$
00110$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1791: memcpy((uint8_t *)SICSLOWPAN_IP_BUF + uncomp_hdr_len + (uint16_t)(frag_offset << 3), packetbuf_ptr + packetbuf_hdr_len, packetbuf_payload_len);
	mov	dptr,#_packetbuf_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
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
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	add	a,#_uip_aligned_buf
	mov	r3,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r4,a
	mov	r5,#0x00
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfc
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
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1812: sicslowpan_len = packetbuf_payload_len + uncomp_hdr_len;
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_packetbuf_payload_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_uip_len
	mov	a,r7
	add	a,r4
	movx	@dptr,a
	mov	a,r6
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1844: if(callback) {
	mov	dptr,#_callback
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00112$
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1845: set_packet_attrs();
	mov	r0,#_set_packet_attrs
	mov	r1,#(_set_packet_attrs >> 8)
	mov	r2,#(_set_packet_attrs >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1846: callback->input_callback();
	mov	dptr,#_callback
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
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
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar6
	push	ar7
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
00112$:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1849: tcpip_input();
	mov	r0,#_tcpip_input
	mov	r1,#(_tcpip_input >> 8)
	mov	r2,#(_tcpip_input >> 16)
	lcall	__sdcc_banked_call
00113$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sicslowpan_init'
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1860: sicslowpan_init(void)
;	-----------------------------------------
;	 function sicslowpan_init
;	-----------------------------------------
_sicslowpan_init:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1866: tcpip_set_outputfunc(output);
	mov	dptr,#_output
	mov	b,#(_output >> 16)
	mov	r0,#_tcpip_set_outputfunc
	mov	r1,#(_tcpip_set_outputfunc >> 8)
	mov	r2,#(_tcpip_set_outputfunc >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1875: addr_contexts[0].used   = 1;
	mov	dptr,#_addr_contexts
	mov	a,#0x01
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1876: addr_contexts[0].number = 0;
	mov	dptr,#(_addr_contexts + 0x0001)
	clr	a
	movx	@dptr,a
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1878: SICSLOWPAN_CONF_ADDR_CONTEXT_0;
	mov	dptr,#(_addr_contexts + 0x0002)
	mov	a,#0xAA
	movx	@dptr,a
	mov	dptr,#(_addr_contexts + 0x0003)
	movx	@dptr,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sicslowpan_get_last_rssi'
;------------------------------------------------------------
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1915: sicslowpan_get_last_rssi(void)
;	-----------------------------------------
;	 function sicslowpan_get_last_rssi
;	-----------------------------------------
_sicslowpan_get_last_rssi:
;	/opt/contiki/core/net/ipv6/sicslowpan.c:1917: return last_rssi;
	mov	dptr,#_last_rssi
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_unc_llconf:
	.db #0x0F	; 15
	.db #0x28	; 40
	.db #0x22	; 34
	.db #0x20	; 32
_unc_ctxconf:
	.db #0x00	; 0
	.db #0x88	; 136
	.db #0x82	; 130
	.db #0x80	; 128
_unc_mxconf:
	.db #0x0F	; 15
	.db #0x25	; 37
	.db #0x23	; 35
	.db #0x21	; 33
_llprefix:
	.db #0xFE	; 254
	.db #0x80	; 128
_ttl_values:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0xFF	; 255
_sicslowpan_driver:
	.byte __str_0, (__str_0 >> 8),#0x80
	.byte _sicslowpan_init, (_sicslowpan_init >> 8), (_sicslowpan_init >> 16)
	.byte _input, (_input >> 8), (_input >> 16)
__str_0:
	.ascii "sicslowpan"
	.db 0x00
	.area XINIT   (CODE)
__xinit__callback:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.area CABS    (ABS,CODE)
