;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Wed Nov 18 02:57:34 2015
;--------------------------------------------------------
	.module resolv
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uip_ds6_maddr_add
	.globl _uip_ds6_addr_lookup
	.globl _tolower
	.globl _random_rand
	.globl _uip_nameserver_get
	.globl _uip_udp_packet_sendto
	.globl _tcpip_poll_udp
	.globl _udp_new
	.globl _uip_htons
	.globl _etimer_set
	.globl _clock_seconds
	.globl _process_alloc_event
	.globl _process_exit
	.globl _process_post
	.globl _process_start
	.globl _strlen
	.globl _memset
	.globl _strncmp
	.globl _strcmp
	.globl _strncat
	.globl _strncpy
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
	.globl _mdns_probe_process
	.globl _resolv_process
	.globl _resolv_event_found
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
	.globl _resolv_set_hostname
	.globl _resolv_get_hostname
	.globl _resolv_query
	.globl _resolv_lookup
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
_names:
	.ds 248
_seqno:
	.ds 1
_retry:
	.ds 10
_resolv_event_found::
	.ds 1
_resolv_hostname:
	.ds 33
_mdns_state:
	.ds 1
_mdns_needs_host_announce:
	.ds 2
_newdata_nquestions_1_364:
	.ds 1
_newdata_nanswers_1_364:
	.ds 1
_newdata_i_1_364:
	.ds 1
_newdata_aligned_3_370:
	.ds 4
_newdata_nauthrr_4_378:
	.ds 1
_newdata_aligned_3_391:
	.ds 26
_process_thread_mdns_probe_process_delay_1_417:
	.ds 10
_init_initialized_1_452:
	.ds 1
_remove_trailing_dots_dns_name_without_dots_1_455:
	.ds 33
_resolv_query_i_1_459:
	.ds 1
_resolv_query_lseq_1_459:
	.ds 1
_resolv_query_lseqi_1_459:
	.ds 1
_resolv_lookup_i_1_471:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_resolv_conn:
	.ds 3
_resolv_process::
	.ds 10
_mdns_probe_process::
	.ds 10
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
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;initialized               Allocated with name '_init_initialized_1_452'
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:1235: static uint8_t initialized = 0;
	mov	dptr,#_init_initialized_1_452
	clr	a
	movx	@dptr,a
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
;Allocation info for local variables in function 'strncasecmp'
;------------------------------------------------------------
;s2                        Allocated to stack - sp -5
;n                         Allocated to stack - sp -7
;s1                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:103: strncasecmp(const char *s1, const char *s2, size_t n)
;	-----------------------------------------
;	 function strncasecmp
;	-----------------------------------------
_strncasecmp:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ip/resolv.c:106: return strncmp(s1, s2, n);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf9
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
	mov	r0,#_strncmp
	mov	r1,#(_strncmp >> 8)
	mov	r2,#(_strncmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'strcasecmp'
;------------------------------------------------------------
;s2                        Allocated to stack - sp -5
;s1                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:109: strcasecmp(const char *s1, const char *s2)
;	-----------------------------------------
;	 function strcasecmp
;	-----------------------------------------
_strcasecmp:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ip/resolv.c:112: return strcmp(s1, s2);
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
	mov	r0,#_strcmp
	mov	r1,#(_strcmp >> 8)
	mov	r2,#(_strcmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'decode_name'
