;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Wed Nov 18 02:57:29 2015
;--------------------------------------------------------
	.module collect
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _collect_purge
	.globl _random_rand
	.globl _packetqueue_queuebuf
	.globl _packetqueue_len
	.globl _packetqueue_dequeue
	.globl _packetqueue_first
	.globl _packetqueue_enqueue_packetbuf
	.globl _collect_neighbor_rtmetric
	.globl _collect_neighbor_rtmetric_link_estimate
	.globl _collect_neighbor_set_congested
	.globl _collect_neighbor_tx_fail
	.globl _collect_neighbor_tx
	.globl _collect_neighbor_update_rtmetric
	.globl _collect_neighbor_list_purge
	.globl _collect_neighbor_list_best
	.globl _collect_neighbor_list_find
	.globl _collect_neighbor_list_add
	.globl _collect_neighbor_list_new
	.globl _collect_neighbor_list
	.globl _collect_neighbor_init
	.globl _list_item_next
	.globl _list_head
	.globl _list_init
	.globl _collect_link_estimate_num_estimates
	.globl _queuebuf_free
	.globl _queuebuf_to_packetbuf
	.globl _queuebuf_new_from_packetbuf
	.globl _unicast_send
	.globl _unicast_close
	.globl _unicast_open
	.globl _channel_set_attributes
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
	.globl _packetbuf_set_datalen
	.globl _packetbuf_datalen
	.globl _packetbuf_dataptr
	.globl _packetbuf_clear
	.globl _announcement_bump
	.globl _announcement_set_value
	.globl _announcement_remove
	.globl _announcement_register
	.globl _linkaddr_cmp
	.globl _linkaddr_copy
	.globl _ctimer_stop
	.globl _ctimer_set
	.globl _clock_time
	.globl _memset
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
	.globl _stats
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
	.globl _collect_open
	.globl _collect_set_keepalive
	.globl _collect_close
	.globl _collect_set_sink
	.globl _collect_send
	.globl _collect_depth
	.globl _collect_parent
	.globl _collect_print_stats
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
_recent_packets:
	.ds 192
_recent_packet_ptr:
	.ds 1
_send_queue_memb_memb_count:
	.ds 4
_send_queue_memb_memb_mem:
	.ds 136
