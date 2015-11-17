;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Wed Nov 18 02:57:36 2015
;--------------------------------------------------------
	.module rpl_icmp6
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _packetbuf_addr
	.globl _rpl_reset_dio_timer
	.globl _rpl_add_route
	.globl _rpl_find_parent
	.globl _rpl_process_dio
	.globl _rpl_get_mode
	.globl _rpl_get_parent_ipaddr
	.globl _rpl_get_instance
	.globl _uip_icmp6_register_input_handler
	.globl _uip_icmp6_send
	.globl _uip_ds6_nbr_lookup
	.globl _uip_ds6_nbr_add
	.globl _uip_ds6_route_nexthop
	.globl _uip_ds6_route_lookup
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
	.globl _dis_output
	.globl _dio_output
	.globl _dao_output
	.globl _dao_output_target
	.globl _dao_ack_output
	.globl _rpl_icmp6_register_handlers
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
_dao_sequence:
	.ds 1
_dis_handler:
	.ds 8
_dio_handler:
	.ds 8
_dao_handler:
	.ds 8
_dao_ack_handler:
	.ds 8
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
;Allocation info for local variables in function 'get_global_addr'
;------------------------------------------------------------
;addr                      Allocated to stack - sp -6
;i                         Allocated to registers r3 r4 
;state                     Allocated to registers r7 r2 
;sloc0                     Allocated to stack - sp -3
;sloc1                     Allocated to stack - sp -1
;sloc2                     Allocated to stack - sp +5
;sloc3                     Allocated to stack - sp +8
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:103: get_global_addr(uip_ipaddr_t *addr)
;	-----------------------------------------
;	 function get_global_addr
;	-----------------------------------------
_get_global_addr:
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
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:108: for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r5,#0x00
	mov	r6,#0x00
