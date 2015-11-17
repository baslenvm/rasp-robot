                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.5 #9380 (Linux)
                                      4 ; This file was generated Wed Nov 18 05:01:26 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module server
                                      7 	.optsdcc -mmcs51 --model-huge
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _autostart_processes
                                     13 	.globl _uart0_rx_callback
                                     14 	.globl _leds_off
                                     15 	.globl _leds_on
                                     16 	.globl _uart0_set_input
                                     17 	.globl _uart0_writeb
                                     18 	.globl _uip_udp_packet_send
                                     19 	.globl _udp_new
                                     20 	.globl _memset
                                     21 	.globl _memcpy
                                     22 	.globl _ACTIVE
                                     23 	.globl _TX_BYTE
                                     24 	.globl _RX_BYTE
                                     25 	.globl _ERR
                                     26 	.globl _FE
                                     27 	.globl _SLAVE
                                     28 	.globl _RE
                                     29 	.globl _MODE
                                     30 	.globl _T3OVFIF
                                     31 	.globl _T3CH0IF
                                     32 	.globl _T3CH1IF
                                     33 	.globl _T4OVFIF
                                     34 	.globl _T4CH0IF
                                     35 	.globl _T4CH1IF
                                     36 	.globl _OVFIM
                                     37 	.globl _B_0
                                     38 	.globl _B_1
                                     39 	.globl _B_2
                                     40 	.globl _B_3
                                     41 	.globl _B_4
                                     42 	.globl _B_5
                                     43 	.globl _B_6
                                     44 	.globl _B_7
                                     45 	.globl _P2IF
                                     46 	.globl _UTX0IF
                                     47 	.globl _UTX1IF
                                     48 	.globl _P1IF
                                     49 	.globl _WDTIF
                                     50 	.globl _ACC_0
                                     51 	.globl _ACC_1
                                     52 	.globl _ACC_2
                                     53 	.globl _ACC_3
                                     54 	.globl _ACC_4
                                     55 	.globl _ACC_5
                                     56 	.globl _ACC_6
                                     57 	.globl _ACC_7
                                     58 	.globl _P
                                     59 	.globl _F1
                                     60 	.globl _OV
                                     61 	.globl _RS0
                                     62 	.globl _RS1
                                     63 	.globl _F0
                                     64 	.globl _AC
                                     65 	.globl _CY
                                     66 	.globl _DMAIF
                                     67 	.globl _T1IF
                                     68 	.globl _T2IF
                                     69 	.globl _T3IF
                                     70 	.globl _T4IF
                                     71 	.globl _P0IF
                                     72 	.globl _STIF
                                     73 	.globl _DMAIE
                                     74 	.globl _T1IE
                                     75 	.globl _T2IE
                                     76 	.globl _T3IE
                                     77 	.globl _T4IE
                                     78 	.globl _P0IE
                                     79 	.globl _RFERRIE
                                     80 	.globl _ADCIE
                                     81 	.globl _URX0IE
                                     82 	.globl _URX1IE
                                     83 	.globl _ENCIE
                                     84 	.globl _STIE
                                     85 	.globl _EA
                                     86 	.globl _P2_0
                                     87 	.globl _P2_1
                                     88 	.globl _P2_2
                                     89 	.globl _P2_3
                                     90 	.globl _P2_4
                                     91 	.globl _P2_5
                                     92 	.globl _P2_6
                                     93 	.globl _P2_7
                                     94 	.globl _ENCIF_0
                                     95 	.globl _ENCIF_1
                                     96 	.globl _P1_0
                                     97 	.globl _P1_1
                                     98 	.globl _P1_2
                                     99 	.globl _P1_3
                                    100 	.globl _P1_4
                                    101 	.globl _P1_5
                                    102 	.globl _P1_6
                                    103 	.globl _P1_7
                                    104 	.globl _IT0
                                    105 	.globl _RFERRIF
                                    106 	.globl _IT1
                                    107 	.globl _URX0IF
                                    108 	.globl _ADCIF
                                    109 	.globl _URX1IF
                                    110 	.globl _P0_0
                                    111 	.globl _P0_1
                                    112 	.globl _P0_2
                                    113 	.globl _P0_3
                                    114 	.globl _P0_4
                                    115 	.globl _P0_5
                                    116 	.globl _P0_6
                                    117 	.globl _P0_7
                                    118 	.globl _WDCTL
                                    119 	.globl _U1GCR
                                    120 	.globl _U1UCR
                                    121 	.globl _U1BAUD
                                    122 	.globl _U1DBUF
                                    123 	.globl _U1CSR
                                    124 	.globl _U0GCR
                                    125 	.globl _U0UCR
                                    126 	.globl _U0BAUD
                                    127 	.globl _U0DBUF
                                    128 	.globl _U0CSR
                                    129 	.globl _TIMIF
                                    130 	.globl _T4CC1
                                    131 	.globl _T4CCTL1
                                    132 	.globl _T4CC0
                                    133 	.globl _T4CCTL0
                                    134 	.globl _T4CTL
                                    135 	.globl _T4CNT
                                    136 	.globl _T3CC1
                                    137 	.globl _T3CCTL1
                                    138 	.globl _T3CC0
                                    139 	.globl _T3CCTL0
                                    140 	.globl _T3CTL
                                    141 	.globl _T3CNT
                                    142 	.globl _T2MSEL
                                    143 	.globl _T2IRQM
                                    144 	.globl _T2MOVF2
                                    145 	.globl _T2MOVF1
                                    146 	.globl _T2MOVF0
                                    147 	.globl _T2M1
                                    148 	.globl _T2M0
                                    149 	.globl _T2IRQF
                                    150 	.globl _T2EVTCFG
                                    151 	.globl _T2CTRL
                                    152 	.globl _T1STAT
                                    153 	.globl _T1CCTL2
                                    154 	.globl _T1CCTL1
                                    155 	.globl _T1CCTL0
                                    156 	.globl _T1CTL
                                    157 	.globl _T1CNTH
                                    158 	.globl _T1CNTL
                                    159 	.globl _T1CC2H
                                    160 	.globl _T1CC2L
                                    161 	.globl _T1CC1H
                                    162 	.globl _T1CC1L
                                    163 	.globl _T1CC0H
                                    164 	.globl _T1CC0L
                                    165 	.globl _CLKCONSTA
                                    166 	.globl _CLKCONCMD
                                    167 	.globl _SLEEPSTA
                                    168 	.globl _SLEEPCMD
                                    169 	.globl _STLOAD
                                    170 	.globl _ST2
                                    171 	.globl _ST1
                                    172 	.globl _ST0
                                    173 	.globl _RFERRF
                                    174 	.globl _RFIRQF0
                                    175 	.globl _RFST
                                    176 	.globl _RFD
                                    177 	.globl _RFIRQF1
                                    178 	.globl _PSBANK
                                    179 	.globl _FMAP
                                    180 	.globl _MEMCTR
                                    181 	.globl __XPAGE
                                    182 	.globl _MPAGE
                                    183 	.globl _PMUX
                                    184 	.globl _P2DIR
                                    185 	.globl _P1DIR
                                    186 	.globl _P0DIR
                                    187 	.globl _P2INP
                                    188 	.globl _P1INP
                                    189 	.globl _P2SEL
                                    190 	.globl _P1SEL
                                    191 	.globl _P0SEL
                                    192 	.globl _APCFG
                                    193 	.globl _PERCFG
                                    194 	.globl _P0INP
                                    195 	.globl _P2IEN
                                    196 	.globl _P1IEN
                                    197 	.globl _P0IEN
                                    198 	.globl _PICTL
                                    199 	.globl _P2IFG
                                    200 	.globl _P1IFG
                                    201 	.globl _P0IFG
                                    202 	.globl _DMAREQ
                                    203 	.globl _DMAARM
                                    204 	.globl _DMA0CFGH
                                    205 	.globl _DMA0CFGL
                                    206 	.globl _DMA1CFGH
                                    207 	.globl _DMA1CFGL
                                    208 	.globl _DMAIRQ
                                    209 	.globl _ENCCS
                                    210 	.globl _ENCDO
                                    211 	.globl _ENCDI
                                    212 	.globl _RNDH
                                    213 	.globl _RNDL
                                    214 	.globl _ADCH
                                    215 	.globl _ADCL
                                    216 	.globl _ADCCON3
                                    217 	.globl _ADCCON2
                                    218 	.globl _ADCCON1
                                    219 	.globl _B
                                    220 	.globl _IRCON2
                                    221 	.globl _ACC
                                    222 	.globl _PSW
                                    223 	.globl _IRCON
                                    224 	.globl _IP1
                                    225 	.globl _IEN1
                                    226 	.globl _IP0
                                    227 	.globl _IEN0
                                    228 	.globl _P2
                                    229 	.globl _S1CON
                                    230 	.globl _IEN2
                                    231 	.globl _S0CON
                                    232 	.globl _DPS
                                    233 	.globl _P1
                                    234 	.globl _TCON
                                    235 	.globl _PCON
                                    236 	.globl _DPH1
                                    237 	.globl _DPL1
                                    238 	.globl _DPH0
                                    239 	.globl _DPL0
                                    240 	.globl _SP
                                    241 	.globl _P0
                                    242 	.globl _udp_server_process
                                    243 	.globl _X_IEEE_ADDR
                                    244 	.globl _X_INFOPAGE
                                    245 	.globl _X_P2DIR
                                    246 	.globl _X_P1DIR
                                    247 	.globl _X_P0DIR
                                    248 	.globl _X_U1GCR
                                    249 	.globl _X_U1UCR
                                    250 	.globl _X_U1BAUD
                                    251 	.globl _X_U1DBUF
                                    252 	.globl _X_U1CSR
                                    253 	.globl _X_P2INP
                                    254 	.globl _X_P1INP
                                    255 	.globl _X_P2SEL
                                    256 	.globl _X_P1SEL
                                    257 	.globl _X_P0SEL
                                    258 	.globl _X_APCFG
                                    259 	.globl _X_PERCFG
                                    260 	.globl _X_T4CC1
                                    261 	.globl _X_T4CCTL1
                                    262 	.globl _X_T4CC0
                                    263 	.globl _X_T4CCTL0
                                    264 	.globl _X_T4CTL
                                    265 	.globl _X_T4CNT
                                    266 	.globl _X_RFIRQF0
                                    267 	.globl _X_T1CCTL2
                                    268 	.globl _X_T1CCTL1
                                    269 	.globl _X_T1CCTL0
                                    270 	.globl _X_T1CTL
                                    271 	.globl _X_T1CNTH
                                    272 	.globl _X_T1CNTL
                                    273 	.globl _X_RFST
                                    274 	.globl _X_T1CC2H
                                    275 	.globl _X_T1CC2L
                                    276 	.globl _X_T1CC1H
                                    277 	.globl _X_T1CC1L
                                    278 	.globl _X_T1CC0H
                                    279 	.globl _X_T1CC0L
                                    280 	.globl _X_RFD
                                    281 	.globl _X_TIMIF
                                    282 	.globl _X_DMAREQ
                                    283 	.globl _X_DMAARM
                                    284 	.globl _X_DMA0CFGH
                                    285 	.globl _X_DMA0CFGL
                                    286 	.globl _X_DMA1CFGH
                                    287 	.globl _X_DMA1CFGL
                                    288 	.globl _X_DMAIRQ
                                    289 	.globl _X_T3CC1
                                    290 	.globl _X_T3CCTL1
                                    291 	.globl _X_T3CC0
                                    292 	.globl _X_T3CCTL0
                                    293 	.globl _X_T3CTL
                                    294 	.globl _X_T3CNT
                                    295 	.globl _X_WDCTL
                                    296 	.globl _X_MEMCTR
                                    297 	.globl _X_CLKCONCMD
                                    298 	.globl _X_U0GCR
                                    299 	.globl _X_U0UCR
                                    300 	.globl _X_T2MSEL
                                    301 	.globl _X_U0BAUD
                                    302 	.globl _X_U0DBUF
                                    303 	.globl _X_RFERRF
                                    304 	.globl _X_SLEEPCMD
                                    305 	.globl _X_RNDH
                                    306 	.globl _X_RNDL
                                    307 	.globl _X_ADCH
                                    308 	.globl _X_ADCL
                                    309 	.globl _X_ADCCON3
                                    310 	.globl _X_ADCCON2
                                    311 	.globl _X_ADCCON1
                                    312 	.globl _X_ENCCS
                                    313 	.globl _X_ENCDO
                                    314 	.globl _X_ENCDI
                                    315 	.globl _X_T1STAT
                                    316 	.globl _X_PMUX
                                    317 	.globl _X_STLOAD
                                    318 	.globl _X_P2IEN
                                    319 	.globl _X_P0IEN
                                    320 	.globl _X_T2IRQM
                                    321 	.globl _X_T2MOVF2
                                    322 	.globl _X_T2MOVF1
                                    323 	.globl _X_T2MOVF0
                                    324 	.globl _X_T2M1
                                    325 	.globl _X_T2M0
                                    326 	.globl _X_T2IRQF
                                    327 	.globl _X_P2
                                    328 	.globl _X_PSBANK
                                    329 	.globl _X_FMAP
                                    330 	.globl _X_CLKCONSTA
                                    331 	.globl _X_SLEEPSTA
                                    332 	.globl _X_T2EVTCFG
                                    333 	.globl _X_ST2
                                    334 	.globl _X_ST1
                                    335 	.globl _X_ST0
                                    336 	.globl _X_T2CTRL
                                    337 	.globl _X__XPAGE
                                    338 	.globl _X_MPAGE
                                    339 	.globl _X_RFIRQF1
                                    340 	.globl _X_P1
                                    341 	.globl _X_P0INP
                                    342 	.globl _X_P1IEN
                                    343 	.globl _X_PICTL
                                    344 	.globl _X_P2IFG
                                    345 	.globl _X_P1IFG
                                    346 	.globl _X_P0IFG
                                    347 	.globl _X_U0CSR
                                    348 	.globl _X_P0
                                    349 	.globl _USBF5
                                    350 	.globl _USBF4
                                    351 	.globl _USBF3
                                    352 	.globl _USBF2
                                    353 	.globl _USBF1
                                    354 	.globl _USBF0
                                    355 	.globl _USBCNTH
                                    356 	.globl _USBCNTL
                                    357 	.globl _USBCNT0
                                    358 	.globl _USBCSOH
                                    359 	.globl _USBCSOL
                                    360 	.globl _USBMAXO
                                    361 	.globl _USBCSIH
                                    362 	.globl _USBCSIL
                                    363 	.globl _USBCS0
                                    364 	.globl _USBMAXI
                                    365 	.globl _USBCTRL
                                    366 	.globl _USBINDEX
                                    367 	.globl _USBFRMH
                                    368 	.globl _USBFRML
                                    369 	.globl _USBCIE
                                    370 	.globl _USBOIE
                                    371 	.globl _USBIIE
                                    372 	.globl _USBCIF
                                    373 	.globl _USBOIF
                                    374 	.globl _USBIIF
                                    375 	.globl _USBPOW
                                    376 	.globl _USBADDR
                                    377 	.globl _CSPT
                                    378 	.globl _CSPZ
                                    379 	.globl _CSPY
                                    380 	.globl _CSPX
                                    381 	.globl _CSPSTAT
                                    382 	.globl _CSPCTRL
                                    383 	.globl _CSPPROG23
                                    384 	.globl _CSPPROG22
                                    385 	.globl _CSPPROG21
                                    386 	.globl _CSPPROG20
                                    387 	.globl _CSPPROG19
                                    388 	.globl _CSPPROG18
                                    389 	.globl _CSPPROG17
                                    390 	.globl _CSPPROG16
                                    391 	.globl _CSPPROG15
                                    392 	.globl _CSPPROG14
                                    393 	.globl _CSPPROG13
                                    394 	.globl _CSPPROG12
                                    395 	.globl _CSPPROG11
                                    396 	.globl _CSPPROG10
                                    397 	.globl _CSPPROG9
                                    398 	.globl _CSPPROG8
                                    399 	.globl _CSPPROG7
                                    400 	.globl _CSPPROG6
                                    401 	.globl _CSPPROG5
                                    402 	.globl _CSPPROG4
                                    403 	.globl _CSPPROG3
                                    404 	.globl _CSPPROG2
                                    405 	.globl _CSPPROG1
                                    406 	.globl _CSPPROG0
                                    407 	.globl _RFC_OBS_CTRL2
                                    408 	.globl _RFC_OBS_CTRL1
                                    409 	.globl _RFC_OBS_CTRL0
                                    410 	.globl _TXFILTCFG
                                    411 	.globl _PTEST1
                                    412 	.globl _PTEST0
                                    413 	.globl _ATEST
                                    414 	.globl _DACTEST2
                                    415 	.globl _DACTEST1
                                    416 	.globl _DACTEST0
                                    417 	.globl _MDMTEST1
                                    418 	.globl _MDMTEST0
                                    419 	.globl _ADCTEST2
                                    420 	.globl _ADCTEST1
                                    421 	.globl _ADCTEST0
                                    422 	.globl _AGCCTRL3
                                    423 	.globl _AGCCTRL2
                                    424 	.globl _AGCCTRL1
                                    425 	.globl _AGCCTRL0
                                    426 	.globl _FSCAL3
                                    427 	.globl _FSCAL2
                                    428 	.globl _FSCAL1
                                    429 	.globl _FSCAL0
                                    430 	.globl _FSCTRL
                                    431 	.globl _RXCTRL
                                    432 	.globl _FREQEST
                                    433 	.globl _MDMCTRL1
                                    434 	.globl _MDMCTRL0
                                    435 	.globl _RFRND
                                    436 	.globl _RFERRM
                                    437 	.globl _RFIRQM1
                                    438 	.globl _RFIRQM0
                                    439 	.globl _TXLAST_PTR
                                    440 	.globl _TXFIRST_PTR
                                    441 	.globl _RXP1_PTR
                                    442 	.globl _RXLAST_PTR
                                    443 	.globl _RXFIRST_PTR
                                    444 	.globl _TXFIFOCNT
                                    445 	.globl _RXFIFOCNT
                                    446 	.globl _RXFIRST
                                    447 	.globl _RSSISTAT
                                    448 	.globl _RSSI
                                    449 	.globl _CCACTRL1
                                    450 	.globl _CCACTRL0
                                    451 	.globl _FSMCTRL
                                    452 	.globl _FIFOPCTRL
                                    453 	.globl _FSMSTAT1
                                    454 	.globl _FSMSTAT0
                                    455 	.globl _TXCTRL
                                    456 	.globl _TXPOWER
                                    457 	.globl _FREQCTRL
                                    458 	.globl _FREQTUNE
                                    459 	.globl _RXMASKCLR
                                    460 	.globl _RXMASKSET
                                    461 	.globl _RXENABLE
                                    462 	.globl _FRMCTRL1
                                    463 	.globl _FRMCTRL0
                                    464 	.globl _SRCEXTEN2
                                    465 	.globl _SRCEXTEN1
                                    466 	.globl _SRCEXTEN0
                                    467 	.globl _SRCSHORTEN2
                                    468 	.globl _SRCSHORTEN1
                                    469 	.globl _SRCSHORTEN0
                                    470 	.globl _SRCMATCH
                                    471 	.globl _FRMFILT1
                                    472 	.globl _FRMFILT0
                                    473 	.globl _SHORT_ADDR1
                                    474 	.globl _SHORT_ADDR0
                                    475 	.globl _PAN_ID1
                                    476 	.globl _PAN_ID0
                                    477 	.globl _EXT_ADDR7
                                    478 	.globl _EXT_ADDR6
                                    479 	.globl _EXT_ADDR5
                                    480 	.globl _EXT_ADDR4
                                    481 	.globl _EXT_ADDR3
                                    482 	.globl _EXT_ADDR2
                                    483 	.globl _EXT_ADDR1
                                    484 	.globl _EXT_ADDR0
                                    485 	.globl _SRCSHORTPENDEN2
                                    486 	.globl _SRCSHORTPENDEN1
                                    487 	.globl _SRCSHORTPENDEN0
                                    488 	.globl _SRCEXTPENDEN2
                                    489 	.globl _SRCEXTPENDEN1
                                    490 	.globl _SRCEXTPENDEN0
                                    491 	.globl _SRCRESINDEX
                                    492 	.globl _SRCRESMASK2
                                    493 	.globl _SRCRESMASK1
                                    494 	.globl _SRCRESMASK0
                                    495 	.globl _SRC_ADDR_TABLE
                                    496 	.globl _TXFIFO
                                    497 	.globl _RXFIFO
                                    498 	.globl _RFCORE_RAM
                                    499 	.globl _CMPCTL
                                    500 	.globl _OPAMPS
                                    501 	.globl _OPAMPC
                                    502 	.globl _STCV2
                                    503 	.globl _STCV1
                                    504 	.globl _STCV0
                                    505 	.globl _STCS
                                    506 	.globl _STCC
                                    507 	.globl _T1CC4H
                                    508 	.globl _T1CC4L
                                    509 	.globl _T1CC3H
                                    510 	.globl _T1CC3L
                                    511 	.globl _XX_T1CC2H
                                    512 	.globl _XX_T1CC2L
                                    513 	.globl _XX_T1CC1H
                                    514 	.globl _XX_T1CC1L
                                    515 	.globl _XX_T1CC0H
                                    516 	.globl _XX_T1CC0L
                                    517 	.globl _T1CCTL4
                                    518 	.globl _T1CCTL3
                                    519 	.globl _XX_T1CCTL2
                                    520 	.globl _XX_T1CCTL1
                                    521 	.globl _XX_T1CCTL0
                                    522 	.globl _CLD
                                    523 	.globl _IRCTL
                                    524 	.globl _CHIPINFO1
                                    525 	.globl _CHIPINFO0
                                    526 	.globl _FWDATA
                                    527 	.globl _FADDRH
                                    528 	.globl _FADDRL
                                    529 	.globl _FCTL
                                    530 	.globl _IVCTRL
                                    531 	.globl _BATTMON
                                    532 	.globl _SRCRC
                                    533 	.globl _DBGDATA
                                    534 	.globl _TESTREG0
                                    535 	.globl _CHIPID
                                    536 	.globl _CHVER
                                    537 	.globl _OBSSEL5
                                    538 	.globl _OBSSEL4
                                    539 	.globl _OBSSEL3
                                    540 	.globl _OBSSEL2
                                    541 	.globl _OBSSEL1
                                    542 	.globl _OBSSEL0
                                    543 	.globl _I2CIO
                                    544 	.globl _I2CWC
                                    545 	.globl _I2CADDR
                                    546 	.globl _I2CDATA
                                    547 	.globl _I2CSTAT
                                    548 	.globl _I2CCFG
                                    549 	.globl _OPAMPMC
                                    550 	.globl _MONMUX
                                    551 ;--------------------------------------------------------
                                    552 ; special function registers
                                    553 ;--------------------------------------------------------
                                    554 	.area RSEG    (ABS,DATA)
      000000                        555 	.org 0x0000
                           000080   556 _P0	=	0x0080
                           000081   557 _SP	=	0x0081
                           000082   558 _DPL0	=	0x0082
                           000083   559 _DPH0	=	0x0083
                           000084   560 _DPL1	=	0x0084
                           000085   561 _DPH1	=	0x0085
                           000087   562 _PCON	=	0x0087
                           000088   563 _TCON	=	0x0088
                           000090   564 _P1	=	0x0090
                           000092   565 _DPS	=	0x0092
                           000098   566 _S0CON	=	0x0098
                           00009A   567 _IEN2	=	0x009a
                           00009B   568 _S1CON	=	0x009b
                           0000A0   569 _P2	=	0x00a0
                           0000A8   570 _IEN0	=	0x00a8
                           0000A9   571 _IP0	=	0x00a9
                           0000B8   572 _IEN1	=	0x00b8
                           0000B9   573 _IP1	=	0x00b9
                           0000C0   574 _IRCON	=	0x00c0
                           0000D0   575 _PSW	=	0x00d0
                           0000E0   576 _ACC	=	0x00e0
                           0000E8   577 _IRCON2	=	0x00e8
                           0000F0   578 _B	=	0x00f0
                           0000B4   579 _ADCCON1	=	0x00b4
                           0000B5   580 _ADCCON2	=	0x00b5
                           0000B6   581 _ADCCON3	=	0x00b6
                           0000BA   582 _ADCL	=	0x00ba
                           0000BB   583 _ADCH	=	0x00bb
                           0000BC   584 _RNDL	=	0x00bc
                           0000BD   585 _RNDH	=	0x00bd
                           0000B1   586 _ENCDI	=	0x00b1
                           0000B2   587 _ENCDO	=	0x00b2
                           0000B3   588 _ENCCS	=	0x00b3
                           0000D1   589 _DMAIRQ	=	0x00d1
                           0000D2   590 _DMA1CFGL	=	0x00d2
                           0000D3   591 _DMA1CFGH	=	0x00d3
                           0000D4   592 _DMA0CFGL	=	0x00d4
                           0000D5   593 _DMA0CFGH	=	0x00d5
                           0000D6   594 _DMAARM	=	0x00d6
                           0000D7   595 _DMAREQ	=	0x00d7
                           000089   596 _P0IFG	=	0x0089
                           00008A   597 _P1IFG	=	0x008a
                           00008B   598 _P2IFG	=	0x008b
                           00008C   599 _PICTL	=	0x008c
                           0000AB   600 _P0IEN	=	0x00ab
                           00008D   601 _P1IEN	=	0x008d
                           0000AC   602 _P2IEN	=	0x00ac
                           00008F   603 _P0INP	=	0x008f
                           0000F1   604 _PERCFG	=	0x00f1
                           0000F2   605 _APCFG	=	0x00f2
                           0000F3   606 _P0SEL	=	0x00f3
                           0000F4   607 _P1SEL	=	0x00f4
                           0000F5   608 _P2SEL	=	0x00f5
                           0000F6   609 _P1INP	=	0x00f6
                           0000F7   610 _P2INP	=	0x00f7
                           0000FD   611 _P0DIR	=	0x00fd
                           0000FE   612 _P1DIR	=	0x00fe
                           0000FF   613 _P2DIR	=	0x00ff
                           0000AE   614 _PMUX	=	0x00ae
                           000093   615 _MPAGE	=	0x0093
                           000093   616 __XPAGE	=	0x0093
                           0000C7   617 _MEMCTR	=	0x00c7
                           00009F   618 _FMAP	=	0x009f
                           00009F   619 _PSBANK	=	0x009f
                           000091   620 _RFIRQF1	=	0x0091
                           0000D9   621 _RFD	=	0x00d9
                           0000E1   622 _RFST	=	0x00e1
                           0000E9   623 _RFIRQF0	=	0x00e9
                           0000BF   624 _RFERRF	=	0x00bf
                           000095   625 _ST0	=	0x0095
                           000096   626 _ST1	=	0x0096
                           000097   627 _ST2	=	0x0097
                           0000AD   628 _STLOAD	=	0x00ad
                           0000BE   629 _SLEEPCMD	=	0x00be
                           00009D   630 _SLEEPSTA	=	0x009d
                           0000C6   631 _CLKCONCMD	=	0x00c6
                           00009E   632 _CLKCONSTA	=	0x009e
                           0000DA   633 _T1CC0L	=	0x00da
                           0000DB   634 _T1CC0H	=	0x00db
                           0000DC   635 _T1CC1L	=	0x00dc
                           0000DD   636 _T1CC1H	=	0x00dd
                           0000DE   637 _T1CC2L	=	0x00de
                           0000DF   638 _T1CC2H	=	0x00df
                           0000E2   639 _T1CNTL	=	0x00e2
                           0000E3   640 _T1CNTH	=	0x00e3
                           0000E4   641 _T1CTL	=	0x00e4
                           0000E5   642 _T1CCTL0	=	0x00e5
                           0000E6   643 _T1CCTL1	=	0x00e6
                           0000E7   644 _T1CCTL2	=	0x00e7
                           0000AF   645 _T1STAT	=	0x00af
                           000094   646 _T2CTRL	=	0x0094
                           00009C   647 _T2EVTCFG	=	0x009c
                           0000A1   648 _T2IRQF	=	0x00a1
                           0000A2   649 _T2M0	=	0x00a2
                           0000A3   650 _T2M1	=	0x00a3
                           0000A4   651 _T2MOVF0	=	0x00a4
                           0000A5   652 _T2MOVF1	=	0x00a5
                           0000A6   653 _T2MOVF2	=	0x00a6
                           0000A7   654 _T2IRQM	=	0x00a7
                           0000C3   655 _T2MSEL	=	0x00c3
                           0000CA   656 _T3CNT	=	0x00ca
                           0000CB   657 _T3CTL	=	0x00cb
                           0000CC   658 _T3CCTL0	=	0x00cc
                           0000CD   659 _T3CC0	=	0x00cd
                           0000CE   660 _T3CCTL1	=	0x00ce
                           0000CF   661 _T3CC1	=	0x00cf
                           0000EA   662 _T4CNT	=	0x00ea
                           0000EB   663 _T4CTL	=	0x00eb
                           0000EC   664 _T4CCTL0	=	0x00ec
                           0000ED   665 _T4CC0	=	0x00ed
                           0000EE   666 _T4CCTL1	=	0x00ee
                           0000EF   667 _T4CC1	=	0x00ef
                           0000D8   668 _TIMIF	=	0x00d8
                           000086   669 _U0CSR	=	0x0086
                           0000C1   670 _U0DBUF	=	0x00c1
                           0000C2   671 _U0BAUD	=	0x00c2
                           0000C4   672 _U0UCR	=	0x00c4
                           0000C5   673 _U0GCR	=	0x00c5
                           0000F8   674 _U1CSR	=	0x00f8
                           0000F9   675 _U1DBUF	=	0x00f9
                           0000FA   676 _U1BAUD	=	0x00fa
                           0000FB   677 _U1UCR	=	0x00fb
                           0000FC   678 _U1GCR	=	0x00fc
                           0000C9   679 _WDCTL	=	0x00c9
                                    680 ;--------------------------------------------------------
                                    681 ; special function bits
                                    682 ;--------------------------------------------------------
                                    683 	.area RSEG    (ABS,DATA)
      000000                        684 	.org 0x0000
                           000087   685 _P0_7	=	0x0087
                           000086   686 _P0_6	=	0x0086
                           000085   687 _P0_5	=	0x0085
                           000084   688 _P0_4	=	0x0084
                           000083   689 _P0_3	=	0x0083
                           000082   690 _P0_2	=	0x0082
                           000081   691 _P0_1	=	0x0081
                           000080   692 _P0_0	=	0x0080
                           00008F   693 _URX1IF	=	0x008f
                           00008D   694 _ADCIF	=	0x008d
                           00008B   695 _URX0IF	=	0x008b
                           00008A   696 _IT1	=	0x008a
                           000089   697 _RFERRIF	=	0x0089
                           000088   698 _IT0	=	0x0088
                           000097   699 _P1_7	=	0x0097
                           000096   700 _P1_6	=	0x0096
                           000095   701 _P1_5	=	0x0095
                           000094   702 _P1_4	=	0x0094
                           000093   703 _P1_3	=	0x0093
                           000092   704 _P1_2	=	0x0092
                           000091   705 _P1_1	=	0x0091
                           000090   706 _P1_0	=	0x0090
                           000099   707 _ENCIF_1	=	0x0099
                           000098   708 _ENCIF_0	=	0x0098
                           0000A7   709 _P2_7	=	0x00a7
                           0000A6   710 _P2_6	=	0x00a6
                           0000A5   711 _P2_5	=	0x00a5
                           0000A4   712 _P2_4	=	0x00a4
                           0000A3   713 _P2_3	=	0x00a3
                           0000A2   714 _P2_2	=	0x00a2
                           0000A1   715 _P2_1	=	0x00a1
                           0000A0   716 _P2_0	=	0x00a0
                           0000AF   717 _EA	=	0x00af
                           0000AD   718 _STIE	=	0x00ad
                           0000AC   719 _ENCIE	=	0x00ac
                           0000AB   720 _URX1IE	=	0x00ab
                           0000AA   721 _URX0IE	=	0x00aa
                           0000A9   722 _ADCIE	=	0x00a9
                           0000A8   723 _RFERRIE	=	0x00a8
                           0000BD   724 _P0IE	=	0x00bd
                           0000BC   725 _T4IE	=	0x00bc
                           0000BB   726 _T3IE	=	0x00bb
                           0000BA   727 _T2IE	=	0x00ba
                           0000B9   728 _T1IE	=	0x00b9
                           0000B8   729 _DMAIE	=	0x00b8
                           0000C7   730 _STIF	=	0x00c7
                           0000C5   731 _P0IF	=	0x00c5
                           0000C4   732 _T4IF	=	0x00c4
                           0000C3   733 _T3IF	=	0x00c3
                           0000C2   734 _T2IF	=	0x00c2
                           0000C1   735 _T1IF	=	0x00c1
                           0000C0   736 _DMAIF	=	0x00c0
                           0000D7   737 _CY	=	0x00d7
                           0000D6   738 _AC	=	0x00d6
                           0000D5   739 _F0	=	0x00d5
                           0000D4   740 _RS1	=	0x00d4
                           0000D3   741 _RS0	=	0x00d3
                           0000D2   742 _OV	=	0x00d2
                           0000D1   743 _F1	=	0x00d1
                           0000D0   744 _P	=	0x00d0
                           0000E7   745 _ACC_7	=	0x00e7
                           0000E6   746 _ACC_6	=	0x00e6
                           0000E5   747 _ACC_5	=	0x00e5
                           0000E4   748 _ACC_4	=	0x00e4
                           0000E3   749 _ACC_3	=	0x00e3
                           0000E2   750 _ACC_2	=	0x00e2
                           0000E1   751 _ACC_1	=	0x00e1
                           0000E0   752 _ACC_0	=	0x00e0
                           0000EC   753 _WDTIF	=	0x00ec
                           0000EB   754 _P1IF	=	0x00eb
                           0000EA   755 _UTX1IF	=	0x00ea
                           0000E9   756 _UTX0IF	=	0x00e9
                           0000E8   757 _P2IF	=	0x00e8
                           0000F7   758 _B_7	=	0x00f7
                           0000F6   759 _B_6	=	0x00f6
                           0000F5   760 _B_5	=	0x00f5
                           0000F4   761 _B_4	=	0x00f4
                           0000F3   762 _B_3	=	0x00f3
                           0000F2   763 _B_2	=	0x00f2
                           0000F1   764 _B_1	=	0x00f1
                           0000F0   765 _B_0	=	0x00f0
                           0000DE   766 _OVFIM	=	0x00de
                           0000DD   767 _T4CH1IF	=	0x00dd
                           0000DC   768 _T4CH0IF	=	0x00dc
                           0000DB   769 _T4OVFIF	=	0x00db
                           0000DA   770 _T3CH1IF	=	0x00da
                           0000D9   771 _T3CH0IF	=	0x00d9
                           0000D8   772 _T3OVFIF	=	0x00d8
                           0000FF   773 _MODE	=	0x00ff
                           0000FE   774 _RE	=	0x00fe
                           0000FD   775 _SLAVE	=	0x00fd
                           0000FC   776 _FE	=	0x00fc
                           0000FB   777 _ERR	=	0x00fb
                           0000FA   778 _RX_BYTE	=	0x00fa
                           0000F9   779 _TX_BYTE	=	0x00f9
                           0000F8   780 _ACTIVE	=	0x00f8
                                    781 ;--------------------------------------------------------
                                    782 ; overlayable register banks
                                    783 ;--------------------------------------------------------
                                    784 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        785 	.ds 8
                                    786 ;--------------------------------------------------------
                                    787 ; internal ram data
                                    788 ;--------------------------------------------------------
                                    789 	.area DSEG    (DATA)
                                    790 ;--------------------------------------------------------
                                    791 ; overlayable items in internal ram 
                                    792 ;--------------------------------------------------------
                                    793 ;--------------------------------------------------------
                                    794 ; indirectly addressable internal ram data
                                    795 ;--------------------------------------------------------
                                    796 	.area ISEG    (DATA)
                                    797 ;--------------------------------------------------------
                                    798 ; absolute internal ram data
                                    799 ;--------------------------------------------------------
                                    800 	.area IABS    (ABS,DATA)
                                    801 	.area IABS    (ABS,DATA)
                                    802 ;--------------------------------------------------------
                                    803 ; bit data
                                    804 ;--------------------------------------------------------
                                    805 	.area BSEG    (BIT)
                                    806 ;--------------------------------------------------------
                                    807 ; paged external ram data
                                    808 ;--------------------------------------------------------
                                    809 	.area PSEG    (PAG,XDATA)
                                    810 ;--------------------------------------------------------
                                    811 ; external ram data
                                    812 ;--------------------------------------------------------
                                    813 	.area XSEG    (XDATA)
                           0061A6   814 _MONMUX	=	0x61a6
                           0061A6   815 _OPAMPMC	=	0x61a6
                           006230   816 _I2CCFG	=	0x6230
                           006231   817 _I2CSTAT	=	0x6231
                           006232   818 _I2CDATA	=	0x6232
                           006233   819 _I2CADDR	=	0x6233
                           006234   820 _I2CWC	=	0x6234
                           006235   821 _I2CIO	=	0x6235
                           006243   822 _OBSSEL0	=	0x6243
                           006244   823 _OBSSEL1	=	0x6244
                           006245   824 _OBSSEL2	=	0x6245
                           006246   825 _OBSSEL3	=	0x6246
                           006247   826 _OBSSEL4	=	0x6247
                           006248   827 _OBSSEL5	=	0x6248
                           006249   828 _CHVER	=	0x6249
                           00624A   829 _CHIPID	=	0x624a
                           00624B   830 _TESTREG0	=	0x624b
                           006260   831 _DBGDATA	=	0x6260
                           006262   832 _SRCRC	=	0x6262
                           006264   833 _BATTMON	=	0x6264
                           006265   834 _IVCTRL	=	0x6265
                           006270   835 _FCTL	=	0x6270
                           006271   836 _FADDRL	=	0x6271
                           006272   837 _FADDRH	=	0x6272
                           006273   838 _FWDATA	=	0x6273
                           006276   839 _CHIPINFO0	=	0x6276
                           006277   840 _CHIPINFO1	=	0x6277
                           006281   841 _IRCTL	=	0x6281
                           006290   842 _CLD	=	0x6290
                           0062A0   843 _XX_T1CCTL0	=	0x62a0
                           0062A1   844 _XX_T1CCTL1	=	0x62a1
                           0062A2   845 _XX_T1CCTL2	=	0x62a2
                           0062A3   846 _T1CCTL3	=	0x62a3
                           0062A4   847 _T1CCTL4	=	0x62a4
                           0062A6   848 _XX_T1CC0L	=	0x62a6
                           0062A7   849 _XX_T1CC0H	=	0x62a7
                           0062A8   850 _XX_T1CC1L	=	0x62a8
                           0062A9   851 _XX_T1CC1H	=	0x62a9
                           0062AA   852 _XX_T1CC2L	=	0x62aa
                           0062AB   853 _XX_T1CC2H	=	0x62ab
                           0062AC   854 _T1CC3L	=	0x62ac
                           0062AD   855 _T1CC3H	=	0x62ad
                           0062AE   856 _T1CC4L	=	0x62ae
                           0062AF   857 _T1CC4H	=	0x62af
                           0062B0   858 _STCC	=	0x62b0
                           0062B1   859 _STCS	=	0x62b1
                           0062B2   860 _STCV0	=	0x62b2
                           0062B3   861 _STCV1	=	0x62b3
                           0062B4   862 _STCV2	=	0x62b4
                           0062C0   863 _OPAMPC	=	0x62c0
                           0062C1   864 _OPAMPS	=	0x62c1
                           0062D0   865 _CMPCTL	=	0x62d0
                           006000   866 _RFCORE_RAM	=	0x6000
                           006000   867 _RXFIFO	=	0x6000
                           006080   868 _TXFIFO	=	0x6080
                           006100   869 _SRC_ADDR_TABLE	=	0x6100
                           006160   870 _SRCRESMASK0	=	0x6160
                           006161   871 _SRCRESMASK1	=	0x6161
                           006162   872 _SRCRESMASK2	=	0x6162
                           006163   873 _SRCRESINDEX	=	0x6163
                           006164   874 _SRCEXTPENDEN0	=	0x6164
                           006165   875 _SRCEXTPENDEN1	=	0x6165
                           006166   876 _SRCEXTPENDEN2	=	0x6166
                           006167   877 _SRCSHORTPENDEN0	=	0x6167
                           006168   878 _SRCSHORTPENDEN1	=	0x6168
                           006169   879 _SRCSHORTPENDEN2	=	0x6169
                           00616A   880 _EXT_ADDR0	=	0x616a
                           00616B   881 _EXT_ADDR1	=	0x616b
                           00616C   882 _EXT_ADDR2	=	0x616c
                           00616D   883 _EXT_ADDR3	=	0x616d
                           00616E   884 _EXT_ADDR4	=	0x616e
                           00616F   885 _EXT_ADDR5	=	0x616f
                           006170   886 _EXT_ADDR6	=	0x6170
                           006171   887 _EXT_ADDR7	=	0x6171
                           006172   888 _PAN_ID0	=	0x6172
                           006173   889 _PAN_ID1	=	0x6173
                           006174   890 _SHORT_ADDR0	=	0x6174
                           006175   891 _SHORT_ADDR1	=	0x6175
                           006180   892 _FRMFILT0	=	0x6180
                           006181   893 _FRMFILT1	=	0x6181
                           006182   894 _SRCMATCH	=	0x6182
                           006183   895 _SRCSHORTEN0	=	0x6183
                           006184   896 _SRCSHORTEN1	=	0x6184
                           006185   897 _SRCSHORTEN2	=	0x6185
                           006186   898 _SRCEXTEN0	=	0x6186
                           006187   899 _SRCEXTEN1	=	0x6187
                           006188   900 _SRCEXTEN2	=	0x6188
                           006189   901 _FRMCTRL0	=	0x6189
                           00618A   902 _FRMCTRL1	=	0x618a
                           00618B   903 _RXENABLE	=	0x618b
                           00618C   904 _RXMASKSET	=	0x618c
                           00618D   905 _RXMASKCLR	=	0x618d
                           00618E   906 _FREQTUNE	=	0x618e
                           00618F   907 _FREQCTRL	=	0x618f
                           006190   908 _TXPOWER	=	0x6190
                           006191   909 _TXCTRL	=	0x6191
                           006192   910 _FSMSTAT0	=	0x6192
                           006193   911 _FSMSTAT1	=	0x6193
                           006194   912 _FIFOPCTRL	=	0x6194
                           006195   913 _FSMCTRL	=	0x6195
                           006196   914 _CCACTRL0	=	0x6196
                           006197   915 _CCACTRL1	=	0x6197
                           006198   916 _RSSI	=	0x6198
                           006199   917 _RSSISTAT	=	0x6199
                           00619A   918 _RXFIRST	=	0x619a
                           00619B   919 _RXFIFOCNT	=	0x619b
                           00619C   920 _TXFIFOCNT	=	0x619c
                           00619D   921 _RXFIRST_PTR	=	0x619d
                           00619E   922 _RXLAST_PTR	=	0x619e
                           00619F   923 _RXP1_PTR	=	0x619f
                           0061A1   924 _TXFIRST_PTR	=	0x61a1
                           0061A2   925 _TXLAST_PTR	=	0x61a2
                           0061A3   926 _RFIRQM0	=	0x61a3
                           0061A4   927 _RFIRQM1	=	0x61a4
                           0061A5   928 _RFERRM	=	0x61a5
                           0061A7   929 _RFRND	=	0x61a7
                           0061A8   930 _MDMCTRL0	=	0x61a8
                           0061A9   931 _MDMCTRL1	=	0x61a9
                           0061AA   932 _FREQEST	=	0x61aa
                           0061AB   933 _RXCTRL	=	0x61ab
                           0061AC   934 _FSCTRL	=	0x61ac
                           0061AD   935 _FSCAL0	=	0x61ad
                           0061AE   936 _FSCAL1	=	0x61ae
                           0061AF   937 _FSCAL2	=	0x61af
                           0061B0   938 _FSCAL3	=	0x61b0
                           0061B1   939 _AGCCTRL0	=	0x61b1
                           0061B2   940 _AGCCTRL1	=	0x61b2
                           0061B3   941 _AGCCTRL2	=	0x61b3
                           0061B4   942 _AGCCTRL3	=	0x61b4
                           0061B5   943 _ADCTEST0	=	0x61b5
                           0061B6   944 _ADCTEST1	=	0x61b6
                           0061B7   945 _ADCTEST2	=	0x61b7
                           0061B8   946 _MDMTEST0	=	0x61b8
                           0061B9   947 _MDMTEST1	=	0x61b9
                           0061BA   948 _DACTEST0	=	0x61ba
                           0061BB   949 _DACTEST1	=	0x61bb
                           0061BC   950 _DACTEST2	=	0x61bc
                           0061BD   951 _ATEST	=	0x61bd
                           0061BE   952 _PTEST0	=	0x61be
                           0061BF   953 _PTEST1	=	0x61bf
                           0061FA   954 _TXFILTCFG	=	0x61fa
                           0061EB   955 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   956 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   957 _RFC_OBS_CTRL2	=	0x61ed
                           0061C0   958 _CSPPROG0	=	0x61c0
                           0061C1   959 _CSPPROG1	=	0x61c1
                           0061C2   960 _CSPPROG2	=	0x61c2
                           0061C3   961 _CSPPROG3	=	0x61c3
                           0061C4   962 _CSPPROG4	=	0x61c4
                           0061C5   963 _CSPPROG5	=	0x61c5
                           0061C6   964 _CSPPROG6	=	0x61c6
                           0061C7   965 _CSPPROG7	=	0x61c7
                           0061C8   966 _CSPPROG8	=	0x61c8
                           0061C9   967 _CSPPROG9	=	0x61c9
                           0061CA   968 _CSPPROG10	=	0x61ca
                           0061CB   969 _CSPPROG11	=	0x61cb
                           0061CC   970 _CSPPROG12	=	0x61cc
                           0061CD   971 _CSPPROG13	=	0x61cd
                           0061CE   972 _CSPPROG14	=	0x61ce
                           0061CF   973 _CSPPROG15	=	0x61cf
                           0061D0   974 _CSPPROG16	=	0x61d0
                           0061D1   975 _CSPPROG17	=	0x61d1
                           0061D2   976 _CSPPROG18	=	0x61d2
                           0061D3   977 _CSPPROG19	=	0x61d3
                           0061D4   978 _CSPPROG20	=	0x61d4
                           0061D5   979 _CSPPROG21	=	0x61d5
                           0061D6   980 _CSPPROG22	=	0x61d6
                           0061D7   981 _CSPPROG23	=	0x61d7
                           0061E0   982 _CSPCTRL	=	0x61e0
                           0061E1   983 _CSPSTAT	=	0x61e1
                           0061E2   984 _CSPX	=	0x61e2
                           0061E3   985 _CSPY	=	0x61e3
                           0061E4   986 _CSPZ	=	0x61e4
                           0061E5   987 _CSPT	=	0x61e5
                           006200   988 _USBADDR	=	0x6200
                           006201   989 _USBPOW	=	0x6201
                           006202   990 _USBIIF	=	0x6202
                           006204   991 _USBOIF	=	0x6204
                           006206   992 _USBCIF	=	0x6206
                           006207   993 _USBIIE	=	0x6207
                           006209   994 _USBOIE	=	0x6209
                           00620B   995 _USBCIE	=	0x620b
                           00620C   996 _USBFRML	=	0x620c
                           00620D   997 _USBFRMH	=	0x620d
                           00620E   998 _USBINDEX	=	0x620e
                           00620F   999 _USBCTRL	=	0x620f
                           006210  1000 _USBMAXI	=	0x6210
                           006211  1001 _USBCS0	=	0x6211
                           006211  1002 _USBCSIL	=	0x6211
                           006212  1003 _USBCSIH	=	0x6212
                           006213  1004 _USBMAXO	=	0x6213
                           006214  1005 _USBCSOL	=	0x6214
                           006215  1006 _USBCSOH	=	0x6215
                           006216  1007 _USBCNT0	=	0x6216
                           006216  1008 _USBCNTL	=	0x6216
                           006217  1009 _USBCNTH	=	0x6217
                           006220  1010 _USBF0	=	0x6220
                           006222  1011 _USBF1	=	0x6222
                           006224  1012 _USBF2	=	0x6224
                           006226  1013 _USBF3	=	0x6226
                           006228  1014 _USBF4	=	0x6228
                           00622A  1015 _USBF5	=	0x622a
                           007080  1016 _X_P0	=	0x7080
                           007086  1017 _X_U0CSR	=	0x7086
                           007089  1018 _X_P0IFG	=	0x7089
                           00708A  1019 _X_P1IFG	=	0x708a
                           00708B  1020 _X_P2IFG	=	0x708b
                           00708C  1021 _X_PICTL	=	0x708c
                           00708D  1022 _X_P1IEN	=	0x708d
                           00708F  1023 _X_P0INP	=	0x708f
                           007090  1024 _X_P1	=	0x7090
                           007091  1025 _X_RFIRQF1	=	0x7091
                           007093  1026 _X_MPAGE	=	0x7093
                           007093  1027 _X__XPAGE	=	0x7093
                           007094  1028 _X_T2CTRL	=	0x7094
                           007095  1029 _X_ST0	=	0x7095
                           007096  1030 _X_ST1	=	0x7096
                           007097  1031 _X_ST2	=	0x7097
                           00709C  1032 _X_T2EVTCFG	=	0x709c
                           00709D  1033 _X_SLEEPSTA	=	0x709d
                           00709E  1034 _X_CLKCONSTA	=	0x709e
                           00709F  1035 _X_FMAP	=	0x709f
                           00709F  1036 _X_PSBANK	=	0x709f
                           0070A0  1037 _X_P2	=	0x70a0
                           0070A1  1038 _X_T2IRQF	=	0x70a1
                           0070A2  1039 _X_T2M0	=	0x70a2
                           0070A3  1040 _X_T2M1	=	0x70a3
                           0070A4  1041 _X_T2MOVF0	=	0x70a4
                           0070A5  1042 _X_T2MOVF1	=	0x70a5
                           0070A6  1043 _X_T2MOVF2	=	0x70a6
                           0070A7  1044 _X_T2IRQM	=	0x70a7
                           0070AB  1045 _X_P0IEN	=	0x70ab
                           0070AC  1046 _X_P2IEN	=	0x70ac
                           0070AD  1047 _X_STLOAD	=	0x70ad
                           0070AE  1048 _X_PMUX	=	0x70ae
                           0070AF  1049 _X_T1STAT	=	0x70af
                           0070B1  1050 _X_ENCDI	=	0x70b1
                           0070B2  1051 _X_ENCDO	=	0x70b2
                           0070B3  1052 _X_ENCCS	=	0x70b3
                           0070B4  1053 _X_ADCCON1	=	0x70b4
                           0070B5  1054 _X_ADCCON2	=	0x70b5
                           0070B6  1055 _X_ADCCON3	=	0x70b6
                           0070BA  1056 _X_ADCL	=	0x70ba
                           0070BB  1057 _X_ADCH	=	0x70bb
                           0070BC  1058 _X_RNDL	=	0x70bc
                           0070BD  1059 _X_RNDH	=	0x70bd
                           0070BE  1060 _X_SLEEPCMD	=	0x70be
                           0070BF  1061 _X_RFERRF	=	0x70bf
                           0070C1  1062 _X_U0DBUF	=	0x70c1
                           0070C2  1063 _X_U0BAUD	=	0x70c2
                           0070C3  1064 _X_T2MSEL	=	0x70c3
                           0070C4  1065 _X_U0UCR	=	0x70c4
                           0070C5  1066 _X_U0GCR	=	0x70c5
                           0070C6  1067 _X_CLKCONCMD	=	0x70c6
                           0070C7  1068 _X_MEMCTR	=	0x70c7
                           0070C9  1069 _X_WDCTL	=	0x70c9
                           0070CA  1070 _X_T3CNT	=	0x70ca
                           0070CB  1071 _X_T3CTL	=	0x70cb
                           0070CC  1072 _X_T3CCTL0	=	0x70cc
                           0070CD  1073 _X_T3CC0	=	0x70cd
                           0070CE  1074 _X_T3CCTL1	=	0x70ce
                           0070CF  1075 _X_T3CC1	=	0x70cf
                           0070D1  1076 _X_DMAIRQ	=	0x70d1
                           0070D2  1077 _X_DMA1CFGL	=	0x70d2
                           0070D3  1078 _X_DMA1CFGH	=	0x70d3
                           0070D4  1079 _X_DMA0CFGL	=	0x70d4
                           0070D5  1080 _X_DMA0CFGH	=	0x70d5
                           0070D6  1081 _X_DMAARM	=	0x70d6
                           0070D7  1082 _X_DMAREQ	=	0x70d7
                           0070D8  1083 _X_TIMIF	=	0x70d8
                           0070D9  1084 _X_RFD	=	0x70d9
                           0070DA  1085 _X_T1CC0L	=	0x70da
                           0070DB  1086 _X_T1CC0H	=	0x70db
                           0070DC  1087 _X_T1CC1L	=	0x70dc
                           0070DD  1088 _X_T1CC1H	=	0x70dd
                           0070DE  1089 _X_T1CC2L	=	0x70de
                           0070DF  1090 _X_T1CC2H	=	0x70df
                           0070E1  1091 _X_RFST	=	0x70e1
                           0070E2  1092 _X_T1CNTL	=	0x70e2
                           0070E3  1093 _X_T1CNTH	=	0x70e3
                           0070E4  1094 _X_T1CTL	=	0x70e4
                           0070E5  1095 _X_T1CCTL0	=	0x70e5
                           0070E6  1096 _X_T1CCTL1	=	0x70e6
                           0070E7  1097 _X_T1CCTL2	=	0x70e7
                           0070E9  1098 _X_RFIRQF0	=	0x70e9
                           0070EA  1099 _X_T4CNT	=	0x70ea
                           0070EB  1100 _X_T4CTL	=	0x70eb
                           0070EC  1101 _X_T4CCTL0	=	0x70ec
                           0070ED  1102 _X_T4CC0	=	0x70ed
                           0070EE  1103 _X_T4CCTL1	=	0x70ee
                           0070EF  1104 _X_T4CC1	=	0x70ef
                           0070F1  1105 _X_PERCFG	=	0x70f1
                           0070F2  1106 _X_APCFG	=	0x70f2
                           0070F3  1107 _X_P0SEL	=	0x70f3
                           0070F4  1108 _X_P1SEL	=	0x70f4
                           0070F5  1109 _X_P2SEL	=	0x70f5
                           0070F6  1110 _X_P1INP	=	0x70f6
                           0070F7  1111 _X_P2INP	=	0x70f7
                           0070F8  1112 _X_U1CSR	=	0x70f8
                           0070F9  1113 _X_U1DBUF	=	0x70f9
                           0070FA  1114 _X_U1BAUD	=	0x70fa
                           0070FB  1115 _X_U1UCR	=	0x70fb
                           0070FC  1116 _X_U1GCR	=	0x70fc
                           0070FD  1117 _X_P0DIR	=	0x70fd
                           0070FE  1118 _X_P1DIR	=	0x70fe
                           0070FF  1119 _X_P2DIR	=	0x70ff
                           007800  1120 _X_INFOPAGE	=	0x7800
                           00780C  1121 _X_IEEE_ADDR	=	0x780c
      000004                       1122 _server_conn:
      000004                       1123 	.ds 3
      000007                       1124 _buf:
      000007                       1125 	.ds 120
      00007F                       1126 _len:
      00007F                       1127 	.ds 2
      000081                       1128 _uart0_char:
      000081                       1129 	.ds 120
                                   1130 ;--------------------------------------------------------
                                   1131 ; absolute external ram data
                                   1132 ;--------------------------------------------------------
                                   1133 	.area XABS    (ABS,XDATA)
                                   1134 ;--------------------------------------------------------
                                   1135 ; external initialized ram data
                                   1136 ;--------------------------------------------------------
                                   1137 	.area XISEG   (XDATA)
      0011F6                       1138 _udp_server_process::
      0011F6                       1139 	.ds 10
                                   1140 	.area HOME    (CODE)
                                   1141 	.area GSINIT0 (CODE)
                                   1142 	.area GSINIT1 (CODE)
                                   1143 	.area GSINIT2 (CODE)
                                   1144 	.area GSINIT3 (CODE)
                                   1145 	.area GSINIT4 (CODE)
                                   1146 	.area GSINIT5 (CODE)
                                   1147 	.area GSINIT  (CODE)
                                   1148 	.area GSFINAL (CODE)
                                   1149 	.area CSEG    (CODE)
                                   1150 ;--------------------------------------------------------
                                   1151 ; global & static initialisations
                                   1152 ;--------------------------------------------------------
                                   1153 	.area HOME    (CODE)
                                   1154 	.area GSINIT  (CODE)
                                   1155 	.area GSFINAL (CODE)
                                   1156 	.area GSINIT  (CODE)
                                   1157 ;--------------------------------------------------------
                                   1158 ; Home
                                   1159 ;--------------------------------------------------------
                                   1160 	.area HOME    (CODE)
                                   1161 	.area HOME    (CODE)
                                   1162 ;--------------------------------------------------------
                                   1163 ; code
                                   1164 ;--------------------------------------------------------
                                   1165 	.area BANK1   (CODE)
                                   1166 ;------------------------------------------------------------
                                   1167 ;Allocation info for local variables in function 'uart0_rx_callback'
                                   1168 ;------------------------------------------------------------
                                   1169 ;c                         Allocated to registers r7 
                                   1170 ;------------------------------------------------------------
                                   1171 ;	server.c:64: int uart0_rx_callback(unsigned char c)
                                   1172 ;	-----------------------------------------
                                   1173 ;	 function uart0_rx_callback
                                   1174 ;	-----------------------------------------
      00069F                       1175 _uart0_rx_callback:
                           000007  1176 	ar7 = 0x07
                           000006  1177 	ar6 = 0x06
                           000005  1178 	ar5 = 0x05
                           000004  1179 	ar4 = 0x04
                           000003  1180 	ar3 = 0x03
                           000002  1181 	ar2 = 0x02
                           000001  1182 	ar1 = 0x01
                           000000  1183 	ar0 = 0x00
                                   1184 ;	server.c:66: uart0_writeb(c);
      00069F 78 A9            [12] 1185 	mov	r0,#_uart0_writeb
      0006A1 79 9B            [12] 1186 	mov	r1,#(_uart0_writeb >> 8)
      0006A3 7A 04            [12] 1187 	mov	r2,#(_uart0_writeb >> 16)
      0006A5 12 20 BA         [24] 1188 	lcall	__sdcc_banked_call
                                   1189 ;	server.c:67: uart0_writeb('\r');
      0006A8 75 82 0D         [24] 1190 	mov	dpl,#0x0D
      0006AB 78 A9            [12] 1191 	mov	r0,#_uart0_writeb
      0006AD 79 9B            [12] 1192 	mov	r1,#(_uart0_writeb >> 8)
      0006AF 7A 04            [12] 1193 	mov	r2,#(_uart0_writeb >> 16)
      0006B1 12 20 BA         [24] 1194 	lcall	__sdcc_banked_call
                                   1195 ;	server.c:68: uart0_writeb('\n');
      0006B4 75 82 0A         [24] 1196 	mov	dpl,#0x0A
      0006B7 78 A9            [12] 1197 	mov	r0,#_uart0_writeb
      0006B9 79 9B            [12] 1198 	mov	r1,#(_uart0_writeb >> 8)
      0006BB 7A 04            [12] 1199 	mov	r2,#(_uart0_writeb >> 16)
      0006BD 12 20 BA         [24] 1200 	lcall	__sdcc_banked_call
                                   1201 ;	server.c:70: return 1;
      0006C0 90 00 01         [24] 1202 	mov	dptr,#0x0001
      0006C3 02 20 CC         [24] 1203 	ljmp	__sdcc_banked_ret
                                   1204 ;------------------------------------------------------------
                                   1205 ;Allocation info for local variables in function 'tcpip_handler'
                                   1206 ;------------------------------------------------------------
                                   1207 ;	server.c:74: tcpip_handler(void)
                                   1208 ;	-----------------------------------------
                                   1209 ;	 function tcpip_handler
                                   1210 ;	-----------------------------------------
      0006C6                       1211 _tcpip_handler:
                                   1212 ;	server.c:76: memset(buf, 0, MAX_PAYLOAD_LEN);
      0006C6 74 78            [12] 1213 	mov	a,#0x78
      0006C8 C0 E0            [24] 1214 	push	acc
      0006CA E4               [12] 1215 	clr	a
      0006CB C0 E0            [24] 1216 	push	acc
      0006CD C0 E0            [24] 1217 	push	acc
      0006CF 90 00 07         [24] 1218 	mov	dptr,#_buf
      0006D2 75 F0 00         [24] 1219 	mov	b,#0x00
      0006D5 78 A3            [12] 1220 	mov	r0,#_memset
      0006D7 79 57            [12] 1221 	mov	r1,#(_memset >> 8)
      0006D9 7A 00            [12] 1222 	mov	r2,#(_memset >> 16)
      0006DB 12 20 BA         [24] 1223 	lcall	__sdcc_banked_call
      0006DE 15 81            [12] 1224 	dec	sp
      0006E0 15 81            [12] 1225 	dec	sp
      0006E2 15 81            [12] 1226 	dec	sp
                                   1227 ;	server.c:77: if(uip_newdata()) {
      0006E4 90 08 1B         [24] 1228 	mov	dptr,#_uip_flags
      0006E7 E0               [24] 1229 	movx	a,@dptr
      0006E8 FF               [12] 1230 	mov	r7,a
      0006E9 20 E1 03         [24] 1231 	jb	acc.1,00111$
      0006EC 02 08 E9         [24] 1232 	ljmp	00105$
      0006EF                       1233 00111$:
                                   1234 ;	server.c:78: leds_on(LEDS_RED);
      0006EF 75 82 02         [24] 1235 	mov	dpl,#0x02
      0006F2 78 BE            [12] 1236 	mov	r0,#_leds_on
      0006F4 79 83            [12] 1237 	mov	r1,#(_leds_on >> 8)
      0006F6 7A 04            [12] 1238 	mov	r2,#(_leds_on >> 16)
      0006F8 12 20 BA         [24] 1239 	lcall	__sdcc_banked_call
                                   1240 ;	server.c:79: len = uip_datalen();
      0006FB 90 08 17         [24] 1241 	mov	dptr,#_uip_len
      0006FE E0               [24] 1242 	movx	a,@dptr
      0006FF FE               [12] 1243 	mov	r6,a
      000700 A3               [24] 1244 	inc	dptr
      000701 E0               [24] 1245 	movx	a,@dptr
      000702 FF               [12] 1246 	mov	r7,a
      000703 90 00 7F         [24] 1247 	mov	dptr,#_len
      000706 EE               [12] 1248 	mov	a,r6
      000707 F0               [24] 1249 	movx	@dptr,a
      000708 EF               [12] 1250 	mov	a,r7
      000709 A3               [24] 1251 	inc	dptr
      00070A F0               [24] 1252 	movx	@dptr,a
                                   1253 ;	server.c:80: memcpy(buf, uip_appdata, len);
      00070B C0 06            [24] 1254 	push	ar6
      00070D C0 07            [24] 1255 	push	ar7
      00070F 90 08 11         [24] 1256 	mov	dptr,#_uip_appdata
      000712 E0               [24] 1257 	movx	a,@dptr
      000713 C0 E0            [24] 1258 	push	acc
      000715 A3               [24] 1259 	inc	dptr
      000716 E0               [24] 1260 	movx	a,@dptr
      000717 C0 E0            [24] 1261 	push	acc
      000719 A3               [24] 1262 	inc	dptr
      00071A E0               [24] 1263 	movx	a,@dptr
      00071B C0 E0            [24] 1264 	push	acc
      00071D 90 00 07         [24] 1265 	mov	dptr,#_buf
      000720 75 F0 00         [24] 1266 	mov	b,#0x00
      000723 78 0F            [12] 1267 	mov	r0,#_memcpy
      000725 79 58            [12] 1268 	mov	r1,#(_memcpy >> 8)
      000727 7A 00            [12] 1269 	mov	r2,#(_memcpy >> 16)
      000729 12 20 BA         [24] 1270 	lcall	__sdcc_banked_call
      00072C E5 81            [12] 1271 	mov	a,sp
      00072E 24 FB            [12] 1272 	add	a,#0xfb
      000730 F5 81            [12] 1273 	mov	sp,a
                                   1274 ;	server.c:82: uip_ipaddr_copy(&server_conn->ripaddr, &UIP_IP_BUF->srcipaddr);
      000732 90 00 04         [24] 1275 	mov	dptr,#_server_conn
      000735 E0               [24] 1276 	movx	a,@dptr
      000736 FD               [12] 1277 	mov	r5,a
      000737 A3               [24] 1278 	inc	dptr
      000738 E0               [24] 1279 	movx	a,@dptr
      000739 FE               [12] 1280 	mov	r6,a
      00073A A3               [24] 1281 	inc	dptr
      00073B E0               [24] 1282 	movx	a,@dptr
      00073C FF               [12] 1283 	mov	r7,a
      00073D 74 10            [12] 1284 	mov	a,#0x10
      00073F C0 E0            [24] 1285 	push	acc
      000741 E4               [12] 1286 	clr	a
      000742 C0 E0            [24] 1287 	push	acc
      000744 74 29            [12] 1288 	mov	a,#(_uip_aligned_buf + 0x0008)
      000746 C0 E0            [24] 1289 	push	acc
      000748 74 07            [12] 1290 	mov	a,#((_uip_aligned_buf + 0x0008) >> 8)
      00074A C0 E0            [24] 1291 	push	acc
      00074C E4               [12] 1292 	clr	a
      00074D C0 E0            [24] 1293 	push	acc
      00074F 8D 82            [24] 1294 	mov	dpl,r5
      000751 8E 83            [24] 1295 	mov	dph,r6
      000753 8F F0            [24] 1296 	mov	b,r7
      000755 78 0F            [12] 1297 	mov	r0,#_memcpy
      000757 79 58            [12] 1298 	mov	r1,#(_memcpy >> 8)
      000759 7A 00            [12] 1299 	mov	r2,#(_memcpy >> 16)
      00075B 12 20 BA         [24] 1300 	lcall	__sdcc_banked_call
      00075E E5 81            [12] 1301 	mov	a,sp
      000760 24 FB            [12] 1302 	add	a,#0xfb
      000762 F5 81            [12] 1303 	mov	sp,a
                                   1304 ;	server.c:83: server_conn->rport = UIP_UDP_BUF->srcport;
      000764 90 00 04         [24] 1305 	mov	dptr,#_server_conn
      000767 E0               [24] 1306 	movx	a,@dptr
      000768 FD               [12] 1307 	mov	r5,a
      000769 A3               [24] 1308 	inc	dptr
      00076A E0               [24] 1309 	movx	a,@dptr
      00076B FE               [12] 1310 	mov	r6,a
      00076C A3               [24] 1311 	inc	dptr
      00076D E0               [24] 1312 	movx	a,@dptr
      00076E FF               [12] 1313 	mov	r7,a
      00076F 74 12            [12] 1314 	mov	a,#0x12
      000771 2D               [12] 1315 	add	a,r5
      000772 FD               [12] 1316 	mov	r5,a
      000773 E4               [12] 1317 	clr	a
      000774 3E               [12] 1318 	addc	a,r6
      000775 FE               [12] 1319 	mov	r6,a
      000776 90 12 89         [24] 1320 	mov	dptr,#_uip_ext_len
      000779 E0               [24] 1321 	movx	a,@dptr
      00077A 24 28            [12] 1322 	add	a,#0x28
      00077C 24 21            [12] 1323 	add	a,#_uip_aligned_buf
      00077E FB               [12] 1324 	mov	r3,a
      00077F E4               [12] 1325 	clr	a
      000780 34 07            [12] 1326 	addc	a,#(_uip_aligned_buf >> 8)
      000782 FC               [12] 1327 	mov	r4,a
      000783 8B 82            [24] 1328 	mov	dpl,r3
      000785 8C 83            [24] 1329 	mov	dph,r4
      000787 E0               [24] 1330 	movx	a,@dptr
      000788 FB               [12] 1331 	mov	r3,a
      000789 A3               [24] 1332 	inc	dptr
      00078A E0               [24] 1333 	movx	a,@dptr
      00078B FC               [12] 1334 	mov	r4,a
      00078C 8D 82            [24] 1335 	mov	dpl,r5
      00078E 8E 83            [24] 1336 	mov	dph,r6
      000790 8F F0            [24] 1337 	mov	b,r7
      000792 EB               [12] 1338 	mov	a,r3
      000793 12 52 58         [24] 1339 	lcall	__gptrput
      000796 A3               [24] 1340 	inc	dptr
      000797 EC               [12] 1341 	mov	a,r4
      000798 12 52 58         [24] 1342 	lcall	__gptrput
                                   1343 ;	server.c:85: uip_udp_packet_send(server_conn, buf, len);
      00079B 90 00 04         [24] 1344 	mov	dptr,#_server_conn
      00079E E0               [24] 1345 	movx	a,@dptr
      00079F FD               [12] 1346 	mov	r5,a
      0007A0 A3               [24] 1347 	inc	dptr
      0007A1 E0               [24] 1348 	movx	a,@dptr
      0007A2 FE               [12] 1349 	mov	r6,a
      0007A3 A3               [24] 1350 	inc	dptr
      0007A4 E0               [24] 1351 	movx	a,@dptr
      0007A5 FF               [12] 1352 	mov	r7,a
      0007A6 90 00 7F         [24] 1353 	mov	dptr,#_len
      0007A9 E0               [24] 1354 	movx	a,@dptr
      0007AA C0 E0            [24] 1355 	push	acc
      0007AC A3               [24] 1356 	inc	dptr
      0007AD E0               [24] 1357 	movx	a,@dptr
      0007AE C0 E0            [24] 1358 	push	acc
      0007B0 74 07            [12] 1359 	mov	a,#_buf
      0007B2 C0 E0            [24] 1360 	push	acc
      0007B4 74 00            [12] 1361 	mov	a,#(_buf >> 8)
      0007B6 C0 E0            [24] 1362 	push	acc
      0007B8 E4               [12] 1363 	clr	a
      0007B9 C0 E0            [24] 1364 	push	acc
      0007BB 8D 82            [24] 1365 	mov	dpl,r5
      0007BD 8E 83            [24] 1366 	mov	dph,r6
      0007BF 8F F0            [24] 1367 	mov	b,r7
      0007C1 78 DE            [12] 1368 	mov	r0,#_uip_udp_packet_send
      0007C3 79 D9            [12] 1369 	mov	r1,#(_uip_udp_packet_send >> 8)
      0007C5 7A 01            [12] 1370 	mov	r2,#(_uip_udp_packet_send >> 16)
      0007C7 12 20 BA         [24] 1371 	lcall	__sdcc_banked_call
      0007CA E5 81            [12] 1372 	mov	a,sp
      0007CC 24 FB            [12] 1373 	add	a,#0xfb
      0007CE F5 81            [12] 1374 	mov	sp,a
                                   1375 ;	server.c:87: uip_create_unspecified(&server_conn->ripaddr);
      0007D0 90 00 04         [24] 1376 	mov	dptr,#_server_conn
      0007D3 E0               [24] 1377 	movx	a,@dptr
      0007D4 FD               [12] 1378 	mov	r5,a
      0007D5 A3               [24] 1379 	inc	dptr
      0007D6 E0               [24] 1380 	movx	a,@dptr
      0007D7 FE               [12] 1381 	mov	r6,a
      0007D8 A3               [24] 1382 	inc	dptr
      0007D9 E0               [24] 1383 	movx	a,@dptr
      0007DA FF               [12] 1384 	mov	r7,a
      0007DB 8D 82            [24] 1385 	mov	dpl,r5
      0007DD 8E 83            [24] 1386 	mov	dph,r6
      0007DF 8F F0            [24] 1387 	mov	b,r7
      0007E1 E4               [12] 1388 	clr	a
      0007E2 12 52 58         [24] 1389 	lcall	__gptrput
      0007E5 A3               [24] 1390 	inc	dptr
      0007E6 12 52 58         [24] 1391 	lcall	__gptrput
      0007E9 90 00 04         [24] 1392 	mov	dptr,#_server_conn
      0007EC E0               [24] 1393 	movx	a,@dptr
      0007ED FD               [12] 1394 	mov	r5,a
      0007EE A3               [24] 1395 	inc	dptr
      0007EF E0               [24] 1396 	movx	a,@dptr
      0007F0 FE               [12] 1397 	mov	r6,a
      0007F1 A3               [24] 1398 	inc	dptr
      0007F2 E0               [24] 1399 	movx	a,@dptr
      0007F3 FF               [12] 1400 	mov	r7,a
      0007F4 74 02            [12] 1401 	mov	a,#0x02
      0007F6 2D               [12] 1402 	add	a,r5
      0007F7 FD               [12] 1403 	mov	r5,a
      0007F8 E4               [12] 1404 	clr	a
      0007F9 3E               [12] 1405 	addc	a,r6
      0007FA FE               [12] 1406 	mov	r6,a
      0007FB 8D 82            [24] 1407 	mov	dpl,r5
      0007FD 8E 83            [24] 1408 	mov	dph,r6
      0007FF 8F F0            [24] 1409 	mov	b,r7
      000801 E4               [12] 1410 	clr	a
      000802 12 52 58         [24] 1411 	lcall	__gptrput
      000805 A3               [24] 1412 	inc	dptr
      000806 12 52 58         [24] 1413 	lcall	__gptrput
      000809 90 00 04         [24] 1414 	mov	dptr,#_server_conn
      00080C E0               [24] 1415 	movx	a,@dptr
      00080D FD               [12] 1416 	mov	r5,a
      00080E A3               [24] 1417 	inc	dptr
      00080F E0               [24] 1418 	movx	a,@dptr
      000810 FE               [12] 1419 	mov	r6,a
      000811 A3               [24] 1420 	inc	dptr
      000812 E0               [24] 1421 	movx	a,@dptr
      000813 FF               [12] 1422 	mov	r7,a
      000814 74 04            [12] 1423 	mov	a,#0x04
      000816 2D               [12] 1424 	add	a,r5
      000817 FD               [12] 1425 	mov	r5,a
      000818 E4               [12] 1426 	clr	a
      000819 3E               [12] 1427 	addc	a,r6
      00081A FE               [12] 1428 	mov	r6,a
      00081B 8D 82            [24] 1429 	mov	dpl,r5
      00081D 8E 83            [24] 1430 	mov	dph,r6
      00081F 8F F0            [24] 1431 	mov	b,r7
      000821 E4               [12] 1432 	clr	a
      000822 12 52 58         [24] 1433 	lcall	__gptrput
      000825 A3               [24] 1434 	inc	dptr
      000826 12 52 58         [24] 1435 	lcall	__gptrput
      000829 90 00 04         [24] 1436 	mov	dptr,#_server_conn
      00082C E0               [24] 1437 	movx	a,@dptr
      00082D FD               [12] 1438 	mov	r5,a
      00082E A3               [24] 1439 	inc	dptr
      00082F E0               [24] 1440 	movx	a,@dptr
      000830 FE               [12] 1441 	mov	r6,a
      000831 A3               [24] 1442 	inc	dptr
      000832 E0               [24] 1443 	movx	a,@dptr
      000833 FF               [12] 1444 	mov	r7,a
      000834 74 06            [12] 1445 	mov	a,#0x06
      000836 2D               [12] 1446 	add	a,r5
      000837 FD               [12] 1447 	mov	r5,a
      000838 E4               [12] 1448 	clr	a
      000839 3E               [12] 1449 	addc	a,r6
      00083A FE               [12] 1450 	mov	r6,a
      00083B 8D 82            [24] 1451 	mov	dpl,r5
      00083D 8E 83            [24] 1452 	mov	dph,r6
      00083F 8F F0            [24] 1453 	mov	b,r7
      000841 E4               [12] 1454 	clr	a
      000842 12 52 58         [24] 1455 	lcall	__gptrput
      000845 A3               [24] 1456 	inc	dptr
      000846 12 52 58         [24] 1457 	lcall	__gptrput
      000849 90 00 04         [24] 1458 	mov	dptr,#_server_conn
      00084C E0               [24] 1459 	movx	a,@dptr
      00084D FD               [12] 1460 	mov	r5,a
      00084E A3               [24] 1461 	inc	dptr
      00084F E0               [24] 1462 	movx	a,@dptr
      000850 FE               [12] 1463 	mov	r6,a
      000851 A3               [24] 1464 	inc	dptr
      000852 E0               [24] 1465 	movx	a,@dptr
      000853 FF               [12] 1466 	mov	r7,a
      000854 74 08            [12] 1467 	mov	a,#0x08
      000856 2D               [12] 1468 	add	a,r5
      000857 FD               [12] 1469 	mov	r5,a
      000858 E4               [12] 1470 	clr	a
      000859 3E               [12] 1471 	addc	a,r6
      00085A FE               [12] 1472 	mov	r6,a
      00085B 8D 82            [24] 1473 	mov	dpl,r5
      00085D 8E 83            [24] 1474 	mov	dph,r6
      00085F 8F F0            [24] 1475 	mov	b,r7
      000861 E4               [12] 1476 	clr	a
      000862 12 52 58         [24] 1477 	lcall	__gptrput
      000865 A3               [24] 1478 	inc	dptr
      000866 12 52 58         [24] 1479 	lcall	__gptrput
      000869 90 00 04         [24] 1480 	mov	dptr,#_server_conn
      00086C E0               [24] 1481 	movx	a,@dptr
      00086D FD               [12] 1482 	mov	r5,a
      00086E A3               [24] 1483 	inc	dptr
      00086F E0               [24] 1484 	movx	a,@dptr
      000870 FE               [12] 1485 	mov	r6,a
      000871 A3               [24] 1486 	inc	dptr
      000872 E0               [24] 1487 	movx	a,@dptr
      000873 FF               [12] 1488 	mov	r7,a
      000874 74 0A            [12] 1489 	mov	a,#0x0A
      000876 2D               [12] 1490 	add	a,r5
      000877 FD               [12] 1491 	mov	r5,a
      000878 E4               [12] 1492 	clr	a
      000879 3E               [12] 1493 	addc	a,r6
      00087A FE               [12] 1494 	mov	r6,a
      00087B 8D 82            [24] 1495 	mov	dpl,r5
      00087D 8E 83            [24] 1496 	mov	dph,r6
      00087F 8F F0            [24] 1497 	mov	b,r7
      000881 E4               [12] 1498 	clr	a
      000882 12 52 58         [24] 1499 	lcall	__gptrput
      000885 A3               [24] 1500 	inc	dptr
      000886 12 52 58         [24] 1501 	lcall	__gptrput
      000889 90 00 04         [24] 1502 	mov	dptr,#_server_conn
      00088C E0               [24] 1503 	movx	a,@dptr
      00088D FD               [12] 1504 	mov	r5,a
      00088E A3               [24] 1505 	inc	dptr
      00088F E0               [24] 1506 	movx	a,@dptr
      000890 FE               [12] 1507 	mov	r6,a
      000891 A3               [24] 1508 	inc	dptr
      000892 E0               [24] 1509 	movx	a,@dptr
      000893 FF               [12] 1510 	mov	r7,a
      000894 74 0C            [12] 1511 	mov	a,#0x0C
      000896 2D               [12] 1512 	add	a,r5
      000897 FD               [12] 1513 	mov	r5,a
      000898 E4               [12] 1514 	clr	a
      000899 3E               [12] 1515 	addc	a,r6
      00089A FE               [12] 1516 	mov	r6,a
      00089B 8D 82            [24] 1517 	mov	dpl,r5
      00089D 8E 83            [24] 1518 	mov	dph,r6
      00089F 8F F0            [24] 1519 	mov	b,r7
      0008A1 E4               [12] 1520 	clr	a
      0008A2 12 52 58         [24] 1521 	lcall	__gptrput
      0008A5 A3               [24] 1522 	inc	dptr
      0008A6 12 52 58         [24] 1523 	lcall	__gptrput
      0008A9 90 00 04         [24] 1524 	mov	dptr,#_server_conn
      0008AC E0               [24] 1525 	movx	a,@dptr
      0008AD FD               [12] 1526 	mov	r5,a
      0008AE A3               [24] 1527 	inc	dptr
      0008AF E0               [24] 1528 	movx	a,@dptr
      0008B0 FE               [12] 1529 	mov	r6,a
      0008B1 A3               [24] 1530 	inc	dptr
      0008B2 E0               [24] 1531 	movx	a,@dptr
      0008B3 FF               [12] 1532 	mov	r7,a
      0008B4 74 0E            [12] 1533 	mov	a,#0x0E
      0008B6 2D               [12] 1534 	add	a,r5
      0008B7 FD               [12] 1535 	mov	r5,a
      0008B8 E4               [12] 1536 	clr	a
      0008B9 3E               [12] 1537 	addc	a,r6
      0008BA FE               [12] 1538 	mov	r6,a
      0008BB 8D 82            [24] 1539 	mov	dpl,r5
      0008BD 8E 83            [24] 1540 	mov	dph,r6
      0008BF 8F F0            [24] 1541 	mov	b,r7
      0008C1 E4               [12] 1542 	clr	a
      0008C2 12 52 58         [24] 1543 	lcall	__gptrput
      0008C5 A3               [24] 1544 	inc	dptr
      0008C6 12 52 58         [24] 1545 	lcall	__gptrput
                                   1546 ;	server.c:88: server_conn->rport = 0;
      0008C9 90 00 04         [24] 1547 	mov	dptr,#_server_conn
      0008CC E0               [24] 1548 	movx	a,@dptr
      0008CD FD               [12] 1549 	mov	r5,a
      0008CE A3               [24] 1550 	inc	dptr
      0008CF E0               [24] 1551 	movx	a,@dptr
      0008D0 FE               [12] 1552 	mov	r6,a
      0008D1 A3               [24] 1553 	inc	dptr
      0008D2 E0               [24] 1554 	movx	a,@dptr
      0008D3 FF               [12] 1555 	mov	r7,a
      0008D4 74 12            [12] 1556 	mov	a,#0x12
      0008D6 2D               [12] 1557 	add	a,r5
      0008D7 FD               [12] 1558 	mov	r5,a
      0008D8 E4               [12] 1559 	clr	a
      0008D9 3E               [12] 1560 	addc	a,r6
      0008DA FE               [12] 1561 	mov	r6,a
      0008DB 8D 82            [24] 1562 	mov	dpl,r5
      0008DD 8E 83            [24] 1563 	mov	dph,r6
      0008DF 8F F0            [24] 1564 	mov	b,r7
      0008E1 E4               [12] 1565 	clr	a
      0008E2 12 52 58         [24] 1566 	lcall	__gptrput
      0008E5 A3               [24] 1567 	inc	dptr
      0008E6 12 52 58         [24] 1568 	lcall	__gptrput
      0008E9                       1569 00105$:
                                   1570 ;	server.c:91: leds_off(LEDS_RED);
      0008E9 75 82 02         [24] 1571 	mov	dpl,#0x02
      0008EC 78 D4            [12] 1572 	mov	r0,#_leds_off
      0008EE 79 83            [12] 1573 	mov	r1,#(_leds_off >> 8)
      0008F0 7A 04            [12] 1574 	mov	r2,#(_leds_off >> 16)
      0008F2 12 20 BA         [24] 1575 	lcall	__sdcc_banked_call
                                   1576 ;	server.c:92: return;
      0008F5 02 20 CC         [24] 1577 	ljmp	__sdcc_banked_ret
                                   1578 ;------------------------------------------------------------
                                   1579 ;Allocation info for local variables in function 'process_thread_udp_server_process'
                                   1580 ;------------------------------------------------------------
                                   1581 ;ev                        Allocated to stack - sp -3
                                   1582 ;data                      Allocated to stack - sp -6
                                   1583 ;process_pt                Allocated to registers r5 r6 r7 
                                   1584 ;PT_YIELD_FLAG             Allocated to registers r4 
                                   1585 ;------------------------------------------------------------
                                   1586 ;	server.c:114: PROCESS_THREAD(udp_server_process, ev, data)
                                   1587 ;	-----------------------------------------
                                   1588 ;	 function process_thread_udp_server_process
                                   1589 ;	-----------------------------------------
      0008F8                       1590 _process_thread_udp_server_process:
                                   1591 ;	server.c:117: PROCESS_BEGIN();
      0008F8 AD 82            [24] 1592 	mov	r5,dpl
      0008FA AE 83            [24] 1593 	mov	r6,dph
      0008FC AF F0            [24] 1594 	mov	r7,b
      0008FE 7C 01            [12] 1595 	mov	r4,#0x01
      000900 12 59 58         [24] 1596 	lcall	__gptrget
      000903 FA               [12] 1597 	mov	r2,a
      000904 A3               [24] 1598 	inc	dptr
      000905 12 59 58         [24] 1599 	lcall	__gptrget
      000908 FB               [12] 1600 	mov	r3,a
      000909 BA 00 05         [24] 1601 	cjne	r2,#0x00,00131$
      00090C BB 00 02         [24] 1602 	cjne	r3,#0x00,00131$
      00090F 80 0C            [24] 1603 	sjmp	00101$
      000911                       1604 00131$:
      000911 BA 81 06         [24] 1605 	cjne	r2,#0x81,00132$
      000914 BB 00 03         [24] 1606 	cjne	r3,#0x00,00132$
      000917 02 09 A7         [24] 1607 	ljmp	00102$
      00091A                       1608 00132$:
      00091A 02 09 D4         [24] 1609 	ljmp	00113$
      00091D                       1610 00101$:
                                   1611 ;	server.c:123: server_conn = udp_new(NULL, UIP_HTONS(0), NULL);
      00091D C0 05            [24] 1612 	push	ar5
      00091F C0 06            [24] 1613 	push	ar6
      000921 C0 07            [24] 1614 	push	ar7
      000923 C0 06            [24] 1615 	push	ar6
      000925 C0 05            [24] 1616 	push	ar5
      000927 E4               [12] 1617 	clr	a
      000928 C0 E0            [24] 1618 	push	acc
      00092A C0 E0            [24] 1619 	push	acc
      00092C C0 E0            [24] 1620 	push	acc
      00092E C0 E0            [24] 1621 	push	acc
      000930 C0 E0            [24] 1622 	push	acc
      000932 90 00 00         [24] 1623 	mov	dptr,#0x0000
      000935 75 F0 00         [24] 1624 	mov	b,#0x00
      000938 78 DC            [12] 1625 	mov	r0,#_udp_new
      00093A 79 80            [12] 1626 	mov	r1,#(_udp_new >> 8)
      00093C 7A 03            [12] 1627 	mov	r2,#(_udp_new >> 16)
      00093E 12 20 BA         [24] 1628 	lcall	__sdcc_banked_call
      000941 AA 82            [24] 1629 	mov	r2,dpl
      000943 AB 83            [24] 1630 	mov	r3,dph
      000945 AF F0            [24] 1631 	mov	r7,b
      000947 E5 81            [12] 1632 	mov	a,sp
      000949 24 FB            [12] 1633 	add	a,#0xfb
      00094B F5 81            [12] 1634 	mov	sp,a
      00094D D0 05            [24] 1635 	pop	ar5
      00094F D0 06            [24] 1636 	pop	ar6
      000951 90 00 04         [24] 1637 	mov	dptr,#_server_conn
      000954 EA               [12] 1638 	mov	a,r2
      000955 F0               [24] 1639 	movx	@dptr,a
      000956 EB               [12] 1640 	mov	a,r3
      000957 A3               [24] 1641 	inc	dptr
      000958 F0               [24] 1642 	movx	@dptr,a
      000959 EF               [12] 1643 	mov	a,r7
      00095A A3               [24] 1644 	inc	dptr
      00095B F0               [24] 1645 	movx	@dptr,a
                                   1646 ;	server.c:124: udp_bind(server_conn, UIP_HTONS(3000));
      00095C 74 10            [12] 1647 	mov	a,#0x10
      00095E 2A               [12] 1648 	add	a,r2
      00095F FA               [12] 1649 	mov	r2,a
      000960 E4               [12] 1650 	clr	a
      000961 3B               [12] 1651 	addc	a,r3
      000962 FB               [12] 1652 	mov	r3,a
      000963 8A 82            [24] 1653 	mov	dpl,r2
      000965 8B 83            [24] 1654 	mov	dph,r3
      000967 8F F0            [24] 1655 	mov	b,r7
      000969 74 0B            [12] 1656 	mov	a,#0x0B
      00096B 12 52 58         [24] 1657 	lcall	__gptrput
      00096E A3               [24] 1658 	inc	dptr
      00096F 74 B8            [12] 1659 	mov	a,#0xB8
      000971 12 52 58         [24] 1660 	lcall	__gptrput
                                   1661 ;	server.c:126: uart0_set_input(uart0_rx_callback);
      000974 90 06 9F         [24] 1662 	mov	dptr,#_uart0_rx_callback
      000977 75 F0 00         [24] 1663 	mov	b,#(_uart0_rx_callback >> 16)
      00097A C0 07            [24] 1664 	push	ar7
      00097C C0 06            [24] 1665 	push	ar6
      00097E C0 05            [24] 1666 	push	ar5
      000980 78 E8            [12] 1667 	mov	r0,#_uart0_set_input
      000982 79 09            [12] 1668 	mov	r1,#(_uart0_set_input >> 8)
      000984 7A 00            [12] 1669 	mov	r2,#(_uart0_set_input >> 16)
      000986 12 20 BA         [24] 1670 	lcall	__sdcc_banked_call
      000989 D0 05            [24] 1671 	pop	ar5
      00098B D0 06            [24] 1672 	pop	ar6
      00098D D0 07            [24] 1673 	pop	ar7
                                   1674 ;	server.c:135: PROCESS_END();
      00098F D0 07            [24] 1675 	pop	ar7
      000991 D0 06            [24] 1676 	pop	ar6
      000993 D0 05            [24] 1677 	pop	ar5
                                   1678 ;	server.c:128: while(1) {
      000995                       1679 00111$:
                                   1680 ;	server.c:129: PROCESS_YIELD();
      000995 7C 00            [12] 1681 	mov	r4,#0x00
      000997 8D 82            [24] 1682 	mov	dpl,r5
      000999 8E 83            [24] 1683 	mov	dph,r6
      00099B 8F F0            [24] 1684 	mov	b,r7
      00099D 74 81            [12] 1685 	mov	a,#0x81
      00099F 12 52 58         [24] 1686 	lcall	__gptrput
      0009A2 A3               [24] 1687 	inc	dptr
      0009A3 E4               [12] 1688 	clr	a
      0009A4 12 52 58         [24] 1689 	lcall	__gptrput
      0009A7                       1690 00102$:
      0009A7 EC               [12] 1691 	mov	a,r4
      0009A8 70 05            [24] 1692 	jnz	00106$
      0009AA 75 82 01         [24] 1693 	mov	dpl,#0x01
      0009AD 80 36            [24] 1694 	sjmp	00114$
      0009AF                       1695 00106$:
                                   1696 ;	server.c:130: if(ev == tcpip_event) {
      0009AF 90 00 F9         [24] 1697 	mov	dptr,#_tcpip_event
      0009B2 E0               [24] 1698 	movx	a,@dptr
      0009B3 FC               [12] 1699 	mov	r4,a
      0009B4 E5 81            [12] 1700 	mov	a,sp
      0009B6 24 FD            [12] 1701 	add	a,#0xfd
      0009B8 F8               [12] 1702 	mov	r0,a
      0009B9 E6               [12] 1703 	mov	a,@r0
      0009BA B5 04 D8         [24] 1704 	cjne	a,ar4,00111$
                                   1705 ;	server.c:131: tcpip_handler();
      0009BD C0 07            [24] 1706 	push	ar7
      0009BF C0 06            [24] 1707 	push	ar6
      0009C1 C0 05            [24] 1708 	push	ar5
      0009C3 78 C6            [12] 1709 	mov	r0,#_tcpip_handler
      0009C5 79 06            [12] 1710 	mov	r1,#(_tcpip_handler >> 8)
      0009C7 7A 00            [12] 1711 	mov	r2,#(_tcpip_handler >> 16)
      0009C9 12 20 BA         [24] 1712 	lcall	__sdcc_banked_call
      0009CC D0 05            [24] 1713 	pop	ar5
      0009CE D0 06            [24] 1714 	pop	ar6
      0009D0 D0 07            [24] 1715 	pop	ar7
                                   1716 ;	server.c:135: PROCESS_END();
      0009D2 80 C1            [24] 1717 	sjmp	00111$
      0009D4                       1718 00113$:
      0009D4 8D 82            [24] 1719 	mov	dpl,r5
      0009D6 8E 83            [24] 1720 	mov	dph,r6
      0009D8 8F F0            [24] 1721 	mov	b,r7
      0009DA E4               [12] 1722 	clr	a
      0009DB 12 52 58         [24] 1723 	lcall	__gptrput
      0009DE A3               [24] 1724 	inc	dptr
      0009DF 12 52 58         [24] 1725 	lcall	__gptrput
      0009E2 75 82 03         [24] 1726 	mov	dpl,#0x03
      0009E5                       1727 00114$:
      0009E5 02 20 CC         [24] 1728 	ljmp	__sdcc_banked_ret
                                   1729 	.area CSEG    (CODE)
                                   1730 	.area CONST   (CODE)
      007CED                       1731 _autostart_processes:
      007CED F6 11 00              1732 	.byte _udp_server_process, (_udp_server_process >> 8),#0x00
                                   1733 ; generic printIvalPtr
      007CF0 00 00 00              1734 	.byte #0x00,#0x00,#0x00
                                   1735 	.area XINIT   (CODE)
      007E97                       1736 __xinit__udp_server_process:
                                   1737 ; generic printIvalPtr
      007E97 00 00 00              1738 	.byte #0x00,#0x00,#0x00
      007E9A F8 08 00              1739 	.byte _process_thread_udp_server_process, (_process_thread_udp_server_process >> 8), (_process_thread_udp_server_process >> 16)
      007E9D 00 00                 1740 	.byte #0x00, #0x00
      007E9F 00                    1741 	.db #0x00	; 0
      007EA0 00                    1742 	.db #0x00	; 0
                                   1743 	.area CABS    (ABS,CODE)