;------------------------------------------------------------
;dest                      Allocated to stack - sp -15
;packet                    Allocated to stack - sp -18
;query                     Allocated to registers r5 r6 r7 
;len                       Allocated to stack - sp -2
;n                         Allocated to stack - sp +0
;offset                    Allocated to registers 
;sloc0                     Allocated to stack - sp -1
;sloc1                     Allocated to stack - sp -9
;sloc2                     Allocated to stack - sp -6
;sloc3                     Allocated to stack - sp -5
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:329: decode_name(const unsigned char *query, char *dest,
;	-----------------------------------------
;	 function decode_name
;	-----------------------------------------
_decode_name:
	mov	a,sp
	add	a,#0x0A
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ip/resolv.c:332: int len = RESOLV_CONF_MAX_DOMAIN_NAME_SIZE;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,#0x20
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:334: unsigned char n = *query++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,sp
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	/opt/contiki/core/net/ip/resolv.c:338: while(len && n) {
00111$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00145$
	ljmp	00113$
00145$:
	mov	r0,sp
	mov	a,@r0
	jnz	00146$
	ljmp	00113$
00146$:
;	/opt/contiki/core/net/ip/resolv.c:339: if(n & 0xc0) {
	mov	r0,sp
	mov	a,@r0
	anl	a,#0xC0
	jz	00102$
;	/opt/contiki/core/net/ip/resolv.c:340: const uint16_t offset = query[0] + ((n & ~0xC0) << 8);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r6,#0x00
	mov	r0,sp
	mov	ar2,@r0
	anl	ar2,#0x3F
	mov	ar4,r2
	clr	a
	add	a,r7
	mov	r2,a
	mov	a,r4
	addc	a,r6
	mov	r4,a
;	/opt/contiki/core/net/ip/resolv.c:343: query = packet + offset;
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r5,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	/opt/contiki/core/net/ip/resolv.c:344: n = *query++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,sp
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	/opt/contiki/core/net/ip/resolv.c:372: return len != 0;
;	/opt/contiki/core/net/ip/resolv.c:344: n = *query++;
00102$:
;	/opt/contiki/core/net/ip/resolv.c:347: if(!n)
	mov	r0,sp
	mov	a,@r0
	jnz	00148$
	ljmp	00113$
00148$:
;	/opt/contiki/core/net/ip/resolv.c:348: break;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,sp
	add	a,#0xf7
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar3,@r0
	inc	r0
	mov	ar2,@r0
	mov	a,sp
	mov	r0,a
	add	a,#0xfa
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
00115$:
;	/opt/contiki/core/net/ip/resolv.c:350: for(; n; --n) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	jnz	00149$
	ljmp	00107$
00149$:
;	/opt/contiki/core/net/ip/resolv.c:353: *dest++ = *query++;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
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
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,sp
	add	a,#0xf7
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
;	/opt/contiki/core/net/ip/resolv.c:355: if(!--len) {
	dec	r3
	cjne	r3,#0xFF,00150$
	dec	r2
00150$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar2
	mov	a,r3
	orl	a,r2
	jnz	00116$
;	/opt/contiki/core/net/ip/resolv.c:356: *dest = 0;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:357: return 0;
	mov	dpl,#0x00
	ljmp	00117$
00116$:
;	/opt/contiki/core/net/ip/resolv.c:350: for(; n; --n) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	dec	@r0
	ljmp	00115$
00107$:
;	/opt/contiki/core/net/ip/resolv.c:361: n = *query++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,sp
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	/opt/contiki/core/net/ip/resolv.c:363: if(n) {
	mov	r0,sp
	mov	a,@r0
	jnz	00152$
	ljmp	00111$
00152$:
;	/opt/contiki/core/net/ip/resolv.c:365: *dest++ = '.';
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x2E
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x01
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/ip/resolv.c:366: --len;
	mov	r0,sp
	dec	r0
	dec	r0
	dec	@r0
	cjne	@r0,#0xFF,00153$
	inc	r0
	dec	@r0
00153$:
	ljmp	00111$
00113$:
;	/opt/contiki/core/net/ip/resolv.c:371: *dest = 0;
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:372: return len != 0;
	mov	r0,sp
	dec	r0
	dec	r0
	cjne	@r0,#0x00,00154$
	inc	r0
	cjne	@r0,#0x00,00154$
	inc	a
	sjmp	00155$
00154$:
	clr	a
00155$:
	mov	r7,a
	cjne	a,#0x01,00156$
00156$:
	clr	a
	rlc	a
	mov	r7,a
	mov	dpl,a
00117$:
	mov	a,sp
	add	a,#0xF6
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dns_name_isequal'
;------------------------------------------------------------
;name                      Allocated to stack - sp -15
;packet                    Allocated to stack - sp -18
;queryptr                  Allocated to stack - sp -9
;n                         Allocated to stack - sp +0
;sloc0                     Allocated to stack - sp -6
;sloc1                     Allocated to stack - sp -2
;sloc2                     Allocated to stack - sp -1
;sloc3                     Allocated to stack - sp -3
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:378: dns_name_isequal(const unsigned char *queryptr, const char *name,
;	-----------------------------------------
;	 function dns_name_isequal
;	-----------------------------------------
_dns_name_isequal:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
;	/opt/contiki/core/net/ip/resolv.c:381: unsigned char n = *queryptr++;
	mov	sp,a
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r1,sp
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:383: if(*name == 0)
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	/opt/contiki/core/net/ip/resolv.c:384: return 0;
	jnz	00113$
	mov	dpl,a
	ljmp	00121$
;	/opt/contiki/core/net/ip/resolv.c:386: while(n) {
00113$:
	mov	r0,sp
	mov	a,@r0
	jnz	00157$
	ljmp	00115$
00157$:
;	/opt/contiki/core/net/ip/resolv.c:387: if(n & 0xc0) {
	mov	r0,sp
	mov	a,@r0
	anl	a,#0xC0
	jz	00129$
;	/opt/contiki/core/net/ip/resolv.c:388: queryptr = packet + queryptr[0] + ((n & ~0xC0) << 8);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	r0,sp
	mov	ar3,@r0
	anl	ar3,#0x3F
	mov	ar4,r3
	mov	r3,#0x00
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,r3
	add	a,r7
	mov	@r0,a
	mov	a,r4
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
;	/opt/contiki/core/net/ip/resolv.c:389: n = *queryptr++;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r1,sp
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
00129$:
	mov	a,sp
	add	a,#0xf1
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
	mov	a,sp
	add	a,#0xf7
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
	mov	r0,sp
	mov	ar5,@r0
00119$:
;	/opt/contiki/core/net/ip/resolv.c:392: for(; n; --n) {
	mov	a,r5
	jnz	00159$
	ljmp	00109$
00159$:
;	/opt/contiki/core/net/ip/resolv.c:393: if(!*name) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
;	/opt/contiki/core/net/ip/resolv.c:394: return 0;
	jnz	00106$
	mov	dpl,a
	ljmp	00121$
00106$:
;	/opt/contiki/core/net/ip/resolv.c:397: if(tolower((unsigned int)*name++) != tolower((unsigned int)*queryptr++)) {
	mov	ar4,r7
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00161$
	inc	r0
	inc	@r0
00161$:
	mov	a,sp
	add	a,#0xfd
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
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	dpl,r4
	mov	dph,r3
	push	ar5
	mov	r0,#_tolower
	mov	r1,#(_tolower >> 8)
	mov	r2,#(_tolower >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,sp
	add	a,#0xf7
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
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r7
	push	ar5
	push	ar4
	push	ar3
	mov	r0,#_tolower
	mov	r1,#(_tolower >> 8)
	mov	r2,#(_tolower >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r3
	cjne	a,ar6,00162$
	mov	a,r4
	cjne	a,ar7,00162$
	sjmp	00120$
00162$:
;	/opt/contiki/core/net/ip/resolv.c:398: return 0;
	mov	dpl,#0x00
	ljmp	00121$
00120$:
;	/opt/contiki/core/net/ip/resolv.c:392: for(; n; --n) {
	dec	r5
	ljmp	00119$
00109$:
;	/opt/contiki/core/net/ip/resolv.c:402: n = *queryptr++;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r1,sp
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:404: if((n != 0) && (*name++ != '.')) {
	mov	r0,sp
	mov	a,@r0
	jnz	00163$
	ljmp	00113$
00163$:
	mov	a,sp
	add	a,#0xf1
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
	mov	r4,a
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r7,a
	cjne	r4,#0x2E,00164$
	cjne	r7,#0x00,00164$
	ljmp	00113$
00164$:
;	/opt/contiki/core/net/ip/resolv.c:405: return 0;
	mov	dpl,#0x00
	sjmp	00121$
00115$:
;	/opt/contiki/core/net/ip/resolv.c:409: if(*name == '.')
	mov	a,sp
	add	a,#0xf1
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
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	cjne	r4,#0x2E,00117$
	cjne	r3,#0x00,00117$
;	/opt/contiki/core/net/ip/resolv.c:410: ++name;
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
00117$:
;	/opt/contiki/core/net/ip/resolv.c:412: return name[0] == 0;
	mov	a,sp
	add	a,#0xf1
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
	mov	r5,a
	clr	a
	cjne	r5,#0x00,00167$
	inc	a
00167$:
	mov	r5,a
	mov	dpl,a
00121$:
	mov	a,sp
	add	a,#0xF6
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'skip_name'
;------------------------------------------------------------
;query                     Allocated to registers r5 r6 r7 
;n                         Allocated to stack - sp +0
;sloc0                     Allocated to stack - sp +4
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:419: skip_name(unsigned char *query)
;	-----------------------------------------
;	 function skip_name
;	-----------------------------------------
_skip_name:
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ip/resolv.c:425: do {
00114$:
;	/opt/contiki/core/net/ip/resolv.c:426: n = *query;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,sp
	lcall	__gptrget
	mov	@r0,a
;	/opt/contiki/core/net/ip/resolv.c:427: if(n & 0xc0) {
	mov	r0,sp
	mov	a,@r0
	anl	a,#0xC0
	jz	00106$
;	/opt/contiki/core/net/ip/resolv.c:429: ++query;
	inc	r5
;	/opt/contiki/core/net/ip/resolv.c:430: break;
	cjne	r5,#0x00,00117$
	inc	r6
	sjmp	00117$
00106$:
;	/opt/contiki/core/net/ip/resolv.c:433: ++query;
	inc	r5
	cjne	r5,#0x00,00136$
	inc	r6
00136$:
;	/opt/contiki/core/net/ip/resolv.c:435: while(n > 0) {
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	r0,sp
	mov	ar7,@r0
00109$:
	mov	a,r7
	jz	00125$
;	/opt/contiki/core/net/ip/resolv.c:437: ++query;
	inc	r2
	cjne	r2,#0x00,00138$
	inc	r3
00138$:
;	/opt/contiki/core/net/ip/resolv.c:438: --n;
	dec	r7
;	/opt/contiki/core/net/ip/resolv.c:440: DEBUG_PRINTF(".");
	sjmp	00109$
00125$:
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	/opt/contiki/core/net/ip/resolv.c:441: } while(*query != 0);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00114$
;	/opt/contiki/core/net/ip/resolv.c:442: DEBUG_PRINTF("\n");
00117$:
;	/opt/contiki/core/net/ip/resolv.c:443: return query + 1;
	inc	r5
	cjne	r5,#0x00,00140$
	inc	r6
00140$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'encode_name'
;------------------------------------------------------------
;nameptr                   Allocated to stack - sp -14
;query                     Allocated to stack - sp -8
;nptr                      Allocated to stack - sp -2
;n                         Allocated to registers r4 
;sloc0                     Allocated to stack - sp -5
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:449: encode_name(unsigned char *query, const char *nameptr)
;	-----------------------------------------
;	 function encode_name
;	-----------------------------------------
_encode_name:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
;	/opt/contiki/core/net/ip/resolv.c:453: --nameptr;
	mov	sp,a
	add	a,#0xf2
	mov	r0,a
	dec	@r0
	cjne	@r0,#0xFF,00127$
	inc	r0
	dec	@r0
00127$:
;	/opt/contiki/core/net/ip/resolv.c:455: do {
00102$:
;	/opt/contiki/core/net/ip/resolv.c:458: ++nameptr;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00128$
	inc	r0
	inc	@r0
00128$:
;	/opt/contiki/core/net/ip/resolv.c:459: nptr = (char *)query;
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
;	/opt/contiki/core/net/ip/resolv.c:460: ++query;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00129$
	inc	r0
	inc	@r0
00129$:
;	/opt/contiki/core/net/ip/resolv.c:461: for(n = 0; *nameptr != '.' && *nameptr != 0; ++nameptr) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xf2
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
00107$:
	push	ar4
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r4,a
	cjne	r2,#0x2E,00130$
	cjne	r4,#0x00,00130$
	pop	ar4
	sjmp	00116$
00130$:
	pop	ar4
	cjne	r3,#0x00,00131$
	sjmp	00116$
00131$:
;	/opt/contiki/core/net/ip/resolv.c:462: *query = *nameptr;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	/opt/contiki/core/net/ip/resolv.c:463: ++query;
;	/opt/contiki/core/net/ip/resolv.c:464: ++n;
	inc	r4
;	/opt/contiki/core/net/ip/resolv.c:461: for(n = 0; *nameptr != '.' && *nameptr != 0; ++nameptr) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00132$
	inc	r0
	inc	@r0
00132$:
	sjmp	00107$
00116$:
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xfb
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
;	/opt/contiki/core/net/ip/resolv.c:466: *nptr = n;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:467: } while(*nameptr != 0);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jz	00133$
	ljmp	00102$
00133$:
;	/opt/contiki/core/net/ip/resolv.c:470: *query++ = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/ip/resolv.c:472: return query;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mdns_announce_requested'
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:479: mdns_announce_requested(void)
;	-----------------------------------------
;	 function mdns_announce_requested
;	-----------------------------------------
_mdns_announce_requested:
;	/opt/contiki/core/net/ip/resolv.c:481: mdns_needs_host_announce = 1;
	mov	dptr,#_mdns_needs_host_announce
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'start_name_collision_check'
;------------------------------------------------------------
;after                     Allocated to stack - sp -1
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:487: start_name_collision_check(clock_time_t after)
;	-----------------------------------------
;	 function start_name_collision_check
;	-----------------------------------------
_start_name_collision_check:
	push	dpl
	push	dph
;	/opt/contiki/core/net/ip/resolv.c:489: process_exit(&mdns_probe_process);
	mov	dptr,#_mdns_probe_process
	mov	b,#0x00
	mov	r0,#_process_exit
	mov	r1,#(_process_exit >> 8)
	mov	r2,#(_process_exit >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ip/resolv.c:490: process_start(&mdns_probe_process, (void *)&after);
	mov	r7,sp
	dec	r7
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	dptr,#_mdns_probe_process
	mov	b,#0x00
	mov	r0,#_process_start
	mov	r1,#(_process_start >> 8)
	mov	r2,#(_process_start >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mdns_write_announce_records'
;------------------------------------------------------------
;count                     Allocated to stack - sp -12
;queryptr                  Allocated to stack - sp -6
;i                         Allocated to stack - sp +0
;sloc0                     Allocated to stack - sp -3
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:496: mdns_write_announce_records(unsigned char *queryptr, uint8_t *count)
;	-----------------------------------------
;	 function mdns_write_announce_records
;	-----------------------------------------
_mdns_write_announce_records:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	/opt/contiki/core/net/ip/resolv.c:501: for(i = 0; i < UIP_DS6_ADDR_NB; ++i) {
	mov	r0,sp
	mov	@r0,#0x00
00109$:
;	/opt/contiki/core/net/ip/resolv.c:502: if(uip_ds6_if.addr_list[i].isused
	mov	r0,sp
	mov	a,@r0
	mov	b,#0x1C
	mul	ab
	mov	r3,a
	add	a,#(_uip_ds6_if + 0x0012)
	mov	r2,a
	clr	a
	addc	a,#((_uip_ds6_if + 0x0012) >> 8)
	mov	r7,a
	mov	dpl,r2
	mov	dph,r7
	movx	a,@dptr
	jnz	00132$
	ljmp	00110$
00132$:
;	/opt/contiki/core/net/ip/resolv.c:504: && uip_is_addr_linklocal(&uip_ds6_if.addr_list[i].ipaddr)
	mov	a,r3
	add	a,#(_uip_ds6_if + 0x0012)
	mov	r2,a
	clr	a
	addc	a,#((_uip_ds6_if + 0x0012) >> 8)
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0xFE,00133$
	sjmp	00134$
00133$:
	ljmp	00110$
00134$:
	mov	a,r3
	add	a,#(_uip_ds6_if + 0x0012)
	mov	r3,a
	clr	a
	addc	a,#((_uip_ds6_if + 0x0012) >> 8)
	mov	r2,a
	mov	dpl,r3
	mov	dph,r2
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x80,00135$
	sjmp	00136$
00135$:
	ljmp	00110$
00136$:
;	/opt/contiki/core/net/ip/resolv.c:507: if(!*count) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00102$
;	/opt/contiki/core/net/ip/resolv.c:508: queryptr = encode_name(queryptr, resolv_hostname);
	push	ar4
	push	ar3
	push	ar2
	mov	a,#_resolv_hostname
	push	acc
	mov	a,#(_resolv_hostname >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_encode_name
	mov	r1,#(_encode_name >> 8)
	mov	r2,#(_encode_name >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xf4
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	sjmp	00103$
00102$:
;	/opt/contiki/core/net/ip/resolv.c:511: *queryptr++ = 0xc0;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0xC0
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:512: *queryptr++ = sizeof(struct dns_hdr);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x0C
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
00103$:
;	/opt/contiki/core/net/ip/resolv.c:515: *queryptr++ = (uint8_t) ((NATIVE_DNS_TYPE) >> 8);
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
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:516: *queryptr++ = (uint8_t) ((NATIVE_DNS_TYPE));
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x1C
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:518: *queryptr++ = (uint8_t) ((DNS_CLASS_IN | 0x8000) >> 8);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x80
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:519: *queryptr++ = (uint8_t) ((DNS_CLASS_IN | 0x8000));
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:521: *queryptr++ = 0;
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
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:522: *queryptr++ = 0;
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
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:523: *queryptr++ = 0;
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
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:524: *queryptr++ = 120;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x78
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:526: *queryptr++ = 0;
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
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:527: *queryptr++ = sizeof(uip_ipaddr_t);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x10
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:529: uip_ipaddr_copy((uip_ipaddr_t*)queryptr, &uip_ds6_if.addr_list[i].ipaddr);
	mov	r0,sp
	mov	a,@r0
	mov	b,#0x1C
	mul	ab
	add	a,#(_uip_ds6_if + 0x0012)
	mov	r6,a
	clr	a
	addc	a,#((_uip_ds6_if + 0x0012) >> 8)
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00138$
	inc	r7
00138$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xfa
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
;	/opt/contiki/core/net/ip/resolv.c:530: queryptr += sizeof(uip_ipaddr_t);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x10
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	/opt/contiki/core/net/ip/resolv.c:531: ++(*count);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	inc	r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
00110$:
;	/opt/contiki/core/net/ip/resolv.c:501: for(i = 0; i < UIP_DS6_ADDR_NB; ++i) {
	mov	r0,sp
	inc	@r0
	mov	r0,sp
	cjne	@r0,#0x03,00139$
00139$:
	jnc	00140$
	ljmp	00109$
00140$:
;	/opt/contiki/core/net/ip/resolv.c:548: return queryptr;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mdns_prep_host_announce_packet'
;------------------------------------------------------------
;queryptr                  Allocated to registers r5 r6 r7 
;total_answers             Allocated to stack - sp -3
;hdr                       Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:555: mdns_prep_host_announce_packet(void)
;	-----------------------------------------
;	 function mdns_prep_host_announce_packet
;	-----------------------------------------
_mdns_prep_host_announce_packet:
	mov	a,sp
	add	a,#0x04
;	/opt/contiki/core/net/ip/resolv.c:592: uint8_t total_answers = 0;
	mov	sp,a
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:596: struct dns_hdr *hdr = (struct dns_hdr *)uip_appdata;
	mov	dptr,#_uip_appdata
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
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/ip/resolv.c:599: memset((void *)hdr, 0, sizeof(*hdr));
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x0C
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
;	/opt/contiki/core/net/ip/resolv.c:601: hdr->flags1 |= DNS_FLAG1_RESPONSE | DNS_FLAG1_AUTHORATIVE;
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	r7,a
	orl	ar7,#0x84
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:603: queryptr = (unsigned char *)uip_appdata + sizeof(*hdr);
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0C
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	/opt/contiki/core/net/ip/resolv.c:605: queryptr = mdns_write_announce_records(queryptr, &total_answers);
	mov	a,sp
	add	a,#0xFD
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_mdns_write_announce_records
	mov	r1,#(_mdns_write_announce_records >> 8)
	mov	r2,#(_mdns_write_announce_records >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	dec	sp
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	/opt/contiki/core/net/ip/resolv.c:610: if(!total_answers) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00102$
;	/opt/contiki/core/net/ip/resolv.c:611: queryptr = encode_name(queryptr, resolv_hostname);
	mov	a,#_resolv_hostname
	push	acc
	mov	a,#(_resolv_hostname >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_encode_name
	mov	r1,#(_encode_name >> 8)
	mov	r2,#(_encode_name >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	dec	sp
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	sjmp	00103$
00102$:
;	/opt/contiki/core/net/ip/resolv.c:614: *queryptr++ = 0xc0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xC0
	lcall	__gptrput
	inc	dptr
;	/opt/contiki/core/net/ip/resolv.c:615: *queryptr++ = sizeof(*hdr);
	mov	b,r7
	swap	a
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
00103$:
;	/opt/contiki/core/net/ip/resolv.c:618: memcpy((void *)queryptr, (void *)&nsec_record, sizeof(nsec_record));
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x12
	push	acc
	clr	a
	push	acc
	mov	a,#_mdns_prep_host_announce_packet_nsec_record_1_337
	push	acc
	mov	a,#(_mdns_prep_host_announce_packet_nsec_record_1_337 >> 8)
	push	acc
	mov	a,#0x80
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
;	/opt/contiki/core/net/ip/resolv.c:620: queryptr += sizeof(nsec_record);
	mov	a,#0x12
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	/opt/contiki/core/net/ip/resolv.c:624: ((uint8_t*)&hdr->numanswers)[1] = total_answers;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	inc	r2
	cjne	r2,#0x00,00110$
	inc	r3
00110$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:625: ((uint8_t*)&hdr->numextrarr)[1] = 1;
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
	inc	r2
	cjne	r2,#0x00,00111$
	inc	r3
00111$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:627: return (queryptr - (unsigned char *)uip_appdata);
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	clr	c
	subb	a,r2
	mov	r5,a
	mov	a,r6
	subb	a,r3
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	a,sp
	add	a,#0xFC
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'try_next_server'
;------------------------------------------------------------
;namemapptr                Allocated to registers r7 r6 r5 
;sloc0                     Allocated to stack - sp -4
;sloc1                     Allocated to stack - sp -3
;sloc2                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:632: try_next_server(struct namemap *namemapptr)
;	-----------------------------------------
;	 function try_next_server
;	-----------------------------------------
_try_next_server:
	mov	a,sp
	add	a,#0x05
	mov	sp,a
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
;	/opt/contiki/core/net/ip/resolv.c:637: namemapptr->server++;
	mov	a,#0x1B
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r0
	inc	a
	mov	@r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:638: if(uip_nameserver_get(namemapptr->server) != NULL) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_uip_nameserver_get
	mov	r1,#(_uip_nameserver_get >> 8)
	mov	r2,#(_uip_nameserver_get >> 16)
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
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00102$
;	/opt/contiki/core/net/ip/resolv.c:639: namemapptr->retries = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x04
	add	a,r7
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
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
;	/opt/contiki/core/net/ip/resolv.c:640: return 1;
	mov	dpl,#0x01
	sjmp	00103$
00102$:
;	/opt/contiki/core/net/ip/resolv.c:642: namemapptr->server = 0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:643: return 0;
	mov	dpl,#0x00
00103$:
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_entries'
;------------------------------------------------------------
;i                         Allocated to stack - sp -10
;query                     Allocated to stack - sp -9
;hdr                       Allocated to stack - sp -6
;namemapptr                Allocated to stack - sp -3
;count                     Allocated to stack - sp +0
;sloc0                     Allocated to stack - sp -20
;sloc1                     Allocated to stack - sp -6
;sloc2                     Allocated to stack - sp -5
;sloc3                     Allocated to stack - sp -17
;sloc4                     Allocated to stack - sp -14
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:651: check_entries(void)
;	-----------------------------------------
;	 function check_entries
;	-----------------------------------------
_check_entries:
	mov	a,sp
	add	a,#0x15
;	/opt/contiki/core/net/ip/resolv.c:661: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	sp,a
	add	a,#0xf6
	mov	r0,a
	mov	@r0,#0x00
00136$:
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	cjne	@r0,#0x04,00183$
00183$:
	jc	00184$
	ljmp	00137$
00184$:
;	/opt/contiki/core/net/ip/resolv.c:662: namemapptr = &names[i];
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	mov	b,#0x3E
	mul	ab
	add	a,#_names
	mov	r6,a
	mov	a,#(_names >> 8)
	addc	a,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:663: if(namemapptr->state == STATE_NEW || namemapptr->state == STATE_ASKING) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x02,00185$
	sjmp	00130$
00185$:
	cjne	r4,#0x03,00186$
	sjmp	00187$
00186$:
	ljmp	00133$
00187$:
00130$:
;	/opt/contiki/core/net/ip/resolv.c:664: etimer_set(&retry, CLOCK_SECOND / 4);
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	mov	dptr,#_retry
	mov	b,#0x00
	mov	r0,#_etimer_set
	mov	r1,#(_etimer_set >> 8)
	mov	r2,#(_etimer_set >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ip/resolv.c:665: if(namemapptr->state == STATE_ASKING) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x03,00188$
	sjmp	00189$
00188$:
	ljmp	00111$
00189$:
;	/opt/contiki/core/net/ip/resolv.c:666: if(--namemapptr->tmr == 0) {
	mov	a,sp
	add	a,#0xfd
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
	mov	r7,a
	dec	r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
	jz	00190$
	ljmp	00133$
00190$:
;	/opt/contiki/core/net/ip/resolv.c:668: if(++namemapptr->retries ==
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,sp
	add	a,#0xe9
	mov	r1,a
	mov	a,#0x04
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
	inc	a
	mov	r7,a
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:669: (namemapptr->is_mdns ? RESOLV_CONF_MAX_MDNS_RETRIES :
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
	pop	ar4
	pop	ar3
	pop	ar2
	jnb	acc.0,00139$
	mov	r6,#0x03
	sjmp	00140$
00139$:
;	/opt/contiki/core/net/ip/resolv.c:670: RESOLV_CONF_MAX_RETRIES))
	mov	r6,#0x04
00140$:
	mov	a,r7
	cjne	a,ar6,00192$
	sjmp	00193$
00192$:
	ljmp	00104$
00193$:
;	/opt/contiki/core/net/ip/resolv.c:677: if(try_next_server(namemapptr) == 0) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_try_next_server
	mov	r1,#(_try_next_server >> 8)
	mov	r2,#(_try_next_server >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	jz	00194$
	ljmp	00104$
00194$:
;	/opt/contiki/core/net/ip/resolv.c:679: namemapptr->state = STATE_ERROR;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:683: namemapptr->expiration = clock_seconds() + 30;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_clock_seconds
	mov	r1,#(_clock_seconds >> 8)
	mov	r2,#(_clock_seconds >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xef
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x1E
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,sp
	add	a,#0xf2
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
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:686: resolv_found(namemapptr->name, NULL);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x1D
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_resolv_found
	mov	r1,#(_resolv_found >> 8)
	mov	r2,#(_resolv_found >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ip/resolv.c:687: continue;
	ljmp	00133$
00104$:
;	/opt/contiki/core/net/ip/resolv.c:690: namemapptr->tmr = namemapptr->retries * namemapptr->retries * 3;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	b,r7
	mul	ab
	mov	b,#0x03
	mul	ab
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:693: if(namemapptr->is_probe) {
	mov	a,sp
	add	a,#0xfd
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
	jnb	acc.1,00112$
;	/opt/contiki/core/net/ip/resolv.c:695: namemapptr->tmr = 2;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x02
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:702: continue;
	sjmp	00112$
00111$:
;	/opt/contiki/core/net/ip/resolv.c:705: namemapptr->state = STATE_ASKING;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x03
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:706: namemapptr->tmr = 1;
	mov	a,sp
	add	a,#0xfd
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:707: namemapptr->retries = 0;
	mov	a,sp
	add	a,#0xfd
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
00112$:
;	/opt/contiki/core/net/ip/resolv.c:709: hdr = (struct dns_hdr *)uip_appdata;
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/ip/resolv.c:710: memset(hdr, 0, sizeof(struct dns_hdr));
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x0C
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
;	/opt/contiki/core/net/ip/resolv.c:711: hdr->id = random_rand();
	mov	r0,#_random_rand
	mov	r1,#(_random_rand >> 8)
	mov	r2,#(_random_rand >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfa
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
;	/opt/contiki/core/net/ip/resolv.c:712: namemapptr->id = hdr->id;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x02
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
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:714: if(!namemapptr->is_mdns || namemapptr->is_probe) {
	mov	a,sp
	add	a,#0xfd
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
	jnb	acc.0,00113$
	mov	a,sp
	add	a,#0xfd
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
	jnb	acc.1,00114$
00113$:
;	/opt/contiki/core/net/ip/resolv.c:715: hdr->flags1 = DNS_FLAG1_RD;
	mov	a,sp
	add	a,#0xfa
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
	mov	a,#0x01
	lcall	__gptrput
00114$:
;	/opt/contiki/core/net/ip/resolv.c:717: if(namemapptr->is_mdns) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnb	acc.0,00117$
;	/opt/contiki/core/net/ip/resolv.c:718: hdr->id = 0;
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
00117$:
;	/opt/contiki/core/net/ip/resolv.c:723: hdr->numquestions = UIP_HTONS(1);
	mov	a,sp
	add	a,#0xfa
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
	inc	dptr
	inc	a
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:724: query = (unsigned char *)uip_appdata + sizeof(*hdr);
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x0C
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/ip/resolv.c:725: query = encode_name(query, namemapptr->name);
	mov	a,sp
	add	a,#0xfd
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
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_encode_name
	mov	r1,#(_encode_name >> 8)
	mov	r2,#(_encode_name >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/ip/resolv.c:727: if(namemapptr->is_probe) {
	mov	a,sp
	add	a,#0xfd
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
	jnb	acc.1,00119$
;	/opt/contiki/core/net/ip/resolv.c:728: *query++ = (uint8_t) ((DNS_TYPE_ANY) >> 8);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:729: *query++ = (uint8_t) ((DNS_TYPE_ANY));
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	sjmp	00120$
00119$:
;	/opt/contiki/core/net/ip/resolv.c:733: *query++ = (uint8_t) ((NATIVE_DNS_TYPE) >> 8);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:734: *query++ = (uint8_t) ((NATIVE_DNS_TYPE));
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x1C
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
00120$:
;	/opt/contiki/core/net/ip/resolv.c:736: *query++ = (uint8_t) ((DNS_CLASS_IN) >> 8);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:737: *query++ = (uint8_t) ((DNS_CLASS_IN));
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/ip/resolv.c:739: if(namemapptr->is_mdns) {
	mov	a,sp
	add	a,#0xfd
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
	jb	acc.0,00200$
	ljmp	00128$
00200$:
;	/opt/contiki/core/net/ip/resolv.c:740: if(namemapptr->is_probe) {
	mov	a,sp
	add	a,#0xfd
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
	jb	acc.1,00201$
	ljmp	00122$
00201$:
;	/opt/contiki/core/net/ip/resolv.c:746: uint8_t count = 0;
	mov	r0,sp
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:748: query = mdns_write_announce_records(query, &count);
	mov	r4,sp
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_mdns_write_announce_records
	mov	r1,#(_mdns_write_announce_records >> 8)
	mov	r2,#(_mdns_write_announce_records >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/ip/resolv.c:749: hdr->numauthrr = UIP_HTONS(count);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,sp
	add	a,#0xf2
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
	mov	r0,sp
	mov	ar6,@r0
	mov	r7,#0x00
	mov	ar5,r6
	mov	r4,#0x00
	mov	ar6,r7
	mov	r7,#0x00
	mov	a,r6
	orl	ar4,a
	mov	a,r7
	orl	ar5,a
	mov	a,sp
	add	a,#0xf2
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
00122$:
;	/opt/contiki/core/net/ip/resolv.c:753: &resolv_mdns_addr, UIP_HTONS(MDNS_PORT));
;	/opt/contiki/core/net/ip/resolv.c:752: (query - (uint8_t *) uip_appdata),
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,r2
	mov	@r1,a
	inc	r0
	mov	a,@r0
	subb	a,r3
	inc	r1
	mov	@r1,a
;	/opt/contiki/core/net/ip/resolv.c:751: uip_udp_packet_sendto(resolv_conn, uip_appdata,
	mov	dptr,#_resolv_conn
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x14
	push	acc
	mov	a,#0xE9
	push	acc
	mov	a,#_resolv_mdns_addr
	push	acc
	mov	a,#(_resolv_mdns_addr >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,sp
	add	a,#0xed
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
	mov	r0,#_uip_udp_packet_sendto
	mov	r1,#(_uip_udp_packet_sendto >> 8)
	mov	r2,#(_uip_udp_packet_sendto >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	/opt/contiki/core/net/ip/resolv.c:755: PRINTF("resolver: (i=%d) Sent MDNS %s for \"%s\".\n", i,
	ljmp	00137$
00128$:
;	/opt/contiki/core/net/ip/resolv.c:761: uip_nameserver_get(namemapptr->server), 
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x1B
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
	mov	r0,#_uip_nameserver_get
	mov	r1,#(_uip_nameserver_get >> 8)
	mov	r2,#(_uip_nameserver_get >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xf2
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
;	/opt/contiki/core/net/ip/resolv.c:759: (query - (uint8_t *) uip_appdata),
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,sp
	add	a,#0xef
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,r5
	mov	@r1,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	inc	r1
	mov	@r1,a
;	/opt/contiki/core/net/ip/resolv.c:758: uip_udp_packet_sendto(resolv_conn, uip_appdata,
	mov	dptr,#_resolv_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	push	acc
	mov	a,#0x35
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
	mov	a,sp
	add	a,#0xea
	mov	r0,a
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
	mov	r0,#_uip_udp_packet_sendto
	mov	r1,#(_uip_udp_packet_sendto >> 8)
	mov	r2,#(_uip_udp_packet_sendto >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	/opt/contiki/core/net/ip/resolv.c:775: break;
	sjmp	00137$
00133$:
;	/opt/contiki/core/net/ip/resolv.c:661: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	inc	@r0
	ljmp	00136$
00137$:
	mov	a,sp
	add	a,#0xEB
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'newdata'
;------------------------------------------------------------
;namemapptr                Allocated to stack - sp -14
;ans                       Allocated to stack - sp -11
;hdr                       Allocated to stack - sp -8
;queryptr                  Allocated to stack - sp -5
;is_request                Allocated to registers r5 
;question                  Allocated to stack - sp -2
;available_i               Allocated to registers r4 
;sloc0                     Allocated to stack - sp -7
;sloc1                     Allocated to stack - sp -5
;sloc2                     Allocated to stack - sp -24
;sloc3                     Allocated to stack - sp -21
;sloc4                     Allocated to stack - sp -18
;nquestions                Allocated with name '_newdata_nquestions_1_364'
;nanswers                  Allocated with name '_newdata_nanswers_1_364'
;i                         Allocated with name '_newdata_i_1_364'
;aligned                   Allocated with name '_newdata_aligned_3_370'
;nauthrr                   Allocated with name '_newdata_nauthrr_4_378'
;aligned                   Allocated with name '_newdata_aligned_3_391'
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:784: newdata(void)
;	-----------------------------------------
;	 function newdata
;	-----------------------------------------
_newdata:
	mov	a,sp
	add	a,#0x19
	mov	sp,a
;	/opt/contiki/core/net/ip/resolv.c:794: register struct dns_hdr const *hdr = (struct dns_hdr *)uip_appdata;
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/ip/resolv.c:798: const uint8_t is_request = ((hdr->flags1 & ~1) == 0) && (hdr->flags2 == 0);
	mov	a,sp
	add	a,#0xf8
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
	mov	r4,#0x00
	anl	ar2,#0xFE
	cjne	r2,#0x00,00204$
	cjne	r4,#0x00,00204$
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
	jz	00205$
00204$:
	mov	r4,#0x00
	sjmp	00206$
00205$:
	mov	r4,#0x01
00206$:
	mov	ar5,r4
;	/opt/contiki/core/net/ip/resolv.c:803: nquestions = (uint8_t) uip_ntohs(hdr->numquestions);
	mov	a,sp
	add	a,#0xf8
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	pop	ar5
	mov	dptr,#_newdata_nquestions_1_364
	mov	a,r3
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:804: nanswers = (uint8_t) uip_ntohs(hdr->numanswers);
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
	push	ar5
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	pop	ar5
	mov	dptr,#_newdata_nanswers_1_364
	mov	a,r3
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:806: queryptr = (unsigned char *)hdr + sizeof(*hdr);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x0C
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/ip/resolv.c:807: i = 0;
	mov	dptr,#_newdata_i_1_364
	clr	a
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:815: if(is_request && (nquestions == 0)) {
	mov	a,r5
	jz	00220$
	mov	dptr,#_newdata_nquestions_1_364
	movx	a,@dptr
	jnz	00220$
;	/opt/contiki/core/net/ip/resolv.c:818: return;
	ljmp	00202$
00220$:
	mov	a,sp
	add	a,#0xf8
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
00197$:
;	/opt/contiki/core/net/ip/resolv.c:823: for(; nquestions > 0;
	mov	dptr,#_newdata_nquestions_1_364
	movx	a,@dptr
	jnz	00331$
	ljmp	00131$
00331$:
;	/opt/contiki/core/net/ip/resolv.c:828: if(!is_request) {
	mov	a,r5
	jnz	00332$
	ljmp	00130$
00332$:
;	/opt/contiki/core/net/ip/resolv.c:837: struct dns_question *question = (struct dns_question *)skip_name(queryptr);
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
	push	ar5
	mov	r0,#_skip_name
	mov	r1,#(_skip_name >> 8)
	mov	r2,#(_skip_name >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/ip/resolv.c:841: memcpy(&aligned, question, sizeof(aligned));
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_newdata_aligned_3_370
	mov	b,#0x00
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
	pop	ar5
;	/opt/contiki/core/net/ip/resolv.c:842: question = &aligned;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,#_newdata_aligned_3_370
	inc	r0
	mov	@r0,#(_newdata_aligned_3_370 >> 8)
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:848: if(((uip_ntohs(question->class) & 0x7FFF) != DNS_CLASS_IN) ||
	mov	a,sp
	add	a,#0xfb
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	r3,a
	anl	b,#0x7F
	mov	r4,b
	cjne	r3,#0x01,00333$
	cjne	r4,#0x00,00333$
	sjmp	00334$
00333$:
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00130$
00334$:
	pop	ar4
	pop	ar3
	pop	ar2
;	/opt/contiki/core/net/ip/resolv.c:849: ((question->type != UIP_HTONS(DNS_TYPE_ANY)) &&
	mov	r0,sp
	dec	r0
	dec	r0
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
	cjne	r7,#0x00,00335$
	cjne	r6,#0xFF,00335$
	sjmp	00113$
00335$:
;	/opt/contiki/core/net/ip/resolv.c:850: (question->type != UIP_HTONS(NATIVE_DNS_TYPE)))) {
	cjne	r7,#0x00,00336$
	cjne	r6,#0x1C,00336$
	sjmp	00337$
00336$:
	ljmp	00130$
00337$:
;	/opt/contiki/core/net/ip/resolv.c:852: continue;
00113$:
;	/opt/contiki/core/net/ip/resolv.c:855: if(!dns_name_isequal(queryptr, resolv_hostname, uip_appdata)) {
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	push	ar4
	mov	a,#_resolv_hostname
	push	acc
	mov	a,#(_resolv_hostname >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_dns_name_isequal
	mov	r1,#(_dns_name_isequal >> 8)
	mov	r2,#(_dns_name_isequal >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar5
	mov	a,r4
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00338$
	ljmp	00130$
00338$:
;	/opt/contiki/core/net/ip/resolv.c:861: if(mdns_state == MDNS_STATE_READY) {
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_mdns_state
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x02,00339$
	sjmp	00340$
00339$:
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00123$
00340$:
	pop	ar4
	pop	ar3
	pop	ar2
;	/opt/contiki/core/net/ip/resolv.c:865: if(UIP_UDP_BUF->srcport == UIP_HTONS(MDNS_PORT)) {
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	cjne	r7,#0x14,00121$
	cjne	r6,#0xE9,00121$
;	/opt/contiki/core/net/ip/resolv.c:866: mdns_announce_requested();
	mov	r0,#_mdns_announce_requested
	mov	r1,#(_mdns_announce_requested >> 8)
	mov	r2,#(_mdns_announce_requested >> 16)
	lcall	__sdcc_banked_call
	sjmp	00122$
00121$:
;	/opt/contiki/core/net/ip/resolv.c:871: UIP_UDP_BUF->srcport);
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	/opt/contiki/core/net/ip/resolv.c:870: &UIP_UDP_BUF->srcipaddr,
;	/opt/contiki/core/net/ip/resolv.c:869: mdns_prep_host_announce_packet(),
	push	ar7
	push	ar6
	mov	r0,#_mdns_prep_host_announce_packet
	mov	r1,#(_mdns_prep_host_announce_packet >> 8)
	mov	r2,#(_mdns_prep_host_announce_packet >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r4,dph
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/ip/resolv.c:868: uip_udp_packet_sendto(resolv_conn, uip_appdata,
	mov	dptr,#_resolv_conn
	mov	a,sp
	add	a,#0xe8
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
	push	ar7
	push	ar6
	mov	a,#(_uip_aligned_buf + 0x0008)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0008) >> 8)
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar4
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,sp
	add	a,#0xde
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_udp_packet_sendto
	mov	r1,#(_uip_udp_packet_sendto >> 8)
	mov	r2,#(_uip_udp_packet_sendto >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
00122$:
;	/opt/contiki/core/net/ip/resolv.c:873: return;
	ljmp	00202$
;	/opt/contiki/core/net/ip/resolv.c:876: PRINTF("resolver: But we are still probing. Waiting...\n");
00123$:
;	/opt/contiki/core/net/ip/resolv.c:881: nauthrr = (uint8_t)uip_ntohs(hdr->numauthrr);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dptr,#_newdata_nauthrr_4_378
	mov	a,r6
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:888: if(nauthrr) {
	mov	a,r6
	jz	00130$
;	/opt/contiki/core/net/ip/resolv.c:889: start_name_collision_check(CLOCK_SECOND);
	mov	dptr,#0x0080
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_start_name_collision_check
	mov	r1,#(_start_name_collision_check >> 8)
	mov	r2,#(_start_name_collision_check >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
00130$:
;	/opt/contiki/core/net/ip/resolv.c:824: queryptr = skip_name(queryptr) + sizeof(struct dns_question),
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
	push	ar5
	mov	r0,#_skip_name
	mov	r1,#(_skip_name >> 8)
	mov	r2,#(_skip_name >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x04
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/ip/resolv.c:826: ) {
	mov	dptr,#_newdata_nquestions_1_364
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00197$
00131$:
;	/opt/contiki/core/net/ip/resolv.c:898: if(nanswers == 0) {
	mov	dptr,#_newdata_nanswers_1_364
	movx	a,@dptr
	jnz	00133$
;	/opt/contiki/core/net/ip/resolv.c:900: return;
	ljmp	00202$
00133$:
;	/opt/contiki/core/net/ip/resolv.c:904: if(UIP_UDP_BUF->srcport == UIP_HTONS(MDNS_PORT) &&
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r3,#0x14,00149$
	cjne	r4,#0xE9,00149$
;	/opt/contiki/core/net/ip/resolv.c:905: hdr->id == 0) {
	mov	a,sp
	add	a,#0xf8
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
	orl	a,r3
	jnz	00149$
;	/opt/contiki/core/net/ip/resolv.c:910: i = -1;
	mov	dptr,#_newdata_i_1_364
	mov	a,#0xFF
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:911: namemapptr = NULL;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	ljmp	00150$
00149$:
;	/opt/contiki/core/net/ip/resolv.c:915: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	dptr,#_newdata_i_1_364
	clr	a
	movx	@dptr,a
	mov	a,sp
	add	a,#0xf8
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
00198$:
;	/opt/contiki/core/net/ip/resolv.c:916: namemapptr = &names[i];
	push	ar6
	push	ar7
	mov	dptr,#_newdata_i_1_364
	movx	a,@dptr
	mov	r5,a
	clr	F0
	mov	b,#0x3E
	mov	a,r5
	jnb	acc.7,00348$
	cpl	F0
	cpl	a
	inc	a
00348$:
	mul	ab
	jnb	F0,00349$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00349$:
	add	a,#_names
	mov	r5,a
	mov	a,#(_names >> 8)
	addc	a,b
	mov	r7,a
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:917: if(namemapptr->state == STATE_ASKING &&
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x03,00350$
	sjmp	00351$
00350$:
	pop	ar7
	pop	ar6
	sjmp	00199$
00351$:
	pop	ar7
	pop	ar6
;	/opt/contiki/core/net/ip/resolv.c:918: namemapptr->id == hdr->id) {
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x02
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
	mov	a,r3
	cjne	a,ar6,00352$
	mov	a,r4
	cjne	a,ar7,00352$
	sjmp	00137$
00352$:
;	/opt/contiki/core/net/ip/resolv.c:919: break;
00199$:
;	/opt/contiki/core/net/ip/resolv.c:915: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	dptr,#_newdata_i_1_364
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov	r5,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00353$
	ljmp	00198$
00353$:
00137$:
;	/opt/contiki/core/net/ip/resolv.c:923: if(i >= RESOLV_ENTRIES || i < 0 || namemapptr->state != STATE_ASKING) {
	mov	dptr,#_newdata_i_1_364
	movx	a,@dptr
	mov	r7,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00138$
	mov	a,r7
	jb	acc.7,00138$
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x03,00356$
	sjmp	00144$
00356$:
;	/opt/contiki/core/net/ip/resolv.c:924: PRINTF("resolver: DNS response has bad ID (%04X) \n", uip_ntohs(hdr->id));
00138$:
;	/opt/contiki/core/net/ip/resolv.c:925: return;
	ljmp	00202$
;	/opt/contiki/core/net/ip/resolv.c:928: PRINTF("resolver: Incoming response for \"%s\".\n", namemapptr->name);
00144$:
;	/opt/contiki/core/net/ip/resolv.c:931: namemapptr->state = STATE_ERROR;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:933: namemapptr->err = hdr->flags2 & DNS_FLAG2_ERR_MASK;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,sp
	add	a,#0xeb
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
	anl	ar2,#0x0F
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:937: namemapptr->expiration = clock_seconds() + 30;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,sp
	add	a,#0xe8
	mov	r1,a
	mov	a,#0x06
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
	mov	r0,#_clock_seconds
	mov	r1,#(_clock_seconds >> 8)
	mov	r2,#(_clock_seconds >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r7,a
	mov	a,#0x1E
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xe8
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
;	/opt/contiki/core/net/ip/resolv.c:941: if(namemapptr->err != 0) {
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jz	00150$
;	/opt/contiki/core/net/ip/resolv.c:942: namemapptr->state = STATE_ERROR;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:943: resolv_found(namemapptr->name, NULL);
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x1D
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_resolv_found
	mov	r1,#(_resolv_found >> 8)
	mov	r2,#(_resolv_found >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ip/resolv.c:944: return;
	ljmp	00202$
00150$:
;	/opt/contiki/core/net/ip/resolv.c:948: i = 0;
	mov	dptr,#_newdata_i_1_364
	clr	a
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:951: while(nanswers > 0) {
00187$:
	mov	dptr,#_newdata_nanswers_1_364
	movx	a,@dptr
	jnz	00358$
	ljmp	00189$
00358$:
;	/opt/contiki/core/net/ip/resolv.c:952: ans = (struct dns_answer *)skip_name(queryptr);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_skip_name
	mov	r1,#(_skip_name >> 8)
	mov	r2,#(_skip_name >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/ip/resolv.c:957: memcpy(&aligned, ans, sizeof(aligned));
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x1A
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_newdata_aligned_3_391
	mov	b,#0x00
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
;	/opt/contiki/core/net/ip/resolv.c:958: ans = &aligned;
	mov	sp,a
	add	a,#0xf5
	mov	r0,a
	mov	@r0,#_newdata_aligned_3_391
	inc	r0
	mov	@r0,#(_newdata_aligned_3_391 >> 8)
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:975: if(((uip_ntohs(ans->class) & 0x7FFF) != DNS_CLASS_IN) ||
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
	mov	dpl,r2
	mov	dph,r3
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	mov	r3,a
	anl	b,#0x7F
	mov	r4,b
	cjne	r3,#0x01,00359$
	cjne	r4,#0x00,00359$
	sjmp	00360$
00359$:
	ljmp	00186$
00360$:
;	/opt/contiki/core/net/ip/resolv.c:976: (ans->len != UIP_HTONS(sizeof(uip_ipaddr_t)))) {
	mov	a,sp
	add	a,#0xf5
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,00361$
	cjne	r3,#0x10,00361$
	sjmp	00362$
00361$:
	ljmp	00186$
00362$:
;	/opt/contiki/core/net/ip/resolv.c:980: if(ans->type != UIP_HTONS(NATIVE_DNS_TYPE)) {
	mov	a,sp
	add	a,#0xf5
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
	cjne	r3,#0x00,00363$
	cjne	r4,#0x1C,00363$
	sjmp	00364$
00363$:
	ljmp	00186$
00364$:
;	/opt/contiki/core/net/ip/resolv.c:985: if(UIP_UDP_BUF->srcport == UIP_HTONS(MDNS_PORT) &&
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r3,#0x14,00365$
	cjne	r4,#0xE9,00365$
	sjmp	00366$
00365$:
	ljmp	00181$
00366$:
;	/opt/contiki/core/net/ip/resolv.c:986: hdr->id == 0) {
	mov	a,sp
	add	a,#0xf8
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
	orl	a,r3
	jz	00367$
	ljmp	00181$
00367$:
;	/opt/contiki/core/net/ip/resolv.c:987: int8_t available_i = RESOLV_ENTRIES;
	mov	r4,#0x04
;	/opt/contiki/core/net/ip/resolv.c:994: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	dptr,#_newdata_i_1_364
	clr	a
	movx	@dptr,a
00200$:
;	/opt/contiki/core/net/ip/resolv.c:995: namemapptr = &names[i];
	push	ar4
	mov	dptr,#_newdata_i_1_364
	movx	a,@dptr
	mov	r3,a
	clr	F0
	mov	b,#0x3E
	mov	a,r3
	jnb	acc.7,00368$
	cpl	F0
	cpl	a
	inc	a
00368$:
	mul	ab
	jnb	F0,00369$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00369$:
	add	a,#_names
	mov	r2,a
	mov	a,#(_names >> 8)
	addc	a,b
	mov	r3,a
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:996: if(dns_name_isequal(queryptr, namemapptr->name, uip_appdata)) {
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x1D
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar2
	push	ar3
	push	ar4
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
	mov	r0,#_dns_name_isequal
	mov	r1,#(_dns_name_isequal >> 8)
	mov	r2,#(_dns_name_isequal >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar4
	pop	ar4
	mov	a,r7
	jz	00370$
	ljmp	00165$
00370$:
;	/opt/contiki/core/net/ip/resolv.c:999: if((namemapptr->state == STATE_UNUSED)
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	jz	00161$
;	/opt/contiki/core/net/ip/resolv.c:1001: || (namemapptr->state == STATE_DONE && clock_seconds() > namemapptr->expiration)
	cjne	r7,#0x04,00201$
	push	ar4
	push	ar4
	mov	r0,#_clock_seconds
	mov	r1,#(_clock_seconds >> 8)
	mov	r2,#(_clock_seconds >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xec
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar4
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	a,r6
	inc	r0
	subb	a,@r0
	pop	ar4
	jnc	00201$
00161$:
;	/opt/contiki/core/net/ip/resolv.c:1004: available_i = i;
	mov	dptr,#_newdata_i_1_364
	movx	a,@dptr
	mov	r7,a
	mov	r4,a
00201$:
;	/opt/contiki/core/net/ip/resolv.c:994: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	dptr,#_newdata_i_1_364
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00375$
	ljmp	00200$
00375$:
00165$:
;	/opt/contiki/core/net/ip/resolv.c:1007: if(i == RESOLV_ENTRIES) {
	mov	dptr,#_newdata_i_1_364
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00376$
	sjmp	00377$
00376$:
	ljmp	00173$
00377$:
;	/opt/contiki/core/net/ip/resolv.c:1009: i = available_i;
	mov	dptr,#_newdata_i_1_364
	mov	a,r4
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:1010: namemapptr = &names[i];
	clr	F0
	mov	b,#0x3E
	mov	a,r4
	jnb	acc.7,00378$
	cpl	F0
	cpl	a
	inc	a
00378$:
	mul	ab
	jnb	F0,00379$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00379$:
	add	a,#_names
	mov	r6,a
	mov	a,#(_names >> 8)
	addc	a,b
	mov	r7,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:1011: if(!decode_name(queryptr, namemapptr->name, uip_appdata)) {
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
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
	push	ar5
	push	ar6
	push	ar7
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
	mov	r0,#_decode_name
	mov	r1,#(_decode_name >> 8)
	mov	r2,#(_decode_name >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	a,r7
	jnz	00173$
;	/opt/contiki/core/net/ip/resolv.c:1013: namemapptr = NULL;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:1014: goto skip_to_next_answer;
	ljmp	00186$
00173$:
;	/opt/contiki/core/net/ip/resolv.c:1017: if(i == RESOLV_ENTRIES) {
	mov	dptr,#_newdata_i_1_364
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00381$
	sjmp	00382$
00381$:
	ljmp	00179$
00382$:
;	/opt/contiki/core/net/ip/resolv.c:1021: if(dns_name_isequal(queryptr, resolv_hostname, uip_appdata)) {
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	push	ar4
	push	ar5
	push	ar6
	mov	a,#_resolv_hostname
	push	acc
	mov	a,#(_resolv_hostname >> 8)
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
	mov	r0,#_dns_name_isequal
	mov	r1,#(_dns_name_isequal >> 8)
	mov	r2,#(_dns_name_isequal >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	a,r6
	jz	00177$
;	/opt/contiki/core/net/ip/resolv.c:1023: resolv_found(resolv_hostname, (uip_ipaddr_t *) ans->ipaddr);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x0A
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	push	ar4
	push	ar5
	push	ar6
	mov	dptr,#_resolv_hostname
	mov	b,#0x00
	mov	r0,#_resolv_found
	mov	r1,#(_resolv_found >> 8)
	mov	r2,#(_resolv_found >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00177$:
;	/opt/contiki/core/net/ip/resolv.c:1025: namemapptr = NULL;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:1026: goto skip_to_next_answer;
	ljmp	00186$
00179$:
;	/opt/contiki/core/net/ip/resolv.c:1028: namemapptr = &names[i];
	clr	F0
	mov	b,#0x3E
	mov	a,r7
	jnb	acc.7,00384$
	cpl	F0
	cpl	a
	inc	a
00384$:
	mul	ab
	jnb	F0,00385$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00385$:
	add	a,#_names
	mov	r6,a
	mov	a,#(_names >> 8)
	addc	a,b
	mov	r7,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	sjmp	00184$
00181$:
;	/opt/contiki/core/net/ip/resolv.c:1034: nanswers = 1;
	mov	dptr,#_newdata_nanswers_1_364
	mov	a,#0x01
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:1046: DEBUG_PRINTF("resolver: Answer for \"%s\" is usable.\n", namemapptr->name);
00184$:
;	/opt/contiki/core/net/ip/resolv.c:1048: namemapptr->state = STATE_DONE;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x04
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:1050: namemapptr->expiration = ans->ttl[1] + (ans->ttl[0] << 8);
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,sp
	add	a,#0xe8
	mov	r1,a
	mov	a,#0x06
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
	mov	a,#0x04
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,#0x02
	add	a,r7
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	ar6,r3
	mov	r7,#0x00
	mov	a,sp
	add	a,#0xeb
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
	mov	r4,a
	mov	a,r7
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xe8
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
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:1051: namemapptr->expiration += clock_seconds();
	mov	r0,#_clock_seconds
	mov	r1,#(_clock_seconds >> 8)
	mov	r2,#(_clock_seconds >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
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
;	/opt/contiki/core/net/ip/resolv.c:1054: uip_ipaddr_copy(&namemapptr->ipaddr, (uip_ipaddr_t *) ans->ipaddr);
	mov	a,sp
	add	a,#0xf5
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
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf2
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
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	push	ar4
	push	ar3
	push	ar2
	mov	a,#0x10
	push	acc
	clr	a
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
;	/opt/contiki/core/net/ip/resolv.c:1056: resolv_found(namemapptr->name, &namemapptr->ipaddr);
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x1D
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_resolv_found
	mov	r1,#(_resolv_found >> 8)
	mov	r2,#(_resolv_found >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ip/resolv.c:1057: break;
	ljmp	00189$
;	/opt/contiki/core/net/ip/resolv.c:1059: skip_to_next_answer:
00186$:
;	/opt/contiki/core/net/ip/resolv.c:1060: queryptr = (unsigned char *)skip_name(queryptr) + 10 + uip_htons(ans->len);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_skip_name
	mov	r1,#(_skip_name >> 8)
	mov	r2,#(_skip_name >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#0x0A
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xf5
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
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/ip/resolv.c:1061: --nanswers;
	mov	dptr,#_newdata_nanswers_1_364
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	ljmp	00187$
00189$:
;	/opt/contiki/core/net/ip/resolv.c:1067: if(nanswers == 0 && UIP_UDP_BUF->srcport != UIP_HTONS(MDNS_PORT) 
	mov	dptr,#_newdata_nanswers_1_364
	movx	a,@dptr
	jnz	00202$
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x14,00387$
	cjne	r7,#0xE9,00387$
	sjmp	00202$
00387$:
;	/opt/contiki/core/net/ip/resolv.c:1068: && hdr->id != 0)
	mov	a,sp
	add	a,#0xf8
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
	orl	a,r6
	jz	00202$
;	/opt/contiki/core/net/ip/resolv.c:1073: if(try_next_server(namemapptr)) {
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_try_next_server
	mov	r1,#(_try_next_server >> 8)
	mov	r2,#(_try_next_server >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	jz	00202$
;	/opt/contiki/core/net/ip/resolv.c:1074: namemapptr->state = STATE_ASKING;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x03
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:1075: process_post(&resolv_process, PROCESS_EVENT_TIMER, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x88
	push	acc
	mov	dptr,#_resolv_process
	mov	b,#0x00
	mov	r0,#_process_post
	mov	r1,#(_process_post >> 8)
	mov	r2,#(_process_post >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00202$:
	mov	a,sp
	add	a,#0xE7
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resolv_set_hostname'
;------------------------------------------------------------
;hostname                  Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:1087: resolv_set_hostname(const char *hostname)
;	-----------------------------------------
;	 function resolv_set_hostname
;	-----------------------------------------
_resolv_set_hostname:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ip/resolv.c:1089: strncpy(resolv_hostname, hostname, RESOLV_CONF_MAX_DOMAIN_NAME_SIZE);
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_resolv_hostname
	mov	b,#0x00
	mov	r0,#_strncpy
	mov	r1,#(_strncpy >> 8)
	mov	r2,#(_strncpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/ip/resolv.c:1092: if(strlen(resolv_hostname) < 7 ||
	mov	dptr,#_resolv_hostname
	mov	b,#0x00
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,r6
	subb	a,#0x07
	mov	a,r7
	subb	a,#0x00
	jc	00101$
;	/opt/contiki/core/net/ip/resolv.c:1093: strcasecmp(resolv_hostname + strlen(resolv_hostname) - 6, ".local") != 0) {
	mov	dptr,#_resolv_hostname
	mov	b,#0x00
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_resolv_hostname
	mov	r6,a
	mov	a,r7
	addc	a,#(_resolv_hostname >> 8)
	mov	r7,a
	mov	a,r6
	add	a,#0xFA
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	r5,#0x00
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_strcasecmp
	mov	r1,#(_strcasecmp >> 8)
	mov	r2,#(_strcasecmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jz	00104$
00101$:
;	/opt/contiki/core/net/ip/resolv.c:1094: strncat(resolv_hostname, ".local", RESOLV_CONF_MAX_DOMAIN_NAME_SIZE);
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dptr,#_resolv_hostname
	mov	b,#0x00
	mov	r0,#_strncat
	mov	r1,#(_strncat >> 8)
	mov	r2,#(_strncat >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/ip/resolv.c:1097: PRINTF("resolver: hostname changed to \"%s\"\n", resolv_hostname);
00104$:
;	/opt/contiki/core/net/ip/resolv.c:1099: start_name_collision_check(0);
	mov	dptr,#0x0000
	mov	r0,#_start_name_collision_check
	mov	r1,#(_start_name_collision_check >> 8)
	mov	r2,#(_start_name_collision_check >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resolv_get_hostname'
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:1107: resolv_get_hostname(void)
;	-----------------------------------------
;	 function resolv_get_hostname
;	-----------------------------------------
_resolv_get_hostname:
;	/opt/contiki/core/net/ip/resolv.c:1109: return resolv_hostname;
	mov	dptr,#_resolv_hostname
	mov	b,#0x00
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_thread_mdns_probe_process'
;------------------------------------------------------------
;ev                        Allocated to stack - sp -6
;data                      Allocated to stack - sp -9
;process_pt                Allocated to stack - sp -2
;PT_YIELD_FLAG             Allocated to registers r4 
;delay                     Allocated with name '_process_thread_mdns_probe_process_delay_1_417'
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:1115: PROCESS_THREAD(mdns_probe_process, ev, data)
;	-----------------------------------------
;	 function process_thread_mdns_probe_process
;	-----------------------------------------
_process_thread_mdns_probe_process:
	push	dpl
	push	dph
	push	b
;	/opt/contiki/core/net/ip/resolv.c:1119: PROCESS_BEGIN();
	mov	r4,#0x01
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
	cjne	r2,#0x00,00167$
	cjne	r3,#0x00,00167$
	sjmp	00101$
00167$:
	cjne	r2,#0x69,00168$
	cjne	r3,#0x04,00168$
	sjmp	00106$
00168$:
	cjne	r2,#0x6F,00169$
	cjne	r3,#0x04,00169$
	ljmp	00115$
00169$:
	cjne	r2,#0x76,00170$
	cjne	r3,#0x04,00170$
	ljmp	00122$
00170$:
	ljmp	00134$
00101$:
;	/opt/contiki/core/net/ip/resolv.c:1120: mdns_state = MDNS_STATE_WAIT_BEFORE_PROBE;
	mov	dptr,#_mdns_state
	clr	a
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:1125: if(NULL != data) {
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00114$
;	/opt/contiki/core/net/ip/resolv.c:1128: etimer_set(&delay, *(clock_time_t *) data);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
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
	push	ar2
	push	ar3
	mov	dptr,#_process_thread_mdns_probe_process_delay_1_417
	mov	b,#0x00
	mov	r0,#_etimer_set
	mov	r1,#(_etimer_set >> 8)
	mov	r2,#(_etimer_set >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ip/resolv.c:1129: PROCESS_WAIT_EVENT_UNTIL(ev == PROCESS_EVENT_TIMER);
	mov	r4,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x69
	lcall	__gptrput
	inc	dptr
	mov	a,#0x04
	lcall	__gptrput
00106$:
	mov	a,r4
	jz	00107$
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	cjne	@r0,#0x88,00173$
	sjmp	00114$
00173$:
00107$:
	mov	dpl,#0x01
	ljmp	00135$
00114$:
;	/opt/contiki/core/net/ip/resolv.c:1134: etimer_set(&delay, CLOCK_SECOND * (random_rand() & 0xFF) / 1024);
	mov	r0,#_random_rand
	mov	r1,#(_random_rand >> 8)
	mov	r2,#(_random_rand >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	mov	r6,a
	clr	a
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r6
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r6,a
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	dptr,#_process_thread_mdns_probe_process_delay_1_417
	mov	b,#0x00
	mov	r0,#_etimer_set
	mov	r1,#(_etimer_set >> 8)
	mov	r2,#(_etimer_set >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ip/resolv.c:1135: PROCESS_WAIT_EVENT_UNTIL(ev == PROCESS_EVENT_TIMER);
	mov	r4,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x6F
	lcall	__gptrput
	inc	dptr
	mov	a,#0x04
	lcall	__gptrput
00115$:
	mov	a,r4
	jz	00116$
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	cjne	@r0,#0x88,00175$
	sjmp	00120$
00175$:
00116$:
	mov	dpl,#0x01
	ljmp	00135$
00120$:
;	/opt/contiki/core/net/ip/resolv.c:1138: mdns_state = MDNS_STATE_PROBING;
	mov	dptr,#_mdns_state
	mov	a,#0x01
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:1139: resolv_query(resolv_hostname);
	mov	dptr,#_resolv_hostname
	mov	b,#0x00
	mov	r0,#_resolv_query
	mov	r1,#(_resolv_query >> 8)
	mov	r2,#(_resolv_query >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ip/resolv.c:1142: PROCESS_WAIT_EVENT_UNTIL(ev == resolv_event_found);
00126$:
	mov	r4,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x76
	lcall	__gptrput
	inc	dptr
	mov	a,#0x04
	lcall	__gptrput
00122$:
	mov	a,r4
	jz	00123$
	mov	dptr,#_resolv_event_found
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	cjne	a,ar7,00177$
	sjmp	00127$
00177$:
00123$:
	mov	dpl,#0x01
	sjmp	00135$
00127$:
;	/opt/contiki/core/net/ip/resolv.c:1143: } while(strcasecmp(resolv_hostname, data) != 0);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_resolv_hostname
	mov	b,#0x00
	mov	r0,#_strcasecmp
	mov	r1,#(_strcasecmp >> 8)
	mov	r2,#(_strcasecmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00126$
;	/opt/contiki/core/net/ip/resolv.c:1145: mdns_state = MDNS_STATE_READY;
	mov	dptr,#_mdns_state
	mov	a,#0x02
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:1146: mdns_announce_requested();
	mov	r0,#_mdns_announce_requested
	mov	r1,#(_mdns_announce_requested >> 8)
	mov	r2,#(_mdns_announce_requested >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ip/resolv.c:1150: PROCESS_END();
00134$:
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
	mov	dpl,#0x03
00135$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_thread_resolv_process'
;------------------------------------------------------------
;ev                        Allocated to stack - sp -3
;data                      Allocated to stack - sp -6
;process_pt                Allocated to registers r5 r6 r7 
;PT_YIELD_FLAG             Allocated to registers r4 
;len                       Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:1157: PROCESS_THREAD(resolv_process, ev, data)
;	-----------------------------------------
;	 function process_thread_resolv_process
;	-----------------------------------------
_process_thread_resolv_process:
;	/opt/contiki/core/net/ip/resolv.c:1159: PROCESS_BEGIN();
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r4,#0x01
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,00169$
	cjne	r3,#0x00,00169$
	sjmp	00101$
00169$:
	cjne	r2,#0x9F,00170$
	cjne	r3,#0x04,00170$
	ljmp	00106$
00170$:
	ljmp	00133$
00101$:
;	/opt/contiki/core/net/ip/resolv.c:1161: memset(names, 0, sizeof(names));
	push	ar5
	push	ar6
	push	ar7
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0xF8
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dptr,#_names
	mov	b,#0x00
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ip/resolv.c:1163: resolv_event_found = process_alloc_event();
	mov	r0,#_process_alloc_event
	mov	r1,#(_process_alloc_event >> 8)
	mov	r2,#(_process_alloc_event >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_resolv_event_found
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:1167: resolv_conn = udp_new(NULL, 0, NULL);
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x00
	mov	r0,#_udp_new
	mov	r1,#(_udp_new >> 8)
	mov	r2,#(_udp_new >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	mov	dptr,#_resolv_conn
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:1171: uip_udp_bind(resolv_conn, UIP_HTONS(MDNS_PORT));
	mov	a,#0x10
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,#0x14
	lcall	__gptrput
	inc	dptr
	mov	a,#0xE9
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:1174: uip_ds6_maddr_add(&resolv_mdns_addr);
	mov	dptr,#_resolv_mdns_addr
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_uip_ds6_maddr_add
	mov	r1,#(_uip_ds6_maddr_add >> 8)
	mov	r2,#(_uip_ds6_maddr_add >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ip/resolv.c:1179: resolv_set_hostname(CONTIKI_CONF_DEFAULT_HOSTNAME);
	mov	dptr,#___str_1
	mov	b,#0x80
	mov	r0,#_resolv_set_hostname
	mov	r1,#(_resolv_set_hostname >> 8)
	mov	r2,#(_resolv_set_hostname >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/ip/resolv.c:1229: PROCESS_END();
	pop	ar7
	pop	ar6
	pop	ar5
;	/opt/contiki/core/net/ip/resolv.c:1182: while(1) {
00131$:
;	/opt/contiki/core/net/ip/resolv.c:1183: PROCESS_WAIT_EVENT();
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x9F
	lcall	__gptrput
	inc	dptr
	mov	a,#0x04
	lcall	__gptrput
00106$:
	mov	a,r4
	jnz	00110$
	mov	dpl,#0x01
	ljmp	00134$
00110$:
;	/opt/contiki/core/net/ip/resolv.c:1185: if(ev == PROCESS_EVENT_TIMER) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x88,00126$
;	/opt/contiki/core/net/ip/resolv.c:1186: tcpip_poll_udp(resolv_conn);
	mov	dptr,#_resolv_conn
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
	mov	r0,#_tcpip_poll_udp
	mov	r1,#(_tcpip_poll_udp >> 8)
	mov	r2,#(_tcpip_poll_udp >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00127$
00126$:
;	/opt/contiki/core/net/ip/resolv.c:1187: } else if(ev == tcpip_event) {
	mov	dptr,#_tcpip_event
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	cjne	a,ar4,00174$
	sjmp	00175$
00174$:
	ljmp	00127$
00175$:
;	/opt/contiki/core/net/ip/resolv.c:1188: if(uip_udp_conn == resolv_conn) {
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_resolv_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
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
	jz	00177$
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00127$
00177$:
	pop	ar7
	pop	ar6
	pop	ar5
;	/opt/contiki/core/net/ip/resolv.c:1189: if(uip_newdata()) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jnb	acc.1,00113$
;	/opt/contiki/core/net/ip/resolv.c:1190: newdata();
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_newdata
	mov	r1,#(_newdata >> 8)
	mov	r2,#(_newdata >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
00113$:
;	/opt/contiki/core/net/ip/resolv.c:1192: if(uip_poll()) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jb	acc.3,00179$
	ljmp	00127$
00179$:
;	/opt/contiki/core/net/ip/resolv.c:1194: if(mdns_needs_host_announce) {
	mov	dptr,#_mdns_needs_host_announce
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00180$
	ljmp	00117$
00180$:
;	/opt/contiki/core/net/ip/resolv.c:1200: memset(uip_appdata, 0, sizeof(struct dns_hdr));
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_uip_appdata
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
	mov	a,#0x0C
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
;	/opt/contiki/core/net/ip/resolv.c:1202: len = mdns_prep_host_announce_packet();
	mov	r0,#_mdns_prep_host_announce_packet
	mov	r1,#(_mdns_prep_host_announce_packet >> 8)
	mov	r2,#(_mdns_prep_host_announce_packet >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/ip/resolv.c:1205: len, &resolv_mdns_addr, UIP_HTONS(MDNS_PORT));
;	/opt/contiki/core/net/ip/resolv.c:1204: uip_udp_packet_sendto(resolv_conn, uip_appdata,
	mov	dptr,#_resolv_conn
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x14
	push	acc
	mov	a,#0xE9
	push	acc
	mov	a,#_resolv_mdns_addr
	push	acc
	mov	a,#(_resolv_mdns_addr >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar3
	push	ar4
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	r0,#_uip_udp_packet_sendto
	mov	r1,#(_uip_udp_packet_sendto >> 8)
	mov	r2,#(_uip_udp_packet_sendto >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/ip/resolv.c:1207: mdns_needs_host_announce = 0;
	mov	dptr,#_mdns_needs_host_announce
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:1212: tcpip_poll_udp(resolv_conn);
	mov	dptr,#_resolv_conn
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
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_tcpip_poll_udp
	mov	r1,#(_tcpip_poll_udp >> 8)
	mov	r2,#(_tcpip_poll_udp >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00127$
00117$:
;	/opt/contiki/core/net/ip/resolv.c:1216: check_entries();
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_check_entries
	mov	r1,#(_check_entries >> 8)
	mov	r2,#(_check_entries >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
00127$:
;	/opt/contiki/core/net/ip/resolv.c:1223: if(mdns_needs_host_announce) {
	mov	dptr,#_mdns_needs_host_announce
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00181$
	ljmp	00131$
00181$:
;	/opt/contiki/core/net/ip/resolv.c:1224: tcpip_poll_udp(resolv_conn);
	mov	dptr,#_resolv_conn
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
	mov	r0,#_tcpip_poll_udp
	mov	r1,#(_tcpip_poll_udp >> 8)
	mov	r2,#(_tcpip_poll_udp >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00131$
;	/opt/contiki/core/net/ip/resolv.c:1229: PROCESS_END();
00133$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	dpl,#0x03
00134$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;initialized               Allocated with name '_init_initialized_1_452'
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:1233: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	/opt/contiki/core/net/ip/resolv.c:1236: if(!initialized) {
	mov	dptr,#_init_initialized_1_452
	movx	a,@dptr
;	/opt/contiki/core/net/ip/resolv.c:1237: process_start(&resolv_process, NULL);
	jnz	00103$
	push	acc
	push	acc
	push	acc
	mov	dptr,#_resolv_process
	mov	b,#0x00
	mov	r0,#_process_start
	mov	r1,#(_process_start >> 8)
	mov	r2,#(_process_start >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/ip/resolv.c:1238: initialized = 1;
	mov	dptr,#_init_initialized_1_452
	mov	a,#0x01
	movx	@dptr,a
00103$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remove_trailing_dots'
;------------------------------------------------------------
;name                      Allocated to registers r5 r6 r7 
;len                       Allocated to stack - sp -1
;dns_name_without_dots     Allocated with name '_remove_trailing_dots_dns_name_without_dots_1_455'
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:1244: remove_trailing_dots(const char *name) {
;	-----------------------------------------
;	 function remove_trailing_dots
;	-----------------------------------------
_remove_trailing_dots:
	inc	sp
	inc	sp
;	/opt/contiki/core/net/ip/resolv.c:1246: size_t len = strlen(name);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/ip/resolv.c:1248: if(name[len - 1] == '.') {
	mov	r0,sp
	dec	r0
	mov	a,@r0
	add	a,#0xFF
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	mov	r4,a
	mov	a,r2
	add	a,r5
	mov	r2,a
	mov	a,r4
	addc	a,r6
	mov	r4,a
	mov	ar3,r7
	mov	dpl,r2
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r4,a
	cjne	r2,#0x2E,00106$
	cjne	r4,#0x00,00106$
;	/opt/contiki/core/net/ip/resolv.c:1249: strncpy(dns_name_without_dots, name, sizeof(dns_name_without_dots));
	mov	a,#0x21
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_remove_trailing_dots_dns_name_without_dots_1_455
	mov	b,#0x00
	mov	r0,#_strncpy
	mov	r1,#(_strncpy >> 8)
	mov	r2,#(_strncpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/ip/resolv.c:1250: while(len && (dns_name_without_dots[len - 1] == '.')) {
	mov	r0,sp
	dec	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
00102$:
	mov	a,r3
	orl	a,r4
	jz	00104$
	mov	ar2,r3
	mov	a,r2
	dec	a
	add	a,#_remove_trailing_dots_dns_name_without_dots_1_455
	mov	dpl,a
	clr	a
	addc	a,#(_remove_trailing_dots_dns_name_without_dots_1_455 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	push	ar3
	push	ar4
	mov	a,r2
	rlc	a
	subb	a,acc
	mov	r4,a
	cjne	r2,#0x2E,00125$
	cjne	r4,#0x00,00125$
	sjmp	00126$
00125$:
	pop	ar4
	pop	ar3
	sjmp	00104$
00126$:
	pop	ar4
	pop	ar3
;	/opt/contiki/core/net/ip/resolv.c:1251: dns_name_without_dots[--len] = 0;
	dec	r3
	cjne	r3,#0xFF,00127$
	dec	r4
00127$:
	mov	a,r3
	add	a,#_remove_trailing_dots_dns_name_without_dots_1_455
	mov	dpl,a
	mov	a,r4
	addc	a,#(_remove_trailing_dots_dns_name_without_dots_1_455 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	sjmp	00102$
00104$:
;	/opt/contiki/core/net/ip/resolv.c:1253: name = dns_name_without_dots;
	mov	r5,#_remove_trailing_dots_dns_name_without_dots_1_455
	mov	r6,#(_remove_trailing_dots_dns_name_without_dots_1_455 >> 8)
	mov	r7,#0x00
00106$:
;	/opt/contiki/core/net/ip/resolv.c:1255: return name;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resolv_query'
;------------------------------------------------------------
;name                      Allocated to stack - sp -9
;nameptr                   Allocated to stack - sp -2
;name_len                  Allocated to registers r6 r7 
;sloc0                     Allocated to stack - sp -6
;i                         Allocated with name '_resolv_query_i_1_459'
;lseq                      Allocated with name '_resolv_query_lseq_1_459'
;lseqi                     Allocated with name '_resolv_query_lseqi_1_459'
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:1267: resolv_query(const char *name)
;	-----------------------------------------
;	 function resolv_query
;	-----------------------------------------
_resolv_query:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	/opt/contiki/core/net/ip/resolv.c:1275: init();
	mov	r0,#_init
	mov	r1,#(_init >> 8)
	mov	r2,#(_init >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/ip/resolv.c:1277: lseq = lseqi = 0;
	mov	dptr,#_resolv_query_lseqi_1_459
	clr	a
	movx	@dptr,a
	mov	dptr,#_resolv_query_lseq_1_459
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:1280: name = remove_trailing_dots(name);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_remove_trailing_dots
	mov	r1,#(_remove_trailing_dots >> 8)
	mov	r2,#(_remove_trailing_dots >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xf7
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
;	/opt/contiki/core/net/ip/resolv.c:1282: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	dptr,#_resolv_query_i_1_459
	clr	a
	movx	@dptr,a
00121$:
;	/opt/contiki/core/net/ip/resolv.c:1283: nameptr = &names[i];
	mov	dptr,#_resolv_query_i_1_459
	movx	a,@dptr
	mov	b,#0x3E
	mul	ab
	add	a,#_names
	mov	r3,a
	mov	a,#(_names >> 8)
	addc	a,b
	mov	r4,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:1284: if(0 == strcasecmp(nameptr->name, name)) {
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
	mov	a,sp
	add	a,#0xf7
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
	mov	r0,#_strcasecmp
	mov	r1,#(_strcasecmp >> 8)
	mov	r2,#(_strcasecmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00155$
	ljmp	00110$
00155$:
;	/opt/contiki/core/net/ip/resolv.c:1287: if((nameptr->state == STATE_UNUSED)
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	jz	00105$
;	/opt/contiki/core/net/ip/resolv.c:1289: || (nameptr->state == STATE_DONE && clock_seconds() > nameptr->expiration)
	cjne	r7,#0x04,00106$
	mov	r0,#_clock_seconds
	mov	r1,#(_clock_seconds >> 8)
	mov	r2,#(_clock_seconds >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xfa
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x06
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r3
	inc	r0
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	a,r6
	inc	r0
	subb	a,@r0
	jnc	00106$
00105$:
;	/opt/contiki/core/net/ip/resolv.c:1292: lseqi = i;
	mov	dptr,#_resolv_query_i_1_459
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_resolv_query_lseqi_1_459
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:1293: lseq = 255;
	mov	dptr,#_resolv_query_lseq_1_459
	mov	a,#0xFF
	movx	@dptr,a
	sjmp	00122$
00106$:
;	/opt/contiki/core/net/ip/resolv.c:1294: } else if(seqno - nameptr->seqno > lseq) {
	mov	dptr,#_seqno
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	a,r5
	clr	c
	subb	a,r2
	mov	r5,a
	mov	a,r6
	subb	a,r3
	mov	r6,a
	mov	dptr,#_resolv_query_lseq_1_459
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r2
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00122$
;	/opt/contiki/core/net/ip/resolv.c:1295: lseq = seqno - nameptr->seqno;
	mov	dptr,#_resolv_query_lseq_1_459
	mov	a,r7
	clr	c
	subb	a,r4
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:1296: lseqi = i;
	mov	dptr,#_resolv_query_i_1_459
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_resolv_query_lseqi_1_459
	movx	@dptr,a
00122$:
;	/opt/contiki/core/net/ip/resolv.c:1282: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	dptr,#_resolv_query_i_1_459
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00161$
00161$:
	jnc	00162$
	ljmp	00121$
00162$:
00110$:
;	/opt/contiki/core/net/ip/resolv.c:1300: if(i == RESOLV_ENTRIES) {
	mov	dptr,#_resolv_query_i_1_459
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00113$
;	/opt/contiki/core/net/ip/resolv.c:1301: i = lseqi;
	mov	dptr,#_resolv_query_lseqi_1_459
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_resolv_query_i_1_459
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:1302: nameptr = &names[i];
	mov	a,r7
	mov	b,#0x3E
	mul	ab
	add	a,#_names
	mov	r6,a
	mov	a,#(_names >> 8)
	addc	a,b
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:1305: PRINTF("resolver: Starting query for \"%s\".\n", name);
00113$:
;	/opt/contiki/core/net/ip/resolv.c:1307: memset(nameptr, 0, sizeof(*nameptr));
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x3E
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
;	/opt/contiki/core/net/ip/resolv.c:1309: strncpy(nameptr->name, name, sizeof(nameptr->name));
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
	mov	a,#0x21
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf5
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
	mov	r0,#_strncpy
	mov	r1,#(_strncpy >> 8)
	mov	r2,#(_strncpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/ip/resolv.c:1310: nameptr->state = STATE_NEW;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x02
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:1311: nameptr->seqno = seqno;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x05
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_seqno
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:1312: ++seqno;
	mov	dptr,#_seqno
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:1316: size_t name_len = strlen(name);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
;	/opt/contiki/core/net/ip/resolv.c:1320: if((name_len > (sizeof(local_suffix) - 1)) &&
	clr	c
	mov	a,#0x05
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00118$
;	/opt/contiki/core/net/ip/resolv.c:1321: (0 == strcasecmp(name + name_len - (sizeof(local_suffix) - 1), local_suffix))) {
	mov	a,sp
	add	a,#0xf7
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
	mov	a,r6
	add	a,#0xFB
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	a,#_resolv_query_local_suffix_2_466
	push	acc
	mov	a,#(_resolv_query_local_suffix_2_466 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_strcasecmp
	mov	r1,#(_strcasecmp >> 8)
	mov	r2,#(_strcasecmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00118$
;	/opt/contiki/core/net/ip/resolv.c:1323: nameptr->is_mdns = 1;
	mov	r0,sp
	dec	r0
	dec	r0
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
	orl	a,#0x01
	lcall	__gptrput
	sjmp	00119$
00118$:
;	/opt/contiki/core/net/ip/resolv.c:1325: nameptr->is_mdns = 0;
	mov	r0,sp
	dec	r0
	dec	r0
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
	anl	a,#0xFE
	lcall	__gptrput
00119$:
;	/opt/contiki/core/net/ip/resolv.c:1328: nameptr->is_probe = (mdns_state == MDNS_STATE_PROBING) &&
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_mdns_state
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00125$
;	/opt/contiki/core/net/ip/resolv.c:1329: (0 == strcmp(nameptr->name, resolv_hostname));
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1D
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
	mov	a,#_resolv_hostname
	push	acc
	mov	a,#(_resolv_hostname >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_strcmp
	mov	r1,#(_strcmp >> 8)
	mov	r2,#(_strcmp >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jz	00126$
00125$:
	clr	b0
	sjmp	00127$
00126$:
	setb	b0
00127$:
	mov	c,b0
	clr	a
	rlc	a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	add	a,acc
	anl	a,#0x02
	push	b
	push	acc
	lcall	__gptrget
	pop	b
	anl	a,#0xFD
	orl	a,b
	pop	b
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:1333: process_post(&resolv_process, PROCESS_EVENT_TIMER, 0);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x88
	push	acc
	mov	dptr,#_resolv_process
	mov	b,#0x00
	mov	r0,#_process_post
	mov	r1,#(_process_post >> 8)
	mov	r2,#(_process_post >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,sp
	add	a,#0xF6
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resolv_lookup'
;------------------------------------------------------------
;ipaddr                    Allocated to stack - sp -16
;name                      Allocated to stack - sp -10
;ret                       Allocated to stack - sp -3
;nameptr                   Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -7
;i                         Allocated with name '_resolv_lookup_i_1_471'
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:1346: resolv_lookup(const char *name, uip_ipaddr_t ** ipaddr)
;	-----------------------------------------
;	 function resolv_lookup
;	-----------------------------------------
_resolv_lookup:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x08
;	/opt/contiki/core/net/ip/resolv.c:1348: resolv_status_t ret = RESOLV_STATUS_UNCACHED;
	mov	sp,a
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x01
;	/opt/contiki/core/net/ip/resolv.c:1355: name = remove_trailing_dots(name);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_remove_trailing_dots
	mov	r1,#(_remove_trailing_dots >> 8)
	mov	r2,#(_remove_trailing_dots >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xf6
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
;	/opt/contiki/core/net/ip/resolv.c:1374: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	dptr,#_resolv_lookup_i_1_471
	clr	a
	movx	@dptr,a
00115$:
;	/opt/contiki/core/net/ip/resolv.c:1375: nameptr = &names[i];
	mov	dptr,#_resolv_lookup_i_1_471
	movx	a,@dptr
	mov	b,#0x3E
	mul	ab
	add	a,#_names
	mov	r2,a
	mov	a,#(_names >> 8)
	addc	a,b
	mov	r3,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:1377: if(strcasecmp(name, nameptr->name) == 0) {
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
	mov	r0,#_strcasecmp
	mov	r1,#(_strcasecmp >> 8)
	mov	r2,#(_strcasecmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jz	00146$
	ljmp	00116$
00146$:
;	/opt/contiki/core/net/ip/resolv.c:1378: switch (nameptr->state) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x01,00147$
	ljmp	00106$
00147$:
	cjne	r7,#0x02,00148$
	sjmp	00105$
00148$:
	cjne	r7,#0x03,00149$
	sjmp	00105$
00149$:
	cjne	r7,#0x04,00150$
	sjmp	00151$
00150$:
	ljmp	00109$
00151$:
;	/opt/contiki/core/net/ip/resolv.c:1380: ret = RESOLV_STATUS_CACHED;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x00
;	/opt/contiki/core/net/ip/resolv.c:1382: if(clock_seconds() > nameptr->expiration) {
	mov	r0,#_clock_seconds
	mov	r1,#(_clock_seconds >> 8)
	mov	r2,#(_clock_seconds >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xf9
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x06
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r3
	inc	r0
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	a,r6
	inc	r0
	subb	a,@r0
	jnc	00109$
;	/opt/contiki/core/net/ip/resolv.c:1383: ret = RESOLV_STATUS_EXPIRED;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x02
;	/opt/contiki/core/net/ip/resolv.c:1386: break;
;	/opt/contiki/core/net/ip/resolv.c:1388: case STATE_ASKING:
	sjmp	00109$
00105$:
;	/opt/contiki/core/net/ip/resolv.c:1389: ret = RESOLV_STATUS_RESOLVING;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x04
;	/opt/contiki/core/net/ip/resolv.c:1390: break;
;	/opt/contiki/core/net/ip/resolv.c:1392: case STATE_ERROR:
	sjmp	00109$
00106$:
;	/opt/contiki/core/net/ip/resolv.c:1393: ret = RESOLV_STATUS_NOT_FOUND;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x03
;	/opt/contiki/core/net/ip/resolv.c:1395: if(clock_seconds() > nameptr->expiration) {
	mov	r0,#_clock_seconds
	mov	r1,#(_clock_seconds >> 8)
	mov	r2,#(_clock_seconds >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xf9
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x06
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r3
	inc	r0
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	a,r6
	inc	r0
	subb	a,@r0
	jnc	00109$
;	/opt/contiki/core/net/ip/resolv.c:1396: ret = RESOLV_STATUS_UNCACHED;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x01
;	/opt/contiki/core/net/ip/resolv.c:1400: }
00109$:
;	/opt/contiki/core/net/ip/resolv.c:1402: if(ipaddr) {
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00114$
;	/opt/contiki/core/net/ip/resolv.c:1403: *ipaddr = &nameptr->ipaddr;
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	/opt/contiki/core/net/ip/resolv.c:1407: break;
	sjmp	00114$
00116$:
;	/opt/contiki/core/net/ip/resolv.c:1374: for(i = 0; i < RESOLV_ENTRIES; ++i) {
	mov	dptr,#_resolv_lookup_i_1_471
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00155$
00155$:
	jnc	00156$
	ljmp	00115$
00156$:
00114$:
;	/opt/contiki/core/net/ip/resolv.c:1435: return ret;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	mov	a,sp
	add	a,#0xF5
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resolv_found'
;------------------------------------------------------------
;ipaddr                    Allocated to stack - sp -10
;name                      Allocated to registers r5 r6 r7 
;i                         Allocated to stack - sp -4
;val                       Allocated to registers r7 
;append_str                Allocated to stack - sp -3
;sloc0                     Allocated to stack - sp +5
;sloc1                     Allocated to stack - sp +6
;sloc2                     Allocated to stack - sp +8
;------------------------------------------------------------
;	/opt/contiki/core/net/ip/resolv.c:1443: resolv_found(char *name, uip_ipaddr_t * ipaddr)
;	-----------------------------------------
;	 function resolv_found
;	-----------------------------------------
_resolv_found:
	mov	a,sp
	add	a,#0x05
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/ip/resolv.c:1446: if(strncasecmp(resolv_hostname, name, strlen(resolv_hostname)) == 0 &&
	mov	dptr,#_resolv_hostname
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_resolv_hostname
	mov	b,#0x00
	mov	r0,#_strncasecmp
	mov	r1,#(_strncasecmp >> 8)
	mov	r2,#(_strncasecmp >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jz	00152$
	ljmp	00112$
00152$:
;	/opt/contiki/core/net/ip/resolv.c:1447: ipaddr
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00153$
	ljmp	00112$
00153$:
;	/opt/contiki/core/net/ip/resolv.c:1449: && !uip_ds6_is_my_addr(ipaddr)
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_uip_ds6_addr_lookup
	mov	r1,#(_uip_ds6_addr_lookup >> 8)
	mov	r2,#(_uip_ds6_addr_lookup >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	jz	00154$
	ljmp	00112$
00154$:
;	/opt/contiki/core/net/ip/resolv.c:1456: if(mdns_state == MDNS_STATE_PROBING) {
	mov	dptr,#_mdns_state
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00155$
	sjmp	00156$
00155$:
	ljmp	00109$
00156$:
;	/opt/contiki/core/net/ip/resolv.c:1463: resolv_hostname[strlen(resolv_hostname) - 6] = 0;
	mov	dptr,#_resolv_hostname
	mov	b,#0x00
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	a,r2
	add	a,#0xFA
	add	a,#_resolv_hostname
	mov	dpl,a
	clr	a
	addc	a,#(_resolv_hostname >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	/opt/contiki/core/net/ip/resolv.c:1466: for(i = 0; i < 3; ++i) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,#0x00
00116$:
;	/opt/contiki/core/net/ip/resolv.c:1467: uint8_t val = uip_lladdr.addr[(UIP_LLADDR_LEN - 3) + i];
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	add	a,#_uip_lladdr
	mov	dpl,a
	clr	a
	addc	a,#(_uip_lladdr >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
;	/opt/contiki/core/net/ip/resolv.c:1469: char append_str[4] = "-XX";
	mov	a,sp
	add	a,#0xFD
	mov	r1,a
	mov	@r1,#0x2D
	mov	a,r1
	inc	a
	mov	r0,a
	mov	@r0,#0x58
	mov	a,#0x02
	add	a,r1
	mov	r6,a
	push	ar0
	mov	r0,ar6
	mov	@r0,#0x58
	mov	a,#0x03
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
	pop	ar0
;	/opt/contiki/core/net/ip/resolv.c:1471: append_str[2] = (((val & 0xF) > 9) ? 'a' : '0') + (val & 0xF);
	mov	a,#0x0F
	anl	a,r7
	mov  r3,a
	add	a,#0xff - 0x09
	jnc	00120$
	mov	r5,#0x61
	mov	r4,#0x00
	sjmp	00121$
00120$:
	mov	r5,#0x30
	mov	r4,#0x00
00121$:
	push	ar0
	mov	ar3,r5
	mov	a,#0x0F
	anl	a,r7
	mov	r2,a
	add	a,r3
	push	ar0
	mov	r0,ar6
	mov	@r0,a
	pop	ar0
;	/opt/contiki/core/net/ip/resolv.c:1472: val >>= 4;
	mov	a,r7
	swap	a
	anl	a,#0x0F
	mov	r7,a
;	/opt/contiki/core/net/ip/resolv.c:1473: append_str[1] = (((val & 0xF) > 9) ? 'a' : '0') + (val & 0xF);
	mov	a,#0x0F
	anl	a,r7
	mov	r3,a
	clr	c
	mov	a,#0x09
	subb	a,r3
	pop	ar0
	jnc	00122$
	mov	r2,#0x61
	mov	r3,#0x00
	sjmp	00123$
00122$:
	mov	r2,#0x30
	mov	r3,#0x00
00123$:
	mov	a,#0x0F
	anl	a,r7
	add	a,r2
	mov	@r0,a
;	/opt/contiki/core/net/ip/resolv.c:1475: sizeof(resolv_hostname) - strlen(resolv_hostname) - 1); /* -1 in order to fit the terminating null byte. */
	mov	dptr,#_resolv_hostname
	mov	b,#0x00
	push	ar1
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	pop	ar1
	mov	a,#0x20
	clr	c
	subb	a,r2
	mov	r7,a
	clr	a
	subb	a,r3
	mov	r6,a
;	/opt/contiki/core/net/ip/resolv.c:1474: strncat(resolv_hostname, append_str,
	mov	ar3,r1
	mov	r5,#0x00
	mov	r4,#0x40
	push	ar7
	push	ar6
	push	ar3
	push	ar5
	push	ar4
	mov	dptr,#_resolv_hostname
	mov	b,#0x00
	mov	r0,#_strncat
	mov	r1,#(_strncat >> 8)
	mov	r2,#(_strncat >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
;	/opt/contiki/core/net/ip/resolv.c:1466: for(i = 0; i < 3; ++i) {
	mov	sp,a
	add	a,#0xfc
	mov	r0,a
	inc	@r0
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	cjne	@r0,#0x03,00159$
00159$:
	jnc	00160$
	ljmp	00116$
00160$:
;	/opt/contiki/core/net/ip/resolv.c:1479: strncat(resolv_hostname, ".local", RESOLV_CONF_MAX_DOMAIN_NAME_SIZE);
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dptr,#_resolv_hostname
	mov	b,#0x00
	mov	r0,#_strncat
	mov	r1,#(_strncat >> 8)
	mov	r2,#(_strncat >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/ip/resolv.c:1481: start_name_collision_check(CLOCK_SECOND * 5);
	mov	dptr,#0x0280
	mov	r0,#_start_name_collision_check
	mov	r1,#(_start_name_collision_check >> 8)
	mov	r2,#(_start_name_collision_check >> 16)
	lcall	__sdcc_banked_call
	sjmp	00118$
00109$:
;	/opt/contiki/core/net/ip/resolv.c:1482: } else if(mdns_state == MDNS_STATE_READY) {
	cjne	r4,#0x02,00118$
;	/opt/contiki/core/net/ip/resolv.c:1488: start_name_collision_check(0);
	mov	dptr,#0x0000
	mov	r0,#_start_name_collision_check
	mov	r1,#(_start_name_collision_check >> 8)
	mov	r2,#(_start_name_collision_check >> 16)
	lcall	__sdcc_banked_call
	sjmp	00118$
00112$:
;	/opt/contiki/core/net/ip/resolv.c:1512: process_post(PROCESS_BROADCAST, resolv_event_found, name);
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_resolv_event_found
	movx	a,@dptr
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x00
	mov	r0,#_process_post
	mov	r1,#(_process_post >> 8)
	mov	r2,#(_process_post >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00118$:
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_resolv_mdns_addr:
	.db #0xFF	; 255
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFB	; 251
_mdns_prep_host_announce_packet_nsec_record_1_337:
	.byte #0x00,#0x2F	; 12032
	.byte #0x80,#0x01	; 384
	.byte #0x00,#0x00	; 0
	.byte #0x00,#0x78	; 30720
	.byte #0x00,#0x08	; 2048
	.db #0xC0	; 192
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
___str_0:
	.ascii ".local"
	.db 0x00
___str_1:
	.ascii "contiki"
	.db 0x00
_resolv_query_local_suffix_2_466:
	.ascii "local"
	.db 0x00
	.area XINIT   (CODE)
__xinit__resolv_conn:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__resolv_process:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _process_thread_resolv_process, (_process_thread_resolv_process >> 8), (_process_thread_resolv_process >> 16)
	.byte #0x00, #0x00
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__mdns_probe_process:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _process_thread_mdns_probe_process, (_process_thread_mdns_probe_process >> 8), (_process_thread_mdns_probe_process >> 16)
	.byte #0x00, #0x00
	.db #0x00	; 0
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