00109$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:109: state = uip_ds6_if.addr_list[i].state;
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,r5
	add	a,#(_uip_ds6_if + 0x0012)
	mov	@r0,a
	mov	a,r6
	addc	a,#((_uip_ds6_if + 0x0012) >> 8)
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	dpl,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	r2,#0x00
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:110: if(uip_ds6_if.addr_list[i].isused &&
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	pop	ar4
	pop	ar3
	jnz	00128$
	ljmp	00110$
00128$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:111: (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
	mov	a,r7
	orl	a,r2
	jz	00104$
	cjne	r7,#0x01,00130$
	cjne	r2,#0x00,00130$
	sjmp	00131$
00130$:
	ljmp	00110$
00131$:
00104$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:112: if(!uip_is_addr_linklocal(&uip_ds6_if.addr_list[i].ipaddr)) {
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,#(_uip_ds6_if + 0x0012)
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,#((_uip_ds6_if + 0x0012) >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0xFE,00132$
	sjmp	00133$
00132$:
	pop	ar4
	pop	ar3
	sjmp	00101$
00133$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,#(_uip_ds6_if + 0x0012)
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,#((_uip_ds6_if + 0x0012) >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x80,00134$
	pop	ar4
	pop	ar3
	sjmp	00110$
00134$:
	pop	ar4
	pop	ar3
00101$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:113: memcpy(addr, &uip_ds6_if.addr_list[i].ipaddr, sizeof(uip_ipaddr_t));
	mov	r0,sp
	dec	r0
	mov	a,@r0
	add	a,#(_uip_ds6_if + 0x0012)
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,#((_uip_ds6_if + 0x0012) >> 8)
	mov	r7,a
	inc	r2
	cjne	r2,#0x00,00135$
	inc	r7
00135$:
	mov	r6,#0x00
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar7
	push	ar6
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:114: return 1;
	mov	dptr,#0x0001
	sjmp	00111$
00110$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:108: for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
	mov	r0,sp
	dec	r0
	mov	a,#0x1C
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,#0x1C
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	inc	r3
	cjne	r3,#0x00,00136$
	inc	r4
00136$:
	clr	c
	mov	a,r3
	subb	a,#0x03
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00137$
	ljmp	00109$
00137$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:118: return 0;
	mov	dptr,#0x0000
00111$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get32'
;------------------------------------------------------------
;pos                       Allocated to stack - sp -11
;buffer                    Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -6
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:122: get32(uint8_t *buffer, int pos)
;	-----------------------------------------
;	 function get32
;	-----------------------------------------
_get32:
	mov	a,sp
	add	a,#0x07
	mov	sp,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:124: return (uint32_t)buffer[pos] << 24 | (uint32_t)buffer[pos + 1] << 16 |
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf5
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
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
	clr	a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,ar2
	dec	r0
	dec	r0
	dec	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r6
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
	mov	r7,#0x00
	mov	ar4,r7
	mov	ar6,r5
	clr	a
	mov	r7,a
	mov	r5,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,r5
	orl	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	orl	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	orl	a,@r0
	mov	@r0,a
	mov	a,r4
	inc	r0
	orl	a,@r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:125: (uint32_t)buffer[pos + 2] << 8 | buffer[pos + 3];
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
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
	mov	ar5,r6
	mov	ar6,r7
	mov	ar7,r2
	mov	r2,#0x00
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,r2
	orl	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	orl	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	orl	a,@r0
	mov	@r0,a
	mov	a,r5
	inc	r0
	orl	a,@r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	clr	a
	mov	r7,a
	mov	r6,a
	mov	r5,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	orl	ar3,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
	inc	r0
	mov	a,@r0
	orl	ar6,a
	inc	r0
	mov	a,@r0
	orl	ar5,a
	mov	dpl,r3
	mov	dph,r7
	mov	b,r6
	mov	a,r5
	xch	a,r0
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set32'
;------------------------------------------------------------
;pos                       Allocated to stack - sp -10
;value                     Allocated to stack - sp -14
;buffer                    Allocated to stack - sp -5
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:129: set32(uint8_t *buffer, int pos, uint32_t value)
;	-----------------------------------------
;	 function set32
;	-----------------------------------------
_set32:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:131: buffer[pos++] = value >> 24;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x01
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar2,@r0
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:132: buffer[pos++] = (value >> 16) & 0xff;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x01
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	inc	r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:133: buffer[pos++] = (value >> 8) & 0xff;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x01
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:134: buffer[pos++] = value & 0xff;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,r6
	add	a,@r0
	mov	@r1,a
	mov	a,r7
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
	mov	ar2,@r0
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r7,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get16'
;------------------------------------------------------------
;pos                       Allocated to stack - sp -7
;buffer                    Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:138: get16(uint8_t *buffer, int pos)
;	-----------------------------------------
;	 function get16
;	-----------------------------------------
_get16:
	push	dpl
	push	dph
	push	b
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:140: return (uint16_t)buffer[pos] << 8 | buffer[pos + 1];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf9
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	mov	r2,#0x00
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r3
	mov	dph,r7
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	mov	r7,#0x00
	orl	ar2,a
	mov	a,r7
	orl	ar4,a
	mov	dpl,r2
	mov	dph,r4
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set16'
;------------------------------------------------------------
;pos                       Allocated to stack - sp -7
;value                     Allocated to stack - sp -9
;buffer                    Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:144: set16(uint8_t *buffer, int pos, uint16_t value)
;	-----------------------------------------
;	 function set16
;	-----------------------------------------
_set16:
	push	dpl
	push	dph
	push	b
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:146: buffer[pos++] = value >> 8;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x01
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar2,@r0
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:147: buffer[pos++] = value & 0xff;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r3
	lcall	__gptrput
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dis_input'
;------------------------------------------------------------
;instance                  Allocated to registers 
;end                       Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:151: dis_input(void)
;	-----------------------------------------
;	 function dis_input
;	-----------------------------------------
_dis_input:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:161: for(instance = &instance_table[0], end = instance + RPL_MAX_INSTANCES;
	mov	r5,#_instance_table
	mov	r6,#(_instance_table >> 8)
	mov	r7,#0x00
00108$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:162: instance < end; ++instance) {
	mov	a,#(_instance_table + 0x00ed)
	push	acc
	mov	a,#((_instance_table + 0x00ed) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00125$
	ljmp	00106$
00125$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:163: if(instance->used == 1) {
	mov	a,#0x83
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
	cjne	r2,#0x01,00109$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:168: if(uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) {
	mov	dptr,#(_uip_aligned_buf + 0x0018)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0xFF,00102$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:170: rpl_reset_dio_timer(instance);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_rpl_reset_dio_timer
	mov	r1,#(_rpl_reset_dio_timer >> 8)
	mov	r2,#(_rpl_reset_dio_timer >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00109$
00102$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:174: dio_output(instance, &UIP_IP_BUF->srcipaddr);
	push	ar7
	push	ar6
	push	ar5
	mov	a,#(_uip_aligned_buf + 0x0008)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0008) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_dio_output
	mov	r1,#(_dio_output >> 8)
	mov	r2,#(_dio_output >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
00109$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:162: instance < end; ++instance) {
	mov	a,#0xED
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	ljmp	00108$
00106$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:178: uip_clear_buf();
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uip_ext_len
	movx	@dptr,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dis_output'
;------------------------------------------------------------
;addr                      Allocated to stack - sp -18
;buffer                    Allocated to registers r5 r6 r7 
;tmpaddr                   Allocated to stack - sp -15
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:182: dis_output(uip_ipaddr_t *addr)
;	-----------------------------------------
;	 function dis_output
;	-----------------------------------------
_dis_output:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x10
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:196: buffer = UIP_ICMP_PAYLOAD;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	add	a,#0x2C
	add	a,#_uip_aligned_buf
	mov	r3,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r4,a
	mov	ar5,r3
	mov	ar6,r4
	mov	r7,#0x00
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:197: buffer[0] = buffer[1] = 0;
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	inc	r5
	cjne	r5,#0x00,00111$
	inc	r6
00111$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:199: if(addr == NULL) {
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00105$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:200: uip_create_linklocal_rplnodes_mcast(&tmpaddr);
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
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:201: addr = &tmpaddr;
	mov	a,sp
	add	a,#0xF1
	mov	r7,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
00105$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:208: uip_icmp6_send(addr, ICMP6_RPL, RPL_CODE_DIS, 2);
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x9B
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_icmp6_send
	mov	r1,#(_uip_icmp6_send >> 8)
	mov	r2,#(_uip_icmp6_send >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	add	a,#0xED
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dio_input'
;------------------------------------------------------------
;buffer                    Allocated to stack - sp -110
;buffer_length             Allocated to stack - sp -107
;dio                       Allocated to stack - sp -106
;subopt_type               Allocated to registers r6 
;i                         Allocated to stack - sp -19
;len                       Allocated to stack - sp -17
;from                      Allocated to stack - sp -15
;nbr                       Allocated to stack - sp -125
;sloc0                     Allocated to stack - sp -130
;sloc1                     Allocated to stack - sp -129
;sloc2                     Allocated to stack - sp -128
;sloc3                     Allocated to stack - sp -127
;sloc4                     Allocated to stack - sp -126
;sloc5                     Allocated to stack - sp -125
;sloc6                     Allocated to stack - sp -122
;sloc7                     Allocated to stack - sp -121
;sloc8                     Allocated to stack - sp -120
;sloc9                     Allocated to stack - sp -119
;sloc10                    Allocated to stack - sp -118
;sloc11                    Allocated to stack - sp -116
;sloc12                    Allocated to stack - sp -114
;sloc13                    Allocated to stack - sp -113
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:212: dio_input(void)
;	-----------------------------------------
;	 function dio_input
;	-----------------------------------------
_dio_input:
	mov	a,sp
	add	a,#0x83
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:223: memset(&dio, 0, sizeof(dio));
	mov	sp,a
	add	a,#0x96
	mov	r7,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
	mov	a,#0x57
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
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:226: dio.dag_intdoubl = RPL_DIO_INTERVAL_DOUBLINGS;
	mov	a,sp
	add	a,#0x89
	mov	r0,a
	mov	a,#0x1A
	add	a,r7
	mov	@r0,a
	mov	a,sp
	add	a,#0x89
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,#0x08
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:227: dio.dag_intmin = RPL_DIO_INTERVAL_MIN;
	mov	a,sp
	add	a,#0x88
	mov	r0,a
	mov	a,#0x1B
	add	a,r7
	mov	@r0,a
	mov	a,sp
	add	a,#0x88
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,#0x0C
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:228: dio.dag_redund = RPL_DIO_REDUNDANCY;
	mov	a,sp
	add	a,#0x87
	mov	r0,a
	mov	a,#0x1C
	add	a,r7
	mov	@r0,a
	mov	a,sp
	add	a,#0x87
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,#0x0A
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:229: dio.dag_min_hoprankinc = RPL_MIN_HOPRANKINC;
	mov	a,#0x22
	add	a,r7
	mov	r5,a
	mov	r0,ar5
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x01
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:230: dio.dag_max_rankinc = RPL_MAX_RANKINC;
	mov	a,sp
	add	a,#0x82
	mov	r0,a
	mov	a,#0x20
	add	a,r7
	mov	@r0,a
	mov	a,sp
	add	a,#0x82
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x07
	dec	r0
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:231: dio.ocp = RPL_OF.ocp;
	mov	a,sp
	add	a,#0x7e
	mov	r0,a
	mov	a,#0x10
	add	a,r7
	mov	@r0,a
	mov	dptr,#(_rpl_mrhof + 0x0012)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,sp
	add	a,#0x7e
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	dec	r0
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:232: dio.default_lifetime = RPL_DEFAULT_LIFETIME;
	mov	a,sp
	add	a,#0x81
	mov	r0,a
	mov	a,#0x1D
	add	a,r7
	mov	@r0,a
	mov	a,sp
	add	a,#0x81
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,#0xFF
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:233: dio.lifetime_unit = RPL_DEFAULT_LIFETIME_UNIT;
	mov	a,sp
	add	a,#0x80
	mov	r0,a
	mov	a,#0x1E
	add	a,r7
	mov	@r0,a
	mov	a,sp
	add	a,#0x80
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,#0xFF
	inc	r0
	mov	@r0,#0xFF
	dec	r0
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:235: uip_ipaddr_copy(&from, &UIP_IP_BUF->srcipaddr);
	mov	a,sp
	add	a,#0x7f
	mov	r0,a
	mov	a,sp
	add	a,#0xF1
	mov	@r0,a
	mov	a,sp
	add	a,#0x7f
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar7
	push	ar5
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
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:242: if((nbr = uip_ds6_nbr_lookup(&from)) == NULL) {
	mov	a,sp
	add	a,#0x7f
	mov	r0,a
	mov	ar4,@r0
	mov	r3,#0x00
	mov	r2,#0x40
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	push	ar7
	push	ar5
	mov	r0,#_uip_ds6_nbr_lookup
	mov	r1,#(_uip_ds6_nbr_lookup >> 8)
	mov	r2,#(_uip_ds6_nbr_lookup >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar7
	mov	a,r2
	orl	a,r3
	jz	00202$
	ljmp	00105$
00202$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:244: packetbuf_addr(PACKETBUF_ADDR_SENDER),
	push	ar5
	mov	dpl,#0x1A
	push	ar7
	push	ar5
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar7
	mov	a,sp
	add	a,#0x82
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:243: if((nbr = uip_ds6_nbr_add(&from, (uip_lladdr_t *)
	mov	a,sp
	add	a,#0x7e
	mov	r0,a
	mov	ar5,@r0
	mov	ar3,r5
	mov	r4,#0x00
	mov	r5,#0x40
	push	ar7
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0x7f
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
	mov	r0,#_uip_ds6_nbr_add
	mov	r1,#(_uip_ds6_nbr_add >> 8)
	mov	r2,#(_uip_ds6_nbr_add >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
	mov	a,sp
	add	a,#0x82
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	mov	a,r3
	orl	a,r4
	pop	ar5
	jnz	00203$
	ljmp	00139$
00203$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:247: stimer_set(&nbr->reachable, UIP_ND6_REACHABLE_TIME / 1000);
	mov	a,sp
	add	a,#0x83
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
	push	ar7
	push	ar5
	mov	a,#0x58
	push	acc
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
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
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:260: goto discard;
00105$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:266: buffer_length = uip_len - uip_l3_icmp_hdr_len;
	push	ar5
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	add	a,#0x2C
	mov	r4,a
	mov	a,r3
	clr	c
	subb	a,r4
	mov	r3,a
	mov	a,sp
	add	a,#0x94
	mov	r0,a
	mov	@r0,ar3
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:270: buffer = UIP_ICMP_PAYLOAD;
	mov	a,r4
	add	a,#_uip_aligned_buf
	mov	r4,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r2,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:272: dio.instance_id = buffer[i++];
	mov	a,#0x18
	add	a,r7
	mov	r5,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	r0,ar5
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:273: dio.version = buffer[i++];
	mov	a,#0x17
	add	a,r7
	mov	r5,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,#0x01
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
	mov	r0,ar5
	mov	@r0,ar2
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:274: dio.rank = get16(buffer, i);
	mov	a,#0x12
	add	a,r7
	mov	r5,a
	push	ar7
	push	ar5
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0x8d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_get16
	mov	r1,#(_get16 >> 8)
	mov	r2,#(_get16 >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar7
	mov	r0,ar5
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:282: dio.grounded = buffer[i] & RPL_DIO_GROUNDED;
	mov	a,#0x14
	add	a,r7
	mov	r1,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,#0x04
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
	mov	a,#0x80
	anl	a,r5
	mov	@r1,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:283: dio.mop = (buffer[i]& RPL_DIO_MOP_MASK) >> RPL_DIO_MOP_SHIFT;
	mov	a,#0x15
	add	a,r7
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	anl	a,#0x38
	swap	a
	rl	a
	anl	a,#0x1F
	mov	@r1,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:284: dio.preference = buffer[i++] & RPL_DIO_PREFERENCE_MASK;
	mov	a,#0x16
	add	a,r7
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x07
	anl	a,r2
	mov	r0,ar5
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:286: dio.dtsn = buffer[i++];
	mov	a,#0x19
	add	a,r7
	mov	r5,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,#0x05
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
	mov	r0,ar5
	mov	@r0,ar2
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:290: memcpy(&dio.dag_id, buffer + i, sizeof(dio.dag_id));
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0x82
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	mov	ar2,r7
	mov	r4,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar5
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0x7e
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
	mov	dph,r4
	mov	b,r5
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:291: i += sizeof(dio.dag_id);
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	@r0,#0x18
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0x82
	mov	r0,a
	mov	a,#0x3A
	add	a,r7
	mov	@r0,a
	mov	a,sp
	add	a,#0x85
	mov	r0,a
	mov	a,#0x50
	add	a,r7
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:423: uip_clear_buf();
	pop	ar5
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:291: i += sizeof(dio.dag_id);
00141$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:298: for(; i < buffer_length; i += len) {
	mov	a,sp
	add	a,#0x95
	mov	r0,a
	mov	a,sp
	add	a,#0x8a
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,sp
	add	a,#0x8a
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	inc	r1
	mov	b,@r1
	xrl	b,#0x80
	subb	a,b
	jc	00204$
	ljmp	00138$
00204$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:299: subopt_type = buffer[i];
	push	ar5
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,sp
	add	a,#0xec
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r6,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:300: if(subopt_type == RPL_OPTION_PAD1) {
	pop	ar5
	mov	a,r6
	jnz	00107$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:301: len = 1;
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
	sjmp	00108$
00107$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:304: len = 2 + buffer[i + 1];
	push	ar5
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
	mov	r5,#0x00
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,#0x02
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:423: uip_clear_buf();
	pop	ar5
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:304: len = 2 + buffer[i + 1];
00108$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:307: if(len + i > buffer_length) {
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,sp
	add	a,#0xed
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r3,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,sp
	add	a,#0x8a
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00206$
	ljmp	00139$
00206$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:315: switch(subopt_type) {
	cjne	r6,#0x02,00207$
	sjmp	00111$
00207$:
	cjne	r6,#0x03,00208$
	ljmp	00123$
00208$:
	cjne	r6,#0x04,00209$
	ljmp	00130$
00209$:
	cjne	r6,#0x08,00210$
	ljmp	00133$
00210$:
	ljmp	00142$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:316: case RPL_OPTION_DAG_METRIC_CONTAINER:
00111$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:317: if(len < 6) {
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x06
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00211$
	ljmp	00139$
00211$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:322: dio.mc.type = buffer[i + 2];
	push	ar5
	mov	a,#0x50
	add	a,r7
	mov	r1,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	@r1,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:323: dio.mc.flags = buffer[i + 3] << 1;
	mov	a,#0x51
	add	a,r7
	mov	r1,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	__gptrget
	add	a,acc
	mov	r4,a
	mov	@r1,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:324: dio.mc.flags |= buffer[i + 4] >> 7;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	rl	a
	anl	a,#0x01
	mov	r2,a
	orl	a,r4
	mov	@r1,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:325: dio.mc.aggr = (buffer[i + 4] >> 4) & 0x3;
	mov	a,#0x52
	add	a,r7
	mov	r1,a
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	swap	a
	anl	a,#0x0F
	mov	r4,a
	mov	a,#0x03
	anl	a,r4
	mov	@r1,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:326: dio.mc.prec = buffer[i + 4] & 0xf;
	mov	a,#0x53
	add	a,r7
	mov	r1,a
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	mov	a,#0x0F
	anl	a,r3
	mov	@r1,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:327: dio.mc.length = buffer[i + 5];
	mov	a,#0x54
	add	a,r7
	mov	r1,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	@r1,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:329: if(dio.mc.type == RPL_DAG_MC_NONE) {
	mov	a,sp
	add	a,#0x85
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar5
	mov	a,r6
	jnz	00212$
	ljmp	00142$
00212$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:331: } else if(dio.mc.type == RPL_DAG_MC_ETX) {
	cjne	r6,#0x07,00118$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:332: dio.mc.obj.etx = get16(buffer, i + 6);
	mov	a,#0x55
	add	a,r7
	mov	r1,a
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	push	ar7
	push	ar5
	push	ar1
	push	ar4
	push	ar6
	mov	a,sp
	add	a,#0x8d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_get16
	mov	r1,#(_get16 >> 8)
	mov	r2,#(_get16 >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar5
	pop	ar7
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar6
	dec	r1
	ljmp	00142$
00118$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:341: } else if(dio.mc.type == RPL_DAG_MC_ENERGY) {
	cjne	r6,#0x02,00215$
	sjmp	00216$
00215$:
	ljmp	00139$
00216$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:342: dio.mc.obj.energy.flags = buffer[i + 6];
	mov	a,#0x55
	add	a,r7
	mov	r1,a
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,sp
	add	a,#0x92
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r3
	lcall	__gptrget
	mov	@r1,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:343: dio.mc.obj.energy.energy_est = buffer[i + 7];
	mov	a,#0x56
	add	a,r7
	mov	r1,a
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,sp
	add	a,#0x92
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
	mov	@r1,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:348: break;
	ljmp	00142$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:349: case RPL_OPTION_ROUTE_INFO:
00123$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:350: if(len < 9) {
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x09
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00217$
	ljmp	00139$
00217$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:357: dio.destination_prefix.length = buffer[i + 2];
	push	ar5
	mov	a,sp
	add	a,#0x8d
	mov	r0,a
	mov	a,#0x24
	add	a,r7
	mov	@r0,a
	mov	a,#0x38
	add	a,r7
	mov	r1,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	@r1,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:358: dio.destination_prefix.flags = buffer[i + 3];
	mov	a,#0x39
	add	a,r7
	mov	r0,a
	push	ar0
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,sp
	add	a,#0x90
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar2,@r0
	pop	ar0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:359: dio.destination_prefix.lifetime = get32(buffer, i + 4);
	mov	a,#0x34
	add	a,r7
	mov	r0,a
	push	ar0
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	pop	ar0
	push	ar7
	push	ar1
	push	ar0
	push	ar3
	push	ar4
	push	ar0
	mov	a,sp
	add	a,#0x8b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	ar0
	mov	r0,#_get32
	mov	r1,#(_get32 >> 8)
	mov	r2,#(_get32 >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	dec	r0
	dec	r0
	dec	r0
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:361: if(((dio.destination_prefix.length + 7) / 8) + 8 <= len &&
	mov	ar6,@r1
	mov	ar3,r6
	mov	r2,#0x00
	mov	a,#0x07
	add	a,r3
	mov	r4,a
	clr	a
	addc	a,r2
	mov	r5,a
	push	ar6
	push	ar3
	push	ar2
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	pop	ar5
	jnc	00218$
	ljmp	00139$
00218$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:362: dio.destination_prefix.length <= 128) {
	mov	a,r6
	add	a,#0xff - 0x80
	jnc	00219$
	ljmp	00139$
00219$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:365: (dio.destination_prefix.length + 7) / 8);
	push	ar5
	mov	a,#0x07
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r2
	mov	r4,a
	push	ar7
	push	ar5
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:364: memcpy(&dio.destination_prefix.prefix, &buffer[i + 8],
	mov	dpl,r3
	mov	dph,r4
	lcall	__divsint
	xch	a,r0
	mov	a,sp
	add	a,#0x87
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar7
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	a,sp
	add	a,#0x8e
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,sp
	add	a,#0x8d
	mov	r0,a
	mov	ar4,@r0
	mov	ar3,r4
	mov	r4,#0x00
	mov	r6,#0x40
	push	ar7
	push	ar5
	mov	a,sp
	add	a,#0x89
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0x8a
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
	pop	ar5
	pop	ar7
	pop	ar5
	ljmp	00142$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:373: case RPL_OPTION_DAG_CONF:
00130$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:374: if(len != 16) {
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	cjne	@r0,#0x10,00220$
	inc	r0
	cjne	@r0,#0x00,00220$
	sjmp	00221$
00220$:
	ljmp	00139$
00221$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:381: dio.dag_intdoubl = buffer[i + 3];
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,sp
	add	a,#0x92
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0x89
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:382: dio.dag_intmin = buffer[i + 4];
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,sp
	add	a,#0x92
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0x88
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:383: dio.dag_redund = buffer[i + 5];
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,sp
	add	a,#0x92
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0x87
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:384: dio.dag_max_rankinc = get16(buffer, i + 6);
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	push	ar7
	push	ar5
	push	ar4
	push	ar6
	mov	a,sp
	add	a,#0x8e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_get16
	mov	r1,#(_get16 >> 8)
	mov	r2,#(_get16 >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar7
	mov	a,sp
	add	a,#0x82
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
	dec	r0
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:385: dio.dag_min_hoprankinc = get16(buffer, i + 8);
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	push	ar7
	push	ar5
	push	ar4
	push	ar6
	mov	a,sp
	add	a,#0x8e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_get16
	mov	r1,#(_get16 >> 8)
	mov	r2,#(_get16 >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar7
	mov	r0,ar5
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:386: dio.ocp = get16(buffer, i + 10);
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x0A
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	push	ar7
	push	ar5
	push	ar4
	push	ar6
	mov	a,sp
	add	a,#0x8e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_get16
	mov	r1,#(_get16 >> 8)
	mov	r2,#(_get16 >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar7
	mov	a,sp
	add	a,#0x7e
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
	dec	r0
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:388: dio.default_lifetime = buffer[i + 13];
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x0D
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,sp
	add	a,#0x92
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0x81
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:389: dio.lifetime_unit = get16(buffer, i + 14);
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x0E
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	push	ar7
	push	ar5
	push	ar4
	push	ar6
	mov	a,sp
	add	a,#0x8e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_get16
	mov	r1,#(_get16 >> 8)
	mov	r2,#(_get16 >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar7
	mov	a,sp
	add	a,#0x80
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
	dec	r0
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:394: break;
	ljmp	00142$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:395: case RPL_OPTION_PREFIX_INFO:
00133$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:396: if(len != 32) {
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	cjne	@r0,#0x20,00222$
	inc	r0
	cjne	@r0,#0x00,00222$
	sjmp	00223$
00222$:
	ljmp	00139$
00223$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:401: dio.prefix_info.length = buffer[i + 2];
	push	ar5
	mov	a,#0x4E
	add	a,r7
	mov	r1,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r3
	lcall	__gptrget
	mov	@r1,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:402: dio.prefix_info.flags = buffer[i + 3];
	mov	a,#0x4F
	add	a,r7
	mov	r1,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r3
	lcall	__gptrget
	mov	@r1,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:405: dio.prefix_info.lifetime = get32(buffer, i + 8);
	mov	a,#0x4A
	add	a,r7
	mov	r1,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	push	ar7
	push	ar5
	push	ar1
	push	ar4
	push	ar6
	mov	a,sp
	add	a,#0x8c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_get32
	mov	r1,#(_get32 >> 8)
	mov	r2,#(_get32 >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r6,a
	dec	sp
	dec	sp
	pop	ar1
	pop	ar5
	pop	ar7
	mov	@r1,ar2
	inc	r1
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar6
	dec	r1
	dec	r1
	dec	r1
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:408: memcpy(&dio.prefix_info.prefix, &buffer[i + 16], 16);
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x10
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,sp
	add	a,#0x91
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar3,@r0
	mov	a,sp
	add	a,#0x8e
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar3
	mov	a,sp
	add	a,#0x82
	mov	r0,a
	mov	ar2,@r0
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
	push	ar5
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0x8a
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
	mov	dph,r5
	mov	b,r6
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar7
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:423: uip_clear_buf();
	pop	ar5
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:413: }
00142$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:298: for(; i < buffer_length; i += len) {
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,sp
	add	a,#0xef
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	ljmp	00141$
00138$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:420: rpl_process_dio(&from, &dio);
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,sp
	add	a,#0x7f
	mov	r0,a
	mov	ar4,@r0
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	r0,#_rpl_process_dio
	mov	r1,#(_rpl_process_dio >> 8)
	mov	r2,#(_rpl_process_dio >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:422: discard:
00139$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:423: uip_clear_buf();
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uip_ext_len
	movx	@dptr,a
	mov	a,sp
	add	a,#0x7D
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dio_output'
;------------------------------------------------------------
;uc_addr                   Allocated to stack - sp -42
;instance                  Allocated to stack - sp -36
;buffer                    Allocated to stack - sp -23
;pos                       Allocated to stack - sp -20
;dag                       Allocated to stack - sp -18
;addr                      Allocated to stack - sp -15
;__00020014                Allocated to registers 
;sloc0                     Allocated to stack - sp -33
;sloc1                     Allocated to stack - sp -32
;sloc2                     Allocated to stack - sp -29
;sloc3                     Allocated to stack - sp -26
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:427: dio_output(rpl_instance_t *instance, uip_ipaddr_t *uc_addr)
;	-----------------------------------------
;	 function dio_output
;	-----------------------------------------
_dio_output:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x22
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:431: rpl_dag_t *dag = instance->current_dag;
	mov	sp,a
	add	a,#0xdc
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
	add	a,#0xee
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
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:448: buffer = UIP_ICMP_PAYLOAD;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	add	a,#0x2C
	add	a,#_uip_aligned_buf
	mov	r3,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r4,a
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:449: buffer[pos++] = instance->instance_id;
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	a,#0x82
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
	add	a,#0xe9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:450: buffer[pos++] = dag->version;
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,#0x12
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:456: set16(buffer, pos, dag->rank);
	mov	a,sp
	add	a,#0xee
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
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar5
	push	ar6
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_set16
	mov	r1,#(_set16 >> 8)
	mov	r2,#(_set16 >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:460: buffer[pos] = 0;
	mov	sp,a
	add	a,#0xe9
	mov	r0,a
	mov	a,#0x04
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
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:461: if(dag->grounded) {
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,#0x13
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
	jz	00102$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:462: buffer[pos] |= RPL_DIO_GROUNDED;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	orl	ar4,#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
00102$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:465: buffer[pos] |= instance->mop << RPL_DIO_MOP_SHIFT;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	a,#0x85
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
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r2,a
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	a,r2
	orl	a,@r0
	mov	@r0,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:466: buffer[pos] |= dag->preference & RPL_DIO_PREFERENCE_MASK;
	mov	a,sp
	add	a,#0xee
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
	mov	a,#0x07
	anl	a,r2
	xch	a,r0
	mov	a,sp
	add	a,#0xdf
	xch	a,r0
	orl	a,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:469: buffer[pos++] = instance->dtsn_out;
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,sp
	add	a,#0xe0
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
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	a,#0x84
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
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:471: if(uc_addr == NULL) {
	mov	a,sp
	add	a,#0xd6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00110$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:475: RPL_LOLLIPOP_INCREMENT(instance->dtsn_out);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov  r7,a
	add	a,#0xff - 0x7F
	jnc	00104$
	mov	a,r7
	inc	a
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
	sjmp	00110$
00104$:
	mov	a,r7
	inc	a
	anl	a,#0x7F
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
00110$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:479: buffer[pos++] = 0; /* flags */
	mov	a,sp
	add	a,#0xe9
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:480: buffer[pos++] = 0; /* reserved */
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
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:482: memcpy(buffer + pos, &dag->dag_id, sizeof(dag->dag_id));
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,#0x08
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
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:483: pos += 16;
	mov	sp,a
	add	a,#0xec
	mov	r0,a
	mov	@r0,#0x18
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:486: if(instance->mc.type != RPL_DAG_MC_NONE) {
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jnz	00156$
	ljmp	00118$
00156$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:487: instance->of->update_metric_container(instance);
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	a,#0x07
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
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x0F
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
	push	ar5
	push	ar4
	push	ar3
	push	ar3
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xd6
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
	pop	ar3
	pop	ar4
	pop	ar5
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:489: buffer[pos++] = RPL_OPTION_DAG_METRIC_CONTAINER;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00157$
	inc	r0
	inc	@r0
00157$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	mov	a,#0x02
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:490: buffer[pos++] = 6;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00158$
	inc	r0
	inc	@r0
00158$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	mov	a,#0x06
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:491: buffer[pos++] = instance->mc.type;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00159$
	inc	r0
	inc	@r0
00159$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar3,@r0
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:492: buffer[pos++] = instance->mc.flags >> 1;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00160$
	inc	r0
	inc	@r0
00160$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,sp
	add	a,#0xe0
	mov	r1,a
	mov	a,r4
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
	add	a,#0xdc
	mov	r0,a
	mov	a,#0x01
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
	clr	c
	rrc	a
	mov	r5,a
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:493: buffer[pos] = (instance->mc.flags & 1) << 7;
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,sp
	add	a,#0xec
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r3,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	anl	a,#0x01
	rr	a
	anl	a,#0x80
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:494: buffer[pos++] |= (instance->mc.aggr << 4) | instance->mc.prec;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00161$
	inc	r0
	inc	@r0
00161$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	a,#0x02
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
	add	a,#0xdf
	mov	r0,a
	mov	a,r2
	swap	a
	anl	a,#0xF0
	mov	@r0,a
	mov	a,sp
	add	a,#0xdc
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
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	a,r2
	orl	a,@r0
	xch	a,r0
	mov	a,sp
	add	a,#0xe0
	xch	a,r0
	orl	a,@r0
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:495: if(instance->mc.type == RPL_DAG_MC_ETX) {
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x07,00162$
	sjmp	00163$
00162$:
	ljmp	00115$
00163$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:496: buffer[pos++] = 2;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00164$
	inc	r0
	inc	@r0
00164$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	mov	a,#0x02
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:497: set16(buffer, pos, instance->mc.obj.etx);
	mov	a,sp
	add	a,#0xdc
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_set16
	mov	r1,#(_set16 >> 8)
	mov	r2,#(_set16 >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:498: pos += 2;
	mov	sp,a
	add	a,#0xec
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	ljmp	00118$
00115$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:499: } else if(instance->mc.type == RPL_DAG_MC_ENERGY) {
	cjne	r7,#0x02,00165$
	sjmp	00166$
00165$:
	ljmp	00112$
00166$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:500: buffer[pos++] = 2;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00167$
	inc	r0
	inc	@r0
00167$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,#0x02
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:501: buffer[pos++] = instance->mc.obj.energy.flags;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00168$
	inc	r0
	inc	@r0
00168$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,sp
	add	a,#0xe0
	mov	r1,a
	mov	a,r6
	add	a,@r0
	mov	@r1,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	a,#0x05
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
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:502: buffer[pos++] = instance->mc.obj.energy.energy_est;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00169$
	inc	r0
	inc	@r0
00169$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	inc	r2
	cjne	r2,#0x00,00170$
	inc	r3
00170$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrput
	sjmp	00118$
00112$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:506: return;
	ljmp	00127$
00118$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:512: buffer[pos++] = RPL_OPTION_DAG_CONF;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00171$
	inc	r0
	inc	@r0
00171$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,#0x04
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:513: buffer[pos++] = 14;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00172$
	inc	r0
	inc	@r0
00172$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,#0x0E
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:514: buffer[pos++] = 0; /* No Auth, PCS = 0 */
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00173$
	inc	r0
	inc	@r0
00173$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:515: buffer[pos++] = instance->dio_intdoubl;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00174$
	inc	r0
	inc	@r0
00174$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xdc
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
	mov	r2,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:516: buffer[pos++] = instance->dio_intmin;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00175$
	inc	r0
	inc	@r0
00175$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xdc
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
	mov	r2,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:517: buffer[pos++] = instance->dio_redundancy;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00176$
	inc	r0
	inc	@r0
00176$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	a,#0x88
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
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:518: set16(buffer, pos, instance->max_rankinc);
	mov	a,sp
	add	a,#0xdc
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
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_set16
	mov	r1,#(_set16 >> 8)
	mov	r2,#(_set16 >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:519: pos += 2;
	mov	sp,a
	add	a,#0xec
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:520: set16(buffer, pos, instance->min_hoprankinc);
	mov	a,sp
	add	a,#0xdc
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
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_set16
	mov	r1,#(_set16 >> 8)
	mov	r2,#(_set16 >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:521: pos += 2;
	mov	sp,a
	add	a,#0xec
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:523: set16(buffer, pos, instance->of->ocp);
	mov	a,sp
	add	a,#0xdc
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
	mov	a,#0x12
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
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_set16
	mov	r1,#(_set16 >> 8)
	mov	r2,#(_set16 >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:524: pos += 2;
	mov	sp,a
	add	a,#0xec
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:525: buffer[pos++] = 0; /* reserved */
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00177$
	inc	r0
	inc	@r0
00177$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:526: buffer[pos++] = instance->default_lifetime;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00178$
	inc	r0
	inc	@r0
00178$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	a,#0x89
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
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:527: set16(buffer, pos, instance->lifetime_unit);
	mov	a,sp
	add	a,#0xdc
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
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_set16
	mov	r1,#(_set16 >> 8)
	mov	r2,#(_set16 >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:528: pos += 2;
	mov	sp,a
	add	a,#0xec
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:531: if(dag->prefix_info.length > 0) {
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,sp
	add	a,#0xe6
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
	add	a,#0xe6
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	jnz	00179$
	ljmp	00120$
00179$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:532: buffer[pos++] = RPL_OPTION_PREFIX_INFO;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00180$
	inc	r0
	inc	@r0
00180$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	a,#0x08
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:533: buffer[pos++] = 30; /* always 30 bytes + 2 long */
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00181$
	inc	r0
	inc	@r0
00181$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	a,#0x1E
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:534: buffer[pos++] = dag->prefix_info.length;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00182$
	inc	r0
	inc	@r0
00182$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,sp
	add	a,#0xe3
	mov	r1,a
	mov	a,r3
	add	a,@r0
	mov	@r1,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xe3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:535: buffer[pos++] = dag->prefix_info.flags;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00183$
	inc	r0
	inc	@r0
00183$:
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r7,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xe6
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
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:536: set32(buffer, pos, dag->prefix_info.lifetime);
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	a,sp
	add	a,#0xe3
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
	add	a,#0xe3
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
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_set32
	mov	r1,#(_set32 >> 8)
	mov	r2,#(_set32 >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:537: pos += 4;
	mov	sp,a
	add	a,#0xec
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:538: set32(buffer, pos, dag->prefix_info.lifetime);
	mov	a,sp
	add	a,#0xe3
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
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_set32
	mov	r1,#(_set32 >> 8)
	mov	r2,#(_set32 >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:539: pos += 4;
	mov	sp,a
	add	a,#0xec
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:540: memset(&buffer[pos], 0, 4);
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,sp
	add	a,#0xec
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r5,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x04
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
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:541: pos += 4;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:542: memcpy(&buffer[pos], &dag->prefix_info.prefix, 16);
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,sp
	add	a,#0xec
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
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
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:543: pos += 16;
	mov	sp,a
	add	a,#0xec
	mov	r0,a
	mov	a,#0x10
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
00120$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:565: if(uc_addr == NULL) {
	mov	a,sp
	add	a,#0xd6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00184$
	ljmp	00125$
00184$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:568: uip_create_linklocal_rplnodes_mcast(&addr);
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
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:569: uip_icmp6_send(&addr, ICMP6_RPL, RPL_CODE_DIO, pos);
	mov	a,sp
	add	a,#0xF1
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,#0x9B
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	r0,#_uip_icmp6_send
	mov	r1,#(_uip_icmp6_send >> 8)
	mov	r2,#(_uip_icmp6_send >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	sjmp	00127$
00125$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:575: uip_icmp6_send(uc_addr, ICMP6_RPL, RPL_CODE_DIO, pos);
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,#0x9B
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xd0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_icmp6_send
	mov	r1,#(_uip_icmp6_send >> 8)
	mov	r2,#(_uip_icmp6_send >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
00127$:
	mov	a,sp
	add	a,#0xDB
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dao_input'
;------------------------------------------------------------
;dao_sender_addr           Allocated to stack - sp -28
;dag                       Allocated to stack - sp -12
;instance                  Allocated to stack - sp -9
;buffer                    Allocated to stack - sp -6
;sequence                  Allocated to stack - sp -3
;instance_id               Allocated to registers r6 
;lifetime                  Allocated to stack - sp -74
;prefixlen                 Allocated to stack - sp -1
;flags                     Allocated to stack - sp +0
;subopt_type               Allocated to registers r7 
;prefix                    Allocated to stack - sp -57
;rep                       Allocated to stack - sp -41
;buffer_length             Allocated to stack - sp -38
;pos                       Allocated to stack - sp -37
;len                       Allocated to stack - sp -66
;i                         Allocated to stack - sp -35
;learned_from              Allocated to stack - sp -33
;parent                    Allocated to stack - sp -31
;nbr                       Allocated to stack - sp -64
;sloc0                     Allocated to stack - sp -74
;sloc1                     Allocated to stack - sp -73
;sloc2                     Allocated to stack - sp -70
;sloc3                     Allocated to stack - sp -68
;sloc4                     Allocated to stack - sp -66
;sloc5                     Allocated to stack - sp -64
;sloc6                     Allocated to stack - sp -61
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:581: dao_input(void)
;	-----------------------------------------
;	 function dao_input
;	-----------------------------------------
_dao_input:
	mov	a,sp
	add	a,#0x4B
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:607: prefixlen = 0;
	mov	r0,sp
	dec	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:610: uip_ipaddr_copy(&dao_sender_addr, &UIP_IP_BUF->srcipaddr);
	mov	a,sp
	add	a,#0xE4
	mov	r1,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar1
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar1
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:617: buffer = UIP_ICMP_PAYLOAD;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	add	a,#0x2C
	mov	r6,a
	add	a,#_uip_aligned_buf
	mov	r4,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r5,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:618: buffer_length = uip_len - uip_l3_icmp_hdr_len;
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	a,r2
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xda
	mov	r0,a
	mov	@r0,ar6
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:621: instance_id = buffer[pos++];
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:623: instance = rpl_get_instance(instance_id);
	mov	dpl,a
	push	ar1
	mov	r0,#_rpl_get_instance
	mov	r1,#(_rpl_get_instance >> 8)
	mov	r2,#(_rpl_get_instance >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	pop	ar1
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:624: if(instance == NULL) {
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00247$
	ljmp	00149$
00247$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:630: lifetime = instance->default_lifetime;
	push	ar1
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x89
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
	add	a,#0xb5
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:632: flags = buffer[pos++];
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x01
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
	lcall	__gptrget
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:635: sequence = buffer[pos++];
	mov	a,sp
	add	a,#0xda
	mov	r0,a
	mov	@r0,#0x04
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x03
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
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:637: dag = instance->current_dag;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x0A
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
	add	a,#0xf3
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
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:639: if(flags & RPL_DAO_D_FLAG) {
	mov	r0,sp
	dec	r0
	mov	a,@r0
	pop	ar1
	jnb	acc.6,00106$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:640: if(memcmp(&dag->dag_id, &buffer[pos], sizeof(dag->dag_id))) {
	push	ar1
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	push	ar1
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
	pop	ar1
	pop	ar1
	mov	a,r6
	orl	a,r7
	jz	00249$
	ljmp	00149$
00249$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:644: pos += 16;
	mov	a,sp
	add	a,#0xdb
	mov	r0,a
	mov	@r0,#0x14
	inc	r0
	mov	@r0,#0x00
00106$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:647: learned_from = uip_is_addr_mcast(&dao_sender_addr) ?
	mov	ar7,@r1
	cjne	r7,#0xFF,00155$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:648: RPL_ROUTE_FROM_MULTICAST_DAO : RPL_ROUTE_FROM_UNICAST_DAO;
	mov	r7,#0x02
	sjmp	00156$
00155$:
	mov	r7,#0x01
00156$:
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:652: if(learned_from == RPL_ROUTE_FROM_UNICAST_DAO) {
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	clr	a
	cjne	@r0,#0x01,00252$
	inc	r0
	cjne	@r0,#0x00,00252$
	inc	a
00252$:
	mov	r5,a
	jnz	00254$
	ljmp	00114$
00254$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:654: parent = rpl_find_parent(dag, &dao_sender_addr);
	mov	ar4,r1
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar5
	push	ar1
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xef
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
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar5
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:657: if(parent != NULL &&
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00255$
	ljmp	00108$
00255$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:658: DAG_RANK(parent->rank, instance) < DAG_RANK(dag->rank, instance)) {
	push	ar5
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xb5
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
	pop	ar1
	mov	a,sp
	add	a,#0xb6
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
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x8F
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r7
	lcall	__divuint
	xch	a,r0
	mov	a,sp
	add	a,#0xb3
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x1A
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
	push	ar5
	push	ar1
	push	ar3
	push	ar4
	mov	dpl,r2
	mov	dph,r5
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar5
	mov	a,sp
	add	a,#0xb9
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	pop	ar5
	jnc	00108$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:661: parent->rank = INFINITE_RANK;
	mov	a,sp
	add	a,#0xb7
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
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:662: parent->flags |= RPL_PARENT_FLAG_UPDATED;
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	a,#0x08
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
	mov	r3,a
	orl	ar3,#0x01
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:663: goto discard;
	ljmp	00149$
00108$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:667: if(parent != NULL && parent == dag->preferred_parent) {
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00257$
	ljmp	00114$
00257$:
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x17
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	push	ar4
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
	jnz	00114$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:669: parent->rank = INFINITE_RANK;
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	a,#0x03
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
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:670: parent->flags |= RPL_PARENT_FLAG_UPDATED;
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	a,#0x08
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
	mov	r3,a
	orl	ar3,#0x01
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:671: goto discard;
	ljmp	00149$
00114$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:676: for(i = pos; i < buffer_length; i += len) {
	mov	a,sp
	add	a,#0xdb
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xdc
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	mov	a,sp
	add	a,#0xC7
	mov	r4,a
	mov	a,sp
	add	a,#0xb7
	mov	r0,a
	mov	@r0,ar4
00151$:
	mov	a,sp
	add	a,#0xda
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xb9
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	pop	ar1
	mov	a,sp
	add	a,#0xdd
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xb9
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	inc	r1
	mov	b,@r1
	xrl	b,#0x80
	subb	a,b
	pop	ar1
	jc	00260$
	ljmp	00121$
00260$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:677: subopt_type = buffer[i];
	push	ar5
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xdb
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	pop	ar1
	mov	dpl,r2
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:678: if(subopt_type == RPL_OPTION_PAD1) {
	pop	ar5
	mov	a,r7
	jnz	00116$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:679: len = 1;
	mov	a,sp
	add	a,#0xbe
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
	sjmp	00117$
00116$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:682: len = 2 + buffer[i + 1];
	push	ar5
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	r5,#0x00
	mov	a,sp
	add	a,#0xbd
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:806: uip_clear_buf();
	pop	ar5
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:682: len = 2 + buffer[i + 1];
00117$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:685: switch(subopt_type) {
	cjne	r7,#0x05,00262$
	sjmp	00118$
00262$:
	cjne	r7,#0x06,00263$
	ljmp	00119$
00263$:
	ljmp	00152$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:686: case RPL_OPTION_TARGET:
00118$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:688: prefixlen = buffer[i + 3];
	push	ar5
	mov	a,sp
	add	a,#0xdc
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	r0,sp
	dec	r0
	dec	r0
	lcall	__gptrget
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:689: memset(&prefix, 0, sizeof(prefix));
	mov	ar2,r4
	mov	r3,#0x00
	mov	r5,#0x40
	push	ar5
	push	ar4
	push	ar1
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar4
	pop	ar5
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:690: memcpy(&prefix, buffer + i + 4, (prefixlen + 7) / CHAR_BIT);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar3,@r0
	mov	r5,#0x00
	mov	a,#0x07
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r5
	mov	r5,a
	push	ar5
	push	ar4
	push	ar1
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r5
	lcall	__divsint
	xch	a,r0
	mov	a,sp
	add	a,#0xb6
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar4
	pop	ar5
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xdb
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar5,@r0
	pop	ar1
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,sp
	add	a,#0xbf
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar5
	mov	a,sp
	add	a,#0xb6
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar4
	push	ar1
	mov	a,sp
	add	a,#0xb8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xba
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
	pop	ar1
	pop	ar4
	pop	ar5
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:691: break;
	pop	ar5
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:692: case RPL_OPTION_TRANSIT:
	sjmp	00152$
00119$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:696: lifetime = buffer[i + 5];
	mov	a,sp
	add	a,#0xdd
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	mov	a,sp
	add	a,#0xb6
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:699: }
00152$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:676: for(i = pos; i < buffer_length; i += len) {
	mov	a,sp
	add	a,#0xdd
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xbd
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	pop	ar1
	ljmp	00151$
00121$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:718: rep = uip_ds6_route_lookup(&prefix);
	mov	ar7,r4
	mov	r6,#0x00
	mov	r3,#0x40
	mov	dpl,r7
	mov	dph,r6
	mov	b,r3
	push	ar5
	push	ar4
	push	ar1
	mov	r0,#_uip_ds6_route_lookup
	mov	r1,#(_uip_ds6_route_lookup >> 8)
	mov	r2,#(_uip_ds6_route_lookup >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar1
	pop	ar4
	pop	ar5
	mov	a,sp
	add	a,#0xd7
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:720: if(lifetime == RPL_ZERO_LIFETIME) {
	mov	a,sp
	add	a,#0xb6
	mov	r0,a
	mov	a,@r0
	jz	00264$
	ljmp	00134$
00264$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:723: if(rep != NULL &&
	mov	a,sp
	add	a,#0xd7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00265$
	ljmp	00149$
00265$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:724: rep->state.nopath_received == 0 &&
	push	ar1
	mov	a,sp
	add	a,#0xd6
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xbe
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
	pop	ar1
	mov	a,sp
	add	a,#0xd6
	mov	r0,a
	mov	a,#0x1E
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
	pop	ar1
	jz	00266$
	ljmp	00149$
00266$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:725: rep->length == prefixlen &&
	mov	a,sp
	add	a,#0xd7
	mov	r0,a
	mov	a,#0x1F
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	r0,sp
	dec	r0
	mov	a,@r0
	cjne	a,ar3,00267$
	sjmp	00268$
00267$:
	ljmp	00149$
00268$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:726: uip_ds6_route_nexthop(rep) != NULL &&
	mov	a,sp
	add	a,#0xd7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar1
	mov	r0,#_uip_ds6_route_nexthop
	mov	r1,#(_uip_ds6_route_nexthop >> 8)
	mov	r2,#(_uip_ds6_route_nexthop >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar1
	mov	a,r3
	orl	a,r6
	jnz	00269$
	ljmp	00149$
00269$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:727: uip_ipaddr_cmp(uip_ds6_route_nexthop(rep), &dao_sender_addr)) {
	mov	ar7,r1
	mov	ar5,r7
	mov	r4,#0x00
	mov	r3,#0x40
	mov	a,sp
	add	a,#0xd7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	mov	r0,#_uip_ds6_route_nexthop
	mov	r1,#(_uip_ds6_route_nexthop >> 8)
	mov	r2,#(_uip_ds6_route_nexthop >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	push	ar1
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar4
	push	ar3
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
	pop	ar1
	mov	a,r6
	orl	a,r7
	jz	00270$
	ljmp	00149$
00270$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:731: rep->state.nopath_received = 1;
	mov	a,sp
	add	a,#0xc0
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:732: rep->state.lifetime = DAO_EXPIRATION_TIMEOUT;
	mov	a,sp
	add	a,#0xc0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x3C
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:736: if(dag->preferred_parent != NULL &&
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x17
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,r7
	orl	a,r6
	jnz	00271$
	ljmp	00123$
00271$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:737: rpl_get_parent_ipaddr(dag->preferred_parent) != NULL) {
	mov	dpl,r7
	mov	dph,r6
	mov	b,r2
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	mov	r0,#_rpl_get_parent_ipaddr
	mov	r1,#(_rpl_get_parent_ipaddr >> 8)
	mov	r2,#(_rpl_get_parent_ipaddr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r2
	orl	a,r6
	jz	00123$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:741: uip_icmp6_send(rpl_get_parent_ipaddr(dag->preferred_parent),
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	push	ar1
	mov	r0,#_rpl_get_parent_ipaddr
	mov	r1,#(_rpl_get_parent_ipaddr >> 8)
	mov	r2,#(_rpl_get_parent_ipaddr >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xb9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#0x9B
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	r0,#_uip_icmp6_send
	mov	r1,#(_uip_icmp6_send >> 8)
	mov	r2,#(_uip_icmp6_send >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar1
00123$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:744: if(flags & RPL_DAO_K_FLAG) {
	mov	r0,sp
	mov	a,@r0
	jb	acc.7,00273$
	ljmp	00149$
00273$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:745: dao_ack_output(instance, &dao_sender_addr, sequence);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar7,@r0
	mov	ar6,r1
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_dao_ack_output
	mov	r1,#(_dao_ack_output >> 8)
	mov	r2,#(_dao_ack_output >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:748: goto discard;
	ljmp	00149$
00134$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:753: if((nbr = uip_ds6_nbr_lookup(&dao_sender_addr)) == NULL) {
	mov	ar7,r1
	mov	r6,#0x00
	mov	r3,#0x40
	mov	dpl,r7
	mov	dph,r6
	mov	b,r3
	push	ar5
	push	ar4
	push	ar1
	mov	r0,#_uip_ds6_nbr_lookup
	mov	r1,#(_uip_ds6_nbr_lookup >> 8)
	mov	r2,#(_uip_ds6_nbr_lookup >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar1
	pop	ar4
	pop	ar5
	mov	a,r3
	orl	a,r6
	jz	00274$
	ljmp	00139$
00274$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:755: (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_SENDER),
	push	ar5
	mov	dpl,#0x1A
	push	ar5
	push	ar4
	push	ar1
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar1
	pop	ar4
	pop	ar5
	mov	a,sp
	add	a,#0xbf
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:754: if((nbr = uip_ds6_nbr_add(&dao_sender_addr,
	mov	ar2,r1
	mov	r5,#0x00
	mov	r7,#0x40
	push	ar4
	push	ar1
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xbb
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
	mov	dph,r5
	mov	b,r7
	mov	r0,#_uip_ds6_nbr_add
	mov	r1,#(_uip_ds6_nbr_add >> 8)
	mov	r2,#(_uip_ds6_nbr_add >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar1
	pop	ar4
	mov	a,sp
	add	a,#0xbf
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,r5
	orl	a,r6
	pop	ar5
	jnz	00275$
	ljmp	00149$
00275$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:758: stimer_set(&nbr->reachable, UIP_ND6_REACHABLE_TIME / 1000);
	mov	a,sp
	add	a,#0xc0
	mov	r0,a
	mov	a,#0x10
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar4
	push	ar1
	mov	a,#0x58
	push	acc
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	r0,#_stimer_set
	mov	r1,#(_stimer_set >> 8)
	mov	r2,#(_stimer_set >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar4
	pop	ar5
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:770: goto discard;
00139$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:776: rep = rpl_add_route(dag, &prefix, prefixlen, &dao_sender_addr);
	push	ar5
	mov	ar7,r1
	mov	r6,#0x00
	mov	r3,#0x40
	mov	r0,sp
	dec	r0
	dec	r0
	push	ar1
	mov	a,sp
	add	a,#0xbe
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	ar2,r4
	mov	r4,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar3
	mov	a,sp
	add	a,#0xbb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_add_route
	mov	r1,#(_rpl_add_route >> 8)
	mov	r2,#(_rpl_add_route >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar1
	mov	a,sp
	add	a,#0xd6
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:777: if(rep == NULL) {
	pop	ar5
	mov	a,sp
	add	a,#0xd7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00276$
	ljmp	00149$
00276$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:783: rep->state.lifetime = RPL_LIFETIME(instance, lifetime);
	push	ar1
	mov	a,sp
	add	a,#0xd6
	mov	r0,a
	push	ar1
	mov	a,sp
	add	a,#0xbe
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
	pop	ar1
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x91
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xc2
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xb5
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	push	ar5
	push	ar1
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xbc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r3,dpl
	mov	r4,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar5
	mov	a,sp
	add	a,#0xbf
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:784: rep->state.learned_from = learned_from;
	mov	a,sp
	add	a,#0xd6
	mov	r0,a
	mov	a,#0x1D
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xde
	mov	r0,a
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:785: rep->state.nopath_received = 0;
	mov	a,sp
	add	a,#0xd6
	mov	r0,a
	mov	a,#0x1E
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
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:791: if(learned_from == RPL_ROUTE_FROM_UNICAST_DAO) {
	pop	ar1
	mov	a,r5
	jnz	00277$
	ljmp	00149$
00277$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:792: if(dag->preferred_parent != NULL &&
	mov	a,sp
	add	a,#0xf4
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jnz	00278$
	ljmp	00143$
00278$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:793: rpl_get_parent_ipaddr(dag->preferred_parent) != NULL) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	mov	r0,#_rpl_get_parent_ipaddr
	mov	r1,#(_rpl_get_parent_ipaddr >> 8)
	mov	r2,#(_rpl_get_parent_ipaddr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	jz	00143$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:797: uip_icmp6_send(rpl_get_parent_ipaddr(dag->preferred_parent),
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
	push	ar1
	mov	r0,#_rpl_get_parent_ipaddr
	mov	r1,#(_rpl_get_parent_ipaddr >> 8)
	mov	r2,#(_rpl_get_parent_ipaddr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xb9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#0x9B
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_uip_icmp6_send
	mov	r1,#(_uip_icmp6_send >> 8)
	mov	r2,#(_uip_icmp6_send >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar1
00143$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:800: if(flags & RPL_DAO_K_FLAG) {
	mov	r0,sp
	mov	a,@r0
	jnb	acc.7,00149$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:801: dao_ack_output(instance, &dao_sender_addr, sequence);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar7,@r0
	mov	ar6,r1
	mov	r5,#0x00
	mov	r4,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_dao_ack_output
	mov	r1,#(_dao_ack_output >> 8)
	mov	r2,#(_dao_ack_output >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:805: discard:
00149$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:806: uip_clear_buf();
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uip_ext_len
	movx	@dptr,a
	mov	a,sp
	add	a,#0xB5
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dao_output'
;------------------------------------------------------------
;lifetime                  Allocated to stack - sp -22
;parent                    Allocated to stack - sp -18
;prefix                    Allocated to stack - sp -15
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:810: dao_output(rpl_parent_t *parent, uint8_t lifetime)
;	-----------------------------------------
;	 function dao_output
;	-----------------------------------------
_dao_output:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x10
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:815: if(get_global_addr(&prefix) == 0) {
	mov	sp,a
	add	a,#0xF1
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	r7,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar4
	mov	r0,#_get_global_addr
	mov	r1,#(_get_global_addr >> 8)
	mov	r2,#(_get_global_addr >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	pop	ar4
	orl	a,b
	jnz	00102$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:817: return;
	sjmp	00103$
00102$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:821: dao_output_target(parent, &prefix, lifetime);
	mov	r7,#0x00
	mov	r6,#0x40
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,@r0
	push	acc
	push	ar4
	push	ar7
	push	ar6
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_dao_output_target
	mov	r1,#(_dao_output_target >> 8)
	mov	r2,#(_dao_output_target >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00103$:
	mov	a,sp
	add	a,#0xED
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dao_output_target'
;------------------------------------------------------------
;prefix                    Allocated to stack - sp -17
;lifetime                  Allocated to stack - sp -18
;parent                    Allocated to stack - sp -11
;dag                       Allocated to stack - sp -5
;instance                  Allocated to stack - sp -8
;buffer                    Allocated to stack - sp -2
;prefixlen                 Allocated to registers 
;pos                       Allocated to registers 
;sloc0                     Allocated to stack - sp -8
;sloc1                     Allocated to stack - sp +7
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:825: dao_output_target(rpl_parent_t *parent, uip_ipaddr_t *prefix, uint8_t lifetime)
;	-----------------------------------------
;	 function dao_output_target
;	-----------------------------------------
_dao_output_target:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x09
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:836: if(rpl_get_mode() == RPL_MODE_FEATHER) {
	mov	r0,#_rpl_get_mode
	mov	r1,#(_rpl_get_mode >> 8)
	mov	r2,#(_rpl_get_mode >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	cjne	r4,#0x01,00102$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:837: return;
	ljmp	00119$
00102$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:840: if(parent == NULL) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00104$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:842: return;
	ljmp	00119$
00104$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:845: dag = parent->dag;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:846: if(dag == NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00106$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:848: return;
	ljmp	00119$
00106$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:851: instance = dag->instance;
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
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:853: if(instance == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00108$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:855: return;
	ljmp	00119$
00108$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:857: if(prefix == NULL) {
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00110$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:859: return;
	ljmp	00119$
00110$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:865: buffer = UIP_ICMP_PAYLOAD;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	add	a,#0x2C
	add	a,#_uip_aligned_buf
	mov	r3,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r4,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:867: RPL_LOLLIPOP_INCREMENT(dao_sequence);
	mov	dptr,#_dao_sequence
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x7F
	jnc	00112$
	mov	dptr,#_dao_sequence
	mov	a,r7
	inc	a
	movx	@dptr,a
	sjmp	00115$
00112$:
	mov	a,r7
	inc	a
	mov	dptr,#_dao_sequence
	anl	a,#0x7F
	movx	@dptr,a
00115$:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:870: buffer[pos++] = instance->instance_id;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x82
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:871: buffer[pos] = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x01
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
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:873: buffer[pos] |= RPL_DAO_D_FLAG;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	orl	ar7,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:879: buffer[pos++] = 0; /* reserved */
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x02
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
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:880: buffer[pos++] = dao_sequence;
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
	mov	dptr,#_dao_sequence
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:882: memcpy(buffer + pos, &dag->dag_id, sizeof(dag->dag_id));
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
	mov	a,#0x04
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
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:888: buffer[pos++] = RPL_OPTION_TARGET;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
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
	mov	a,#0x05
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:889: buffer[pos++] = 2 + ((prefixlen + 7) / CHAR_BIT);
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	a,#0x12
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:890: buffer[pos++] = 0; /* reserved */
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
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:891: buffer[pos++] = prefixlen;
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
	mov	a,#0x80
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:892: memcpy(buffer + pos, prefix, (prefixlen + 7) / CHAR_BIT);
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x18
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
	mov	sp,a
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:896: buffer[pos++] = RPL_OPTION_TRANSIT;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x28
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
	mov	a,#0x06
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:897: buffer[pos++] = 4;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x29
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
	mov	a,#0x04
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:898: buffer[pos++] = 0; /* flags - ignored */
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x2A
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
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:899: buffer[pos++] = 0; /* path control - ignored */
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x2B
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
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:900: buffer[pos++] = 0; /* path seq - ignored */
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x2C
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
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:901: buffer[pos++] = lifetime;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x2D
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
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:909: if(rpl_get_parent_ipaddr(parent) != NULL) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_get_parent_ipaddr
	mov	r1,#(_rpl_get_parent_ipaddr >> 8)
	mov	r2,#(_rpl_get_parent_ipaddr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00119$
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:910: uip_icmp6_send(rpl_get_parent_ipaddr(parent), ICMP6_RPL, RPL_CODE_DAO, pos);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_rpl_get_parent_ipaddr
	mov	r1,#(_rpl_get_parent_ipaddr >> 8)
	mov	r2,#(_rpl_get_parent_ipaddr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#0x2E
	push	acc
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#0x9B
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_uip_icmp6_send
	mov	r1,#(_uip_icmp6_send >> 8)
	mov	r2,#(_uip_icmp6_send >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
00119$:
	mov	a,sp
	add	a,#0xF4
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dao_ack_input'
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:915: dao_ack_input(void)
;	-----------------------------------------
;	 function dao_ack_input
;	-----------------------------------------
_dao_ack_input:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:932: uip_clear_buf();
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uip_ext_len
	movx	@dptr,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dao_ack_output'
;------------------------------------------------------------
;dest                      Allocated to stack - sp -5
;sequence                  Allocated to stack - sp -6
;instance                  Allocated to registers r5 r6 r7 
;buffer                    Allocated to registers r3 r4 r2 
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:936: dao_ack_output(rpl_instance_t *instance, uip_ipaddr_t *dest, uint8_t sequence)
;	-----------------------------------------
;	 function dao_ack_output
;	-----------------------------------------
_dao_ack_output:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:944: buffer = UIP_ICMP_PAYLOAD;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	add	a,#0x2C
	add	a,#_uip_aligned_buf
	mov	r3,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r4,a
	mov	r2,#0x00
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:946: buffer[0] = instance->instance_id;
	mov	a,#0x82
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:947: buffer[1] = 0;
	mov	a,#0x01
	add	a,r3
	mov	r5,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:948: buffer[2] = sequence;
	mov	a,#0x02
	add	a,r3
	mov	r5,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:949: buffer[3] = 0;
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:951: uip_icmp6_send(dest, ICMP6_RPL, RPL_CODE_DAO_ACK, 4);
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	a,#0x9B
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_icmp6_send
	mov	r1,#(_uip_icmp6_send >> 8)
	mov	r2,#(_uip_icmp6_send >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rpl_icmp6_register_handlers'
;------------------------------------------------------------
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:955: rpl_icmp6_register_handlers()
;	-----------------------------------------
;	 function rpl_icmp6_register_handlers
;	-----------------------------------------
_rpl_icmp6_register_handlers:
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:957: uip_icmp6_register_input_handler(&dis_handler);
	mov	dptr,#_dis_handler
	mov	b,#0x00
	mov	r0,#_uip_icmp6_register_input_handler
	mov	r1,#(_uip_icmp6_register_input_handler >> 8)
	mov	r2,#(_uip_icmp6_register_input_handler >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:958: uip_icmp6_register_input_handler(&dio_handler);
	mov	dptr,#_dio_handler
	mov	b,#0x00
	mov	r0,#_uip_icmp6_register_input_handler
	mov	r1,#(_uip_icmp6_register_input_handler >> 8)
	mov	r2,#(_uip_icmp6_register_input_handler >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:959: uip_icmp6_register_input_handler(&dao_handler);
	mov	dptr,#_dao_handler
	mov	b,#0x00
	mov	r0,#_uip_icmp6_register_input_handler
	mov	r1,#(_uip_icmp6_register_input_handler >> 8)
	mov	r2,#(_uip_icmp6_register_input_handler >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rpl/rpl-icmp6.c:960: uip_icmp6_register_input_handler(&dao_ack_handler);
	mov	dptr,#_dao_ack_handler
	mov	b,#0x00
	mov	r0,#_uip_icmp6_register_input_handler
	mov	r1,#(_uip_icmp6_register_input_handler >> 8)
	mov	r2,#(_uip_icmp6_register_input_handler >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__dao_sequence:
	.db #0xF0	; 240
__xinit__dis_handler:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.db #0x9B	; 155
	.db #0x00	; 0
	.byte _dis_input, (_dis_input >> 8), (_dis_input >> 16)
__xinit__dio_handler:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.db #0x9B	; 155
	.db #0x01	; 1
	.byte _dio_input, (_dio_input >> 8), (_dio_input >> 16)
__xinit__dao_handler:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.db #0x9B	; 155
	.db #0x02	; 2
	.byte _dao_input, (_dao_input >> 8), (_dao_input >> 16)
__xinit__dao_ack_handler:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.db #0x9B	; 155
	.db #0x03	; 3
	.byte _dao_ack_input, (_dao_ack_input >> 8), (_dao_ack_input >> 16)
	.area CABS    (ABS,CODE)