_stats::
	.ds 56
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_send_queue_memb:
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
;Allocation info for local variables in function 'rtmetric_compute'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;n                         Allocated to registers r2 r3 r4 
;rtmetric                  Allocated to registers r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:235: rtmetric_compute(struct collect_conn *tc)
;	-----------------------------------------
;	 function rtmetric_compute
;	-----------------------------------------
_rtmetric_compute:
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
;	/opt/contiki/core/net/rime/collect.c:247: n = collect_neighbor_list_find(&tc->neighbor_list, &tc->parent);
	mov	a,#0xA2
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,#0x58
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_collect_neighbor_list_find
	mov	r1,#(_collect_neighbor_list_find >> 8)
	mov	r2,#(_collect_neighbor_list_find >> 16)
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
;	/opt/contiki/core/net/rime/collect.c:251: if(n == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	/opt/contiki/core/net/rime/collect.c:252: rtmetric = RTMETRIC_MAX;
	mov	r6,#0xFF
	mov	r7,#0x01
	sjmp	00103$
00102$:
;	/opt/contiki/core/net/rime/collect.c:256: rtmetric = collect_neighbor_rtmetric_link_estimate(n);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_collect_neighbor_rtmetric_link_estimate
	mov	r1,#(_collect_neighbor_rtmetric_link_estimate >> 8)
	mov	r2,#(_collect_neighbor_rtmetric_link_estimate >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
00103$:
;	/opt/contiki/core/net/rime/collect.c:259: return rtmetric;
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bump_advertisement'
;------------------------------------------------------------
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:268: bump_advertisement(struct collect_conn *c)
;	-----------------------------------------
;	 function bump_advertisement
;	-----------------------------------------
_bump_advertisement:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/collect.c:273: announcement_bump(&c->announcement);
	mov	a,#0x12
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_announcement_bump
	mov	r1,#(_announcement_bump >> 8)
	mov	r2,#(_announcement_bump >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'update_parent'
;------------------------------------------------------------
;tc                        Allocated to stack - sp -13
;current                   Allocated to registers r5 r6 r7 
;best                      Allocated to stack - sp -10
;previous_parent           Allocated to stack - sp -7
;sloc0                     Allocated to stack - sp +4
;sloc1                     Allocated to stack - sp +7
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:285: update_parent(struct collect_conn *tc)
;	-----------------------------------------
;	 function update_parent
;	-----------------------------------------
_update_parent:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0B
;	/opt/contiki/core/net/rime/collect.c:291: current = collect_neighbor_list_find(&tc->neighbor_list, &tc->parent);
	mov	sp,a
	add	a,#0xf3
	mov	r0,a
	mov	a,#0xA2
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x58
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
	mov	r0,#_collect_neighbor_list_find
	mov	r1,#(_collect_neighbor_list_find >> 8)
	mov	r2,#(_collect_neighbor_list_find >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:295: best = collect_neighbor_list_best(&tc->neighbor_list);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x58
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
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_collect_neighbor_list_best
	mov	r1,#(_collect_neighbor_list_best >> 8)
	mov	r2,#(_collect_neighbor_list_best >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rime/collect.c:314: if(best != NULL) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00134$
	ljmp	00118$
00134$:
;	/opt/contiki/core/net/rime/collect.c:321: if(current == NULL) {
	mov	a,r5
	orl	a,r6
	jz	00135$
	ljmp	00107$
00135$:
;	/opt/contiki/core/net/rime/collect.c:325: linkaddr_copy(&tc->parent, &best->addr);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0xA2
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:326: stats.foundroute++;
	mov	dptr,#_stats
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r7
	cjne	r7,#0x00,00136$
	inc	r6
	cjne	r6,#0x00,00136$
	inc	r5
	cjne	r5,#0x00,00136$
	inc	r4
00136$:
	mov	dptr,#_stats
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/rime/collect.c:327: bump_advertisement(tc);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_bump_advertisement
	mov	r1,#(_bump_advertisement >> 8)
	mov	r2,#(_bump_advertisement >> 16)
	lcall	__sdcc_banked_call
	ljmp	00120$
00107$:
;	/opt/contiki/core/net/rime/collect.c:332: if(collect_neighbor_rtmetric_link_estimate(best) +
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
	mov	r0,#_collect_neighbor_rtmetric_link_estimate
	mov	r1,#(_collect_neighbor_rtmetric_link_estimate >> 8)
	mov	r2,#(_collect_neighbor_rtmetric_link_estimate >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	add	a,#0x0C
	mov	r3,a
	clr	a
	addc	a,b
	mov	r4,a
;	/opt/contiki/core/net/rime/collect.c:334: collect_neighbor_rtmetric_link_estimate(current)) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	mov	r0,#_collect_neighbor_rtmetric_link_estimate
	mov	r1,#(_collect_neighbor_rtmetric_link_estimate >> 8)
	mov	r2,#(_collect_neighbor_rtmetric_link_estimate >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	clr	c
	mov	a,r3
	subb	a,r6
	mov	a,r4
	subb	a,r7
	jc	00137$
	ljmp	00120$
00137$:
;	/opt/contiki/core/net/rime/collect.c:342: linkaddr_copy(&tc->parent, &best->addr);
	mov	a,sp
	add	a,#0xf6
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
	add	a,#0xf3
	mov	r0,a
	mov	a,#0xA2
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:343: stats.newparent++;
	mov	dptr,#(_stats + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00138$
	inc	r5
	cjne	r5,#0x00,00138$
	inc	r6
	cjne	r6,#0x00,00138$
	inc	r7
00138$:
	mov	dptr,#(_stats + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/rime/collect.c:346: bump_advertisement(tc);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_bump_advertisement
	mov	r1,#(_bump_advertisement >> 8)
	mov	r2,#(_bump_advertisement >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:348: if(DRAW_TREE) {
	ljmp	00120$
;	/opt/contiki/core/net/rime/collect.c:379: if(!linkaddr_cmp(&previous_parent, &linkaddr_null)) {
00118$:
;	/opt/contiki/core/net/rime/collect.c:387: if(!linkaddr_cmp(&tc->parent, &linkaddr_null)) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0xA2
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#_linkaddr_null
	push	acc
	mov	a,#(_linkaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_linkaddr_cmp
	mov	r1,#(_linkaddr_cmp >> 8)
	mov	r2,#(_linkaddr_cmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00116$
;	/opt/contiki/core/net/rime/collect.c:391: stats.routelost++;
	mov	dptr,#(_stats + 0x0008)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00140$
	inc	r5
	cjne	r5,#0x00,00140$
	inc	r6
	cjne	r6,#0x00,00140$
	inc	r7
00140$:
	mov	dptr,#(_stats + 0x0008)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00116$:
;	/opt/contiki/core/net/rime/collect.c:393: linkaddr_copy(&tc->parent, &linkaddr_null);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0xA2
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#_linkaddr_null
	push	acc
	mov	a,#(_linkaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00120$:
	mov	a,sp
	add	a,#0xF2
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'update_rtmetric'
;------------------------------------------------------------
;tc                        Allocated to stack - sp -4
;old_rtmetric              Allocated to stack - sp -1
;new_rtmetric              Allocated to registers r6 r7 
;sloc0                     Allocated to stack - sp +3
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:406: update_rtmetric(struct collect_conn *tc)
;	-----------------------------------------
;	 function update_rtmetric
;	-----------------------------------------
_update_rtmetric:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	/opt/contiki/core/net/rime/collect.c:411: if(tc->rtmetric != RTMETRIC_SINK) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xB2
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
	orl	a,r7
	jnz	00129$
	ljmp	00112$
00129$:
;	/opt/contiki/core/net/rime/collect.c:415: old_rtmetric = tc->rtmetric;
	mov	r0,sp
	dec	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
;	/opt/contiki/core/net/rime/collect.c:418: update_parent(tc);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_update_parent
	mov	r1,#(_update_parent >> 8)
	mov	r2,#(_update_parent >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:421: new_rtmetric = rtmetric_compute(tc);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_rtmetric_compute
	mov	r1,#(_rtmetric_compute >> 8)
	mov	r2,#(_rtmetric_compute >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:424: if(new_rtmetric == RTMETRIC_SINK) {
	mov	a,r6
	orl	a,r7
	jnz	00102$
;	/opt/contiki/core/net/rime/collect.c:430: new_rtmetric = RTMETRIC_MAX;
	mov	r6,#0xFF
	mov	r7,#0x01
00102$:
;	/opt/contiki/core/net/rime/collect.c:435: tc->rtmetric = new_rtmetric;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:437: if(tc->is_router) {
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0xB9
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
	jz	00104$
;	/opt/contiki/core/net/rime/collect.c:440: announcement_set_value(&tc->announcement, tc->rtmetric);
	push	ar6
	push	ar7
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
	mov	a,#0x12
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	mov	r0,#_announcement_set_value
	mov	r1,#(_announcement_set_value >> 8)
	mov	r2,#(_announcement_set_value >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:456: if(old_rtmetric != new_rtmetric) {
	pop	ar7
	pop	ar6
;	/opt/contiki/core/net/rime/collect.c:440: announcement_set_value(&tc->announcement, tc->rtmetric);
00104$:
;	/opt/contiki/core/net/rime/collect.c:451: if(old_rtmetric == RTMETRIC_MAX && new_rtmetric != RTMETRIC_MAX) {
	mov	r0,sp
	dec	r0
	cjne	@r0,#0xFF,00112$
	inc	r0
	cjne	@r0,#0x01,00112$
	cjne	r6,#0xFF,00134$
	cjne	r7,#0x01,00134$
	sjmp	00112$
00134$:
;	/opt/contiki/core/net/rime/collect.c:453: send_queued_packet(tc);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_send_queued_packet
	mov	r1,#(_send_queued_packet >> 8)
	mov	r2,#(_send_queued_packet >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:456: if(old_rtmetric != new_rtmetric) {
00112$:
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enqueue_dummy_packet'
;------------------------------------------------------------
;rexmits                   Allocated to stack - sp -9
;c                         Allocated to stack - sp -4
;n                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -1
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:464: enqueue_dummy_packet(struct collect_conn *c, int rexmits)
;	-----------------------------------------
;	 function enqueue_dummy_packet
;	-----------------------------------------
_enqueue_dummy_packet:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	/opt/contiki/core/net/rime/collect.c:468: packetbuf_clear();
	mov	r0,#_packetbuf_clear
	mov	r1,#(_packetbuf_clear >> 8)
	mov	r2,#(_packetbuf_clear >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:469: packetbuf_set_attr(PACKETBUF_ATTR_EPACKET_ID, c->eseqno - 1);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xB8
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
	dec	r2
	cjne	r2,#0xFF,00108$
	dec	r4
00108$:
	push	ar2
	push	ar4
	mov	dpl,#0x17
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:470: packetbuf_set_addr(PACKETBUF_ADDR_ESENDER, &linkaddr_node_addr);
	mov	a,#_linkaddr_node_addr
	push	acc
	mov	a,#(_linkaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x1C
	mov	r0,#_packetbuf_set_addr
	mov	r1,#(_packetbuf_set_addr >> 8)
	mov	r2,#(_packetbuf_set_addr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:471: packetbuf_set_attr(PACKETBUF_ATTR_HOPS, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x15
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:472: packetbuf_set_attr(PACKETBUF_ATTR_TTL, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x16
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:473: packetbuf_set_attr(PACKETBUF_ATTR_MAX_REXMIT, rexmits);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x11
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:481: packetbuf_hdralloc(sizeof(struct data_msg_hdr));
	mov	dptr,#0x0004
	mov	r0,#_packetbuf_hdralloc
	mov	r1,#(_packetbuf_hdralloc >> 8)
	mov	r2,#(_packetbuf_hdralloc >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:483: n = collect_neighbor_list_find(&c->neighbor_list, &c->parent);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xA2
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x58
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
	mov	r0,#_collect_neighbor_list_find
	mov	r1,#(_collect_neighbor_list_find >> 8)
	mov	r2,#(_collect_neighbor_list_find >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:484: if(n != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	/opt/contiki/core/net/rime/collect.c:487: c);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	/opt/contiki/core/net/rime/collect.c:486: FORWARD_PACKET_LIFETIME_BASE * rexmits,
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	r1,sp
	dec	r1
	mov	a,@r0
	add	a,acc
	add	a,acc
	inc	r1
	mov	@r1,a
	dec	r1
	mov	@r1,#0x00
;	/opt/contiki/core/net/rime/collect.c:485: return packetqueue_enqueue_packetbuf(&c->send_queue,
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x52
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
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_packetqueue_enqueue_packetbuf
	mov	r1,#(_packetqueue_enqueue_packetbuf >> 8)
	mov	r2,#(_packetqueue_enqueue_packetbuf >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dpl,r6
	mov	dph,r7
	sjmp	00103$
00102$:
;	/opt/contiki/core/net/rime/collect.c:489: return 0;
	mov	dptr,#0x0000
00103$:
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;n                         Allocated to stack - sp -8
;c                         Allocated to stack - sp -2
;time                      Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:493: send_packet(struct collect_conn *c, struct collect_neighbor *n)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	push	dpl
	push	dph
	push	b
;	/opt/contiki/core/net/rime/collect.c:506: retransmit_not_sent_callback, c);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	/opt/contiki/core/net/rime/collect.c:505: ctimer_set(&c->retransmission_timer, time,
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x36
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
	mov	a,#_retransmit_not_sent_callback
	push	acc
	mov	a,#(_retransmit_not_sent_callback >> 8)
	push	acc
	mov	a,#(_retransmit_not_sent_callback >> 16)
	push	acc
	clr	a
	push	acc
	mov	a,#0x20
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_ctimer_set
	mov	r1,#(_ctimer_set >> 8)
	mov	r2,#(_ctimer_set >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	/opt/contiki/core/net/rime/collect.c:507: c->send_time = clock_time();
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xBA
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
	mov	r0,#_clock_time
	mov	r1,#(_clock_time >> 8)
	mov	r2,#(_clock_time >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:509: unicast_send(&c->unicast_conn, &n->addr);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_unicast_send
	mov	r1,#(_unicast_send >> 8)
	mov	r2,#(_unicast_send >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'proactive_probing_callback'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -18
;c                         Allocated to stack - sp -13
;i                         Allocated to registers r2 r3 r4 
;n                         Allocated to stack - sp -10
;current_parent            Allocated to stack - sp -7
;sloc0                     Allocated to stack - sp -15
;sloc1                     Allocated to stack - sp +4
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:513: proactive_probing_callback(void *ptr)
;	-----------------------------------------
;	 function proactive_probing_callback
;	-----------------------------------------
_proactive_probing_callback:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x10
;	/opt/contiki/core/net/rime/collect.c:515: struct collect_conn *c = ptr;
	mov	sp,a
	add	a,#0xee
	mov	r0,a
	mov	a,sp
	add	a,#0xf3
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
;	/opt/contiki/core/net/rime/collect.c:518: ctimer_set(&c->proactive_probing_timer, PROACTIVE_PROBING_INTERVAL,
	mov	r0,#_random_rand
	mov	r1,#(_random_rand >> 8)
	mov	r2,#(_random_rand >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	anl	a,#0x7F
	mov	r6,a
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	dptr,#0x003C
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x8C
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
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
	mov	a,#_proactive_probing_callback
	push	acc
	mov	a,#(_proactive_probing_callback >> 8)
	push	acc
	mov	a,#(_proactive_probing_callback >> 16)
	push	acc
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_ctimer_set
	mov	r1,#(_ctimer_set >> 8)
	mov	r2,#(_ctimer_set >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf8
;	/opt/contiki/core/net/rime/collect.c:523: if(c->rtmetric != RTMETRIC_SINK && c->rtmetric != RTMETRIC_MAX) {
	mov	sp,a
	add	a,#0xf3
	mov	r0,a
	mov	a,#0xB2
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
	jnz	00141$
	ljmp	00115$
00141$:
	cjne	r3,#0xFF,00142$
	cjne	r4,#0x01,00142$
	ljmp	00115$
00142$:
;	/opt/contiki/core/net/rime/collect.c:526: i = packetqueue_first(&c->send_queue);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x52
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
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_packetqueue_first
	mov	r1,#(_packetqueue_first >> 8)
	mov	r2,#(_packetqueue_first >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:527: if(i == NULL) {
	mov	a,r2
	orl	a,r3
	jz	00143$
	ljmp	00108$
00143$:
;	/opt/contiki/core/net/rime/collect.c:536: for(n = list_head(collect_neighbor_list(&c->neighbor_list));
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x58
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
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_collect_neighbor_list
	mov	r1,#(_collect_neighbor_list >> 8)
	mov	r2,#(_collect_neighbor_list >> 16)
	lcall	__sdcc_banked_call
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
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00113$:
;	/opt/contiki/core/net/rime/collect.c:537: n != NULL; n = list_item_next(n)) {
	mov	a,sp
	add	a,#0xf6
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
	jnz	00144$
	ljmp	00108$
00144$:
;	/opt/contiki/core/net/rime/collect.c:538: if(n->rtmetric + COLLECT_LINK_ESTIMATE_UNIT < c->rtmetric &&
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x0B
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
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x08
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	jc	00145$
	ljmp	00114$
00145$:
;	/opt/contiki/core/net/rime/collect.c:539: collect_link_estimate_num_estimates(&n->le) == 0) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x11
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
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_collect_link_estimate_num_estimates
	mov	r1,#(_collect_link_estimate_num_estimates >> 8)
	mov	r2,#(_collect_link_estimate_num_estimates >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00146$
	ljmp	00114$
00146$:
;	/opt/contiki/core/net/rime/collect.c:545: linkaddr_copy(&current_parent, &c->parent);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0xA2
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,sp
	add	a,#0xF9
	mov	@r0,a
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:546: linkaddr_copy(&c->parent, &n->addr);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0xA2
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:547: if(enqueue_dummy_packet(c, PROACTIVE_PROBING_REXMITS)) {
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_enqueue_dummy_packet
	mov	r1,#(_enqueue_dummy_packet >> 8)
	mov	r2,#(_enqueue_dummy_packet >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jz	00102$
;	/opt/contiki/core/net/rime/collect.c:548: send_queued_packet(c);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_send_queued_packet
	mov	r1,#(_send_queued_packet >> 8)
	mov	r2,#(_send_queued_packet >> 16)
	lcall	__sdcc_banked_call
00102$:
;	/opt/contiki/core/net/rime/collect.c:550: linkaddr_copy(&c->parent, &current_parent);
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar4,@r0
	mov	ar7,r4
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0xA2
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:551: return;
	sjmp	00115$
00114$:
;	/opt/contiki/core/net/rime/collect.c:537: n != NULL; n = list_item_next(n)) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
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
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	ljmp	00113$
00108$:
;	/opt/contiki/core/net/rime/collect.c:557: return;
00115$:
	mov	a,sp
	add	a,#0xED
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_queued_packet'
;------------------------------------------------------------
;c                         Allocated to stack - sp -12
;q                         Allocated to stack - sp -9
;n                         Allocated to stack - sp -6
;i                         Allocated to registers r7 r6 r5 
;hdr                       Allocated to stack - sp -3
;max_mac_rexmits           Allocated to registers r6 r7 
;sloc0                     Allocated to stack - sp -9
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:569: send_queued_packet(struct collect_conn *c)
;	-----------------------------------------
;	 function send_queued_packet
;	-----------------------------------------
_send_queued_packet:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0A
;	/opt/contiki/core/net/rime/collect.c:579: if(c->sending) {
	mov	sp,a
	add	a,#0xf4
	mov	r0,a
	mov	a,#0xB5
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
;	/opt/contiki/core/net/rime/collect.c:582: return;
	ljmp	00112$
00102$:
;	/opt/contiki/core/net/rime/collect.c:587: i = packetqueue_first(&c->send_queue);
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0x52
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
	mov	r0,#_packetqueue_first
	mov	r1,#(_packetqueue_first >> 8)
	mov	r2,#(_packetqueue_first >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	ar7,r2
	mov	ar6,r3
	mov	ar5,r4
;	/opt/contiki/core/net/rime/collect.c:588: if(i == NULL) {
	mov	a,r2
	orl	a,r3
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00104$
;	/opt/contiki/core/net/rime/collect.c:592: return;
	ljmp	00112$
00104$:
;	/opt/contiki/core/net/rime/collect.c:596: q = packetqueue_queuebuf(i);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_packetqueue_queuebuf
	mov	r1,#(_packetqueue_queuebuf >> 8)
	mov	r2,#(_packetqueue_queuebuf >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rime/collect.c:597: if(q != NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00136$
	ljmp	00112$
00136$:
;	/opt/contiki/core/net/rime/collect.c:599: queuebuf_to_packetbuf(q);
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
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_queuebuf_to_packetbuf
	mov	r1,#(_queuebuf_to_packetbuf >> 8)
	mov	r2,#(_queuebuf_to_packetbuf >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:603: n = collect_neighbor_list_find(&c->neighbor_list, &c->parent);
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,#0xA2
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
	mov	a,#0x58
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar4
	push	ar3
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_collect_neighbor_list_find
	mov	r1,#(_collect_neighbor_list_find >> 8)
	mov	r2,#(_collect_neighbor_list_find >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xf1
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
;	/opt/contiki/core/net/rime/collect.c:605: if(n != NULL) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00137$
	ljmp	00108$
00137$:
;	/opt/contiki/core/net/rime/collect.c:617: c->sending = 1;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:620: linkaddr_copy(&c->current_parent, &c->parent);
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0xA2
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0xAA
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:624: c->transmissions = 0;
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0xB6
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
;	/opt/contiki/core/net/rime/collect.c:629: c->max_rexmits = packetbuf_attr(PACKETBUF_ATTR_MAX_REXMIT);
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0xB7
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,#0x11
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:635: packetbuf_set_attr(PACKETBUF_ATTR_RELIABLE, 1);
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0F
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:637: max_mac_rexmits = c->max_rexmits > MAX_MAC_REXMITS?
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r7,a
	add	a,#0xff - 0x02
	jnc	00114$
;	/opt/contiki/core/net/rime/collect.c:638: MAX_MAC_REXMITS : c->max_rexmits;
	mov	r6,#0x02
	sjmp	00115$
00114$:
	mov	ar6,r7
00115$:
	mov	r7,#0x00
;	/opt/contiki/core/net/rime/collect.c:639: packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS, max_mac_rexmits);
	push	ar6
	push	ar7
	mov	dpl,#0x09
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:640: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, c->seqno);
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0xB4
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
	mov	r7,#0x00
	push	ar5
	push	ar7
	mov	dpl,#0x0E
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:642: stats.datasent++;
	mov	dptr,#(_stats + 0x0010)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00139$
	inc	r5
	cjne	r5,#0x00,00139$
	inc	r6
	cjne	r6,#0x00,00139$
	inc	r7
00139$:
	mov	dptr,#(_stats + 0x0010)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/rime/collect.c:646: memset(&hdr, 0, sizeof(hdr));
	mov	a,sp
	add	a,#0xFD
	mov	r7,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
	mov	a,#0x04
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
;	/opt/contiki/core/net/rime/collect.c:647: hdr.rtmetric = c->rtmetric;
	mov	a,#0x02
	add	a,r7
	mov	r1,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0xB2
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
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
;	/opt/contiki/core/net/rime/collect.c:648: memcpy(packetbuf_dataptr(), &hdr, sizeof(struct data_msg_hdr));
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_packetbuf_dataptr
	mov	r1,#(_packetbuf_dataptr >> 8)
	mov	r2,#(_packetbuf_dataptr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
;	/opt/contiki/core/net/rime/collect.c:651: send_packet(c, n);
	mov	sp,a
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
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_send_packet
	mov	r1,#(_send_packet >> 8)
	mov	r2,#(_send_packet >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	sjmp	00112$
00108$:
;	/opt/contiki/core/net/rime/collect.c:661: if(c->is_router) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0xB9
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
	jz	00112$
;	/opt/contiki/core/net/rime/collect.c:662: announcement_set_value(&c->announcement, RTMETRIC_MAX);
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0xFF
	push	acc
	mov	a,#0x01
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_announcement_set_value
	mov	r1,#(_announcement_set_value >> 8)
	mov	r2,#(_announcement_set_value >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:663: announcement_bump(&c->announcement);
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x12
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
	mov	r0,#_announcement_bump
	mov	r1,#(_announcement_bump >> 8)
	mov	r2,#(_announcement_bump >> 16)
	lcall	__sdcc_banked_call
00112$:
	mov	a,sp
	add	a,#0xF3
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'retransmit_current_packet'
;------------------------------------------------------------
;c                         Allocated to stack - sp -9
;q                         Allocated to registers r2 r3 r4 
;n                         Allocated to stack - sp -6
;i                         Allocated to registers r2 r3 r4 
;hdr                       Allocated to stack - sp -3
;max_mac_rexmits           Allocated to registers 
;sloc0                     Allocated to stack - sp +9
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:677: retransmit_current_packet(struct collect_conn *c)
;	-----------------------------------------
;	 function retransmit_current_packet
;	-----------------------------------------
_retransmit_current_packet:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
;	/opt/contiki/core/net/rime/collect.c:687: i = packetqueue_first(&c->send_queue);
	mov	sp,a
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x52
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
	mov	r0,#_packetqueue_first
	mov	r1,#(_packetqueue_first >> 8)
	mov	r2,#(_packetqueue_first >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	ar2,r7
	mov	ar3,r6
	mov	ar4,r5
;	/opt/contiki/core/net/rime/collect.c:688: if(i == NULL) {
	mov	a,r7
	orl	a,r6
	jnz	00102$
;	/opt/contiki/core/net/rime/collect.c:692: return;
	ljmp	00109$
00102$:
;	/opt/contiki/core/net/rime/collect.c:696: q = packetqueue_queuebuf(i);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_packetqueue_queuebuf
	mov	r1,#(_packetqueue_queuebuf >> 8)
	mov	r2,#(_packetqueue_queuebuf >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	ar2,r7
	mov	ar3,r6
	mov	ar4,r5
;	/opt/contiki/core/net/rime/collect.c:697: if(q != NULL) {
	mov	a,r7
	orl	a,r6
	jnz	00129$
	ljmp	00109$
00129$:
;	/opt/contiki/core/net/rime/collect.c:699: update_rtmetric(c);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_update_rtmetric
	mov	r1,#(_update_rtmetric >> 8)
	mov	r2,#(_update_rtmetric >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:702: queuebuf_to_packetbuf(q);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_queuebuf_to_packetbuf
	mov	r1,#(_queuebuf_to_packetbuf >> 8)
	mov	r2,#(_queuebuf_to_packetbuf >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:708: if(!linkaddr_cmp(&c->current_parent, &c->parent)) {
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xA2
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xAA
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
	mov	r0,#_linkaddr_cmp
	mov	r1,#(_linkaddr_cmp >> 8)
	mov	r2,#(_linkaddr_cmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00104$
;	/opt/contiki/core/net/rime/collect.c:721: linkaddr_copy(&c->current_parent, &c->parent);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xA2
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
	mov	a,#0xAA
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:722: c->transmissions = 0;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xB6
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
00104$:
;	/opt/contiki/core/net/rime/collect.c:724: n = collect_neighbor_list_find(&c->neighbor_list, &c->current_parent);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xAA
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
	mov	a,#0x58
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_collect_neighbor_list_find
	mov	r1,#(_collect_neighbor_list_find >> 8)
	mov	r2,#(_collect_neighbor_list_find >> 16)
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
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:726: if(n != NULL) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00131$
	ljmp	00109$
00131$:
;	/opt/contiki/core/net/rime/collect.c:738: c->sending = 1;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xB5
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
;	/opt/contiki/core/net/rime/collect.c:739: packetbuf_set_attr(PACKETBUF_ATTR_RELIABLE, 1);
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0F
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:740: max_mac_rexmits = c->max_rexmits - c->transmissions > MAX_MAC_REXMITS?
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xB7
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
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xB6
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
	mov	r5,#0x00
	mov	a,r2
	clr	c
	subb	a,r3
	mov	r6,a
	mov	a,r4
	subb	a,r5
	mov	r7,a
	clr	c
	mov	a,#0x02
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
;	/opt/contiki/core/net/rime/collect.c:741: MAX_MAC_REXMITS : c->max_rexmits - c->transmissions;
	mov	r7,#0x02
	mov	r6,#0x00
	sjmp	00112$
00111$:
	mov	a,r2
	clr	c
	subb	a,r3
	mov	r7,a
	mov	a,r4
	subb	a,r5
	mov	r6,a
00112$:
;	/opt/contiki/core/net/rime/collect.c:742: packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS, max_mac_rexmits);
	push	ar7
	push	ar6
	mov	dpl,#0x09
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:743: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, c->seqno);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xB4
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
	push	ar2
	push	ar4
	mov	dpl,#0x0E
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:747: memset(&hdr, 0, sizeof(hdr));
	mov	a,sp
	add	a,#0xFD
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	r7,#0x40
	push	ar4
	mov	a,#0x04
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
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:748: hdr.rtmetric = c->rtmetric;
	mov	a,#0x02
	add	a,r4
	mov	r1,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xB2
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
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
;	/opt/contiki/core/net/rime/collect.c:749: memcpy(packetbuf_dataptr(), &hdr, sizeof(struct data_msg_hdr));
	mov	r7,#0x00
	mov	r6,#0x40
	push	ar7
	push	ar6
	push	ar4
	mov	r0,#_packetbuf_dataptr
	mov	r1,#(_packetbuf_dataptr >> 8)
	mov	r2,#(_packetbuf_dataptr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	pop	ar4
	pop	ar6
	pop	ar7
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar7
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
;	/opt/contiki/core/net/rime/collect.c:752: send_packet(c, n);
	mov	sp,a
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
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_send_packet
	mov	r1,#(_send_packet >> 8)
	mov	r2,#(_send_packet >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00109$:
	mov	a,sp
	add	a,#0xF6
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_next_packet'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:759: send_next_packet(struct collect_conn *tc)
;	-----------------------------------------
;	 function send_next_packet
;	-----------------------------------------
_send_next_packet:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/collect.c:762: packetqueue_dequeue(&tc->send_queue);
	mov	a,#0x52
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
	mov	r0,#_packetqueue_dequeue
	mov	r1,#(_packetqueue_dequeue >> 8)
	mov	r2,#(_packetqueue_dequeue >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:763: tc->seqno = (tc->seqno + 1) % (1 << COLLECT_PACKET_ID_BITS);
	mov	a,#0xB4
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
	mov	r0,a
	mov	r1,#0x00
	inc	r0
	cjne	r0,#0x00,00103$
	inc	r1
00103$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	clr	a
	push	acc
	inc	a
	push	acc
	mov	dpl,r0
	mov	dph,r1
	lcall	__modsint
	mov	r0,dpl
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:766: ctimer_stop(&tc->retransmission_timer);
	mov	a,#0x36
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
;	/opt/contiki/core/net/rime/collect.c:767: tc->sending = 0;
	mov	a,#0xB5
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:768: tc->transmissions = 0;
	mov	a,#0xB6
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:774: send_queued_packet(tc);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_send_queued_packet
	mov	r1,#(_send_queued_packet >> 8)
	mov	r2,#(_send_queued_packet >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handle_ack'
;------------------------------------------------------------
;tc                        Allocated to stack - sp -8
;msg                       Allocated to stack - sp -3
;n                         Allocated to registers r4 r3 r2 
;sloc0                     Allocated to stack - sp -5
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:778: handle_ack(struct collect_conn *tc)
;	-----------------------------------------
;	 function handle_ack
;	-----------------------------------------
_handle_ack:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
;	/opt/contiki/core/net/rime/collect.c:789: &tc->current_parent) &&
	mov	sp,a
	add	a,#0xf8
	mov	r0,a
	mov	a,#0xAA
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	/opt/contiki/core/net/rime/collect.c:788: if(linkaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_SENDER),
	mov	dpl,#0x1A
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_linkaddr_cmp
	mov	r1,#(_linkaddr_cmp >> 8)
	mov	r2,#(_linkaddr_cmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00150$
	ljmp	00118$
00150$:
;	/opt/contiki/core/net/rime/collect.c:790: packetbuf_attr(PACKETBUF_ATTR_PACKET_ID) == tc->seqno) {
	mov	dpl,#0x0E
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0xB4
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
	mov	r5,#0x00
	mov	a,r6
	cjne	a,ar3,00151$
	mov	a,r7
	cjne	a,ar5,00151$
	sjmp	00152$
00151$:
	ljmp	00118$
00152$:
;	/opt/contiki/core/net/rime/collect.c:798: stats.ackrecv++;
	mov	dptr,#(_stats + 0x0018)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00153$
	inc	r5
	cjne	r5,#0x00,00153$
	inc	r6
	cjne	r6,#0x00,00153$
	inc	r7
00153$:
	mov	dptr,#(_stats + 0x0018)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/rime/collect.c:799: memcpy(&msg, packetbuf_dataptr(), sizeof(struct ack_msg));
	mov	r0,#_packetbuf_dataptr
	mov	r1,#(_packetbuf_dataptr >> 8)
	mov	r2,#(_packetbuf_dataptr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xFD
	mov	r1,a
	mov	r2,a
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar1
	mov	a,#0x04
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
	pop	ar1
;	/opt/contiki/core/net/rime/collect.c:807: if(tc->transmissions == 0) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0xB6
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
	jnz	00102$
;	/opt/contiki/core/net/rime/collect.c:808: tc->transmissions = MAX_MAC_REXMITS;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
00102$:
;	/opt/contiki/core/net/rime/collect.c:813: packetbuf_addr(PACKETBUF_ADDR_SENDER));
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,#0x1A
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:812: n = collect_neighbor_list_find(&tc->neighbor_list,
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x58
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_collect_neighbor_list_find
	mov	r1,#(_collect_neighbor_list_find >> 8)
	mov	r2,#(_collect_neighbor_list_find >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	mov	ar4,r5
	mov	ar3,r6
	mov	ar2,r7
;	/opt/contiki/core/net/rime/collect.c:815: if(n != NULL) {
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,r4
	orl	a,r3
	jnz	00155$
	ljmp	00104$
00155$:
;	/opt/contiki/core/net/rime/collect.c:816: collect_neighbor_tx(n, tc->transmissions);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar5
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	r0,#_collect_neighbor_tx
	mov	r1,#(_collect_neighbor_tx >> 8)
	mov	r2,#(_collect_neighbor_tx >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:817: collect_neighbor_update_rtmetric(n, msg.rtmetric);
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	r0,#_collect_neighbor_update_rtmetric
	mov	r1,#(_collect_neighbor_update_rtmetric >> 8)
	mov	r2,#(_collect_neighbor_update_rtmetric >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:818: update_rtmetric(tc);
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
	push	ar1
	mov	r0,#_update_rtmetric
	mov	r1,#(_update_rtmetric >> 8)
	mov	r2,#(_update_rtmetric >> 16)
	lcall	__sdcc_banked_call
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
00104$:
;	/opt/contiki/core/net/rime/collect.c:834: if(msg.flags & ACK_FLAGS_CONGESTED) {
	mov	a,@r1
	mov	r7,a
	jb	acc.7,00156$
	ljmp	00108$
00156$:
;	/opt/contiki/core/net/rime/collect.c:836: if(n != NULL) {
	mov	a,r4
	orl	a,r3
	jz	00106$
;	/opt/contiki/core/net/rime/collect.c:837: collect_neighbor_set_congested(n);
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	mov	r0,#_collect_neighbor_set_congested
	mov	r1,#(_collect_neighbor_set_congested >> 8)
	mov	r2,#(_collect_neighbor_set_congested >> 16)
	lcall	__sdcc_banked_call
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:838: collect_neighbor_tx(n, tc->max_rexmits * 2);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0xB7
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
	mov	b,#0x02
	mul	ab
	mov	r5,a
	mov	r7,b
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar5
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	r0,#_collect_neighbor_tx
	mov	r1,#(_collect_neighbor_tx >> 8)
	mov	r2,#(_collect_neighbor_tx >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
00106$:
;	/opt/contiki/core/net/rime/collect.c:840: update_rtmetric(tc);
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
	push	ar1
	mov	r0,#_update_rtmetric
	mov	r1,#(_update_rtmetric >> 8)
	mov	r2,#(_update_rtmetric >> 16)
	lcall	__sdcc_banked_call
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
00108$:
;	/opt/contiki/core/net/rime/collect.c:842: if((msg.flags & ACK_FLAGS_DROPPED) == 0) {
	mov	a,@r1
	mov	r7,a
	jb	acc.6,00113$
;	/opt/contiki/core/net/rime/collect.c:844: send_next_packet(tc);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar1
	mov	r0,#_send_next_packet
	mov	r1,#(_send_next_packet >> 8)
	mov	r2,#(_send_next_packet >> 16)
	lcall	__sdcc_banked_call
	pop	ar1
	ljmp	00114$
00113$:
;	/opt/contiki/core/net/rime/collect.c:849: if((msg.flags & ACK_FLAGS_LIFETIME_EXCEEDED)) {
	mov	a,r7
	jnb	acc.5,00110$
;	/opt/contiki/core/net/rime/collect.c:850: send_next_packet(tc);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar1
	mov	r0,#_send_next_packet
	mov	r1,#(_send_next_packet >> 8)
	mov	r2,#(_send_next_packet >> 16)
	lcall	__sdcc_banked_call
	pop	ar1
	ljmp	00114$
00110$:
;	/opt/contiki/core/net/rime/collect.c:856: collect_neighbor_tx(n, tc->max_rexmits);
	push	ar1
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0xB7
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
	mov	r7,#0x00
	push	ar1
	push	ar5
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	r0,#_collect_neighbor_tx
	mov	r1,#(_collect_neighbor_tx >> 8)
	mov	r2,#(_collect_neighbor_tx >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar1
;	/opt/contiki/core/net/rime/collect.c:857: update_rtmetric(tc);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar1
	mov	r0,#_update_rtmetric
	mov	r1,#(_update_rtmetric >> 8)
	mov	r2,#(_update_rtmetric >> 16)
	lcall	__sdcc_banked_call
	pop	ar1
;	/opt/contiki/core/net/rime/collect.c:861: retransmit_callback, tc);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	/opt/contiki/core/net/rime/collect.c:860: REXMIT_TIME + (random_rand() % (REXMIT_TIME)),
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	mov	r0,#_random_rand
	mov	r1,#(_random_rand >> 8)
	mov	r2,#(_random_rand >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r3,a
	anl	b,#0x01
	mov	r4,b
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar3
	mov	a,#0x02
	add	a,r4
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/rime/collect.c:859: ctimer_set(&tc->retransmission_timer,
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x36
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar1
	push	ar5
	push	ar6
	push	ar7
	mov	a,#_retransmit_callback
	push	acc
	mov	a,#(_retransmit_callback >> 8)
	push	acc
	mov	a,#(_retransmit_callback >> 16)
	push	acc
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_ctimer_set
	mov	r1,#(_ctimer_set >> 8)
	mov	r2,#(_ctimer_set >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar1
;	/opt/contiki/core/net/rime/collect.c:872: stats.badack++;
	pop	ar1
;	/opt/contiki/core/net/rime/collect.c:859: ctimer_set(&tc->retransmission_timer,
00114$:
;	/opt/contiki/core/net/rime/collect.c:867: if(msg.flags & ACK_FLAGS_RTMETRIC_NEEDS_UPDATE) {
	mov	a,@r1
	mov	r7,a
	jnb	acc.4,00116$
;	/opt/contiki/core/net/rime/collect.c:868: bump_advertisement(tc);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_bump_advertisement
	mov	r1,#(_bump_advertisement >> 8)
	mov	r2,#(_bump_advertisement >> 16)
	lcall	__sdcc_banked_call
00116$:
;	/opt/contiki/core/net/rime/collect.c:870: set_keepalive_timer(tc);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_set_keepalive_timer
	mov	r1,#(_set_keepalive_timer >> 8)
	mov	r2,#(_set_keepalive_timer >> 16)
	lcall	__sdcc_banked_call
	sjmp	00121$
00118$:
;	/opt/contiki/core/net/rime/collect.c:872: stats.badack++;
	mov	dptr,#(_stats + 0x001c)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00161$
	inc	r5
	cjne	r5,#0x00,00161$
	inc	r6
	cjne	r6,#0x00,00161$
	inc	r7
00161$:
	mov	dptr,#(_stats + 0x001c)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00121$:
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_ack'
;------------------------------------------------------------
;to                        Allocated to stack - sp -13
;flags                     Allocated to stack - sp -15
;tc                        Allocated to stack - sp -7
;ack                       Allocated to stack - sp -4
;packet_seqno              Allocated to stack - sp -1
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:877: send_ack(struct collect_conn *tc, const linkaddr_t *to, int flags)
;	-----------------------------------------
;	 function send_ack
;	-----------------------------------------
_send_ack:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	/opt/contiki/core/net/rime/collect.c:880: uint16_t packet_seqno = packetbuf_attr(PACKETBUF_ATTR_PACKET_ID);
	mov	dpl,#0x0E
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	r0,sp
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/net/rime/collect.c:882: packetbuf_clear();
	mov	r0,#_packetbuf_clear
	mov	r1,#(_packetbuf_clear >> 8)
	mov	r2,#(_packetbuf_clear >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:883: packetbuf_set_datalen(sizeof(struct ack_msg));
	mov	dptr,#0x0004
	mov	r0,#_packetbuf_set_datalen
	mov	r1,#(_packetbuf_set_datalen >> 8)
	mov	r2,#(_packetbuf_set_datalen >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:884: ack = packetbuf_dataptr();
	mov	r0,#_packetbuf_dataptr
	mov	r1,#(_packetbuf_dataptr >> 8)
	mov	r2,#(_packetbuf_dataptr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/net/rime/collect.c:885: memset(ack, 0, sizeof(struct ack_msg));
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
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
;	/opt/contiki/core/net/rime/collect.c:886: ack->rtmetric = tc->rtmetric;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0xB2
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:887: ack->flags = flags;
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:889: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, to);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x1B
	mov	r0,#_packetbuf_set_addr
	mov	r1,#(_packetbuf_set_addr >> 8)
	mov	r2,#(_packetbuf_set_addr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:890: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_TYPE, PACKETBUF_ATTR_PACKET_TYPE_ACK);
	mov	a,#0x01
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
;	/opt/contiki/core/net/rime/collect.c:891: packetbuf_set_attr(PACKETBUF_ATTR_RELIABLE, 0);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x0F
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:892: packetbuf_set_attr(PACKETBUF_ATTR_ERELIABLE, 0);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x19
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:893: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, packet_seqno);
	mov	r0,sp
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x0E
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:894: packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS, MAX_ACK_MAC_REXMITS);
	mov	a,#0x05
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
;	/opt/contiki/core/net/rime/collect.c:895: unicast_send(&tc->unicast_conn, to);
	mov	a,sp
	add	a,#0xf3
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
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_unicast_send
	mov	r1,#(_unicast_send >> 8)
	mov	r2,#(_unicast_send >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:902: RIMESTATS_ADD(acktx);
	mov	dptr,#(_rimestats + 0x0014)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
00103$:
	mov	dptr,#(_rimestats + 0x0014)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/rime/collect.c:903: stats.acksent++;
	mov	dptr,#(_stats + 0x000c)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00104$
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	cjne	r6,#0x00,00104$
	inc	r7
00104$:
	mov	dptr,#(_stats + 0x000c)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'add_packet_to_recent_packets'
;------------------------------------------------------------
;tc                        Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp +1
;sloc1                     Allocated to stack - sp +3
;sloc2                     Allocated to stack - sp +4
;sloc3                     Allocated to stack - sp +5
;sloc4                     Allocated to stack - sp +7
;sloc5                     Allocated to stack - sp +9
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:907: add_packet_to_recent_packets(struct collect_conn *tc)
;	-----------------------------------------
;	 function add_packet_to_recent_packets
;	-----------------------------------------
_add_packet_to_recent_packets:
	push	dpl
	push	dph
	push	b
;	/opt/contiki/core/net/rime/collect.c:913: if(packetbuf_datalen() > sizeof(struct data_msg_hdr)) {
	mov	r0,#_packetbuf_datalen
	mov	r1,#(_packetbuf_datalen >> 8)
	mov	r2,#(_packetbuf_datalen >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	clr	c
	mov	a,#0x04
	subb	a,r3
	clr	a
	subb	a,r4
	jc	00108$
	ljmp	00103$
00108$:
;	/opt/contiki/core/net/rime/collect.c:914: recent_packets[recent_packet_ptr].eseqno =
	mov	dptr,#_recent_packet_ptr
	movx	a,@dptr
	mov	b,#0x0C
	mul	ab
	add	a,#_recent_packets
	mov	r3,a
	mov	a,#(_recent_packets >> 8)
	addc	a,b
	mov	r4,a
	mov	a,#0x0B
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
;	/opt/contiki/core/net/rime/collect.c:915: packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID);
	mov	dpl,#0x17
	push	ar4
	push	ar3
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	pop	ar3
	pop	ar4
	mov	dpl,r3
	mov	dph,r4
	mov	a,r7
	movx	@dptr,a
;	/opt/contiki/core/net/rime/collect.c:917: packetbuf_addr(PACKETBUF_ADDR_ESENDER));
	mov	dpl,#0x1C
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	/opt/contiki/core/net/rime/collect.c:916: linkaddr_copy(&recent_packets[recent_packet_ptr].originator,
	mov	dptr,#_recent_packet_ptr
	movx	a,@dptr
	mov	b,#0x0C
	mul	ab
	add	a,#_recent_packets
	mov	r7,a
	mov	a,#(_recent_packets >> 8)
	addc	a,b
	mov	r6,a
	mov	a,#0x03
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r5,#0x00
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:918: recent_packets[recent_packet_ptr].conn = tc;
	mov	dptr,#_recent_packet_ptr
	movx	a,@dptr
	mov	b,#0x0C
	mul	ab
	add	a,#_recent_packets
	mov	dpl,a
	mov	a,#(_recent_packets >> 8)
	addc	a,b
	mov	dph,a
	mov	r0,sp
	dec	r0
	dec	r0
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
;	/opt/contiki/core/net/rime/collect.c:919: recent_packet_ptr = (recent_packet_ptr + 1) % NUM_RECENT_PACKETS;
	mov	dptr,#_recent_packet_ptr
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	inc	r6
	cjne	r6,#0x00,00109$
	inc	r5
00109$:
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r5
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	mov	dptr,#_recent_packet_ptr
	mov	a,r5
	movx	@dptr,a
00103$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'node_packet_received'
;------------------------------------------------------------
;from                      Allocated to stack - sp -33
;c                         Allocated to registers r5 r6 r7 
;tc                        Allocated to stack - sp -17
;i                         Allocated to stack - sp -14
;hdr                       Allocated to stack - sp -12
;ackflags                  Allocated to stack - sp -8
;n                         Allocated to registers r2 r3 r4 
;ack_to                    Allocated to stack - sp -7
;q                         Allocated to registers r7 r6 r5 
;sloc0                     Allocated to stack - sp -27
;sloc1                     Allocated to stack - sp -26
;sloc2                     Allocated to stack - sp -23
;sloc3                     Allocated to stack - sp +6
;sloc4                     Allocated to stack - sp -21
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:924: node_packet_received(struct unicast_conn *c, const linkaddr_t *from)
;	-----------------------------------------
;	 function node_packet_received
;	-----------------------------------------
_node_packet_received:
	mov	a,sp
	add	a,#0x1C
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/collect.c:926: struct collect_conn *tc = (struct collect_conn *)
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rime/collect.c:930: uint8_t ackflags = 0;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,#0x00
;	/opt/contiki/core/net/rime/collect.c:933: memcpy(&hdr, packetbuf_dataptr(), sizeof(struct data_msg_hdr));
	mov	r0,#_packetbuf_dataptr
	mov	r1,#(_packetbuf_dataptr >> 8)
	mov	r2,#(_packetbuf_dataptr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	a,sp
	add	a,#0xF4
	mov	@r0,a
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	mov	a,#0x04
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
;	/opt/contiki/core/net/rime/collect.c:940: packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x1A
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/collect.c:939: n = collect_neighbor_list_find(&tc->neighbor_list,
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,#0x58
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_collect_neighbor_list_find
	mov	r1,#(_collect_neighbor_list_find >> 8)
	mov	r2,#(_collect_neighbor_list_find >> 16)
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
;	/opt/contiki/core/net/rime/collect.c:941: if(n != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	/opt/contiki/core/net/rime/collect.c:942: collect_neighbor_update_rtmetric(n, hdr.rtmetric);
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_collect_neighbor_update_rtmetric
	mov	r1,#(_collect_neighbor_update_rtmetric >> 8)
	mov	r2,#(_collect_neighbor_update_rtmetric >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:943: update_rtmetric(tc);
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_update_rtmetric
	mov	r1,#(_update_rtmetric >> 8)
	mov	r2,#(_update_rtmetric >> 16)
	lcall	__sdcc_banked_call
00102$:
;	/opt/contiki/core/net/rime/collect.c:950: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0D
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00198$
	ljmp	00134$
00198$:
;	/opt/contiki/core/net/rime/collect.c:957: stats.datarecv++;
	mov	dptr,#(_stats + 0x0014)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00199$
	inc	r5
	cjne	r5,#0x00,00199$
	inc	r6
	cjne	r6,#0x00,00199$
	inc	r7
00199$:
	mov	dptr,#(_stats + 0x0014)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/rime/collect.c:961: linkaddr_copy(&ack_to, packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x1A
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xe6
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	mov	a,sp
	add	a,#0xF9
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	r7,#0x40
	push	ar4
	mov	a,sp
	add	a,#0xe5
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
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:971: if(packetqueue_len(&tc->send_queue) >= MAX_SENDING_QUEUE / 2) {
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,#0x52
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
	push	ar4
	mov	r0,#_packetqueue_len
	mov	r1,#(_packetqueue_len >> 8)
	mov	r2,#(_packetqueue_len >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00146$
;	/opt/contiki/core/net/rime/collect.c:972: ackflags |= ACK_FLAGS_CONGESTED;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,#0x80
;	/opt/contiki/core/net/rime/collect.c:975: for(i = 0; i < NUM_RECENT_PACKETS; i++) {
00146$:
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r3,#0x00
	mov	r5,#0x00
00136$:
;	/opt/contiki/core/net/rime/collect.c:976: if(recent_packets[i].conn == tc &&
	push	ar4
	mov	a,r3
	add	a,#_recent_packets
	mov	dpl,a
	mov	a,r5
	addc	a,#(_recent_packets >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	push	ar2
	push	ar4
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
	jz	00202$
	pop	ar4
	ljmp	00137$
00202$:
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:977: recent_packets[i].eseqno == packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID) &&
	push	ar4
	mov	a,r3
	add	a,#_recent_packets
	mov	r6,a
	mov	a,r5
	addc	a,#(_recent_packets >> 8)
	mov	r7,a
	mov	a,#0x0B
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	mov	dpl,#0x17
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xe2
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	a,@r0
	cjne	a,ar2,00203$
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00203$
	sjmp	00204$
00203$:
	pop	ar4
	ljmp	00137$
00204$:
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:979: packetbuf_addr(PACKETBUF_ADDR_ESENDER))) {
	push	ar4
	mov	dpl,#0x1C
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xe0
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:978: linkaddr_cmp(&recent_packets[i].originator,
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#0x00
	push	ar5
	push	ar4
	push	ar3
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
	mov	dpl,r6
	mov	dph,r7
	mov	b,r4
	mov	r0,#_linkaddr_cmp
	mov	r1,#(_linkaddr_cmp >> 8)
	mov	r2,#(_linkaddr_cmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar4
	mov	a,r6
	orl	a,r7
	jz	00137$
;	/opt/contiki/core/net/rime/collect.c:988: send_ack(tc, &ack_to, ackflags);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar5,@r0
	mov	r3,#0x00
	mov	ar2,r4
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_send_ack
	mov	r1,#(_send_ack >> 8)
	mov	r2,#(_send_ack >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/rime/collect.c:989: stats.duprecv++;
	mov	dptr,#(_stats + 0x0020)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r7
	cjne	r7,#0x00,00206$
	inc	r6
	cjne	r6,#0x00,00206$
	inc	r5
	cjne	r5,#0x00,00206$
	inc	r4
00206$:
	mov	dptr,#(_stats + 0x0020)
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/rime/collect.c:990: return;
	ljmp	00138$
00137$:
;	/opt/contiki/core/net/rime/collect.c:975: for(i = 0; i < NUM_RECENT_PACKETS; i++) {
	mov	a,#0x0C
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00207$
	inc	r0
	inc	@r0
00207$:
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x10
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00208$
	ljmp	00136$
00208$:
;	/opt/contiki/core/net/rime/collect.c:996: if(tc->rtmetric == RTMETRIC_SINK) {
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,#0xB2
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
	orl	a,r2
	jz	00209$
	ljmp	00129$
00209$:
;	/opt/contiki/core/net/rime/collect.c:999: add_packet_to_recent_packets(tc);
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	mov	r0,#_add_packet_to_recent_packets
	mov	r1,#(_add_packet_to_recent_packets >> 8)
	mov	r2,#(_add_packet_to_recent_packets >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:1003: q = queuebuf_new_from_packetbuf();
	mov	r0,#_queuebuf_new_from_packetbuf
	mov	r1,#(_queuebuf_new_from_packetbuf >> 8)
	mov	r2,#(_queuebuf_new_from_packetbuf >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:1004: if(q != NULL) {
	mov	a,r7
	orl	a,r6
	jz	00111$
;	/opt/contiki/core/net/rime/collect.c:1005: send_ack(tc, &ack_to, 0);
	mov	ar3,r4
	mov	r4,#0x00
	mov	r2,#0x40
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	push	ar3
	push	ar4
	push	ar2
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_send_ack
	mov	r1,#(_send_ack >> 8)
	mov	r2,#(_send_ack >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:1006: queuebuf_to_packetbuf(q);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_queuebuf_to_packetbuf
	mov	r1,#(_queuebuf_to_packetbuf >> 8)
	mov	r2,#(_queuebuf_to_packetbuf >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:1007: queuebuf_free(q);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	r0,#_queuebuf_free
	mov	r1,#(_queuebuf_free >> 8)
	mov	r2,#(_queuebuf_free >> 16)
	lcall	__sdcc_banked_call
	sjmp	00112$
00111$:
;	/opt/contiki/core/net/rime/collect.c:1013: stats.ackdrop++;
	mov	dptr,#(_stats + 0x0030)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r7
	cjne	r7,#0x00,00211$
	inc	r6
	cjne	r6,#0x00,00211$
	inc	r5
	cjne	r5,#0x00,00211$
	inc	r4
00211$:
	mov	dptr,#(_stats + 0x0030)
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00112$:
;	/opt/contiki/core/net/rime/collect.c:1024: packetbuf_hdrreduce(sizeof(struct data_msg_hdr));
	mov	dptr,#0x0004
	mov	r0,#_packetbuf_hdrreduce
	mov	r1,#(_packetbuf_hdrreduce >> 8)
	mov	r2,#(_packetbuf_hdrreduce >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:1026: if(packetbuf_datalen() > 0 && tc->cb->recv != NULL) {
	mov	r0,#_packetbuf_datalen
	mov	r1,#(_packetbuf_datalen >> 8)
	mov	r2,#(_packetbuf_datalen >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00212$
	ljmp	00114$
00212$:
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,#0x33
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
	mov	a,sp
	add	a,#0xeb
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
	add	a,#0xeb
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
	jz	00114$
;	/opt/contiki/core/net/rime/collect.c:1029: packetbuf_attr(PACKETBUF_ATTR_HOPS));
	mov	dpl,#0x15
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	ar4,r2
;	/opt/contiki/core/net/rime/collect.c:1028: packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID),
	mov	dpl,#0x17
	push	ar4
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
;	/opt/contiki/core/net/rime/collect.c:1027: tc->cb->recv(packetbuf_addr(PACKETBUF_ADDR_ESENDER),
	mov	dpl,#0x1C
	push	ar2
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xe1
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xde
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
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
00114$:
;	/opt/contiki/core/net/rime/collect.c:1031: return;
	ljmp	00138$
00129$:
;	/opt/contiki/core/net/rime/collect.c:1032: } else if(packetbuf_attr(PACKETBUF_ATTR_TTL) > 1 &&
	mov	dpl,#0x16
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,#0x01
	subb	a,r2
	clr	a
	subb	a,r3
	jc	00214$
	ljmp	00125$
00214$:
;	/opt/contiki/core/net/rime/collect.c:1033: tc->rtmetric != RTMETRIC_MAX) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	cjne	r6,#0xFF,00215$
	cjne	r7,#0x01,00215$
	ljmp	00125$
00215$:
;	/opt/contiki/core/net/rime/collect.c:1042: if(hdr.rtmetric <= tc->rtmetric) {
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r1,a
	mov	ar3,@r1
	inc	r1
	mov	ar5,@r1
	clr	c
	mov	a,r6
	subb	a,r3
	mov	a,r7
	subb	a,r5
	jc	00117$
;	/opt/contiki/core/net/rime/collect.c:1043: ackflags |= ACK_FLAGS_RTMETRIC_NEEDS_UPDATE;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	orl	a,#0x10
	mov	@r0,a
00117$:
;	/opt/contiki/core/net/rime/collect.c:1047: packetbuf_attr(PACKETBUF_ATTR_HOPS) + 1);
	mov	dpl,#0x15
	push	ar4
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	r6,a
	clr	a
	addc	a,b
	mov	r7,a
;	/opt/contiki/core/net/rime/collect.c:1046: packetbuf_set_attr(PACKETBUF_ATTR_HOPS,
	push	ar6
	push	ar7
	mov	dpl,#0x15
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:1049: packetbuf_attr(PACKETBUF_ATTR_TTL) - 1);
	mov	dpl,#0x16
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	add	a,#0xFF
	mov	r6,a
	mov	a,b
	addc	a,#0xFF
	mov	r7,a
;	/opt/contiki/core/net/rime/collect.c:1048: packetbuf_set_attr(PACKETBUF_ATTR_TTL,
	push	ar6
	push	ar7
	mov	dpl,#0x16
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:1066: if(packetqueue_len(&tc->send_queue) <= MAX_SENDING_QUEUE - MIN_AVAILABLE_QUEUE_ENTRIES &&
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,#0x52
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
	push	ar4
	mov	r0,#_packetqueue_len
	mov	r1,#(_packetqueue_len >> 8)
	mov	r2,#(_packetqueue_len >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00217$
	ljmp	00119$
00217$:
;	/opt/contiki/core/net/rime/collect.c:1070: tc)) {
	push	ar4
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	/opt/contiki/core/net/rime/collect.c:1069: packetbuf_attr(PACKETBUF_ATTR_MAX_REXMIT),
	mov	dpl,#0x11
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,r2
	add	a,r2
	add	a,acc
	inc	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rime/collect.c:1067: packetqueue_enqueue_packetbuf(&tc->send_queue,
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,#0x52
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_packetqueue_enqueue_packetbuf
	mov	r1,#(_packetqueue_enqueue_packetbuf >> 8)
	mov	r2,#(_packetqueue_enqueue_packetbuf >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar4
	mov	a,r6
	orl	a,r7
	jz	00119$
;	/opt/contiki/core/net/rime/collect.c:1071: add_packet_to_recent_packets(tc);
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	mov	r0,#_add_packet_to_recent_packets
	mov	r1,#(_add_packet_to_recent_packets >> 8)
	mov	r2,#(_add_packet_to_recent_packets >> 16)
	lcall	__sdcc_banked_call
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:1072: send_ack(tc, &ack_to, ackflags);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar6,@r0
	mov	r7,#0x00
	mov	ar5,r4
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar6
	push	ar7
	push	ar5
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_send_ack
	mov	r1,#(_send_ack >> 8)
	mov	r2,#(_send_ack >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
;	/opt/contiki/core/net/rime/collect.c:1073: send_queued_packet(tc);
	mov	sp,a
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_send_queued_packet
	mov	r1,#(_send_queued_packet >> 8)
	mov	r2,#(_send_queued_packet >> 16)
	lcall	__sdcc_banked_call
	ljmp	00135$
00119$:
;	/opt/contiki/core/net/rime/collect.c:1076: ackflags | ACK_FLAGS_DROPPED | ACK_FLAGS_CONGESTED);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0xC0
	orl	a,@r0
	mov	r7,a
	mov	r6,#0x00
;	/opt/contiki/core/net/rime/collect.c:1075: send_ack(tc, &ack_to,
	mov	ar5,r4
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_send_ack
	mov	r1,#(_send_ack >> 8)
	mov	r2,#(_send_ack >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/rime/collect.c:1079: stats.qdrop++;
	mov	dptr,#(_stats + 0x0024)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r3
	cjne	r3,#0x00,00219$
	inc	r5
	cjne	r5,#0x00,00219$
	inc	r6
	cjne	r6,#0x00,00219$
	inc	r7
00219$:
	mov	dptr,#(_stats + 0x0024)
	mov	a,r3
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00135$
00125$:
;	/opt/contiki/core/net/rime/collect.c:1081: } else if(packetbuf_attr(PACKETBUF_ATTR_TTL) <= 1) {
	mov	dpl,#0x16
	push	ar4
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	clr	c
	mov	a,#0x01
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00220$
	ljmp	00135$
00220$:
;	/opt/contiki/core/net/rime/collect.c:1086: ACK_FLAGS_DROPPED | ACK_FLAGS_LIFETIME_EXCEEDED);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x60
	orl	a,@r0
	mov	r7,a
	mov	r6,#0x00
;	/opt/contiki/core/net/rime/collect.c:1085: send_ack(tc, &ack_to, ackflags |
	mov	r5,#0x00
	mov	r3,#0x40
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	push	ar3
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_send_ack
	mov	r1,#(_send_ack >> 8)
	mov	r2,#(_send_ack >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/opt/contiki/core/net/rime/collect.c:1087: stats.ttldrop++;
	mov	dptr,#(_stats + 0x002c)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00221$
	inc	r5
	cjne	r5,#0x00,00221$
	inc	r6
	cjne	r6,#0x00,00221$
	inc	r7
00221$:
	mov	dptr,#(_stats + 0x002c)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00135$
00134$:
;	/opt/contiki/core/net/rime/collect.c:1089: } else if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0D
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0x01,00135$
	cjne	r7,#0x00,00135$
;	/opt/contiki/core/net/rime/collect.c:1099: handle_ack(tc);
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_handle_ack
	mov	r1,#(_handle_ack >> 8)
	mov	r2,#(_handle_ack >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:1100: stats.ackrecv++;
	mov	dptr,#(_stats + 0x0018)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00224$
	inc	r5
	cjne	r5,#0x00,00224$
	inc	r6
	cjne	r6,#0x00,00224$
	inc	r7
00224$:
	mov	dptr,#(_stats + 0x0018)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00135$:
;	/opt/contiki/core/net/rime/collect.c:1102: return;
00138$:
	mov	a,sp
	add	a,#0xE4
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timedout'
;------------------------------------------------------------
;tc                        Allocated to stack - sp -2
;n                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1106: timedout(struct collect_conn *tc)
;	-----------------------------------------
;	 function timedout
;	-----------------------------------------
_timedout:
	push	dpl
	push	dph
	push	b
;	/opt/contiki/core/net/rime/collect.c:1118: tc->sending = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xB5
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
;	/opt/contiki/core/net/rime/collect.c:1120: &tc->current_parent);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xAA
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	/opt/contiki/core/net/rime/collect.c:1119: n = collect_neighbor_list_find(&tc->neighbor_list,
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x58
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
	mov	r0,#_collect_neighbor_list_find
	mov	r1,#(_collect_neighbor_list_find >> 8)
	mov	r2,#(_collect_neighbor_list_find >> 16)
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
;	/opt/contiki/core/net/rime/collect.c:1121: if(n != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	/opt/contiki/core/net/rime/collect.c:1122: collect_neighbor_tx_fail(n, tc->max_rexmits);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xB7
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
	mov	r7,#0x00
	push	ar5
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_collect_neighbor_tx_fail
	mov	r1,#(_collect_neighbor_tx_fail >> 8)
	mov	r2,#(_collect_neighbor_tx_fail >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
00102$:
;	/opt/contiki/core/net/rime/collect.c:1124: update_rtmetric(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_update_rtmetric
	mov	r1,#(_update_rtmetric >> 8)
	mov	r2,#(_update_rtmetric >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:1125: send_next_packet(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_send_next_packet
	mov	r1,#(_send_next_packet >> 8)
	mov	r2,#(_send_next_packet >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:1126: set_keepalive_timer(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_set_keepalive_timer
	mov	r1,#(_set_keepalive_timer >> 8)
	mov	r2,#(_set_keepalive_timer >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'node_packet_sent'
;------------------------------------------------------------
;status                    Allocated to stack - sp -9
;transmissions             Allocated to stack - sp -11
;c                         Allocated to registers r5 r6 r7 
;tc                        Allocated to stack - sp -4
;time                      Allocated to stack - sp -1
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1130: node_packet_sent(struct unicast_conn *c, int status, int transmissions)
;	-----------------------------------------
;	 function node_packet_sent
;	-----------------------------------------
_node_packet_sent:
	mov	a,sp
	add	a,#0x05
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/collect.c:1132: struct collect_conn *tc = (struct collect_conn *)
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rime/collect.c:1136: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0D
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00114$
	ljmp	00106$
00114$:
;	/opt/contiki/core/net/rime/collect.c:1139: tc->transmissions += transmissions;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xB6
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
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	add	a,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:1146: if(tc->transmissions >= tc->max_rexmits) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0xB7
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
	clr	c
	mov	a,r2
	subb	a,r5
	jc	00102$
;	/opt/contiki/core/net/rime/collect.c:1147: timedout(tc);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_timedout
	mov	r1,#(_timedout >> 8)
	mov	r2,#(_timedout >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:1148: stats.timedout++;
	mov	dptr,#(_stats + 0x0034)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00116$
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
	cjne	r6,#0x00,00116$
	inc	r7
00116$:
	mov	dptr,#(_stats + 0x0034)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00106$
00102$:
;	/opt/contiki/core/net/rime/collect.c:1150: clock_time_t time = REXMIT_TIME / 2 + (random_rand() % (REXMIT_TIME / 2));
	mov	r0,#_random_rand
	mov	r1,#(_random_rand >> 8)
	mov	r2,#(_random_rand >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	mov	r6,a
	mov	r7,#0x00
	mov	r0,sp
	dec	r0
	mov	@r0,ar6
	mov	a,#0x01
	add	a,r7
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/rime/collect.c:1153: retransmit_callback, tc);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	/opt/contiki/core/net/rime/collect.c:1152: ctimer_set(&tc->retransmission_timer, time,
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x36
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar3
	push	ar4
	push	ar5
	mov	a,#_retransmit_callback
	push	acc
	mov	a,#(_retransmit_callback >> 8)
	push	acc
	mov	a,#(_retransmit_callback >> 16)
	push	acc
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	r0,#_ctimer_set
	mov	r1,#(_ctimer_set >> 8)
	mov	r2,#(_ctimer_set >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
00106$:
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'retransmit_not_sent_callback'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;c                         Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1167: retransmit_not_sent_callback(void *ptr)
;	-----------------------------------------
;	 function retransmit_not_sent_callback
;	-----------------------------------------
_retransmit_not_sent_callback:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/collect.c:1169: struct collect_conn *c = ptr;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rime/collect.c:1172: c->transmissions += MAX_MAC_REXMITS + 1;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xB6
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
	inc	r7
	inc	r7
	inc	r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:1173: retransmit_callback(c);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_retransmit_callback
	mov	r1,#(_retransmit_callback >> 8)
	mov	r2,#(_retransmit_callback >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'retransmit_callback'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;c                         Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1184: retransmit_callback(void *ptr)
;	-----------------------------------------
;	 function retransmit_callback
;	-----------------------------------------
_retransmit_callback:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/collect.c:1186: struct collect_conn *c = ptr;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rime/collect.c:1189: if(c->transmissions >= c->max_rexmits) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xB6
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
	mov	a,#0xB7
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
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,r3
	jc	00102$
;	/opt/contiki/core/net/rime/collect.c:1190: timedout(c);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_timedout
	mov	r1,#(_timedout >> 8)
	mov	r2,#(_timedout >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:1191: stats.timedout++;
	mov	dptr,#(_stats + 0x0034)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00110$
	inc	r5
	cjne	r5,#0x00,00110$
	inc	r6
	cjne	r6,#0x00,00110$
	inc	r7
00110$:
	mov	dptr,#(_stats + 0x0034)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00102$:
;	/opt/contiki/core/net/rime/collect.c:1193: c->sending = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xB5
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
;	/opt/contiki/core/net/rime/collect.c:1194: retransmit_current_packet(c);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_retransmit_current_packet
	mov	r1,#(_retransmit_current_packet >> 8)
	mov	r2,#(_retransmit_current_packet >> 16)
	lcall	__sdcc_banked_call
00104$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'received_announcement'
;------------------------------------------------------------
;from                      Allocated to stack - sp -8
;id                        Allocated to stack - sp -10
;value                     Allocated to stack - sp -12
;a                         Allocated to registers r5 r6 r7 
;tc                        Allocated to stack - sp -2
;n                         Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - sp +7
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1237: received_announcement(struct announcement *a, const linkaddr_t *from,
;	-----------------------------------------
;	 function received_announcement
;	-----------------------------------------
_received_announcement:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/collect.c:1240: struct collect_conn *tc = (struct collect_conn *)
	mov	a,r5
	add	a,#0xEE
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rime/collect.c:1244: n = collect_neighbor_list_find(&tc->neighbor_list, from);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x58
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
	mov	r0,#_collect_neighbor_list_find
	mov	r1,#(_collect_neighbor_list_find >> 8)
	mov	r2,#(_collect_neighbor_list_find >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:1246: if(n == NULL) {
	mov	a,r2
	orl	a,r3
	jz	00146$
	ljmp	00110$
00146$:
;	/opt/contiki/core/net/rime/collect.c:1249: if(value < tc->rtmetric) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xB2
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	jnc	00102$
;	/opt/contiki/core/net/rime/collect.c:1250: collect_neighbor_list_add(&tc->neighbor_list, from, value);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x58
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
	mov	a,sp
	add	a,#0xf1
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
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_collect_neighbor_list_add
	mov	r1,#(_collect_neighbor_list_add >> 8)
	mov	r2,#(_collect_neighbor_list_add >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
00102$:
;	/opt/contiki/core/net/rime/collect.c:1255: if(value == RTMETRIC_MAX && tc->rtmetric != RTMETRIC_MAX) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	cjne	@r0,#0xFF,00148$
	inc	r0
	cjne	@r0,#0x01,00148$
	sjmp	00149$
00148$:
	ljmp	00111$
00149$:
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	cjne	r6,#0xFF,00150$
	cjne	r7,#0x01,00150$
	ljmp	00111$
00150$:
;	/opt/contiki/core/net/rime/collect.c:1256: bump_advertisement(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_bump_advertisement
	mov	r1,#(_bump_advertisement >> 8)
	mov	r2,#(_bump_advertisement >> 16)
	lcall	__sdcc_banked_call
	sjmp	00111$
00110$:
;	/opt/contiki/core/net/rime/collect.c:1267: if(value == RTMETRIC_MAX &&
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	cjne	@r0,#0xFF,00107$
	inc	r0
	cjne	@r0,#0x01,00107$
;	/opt/contiki/core/net/rime/collect.c:1268: collect_neighbor_rtmetric(n) != RTMETRIC_MAX) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_collect_neighbor_rtmetric
	mov	r1,#(_collect_neighbor_rtmetric >> 8)
	mov	r2,#(_collect_neighbor_rtmetric >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	cjne	r6,#0xFF,00153$
	cjne	r7,#0x01,00153$
	sjmp	00107$
00153$:
;	/opt/contiki/core/net/rime/collect.c:1269: bump_advertisement(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_bump_advertisement
	mov	r1,#(_bump_advertisement >> 8)
	mov	r2,#(_bump_advertisement >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
00107$:
;	/opt/contiki/core/net/rime/collect.c:1271: collect_neighbor_update_rtmetric(n, value);
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_collect_neighbor_update_rtmetric
	mov	r1,#(_collect_neighbor_update_rtmetric >> 8)
	mov	r2,#(_collect_neighbor_update_rtmetric >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
00111$:
;	/opt/contiki/core/net/rime/collect.c:1277: update_rtmetric(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_update_rtmetric
	mov	r1,#(_update_rtmetric >> 8)
	mov	r2,#(_update_rtmetric >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:1280: if(value == RTMETRIC_MAX &&
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	cjne	@r0,#0xFF,00117$
	inc	r0
	cjne	@r0,#0x01,00117$
;	/opt/contiki/core/net/rime/collect.c:1281: tc->rtmetric != RTMETRIC_MAX) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xB2
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
	cjne	r5,#0xFF,00156$
	cjne	r6,#0x01,00156$
	sjmp	00117$
00156$:
;	/opt/contiki/core/net/rime/collect.c:1282: if(tc->is_router) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xB9
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
	jz	00117$
;	/opt/contiki/core/net/rime/collect.c:1283: announcement_bump(&tc->announcement);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x12
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
	mov	r0,#_announcement_bump
	mov	r1,#(_announcement_bump >> 8)
	mov	r2,#(_announcement_bump >> 16)
	lcall	__sdcc_banked_call
00117$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_open'
;------------------------------------------------------------
;channels                  Allocated to stack - sp -10
;is_router                 Allocated to stack - sp -11
;cb                        Allocated to stack - sp -14
;tc                        Allocated to stack - sp -5
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1298: collect_open(struct collect_conn *tc, uint16_t channels,
;	-----------------------------------------
;	 function collect_open
;	-----------------------------------------
_collect_open:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/net/rime/collect.c:1302: unicast_open(&tc->unicast_conn, channels + 1, &unicast_callbacks);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	push	ar4
	push	ar3
	mov	a,#_unicast_callbacks
	push	acc
	mov	a,#(_unicast_callbacks >> 8)
	push	acc
	mov	a,#0x80
	push	acc
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
	mov	r0,#_unicast_open
	mov	r1,#(_unicast_open >> 8)
	mov	r2,#(_unicast_open >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:1303: channel_set_attributes(channels + 1, attributes);
	mov	a,#_attributes
	push	acc
	mov	a,#(_attributes >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	r0,#_channel_set_attributes
	mov	r1,#(_channel_set_attributes >> 8)
	mov	r2,#(_channel_set_attributes >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:1304: tc->rtmetric = RTMETRIC_MAX;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0xB2
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
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:1305: tc->cb = cb;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x33
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
;	/opt/contiki/core/net/rime/collect.c:1306: tc->is_router = is_router;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0xB9
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
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:1307: tc->seqno = 10;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0xB4
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
	mov	a,#0x0A
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:1308: tc->eseqno = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0xB8
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
;	/opt/contiki/core/net/rime/collect.c:1309: LIST_STRUCT_INIT(tc, send_queue_list);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,#0x4F
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
	mov	a,#0x4C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
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
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_list_init
	mov	r1,#(_list_init >> 8)
	mov	r2,#(_list_init >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:1310: collect_neighbor_list_new(&tc->neighbor_list);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x58
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
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_collect_neighbor_list_new
	mov	r1,#(_collect_neighbor_list_new >> 8)
	mov	r2,#(_collect_neighbor_list_new >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:1311: tc->send_queue.list = &(tc->send_queue_list);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x52
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
;	/opt/contiki/core/net/rime/collect.c:1312: tc->send_queue.memb = &send_queue_memb;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x52
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#_send_queue_memb
	lcall	__gptrput
	inc	dptr
	mov	a,#(_send_queue_memb >> 8)
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:1313: collect_neighbor_init();
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_collect_neighbor_init
	mov	r1,#(_collect_neighbor_init >> 8)
	mov	r2,#(_collect_neighbor_init >> 16)
	lcall	__sdcc_banked_call
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:1327: announcement_register(&tc->announcement, channels,
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x12
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
	mov	a,#_received_announcement
	push	acc
	mov	a,#(_received_announcement >> 8)
	push	acc
	mov	a,#(_received_announcement >> 16)
	push	acc
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_announcement_register
	mov	r1,#(_announcement_register >> 8)
	mov	r2,#(_announcement_register >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:1330: if(tc->is_router) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00105$
;	/opt/contiki/core/net/rime/collect.c:1331: announcement_set_value(&tc->announcement, RTMETRIC_MAX);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0xFF
	push	acc
	mov	a,#0x01
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_announcement_set_value
	mov	r1,#(_announcement_set_value >> 8)
	mov	r2,#(_announcement_set_value >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
00105$:
;	/opt/contiki/core/net/rime/collect.c:1337: proactive_probing_callback, tc);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	/opt/contiki/core/net/rime/collect.c:1336: ctimer_set(&tc->proactive_probing_timer, PROACTIVE_PROBING_INTERVAL,
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_random_rand
	mov	r1,#(_random_rand >> 8)
	mov	r2,#(_random_rand >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	anl	a,#0x7F
	mov	r3,a
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	dptr,#0x003C
	lcall	__mulint
	xch	a,r0
	mov	a,sp
	add	a,#0xf9
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x8C
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
	mov	a,#_proactive_probing_callback
	push	acc
	mov	a,#(_proactive_probing_callback >> 8)
	push	acc
	mov	a,#(_proactive_probing_callback >> 16)
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_ctimer_set
	mov	r1,#(_ctimer_set >> 8)
	mov	r2,#(_ctimer_set >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf8
	add	a,#0xFA
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_keepalive'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1342: send_keepalive(void *ptr)
;	-----------------------------------------
;	 function send_keepalive
;	-----------------------------------------
_send_keepalive:
;	/opt/contiki/core/net/rime/collect.c:1344: struct collect_conn *c = ptr;
;	/opt/contiki/core/net/rime/collect.c:1346: set_keepalive_timer(c);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_set_keepalive_timer
	mov	r1,#(_set_keepalive_timer >> 8)
	mov	r2,#(_set_keepalive_timer >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:1349: if(c->sending == 0 && packetqueue_len(&c->send_queue) == 0) {
	mov	a,#0xB5
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
	jnz	00106$
	mov	a,#0x52
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
	mov	r0,#_packetqueue_len
	mov	r1,#(_packetqueue_len >> 8)
	mov	r2,#(_packetqueue_len >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00106$
;	/opt/contiki/core/net/rime/collect.c:1350: if(enqueue_dummy_packet(c, KEEPALIVE_REXMITS)) {
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_enqueue_dummy_packet
	mov	r1,#(_enqueue_dummy_packet >> 8)
	mov	r2,#(_enqueue_dummy_packet >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jz	00106$
;	/opt/contiki/core/net/rime/collect.c:1353: send_queued_packet(c);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_send_queued_packet
	mov	r1,#(_send_queued_packet >> 8)
	mov	r2,#(_send_queued_packet >> 16)
	lcall	__sdcc_banked_call
00106$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_keepalive_timer'
;------------------------------------------------------------
;c                         Allocated to stack - sp -7
;sloc0                     Allocated to stack - sp -4
;sloc1                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1359: set_keepalive_timer(struct collect_conn *c)
;	-----------------------------------------
;	 function set_keepalive_timer
;	-----------------------------------------
_set_keepalive_timer:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
;	/opt/contiki/core/net/rime/collect.c:1361: if(c->keepalive_period != 0) {
	mov	sp,a
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x8A
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
	orl	a,r7
	jnz	00109$
	ljmp	00102$
00109$:
;	/opt/contiki/core/net/rime/collect.c:1364: send_keepalive, c);
	mov	a,sp
	add	a,#0xf9
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
;	/opt/contiki/core/net/rime/collect.c:1362: ctimer_set(&c->keepalive_timer, (c->keepalive_period / 2) +
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar7
	mov	a,r6
	clr	c
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/rime/collect.c:1363: (random_rand() % (c->keepalive_period / 2)),
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_random_rand
	mov	r1,#(_random_rand >> 8)
	mov	r2,#(_random_rand >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	push	ar2
	push	ar3
	mov	dpl,r5
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
;	/opt/contiki/core/net/rime/collect.c:1362: ctimer_set(&c->keepalive_timer, (c->keepalive_period / 2) +
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x74
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
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
	mov	a,#_send_keepalive
	push	acc
	mov	a,#(_send_keepalive >> 8)
	push	acc
	mov	a,#(_send_keepalive >> 16)
	push	acc
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_ctimer_set
	mov	r1,#(_ctimer_set >> 8)
	mov	r2,#(_ctimer_set >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	sjmp	00104$
00102$:
;	/opt/contiki/core/net/rime/collect.c:1366: ctimer_stop(&c->keepalive_timer);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x74
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
	mov	r0,#_ctimer_stop
	mov	r1,#(_ctimer_stop >> 8)
	mov	r2,#(_ctimer_stop >> 16)
	lcall	__sdcc_banked_call
00104$:
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_set_keepalive'
;------------------------------------------------------------
;period                    Allocated to stack - sp -4
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1371: collect_set_keepalive(struct collect_conn *c, clock_time_t period)
;	-----------------------------------------
;	 function collect_set_keepalive
;	-----------------------------------------
_collect_set_keepalive:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/collect.c:1373: c->keepalive_period = period;
	mov	a,#0x8A
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
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:1374: set_keepalive_timer(c);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_set_keepalive_timer
	mov	r1,#(_set_keepalive_timer >> 8)
	mov	r2,#(_set_keepalive_timer >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_close'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1378: collect_close(struct collect_conn *tc)
;	-----------------------------------------
;	 function collect_close
;	-----------------------------------------
_collect_close:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/collect.c:1381: announcement_remove(&tc->announcement);
	mov	a,#0x12
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
	mov	r0,#_announcement_remove
	mov	r1,#(_announcement_remove >> 8)
	mov	r2,#(_announcement_remove >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:1385: unicast_close(&tc->unicast_conn);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_unicast_close
	mov	r1,#(_unicast_close >> 8)
	mov	r2,#(_unicast_close >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:1386: while(packetqueue_first(&tc->send_queue) != NULL) {
00101$:
	mov	a,#0x52
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
	mov	r0,#_packetqueue_first
	mov	r1,#(_packetqueue_first >> 8)
	mov	r2,#(_packetqueue_first >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	jz	00104$
;	/opt/contiki/core/net/rime/collect.c:1387: packetqueue_dequeue(&tc->send_queue);
	mov	a,#0x52
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
	mov	r0,#_packetqueue_dequeue
	mov	r1,#(_packetqueue_dequeue >> 8)
	mov	r2,#(_packetqueue_dequeue >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_set_sink'
;------------------------------------------------------------
;should_be_sink            Allocated to stack - sp -7
;tc                        Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1392: collect_set_sink(struct collect_conn *tc, int should_be_sink)
;	-----------------------------------------
;	 function collect_set_sink
;	-----------------------------------------
_collect_set_sink:
	push	dpl
	push	dph
	push	b
;	/opt/contiki/core/net/rime/collect.c:1394: if(should_be_sink) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00118$
	ljmp	00105$
00118$:
;	/opt/contiki/core/net/rime/collect.c:1395: tc->is_router = 1;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xB9
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
;	/opt/contiki/core/net/rime/collect.c:1396: tc->rtmetric = RTMETRIC_SINK;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xB2
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
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/net/rime/collect.c:1398: bump_advertisement(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_bump_advertisement
	mov	r1,#(_bump_advertisement >> 8)
	mov	r2,#(_bump_advertisement >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:1401: while(packetqueue_len(&tc->send_queue) > 0) {
00101$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x52
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
	mov	r0,#_packetqueue_len
	mov	r1,#(_packetqueue_len >> 8)
	mov	r2,#(_packetqueue_len >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	/opt/contiki/core/net/rime/collect.c:1402: packetqueue_dequeue(&tc->send_queue);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x52
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
	mov	r0,#_packetqueue_dequeue
	mov	r1,#(_packetqueue_dequeue >> 8)
	mov	r2,#(_packetqueue_dequeue >> 16)
	lcall	__sdcc_banked_call
	sjmp	00101$
00103$:
;	/opt/contiki/core/net/rime/collect.c:1406: ctimer_stop(&tc->retransmission_timer);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x36
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
	mov	r0,#_ctimer_stop
	mov	r1,#(_ctimer_stop >> 8)
	mov	r2,#(_ctimer_stop >> 16)
	lcall	__sdcc_banked_call
	sjmp	00106$
00105$:
;	/opt/contiki/core/net/rime/collect.c:1408: tc->rtmetric = RTMETRIC_MAX;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xB2
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
	mov	a,#0x01
	lcall	__gptrput
00106$:
;	/opt/contiki/core/net/rime/collect.c:1411: announcement_set_value(&tc->announcement, tc->rtmetric);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xB2
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x12
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	mov	r0,#_announcement_set_value
	mov	r1,#(_announcement_set_value >> 8)
	mov	r2,#(_announcement_set_value >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:1413: update_rtmetric(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_update_rtmetric
	mov	r1,#(_update_rtmetric >> 8)
	mov	r2,#(_update_rtmetric >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:1415: bump_advertisement(tc);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_bump_advertisement
	mov	r1,#(_bump_advertisement >> 8)
	mov	r2,#(_bump_advertisement >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:1417: if(DRAW_TREE) {
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_send'
;------------------------------------------------------------
;rexmits                   Allocated to stack - sp -11
;tc                        Allocated to stack - sp -6
;n                         Allocated to registers r5 r6 r7 
;ret                       Allocated to registers r6 r7 
;sloc0                     Allocated to stack - sp +0
;sloc1                     Allocated to stack - sp -3
;sloc2                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1423: collect_send(struct collect_conn *tc, int rexmits)
;	-----------------------------------------
;	 function collect_send
;	-----------------------------------------
_collect_send:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
;	/opt/contiki/core/net/rime/collect.c:1428: packetbuf_set_attr(PACKETBUF_ATTR_EPACKET_ID, tc->eseqno);
	mov	sp,a
	add	a,#0xfa
	mov	r0,a
	mov	a,#0xB8
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
	push	ar4
	push	ar3
	push	ar2
	push	ar7
	push	ar6
	mov	dpl,#0x17
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rime/collect.c:1438: tc->eseqno = (tc->eseqno + 1) % (1 << COLLECT_PACKET_ID_BITS);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	r6,#0x00
	inc	r7
	cjne	r7,#0x00,00142$
	inc	r6
00142$:
	push	ar4
	push	ar3
	push	ar2
	clr	a
	push	acc
	inc	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
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
;	/opt/contiki/core/net/rime/collect.c:1440: if(tc->eseqno == 0) {
	mov	a,r6
	lcall	__gptrput
	jnz	00102$
;	/opt/contiki/core/net/rime/collect.c:1441: tc->eseqno = ((int)(1 << COLLECT_PACKET_ID_BITS)) / 2;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x80
	lcall	__gptrput
00102$:
;	/opt/contiki/core/net/rime/collect.c:1443: packetbuf_set_addr(PACKETBUF_ADDR_ESENDER, &linkaddr_node_addr);
	mov	a,#_linkaddr_node_addr
	push	acc
	mov	a,#(_linkaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x1C
	mov	r0,#_packetbuf_set_addr
	mov	r1,#(_packetbuf_set_addr >> 8)
	mov	r2,#(_packetbuf_set_addr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:1444: packetbuf_set_attr(PACKETBUF_ATTR_HOPS, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x15
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:1445: packetbuf_set_attr(PACKETBUF_ATTR_TTL, MAX_HOPLIM);
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x16
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:1446: if(rexmits > MAX_REXMITS) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	clr	c
	mov	a,#0x1F
	subb	a,@r0
	mov	a,#(0x00 ^ 0x80)
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	/opt/contiki/core/net/rime/collect.c:1447: packetbuf_set_attr(PACKETBUF_ATTR_MAX_REXMIT, MAX_REXMITS);
	mov	a,#0x1F
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x11
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	sjmp	00105$
00104$:
;	/opt/contiki/core/net/rime/collect.c:1449: packetbuf_set_attr(PACKETBUF_ATTR_MAX_REXMIT, rexmits);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x11
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
00105$:
;	/opt/contiki/core/net/rime/collect.c:1457: if(tc->rtmetric == RTMETRIC_SINK) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0xB2
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
	orl	a,r5
	jz	00145$
	ljmp	00117$
00145$:
;	/opt/contiki/core/net/rime/collect.c:1458: packetbuf_set_attr(PACKETBUF_ATTR_HOPS, 0);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x15
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:1459: if(tc->cb->recv != NULL) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x33
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
	jnz	00146$
	ljmp	00107$
00146$:
;	/opt/contiki/core/net/rime/collect.c:1462: packetbuf_attr(PACKETBUF_ATTR_HOPS));
	mov	dpl,#0x15
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar3
;	/opt/contiki/core/net/rime/collect.c:1461: packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID),
	mov	dpl,#0x17
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	mov	@r0,ar2
;	/opt/contiki/core/net/rime/collect.c:1460: tc->cb->recv(packetbuf_addr(PACKETBUF_ADDR_ESENDER),
	mov	dpl,#0x1C
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
00107$:
;	/opt/contiki/core/net/rime/collect.c:1464: return 1;
	mov	dptr,#0x0001
	ljmp	00119$
00117$:
;	/opt/contiki/core/net/rime/collect.c:1468: packetbuf_hdralloc(sizeof(struct data_msg_hdr));
	mov	dptr,#0x0004
	mov	r0,#_packetbuf_hdralloc
	mov	r1,#(_packetbuf_hdralloc >> 8)
	mov	r2,#(_packetbuf_hdralloc >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:1473: tc)) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	/opt/contiki/core/net/rime/collect.c:1472: packetbuf_attr(PACKETBUF_ATTR_MAX_REXMIT),
	mov	dpl,#0x11
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_packetbuf_attr
	mov	r1,#(_packetbuf_attr >> 8)
	mov	r2,#(_packetbuf_attr >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,r3
	add	a,r3
	add	a,acc
	inc	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rime/collect.c:1470: if(packetqueue_enqueue_packetbuf(&tc->send_queue,
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x52
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
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_packetqueue_enqueue_packetbuf
	mov	r1,#(_packetqueue_enqueue_packetbuf >> 8)
	mov	r2,#(_packetqueue_enqueue_packetbuf >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,r6
	orl	a,r7
	jz	00109$
;	/opt/contiki/core/net/rime/collect.c:1474: send_queued_packet(tc);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_send_queued_packet
	mov	r1,#(_send_queued_packet >> 8)
	mov	r2,#(_send_queued_packet >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/collect.c:1475: ret = 1;
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00110$
00109$:
;	/opt/contiki/core/net/rime/collect.c:1481: ret = 0;
	mov	r6,#0x00
	mov	r7,#0x00
00110$:
;	/opt/contiki/core/net/rime/collect.c:1485: n = collect_neighbor_list_find(&tc->neighbor_list, &tc->parent);
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0xA2
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x58
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	r0,#_collect_neighbor_list_find
	mov	r1,#(_collect_neighbor_list_find >> 8)
	mov	r2,#(_collect_neighbor_list_find >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/collect.c:1486: if(n != NULL) {
	mov	a,r5
	orl	a,r6
	pop	ar7
	pop	ar6
	jnz	00118$
;	/opt/contiki/core/net/rime/collect.c:1500: if(tc->is_router) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0xB9
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
	jz	00118$
;	/opt/contiki/core/net/rime/collect.c:1501: announcement_set_value(&tc->announcement, RTMETRIC_MAX);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	push	ar7
	push	ar6
	mov	a,#0xFF
	push	acc
	mov	a,#0x01
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_announcement_set_value
	mov	r1,#(_announcement_set_value >> 8)
	mov	r2,#(_announcement_set_value >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:1502: announcement_bump(&tc->announcement);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x12
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
	push	ar7
	push	ar6
	mov	r0,#_announcement_bump
	mov	r1,#(_announcement_bump >> 8)
	mov	r2,#(_announcement_bump >> 16)
	lcall	__sdcc_banked_call
	pop	ar6
	pop	ar7
00118$:
;	/opt/contiki/core/net/rime/collect.c:1520: return ret;
	mov	dpl,r6
	mov	dph,r7
00119$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_depth'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1524: collect_depth(struct collect_conn *tc)
;	-----------------------------------------
;	 function collect_depth
;	-----------------------------------------
_collect_depth:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/collect.c:1526: return tc->rtmetric;
	mov	a,#0xB2
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
	mov	dpl,r5
	mov	dph,r6
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_parent'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1530: collect_parent(struct collect_conn *tc)
;	-----------------------------------------
;	 function collect_parent
;	-----------------------------------------
_collect_parent:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/collect.c:1532: return &tc->current_parent;
	mov	a,#0xAA
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_purge'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1536: collect_purge(struct collect_conn *tc)
;	-----------------------------------------
;	 function collect_purge
;	-----------------------------------------
_collect_purge:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/collect.c:1538: collect_neighbor_list_purge(&tc->neighbor_list);
	mov	a,#0x58
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
	mov	r0,#_collect_neighbor_list_purge
	mov	r1,#(_collect_neighbor_list_purge >> 8)
	mov	r2,#(_collect_neighbor_list_purge >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:1539: linkaddr_copy(&tc->parent, &linkaddr_null);
	mov	a,#0xA2
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_linkaddr_null
	push	acc
	mov	a,#(_linkaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:1540: update_rtmetric(tc);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_update_rtmetric
	mov	r1,#(_update_rtmetric >> 8)
	mov	r2,#(_update_rtmetric >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/collect.c:1544: linkaddr_copy(&tc->parent, &linkaddr_null);
	mov	a,#0xA2
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#_linkaddr_null
	push	acc
	mov	a,#(_linkaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_print_stats'
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/collect.c:1548: collect_print_stats(void)
;	-----------------------------------------
;	 function collect_print_stats
;	-----------------------------------------
_collect_print_stats:
;	/opt/contiki/core/net/rime/collect.c:1556: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_attributes:
	.db #0x1C	; 28
	.db #0x40	; 64
	.db #0x17	; 23
	.db #0x08	; 8
	.db #0x0E	; 14
	.db #0x08	; 8
	.db #0x16	; 22
	.db #0x04	; 4
	.db #0x15	; 21
	.db #0x04	; 4
	.db #0x11	; 17
	.db #0x05	; 5
	.db #0x0D	; 13
	.db #0x01	; 1
	.db #0x1B	; 27
	.db #0x40	; 64
	.db #0x1A	; 26
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
_unicast_callbacks:
	.byte _node_packet_received, (_node_packet_received >> 8), (_node_packet_received >> 16)
	.byte _node_packet_sent, (_node_packet_sent >> 8), (_node_packet_sent >> 16)
	.area XINIT   (CODE)
__xinit__send_queue_memb:
	.byte #0x22,#0x00	; 34
	.byte #0x04,#0x00	; 4
	.byte _send_queue_memb_memb_count, (_send_queue_memb_memb_count >> 8),#0x00
	.byte _send_queue_memb_memb_mem, (_send_queue_memb_memb_mem >> 8),#0x00
	.area CABS    (ABS,CODE)
