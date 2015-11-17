                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.5 #9380 (Linux)
                                      4 ; This file was generated Wed Nov 18 05:01:26 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module client
                                      7 	.optsdcc -mmcs51 --model-huge
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _autostart_processes
                                     13 	.globl _uip_debug_ipaddr_print
                                     14 	.globl _putchar
                                     15 	.globl _printf
                                     16 	.globl _puthex
                                     17 	.globl _putstring
                                     18 	.globl _leds_off
                                     19 	.globl _leds_on
                                     20 	.globl _uip_ds6_get_global
                                     21 	.globl _uip_udp_packet_send
                                     22 	.globl _udp_new
                                     23 	.globl _etimer_expired
                                     24 	.globl _etimer_restart
                                     25 	.globl _etimer_set
                                     26 	.globl _memset
                                     27 	.globl _memcpy
                                     28 	.globl _ACTIVE
                                     29 	.globl _TX_BYTE
                                     30 	.globl _RX_BYTE
                                     31 	.globl _ERR
                                     32 	.globl _FE
                                     33 	.globl _SLAVE
                                     34 	.globl _RE
                                     35 	.globl _MODE
                                     36 	.globl _T3OVFIF
                                     37 	.globl _T3CH0IF
                                     38 	.globl _T3CH1IF
                                     39 	.globl _T4OVFIF
                                     40 	.globl _T4CH0IF
                                     41 	.globl _T4CH1IF
                                     42 	.globl _OVFIM
                                     43 	.globl _B_0
                                     44 	.globl _B_1
                                     45 	.globl _B_2
                                     46 	.globl _B_3
                                     47 	.globl _B_4
                                     48 	.globl _B_5
                                     49 	.globl _B_6
                                     50 	.globl _B_7
                                     51 	.globl _P2IF
                                     52 	.globl _UTX0IF
                                     53 	.globl _UTX1IF
                                     54 	.globl _P1IF
                                     55 	.globl _WDTIF
                                     56 	.globl _ACC_0
                                     57 	.globl _ACC_1
                                     58 	.globl _ACC_2
                                     59 	.globl _ACC_3
                                     60 	.globl _ACC_4
                                     61 	.globl _ACC_5
                                     62 	.globl _ACC_6
                                     63 	.globl _ACC_7
                                     64 	.globl _P
                                     65 	.globl _F1
                                     66 	.globl _OV
                                     67 	.globl _RS0
                                     68 	.globl _RS1
                                     69 	.globl _F0
                                     70 	.globl _AC
                                     71 	.globl _CY
                                     72 	.globl _DMAIF
                                     73 	.globl _T1IF
                                     74 	.globl _T2IF
                                     75 	.globl _T3IF
                                     76 	.globl _T4IF
                                     77 	.globl _P0IF
                                     78 	.globl _STIF
                                     79 	.globl _DMAIE
                                     80 	.globl _T1IE
                                     81 	.globl _T2IE
                                     82 	.globl _T3IE
                                     83 	.globl _T4IE
                                     84 	.globl _P0IE
                                     85 	.globl _RFERRIE
                                     86 	.globl _ADCIE
                                     87 	.globl _URX0IE
                                     88 	.globl _URX1IE
                                     89 	.globl _ENCIE
                                     90 	.globl _STIE
                                     91 	.globl _EA
                                     92 	.globl _P2_0
                                     93 	.globl _P2_1
                                     94 	.globl _P2_2
                                     95 	.globl _P2_3
                                     96 	.globl _P2_4
                                     97 	.globl _P2_5
                                     98 	.globl _P2_6
                                     99 	.globl _P2_7
                                    100 	.globl _ENCIF_0
                                    101 	.globl _ENCIF_1
                                    102 	.globl _P1_0
                                    103 	.globl _P1_1
                                    104 	.globl _P1_2
                                    105 	.globl _P1_3
                                    106 	.globl _P1_4
                                    107 	.globl _P1_5
                                    108 	.globl _P1_6
                                    109 	.globl _P1_7
                                    110 	.globl _IT0
                                    111 	.globl _RFERRIF
                                    112 	.globl _IT1
                                    113 	.globl _URX0IF
                                    114 	.globl _ADCIF
                                    115 	.globl _URX1IF
                                    116 	.globl _P0_0
                                    117 	.globl _P0_1
                                    118 	.globl _P0_2
                                    119 	.globl _P0_3
                                    120 	.globl _P0_4
                                    121 	.globl _P0_5
                                    122 	.globl _P0_6
                                    123 	.globl _P0_7
                                    124 	.globl _WDCTL
                                    125 	.globl _U1GCR
                                    126 	.globl _U1UCR
                                    127 	.globl _U1BAUD
                                    128 	.globl _U1DBUF
                                    129 	.globl _U1CSR
                                    130 	.globl _U0GCR
                                    131 	.globl _U0UCR
                                    132 	.globl _U0BAUD
                                    133 	.globl _U0DBUF
                                    134 	.globl _U0CSR
                                    135 	.globl _TIMIF
                                    136 	.globl _T4CC1
                                    137 	.globl _T4CCTL1
                                    138 	.globl _T4CC0
                                    139 	.globl _T4CCTL0
                                    140 	.globl _T4CTL
                                    141 	.globl _T4CNT
                                    142 	.globl _T3CC1
                                    143 	.globl _T3CCTL1
                                    144 	.globl _T3CC0
                                    145 	.globl _T3CCTL0
                                    146 	.globl _T3CTL
                                    147 	.globl _T3CNT
                                    148 	.globl _T2MSEL
                                    149 	.globl _T2IRQM
                                    150 	.globl _T2MOVF2
                                    151 	.globl _T2MOVF1
                                    152 	.globl _T2MOVF0
                                    153 	.globl _T2M1
                                    154 	.globl _T2M0
                                    155 	.globl _T2IRQF
                                    156 	.globl _T2EVTCFG
                                    157 	.globl _T2CTRL
                                    158 	.globl _T1STAT
                                    159 	.globl _T1CCTL2
                                    160 	.globl _T1CCTL1
                                    161 	.globl _T1CCTL0
                                    162 	.globl _T1CTL
                                    163 	.globl _T1CNTH
                                    164 	.globl _T1CNTL
                                    165 	.globl _T1CC2H
                                    166 	.globl _T1CC2L
                                    167 	.globl _T1CC1H
                                    168 	.globl _T1CC1L
                                    169 	.globl _T1CC0H
                                    170 	.globl _T1CC0L
                                    171 	.globl _CLKCONSTA
                                    172 	.globl _CLKCONCMD
                                    173 	.globl _SLEEPSTA
                                    174 	.globl _SLEEPCMD
                                    175 	.globl _STLOAD
                                    176 	.globl _ST2
                                    177 	.globl _ST1
                                    178 	.globl _ST0
                                    179 	.globl _RFERRF
                                    180 	.globl _RFIRQF0
                                    181 	.globl _RFST
                                    182 	.globl _RFD
                                    183 	.globl _RFIRQF1
                                    184 	.globl _PSBANK
                                    185 	.globl _FMAP
                                    186 	.globl _MEMCTR
                                    187 	.globl __XPAGE
                                    188 	.globl _MPAGE
                                    189 	.globl _PMUX
                                    190 	.globl _P2DIR
                                    191 	.globl _P1DIR
                                    192 	.globl _P0DIR
                                    193 	.globl _P2INP
                                    194 	.globl _P1INP
                                    195 	.globl _P2SEL
                                    196 	.globl _P1SEL
                                    197 	.globl _P0SEL
                                    198 	.globl _APCFG
                                    199 	.globl _PERCFG
                                    200 	.globl _P0INP
                                    201 	.globl _P2IEN
                                    202 	.globl _P1IEN
                                    203 	.globl _P0IEN
                                    204 	.globl _PICTL
                                    205 	.globl _P2IFG
                                    206 	.globl _P1IFG
                                    207 	.globl _P0IFG
                                    208 	.globl _DMAREQ
                                    209 	.globl _DMAARM
                                    210 	.globl _DMA0CFGH
                                    211 	.globl _DMA0CFGL
                                    212 	.globl _DMA1CFGH
                                    213 	.globl _DMA1CFGL
                                    214 	.globl _DMAIRQ
                                    215 	.globl _ENCCS
                                    216 	.globl _ENCDO
                                    217 	.globl _ENCDI
                                    218 	.globl _RNDH
                                    219 	.globl _RNDL
                                    220 	.globl _ADCH
                                    221 	.globl _ADCL
                                    222 	.globl _ADCCON3
                                    223 	.globl _ADCCON2
                                    224 	.globl _ADCCON1
                                    225 	.globl _B
                                    226 	.globl _IRCON2
                                    227 	.globl _ACC
                                    228 	.globl _PSW
                                    229 	.globl _IRCON
                                    230 	.globl _IP1
                                    231 	.globl _IEN1
                                    232 	.globl _IP0
                                    233 	.globl _IEN0
                                    234 	.globl _P2
                                    235 	.globl _S1CON
                                    236 	.globl _IEN2
                                    237 	.globl _S0CON
                                    238 	.globl _DPS
                                    239 	.globl _P1
                                    240 	.globl _TCON
                                    241 	.globl _PCON
                                    242 	.globl _DPH1
                                    243 	.globl _DPL1
                                    244 	.globl _DPH0
                                    245 	.globl _DPL0
                                    246 	.globl _SP
                                    247 	.globl _P0
                                    248 	.globl _udp_client_process
                                    249 	.globl _X_IEEE_ADDR
                                    250 	.globl _X_INFOPAGE
                                    251 	.globl _X_P2DIR
                                    252 	.globl _X_P1DIR
                                    253 	.globl _X_P0DIR
                                    254 	.globl _X_U1GCR
                                    255 	.globl _X_U1UCR
                                    256 	.globl _X_U1BAUD
                                    257 	.globl _X_U1DBUF
                                    258 	.globl _X_U1CSR
                                    259 	.globl _X_P2INP
                                    260 	.globl _X_P1INP
                                    261 	.globl _X_P2SEL
                                    262 	.globl _X_P1SEL
                                    263 	.globl _X_P0SEL
                                    264 	.globl _X_APCFG
                                    265 	.globl _X_PERCFG
                                    266 	.globl _X_T4CC1
                                    267 	.globl _X_T4CCTL1
                                    268 	.globl _X_T4CC0
                                    269 	.globl _X_T4CCTL0
                                    270 	.globl _X_T4CTL
                                    271 	.globl _X_T4CNT
                                    272 	.globl _X_RFIRQF0
                                    273 	.globl _X_T1CCTL2
                                    274 	.globl _X_T1CCTL1
                                    275 	.globl _X_T1CCTL0
                                    276 	.globl _X_T1CTL
                                    277 	.globl _X_T1CNTH
                                    278 	.globl _X_T1CNTL
                                    279 	.globl _X_RFST
                                    280 	.globl _X_T1CC2H
                                    281 	.globl _X_T1CC2L
                                    282 	.globl _X_T1CC1H
                                    283 	.globl _X_T1CC1L
                                    284 	.globl _X_T1CC0H
                                    285 	.globl _X_T1CC0L
                                    286 	.globl _X_RFD
                                    287 	.globl _X_TIMIF
                                    288 	.globl _X_DMAREQ
                                    289 	.globl _X_DMAARM
                                    290 	.globl _X_DMA0CFGH
                                    291 	.globl _X_DMA0CFGL
                                    292 	.globl _X_DMA1CFGH
                                    293 	.globl _X_DMA1CFGL
                                    294 	.globl _X_DMAIRQ
                                    295 	.globl _X_T3CC1
                                    296 	.globl _X_T3CCTL1
                                    297 	.globl _X_T3CC0
                                    298 	.globl _X_T3CCTL0
                                    299 	.globl _X_T3CTL
                                    300 	.globl _X_T3CNT
                                    301 	.globl _X_WDCTL
                                    302 	.globl _X_MEMCTR
                                    303 	.globl _X_CLKCONCMD
                                    304 	.globl _X_U0GCR
                                    305 	.globl _X_U0UCR
                                    306 	.globl _X_T2MSEL
                                    307 	.globl _X_U0BAUD
                                    308 	.globl _X_U0DBUF
                                    309 	.globl _X_RFERRF
                                    310 	.globl _X_SLEEPCMD
                                    311 	.globl _X_RNDH
                                    312 	.globl _X_RNDL
                                    313 	.globl _X_ADCH
                                    314 	.globl _X_ADCL
                                    315 	.globl _X_ADCCON3
                                    316 	.globl _X_ADCCON2
                                    317 	.globl _X_ADCCON1
                                    318 	.globl _X_ENCCS
                                    319 	.globl _X_ENCDO
                                    320 	.globl _X_ENCDI
                                    321 	.globl _X_T1STAT
                                    322 	.globl _X_PMUX
                                    323 	.globl _X_STLOAD
                                    324 	.globl _X_P2IEN
                                    325 	.globl _X_P0IEN
                                    326 	.globl _X_T2IRQM
                                    327 	.globl _X_T2MOVF2
                                    328 	.globl _X_T2MOVF1
                                    329 	.globl _X_T2MOVF0
                                    330 	.globl _X_T2M1
                                    331 	.globl _X_T2M0
                                    332 	.globl _X_T2IRQF
                                    333 	.globl _X_P2
                                    334 	.globl _X_PSBANK
                                    335 	.globl _X_FMAP
                                    336 	.globl _X_CLKCONSTA
                                    337 	.globl _X_SLEEPSTA
                                    338 	.globl _X_T2EVTCFG
                                    339 	.globl _X_ST2
                                    340 	.globl _X_ST1
                                    341 	.globl _X_ST0
                                    342 	.globl _X_T2CTRL
                                    343 	.globl _X__XPAGE
                                    344 	.globl _X_MPAGE
                                    345 	.globl _X_RFIRQF1
                                    346 	.globl _X_P1
                                    347 	.globl _X_P0INP
                                    348 	.globl _X_P1IEN
                                    349 	.globl _X_PICTL
                                    350 	.globl _X_P2IFG
                                    351 	.globl _X_P1IFG
                                    352 	.globl _X_P0IFG
                                    353 	.globl _X_U0CSR
                                    354 	.globl _X_P0
                                    355 	.globl _USBF5
                                    356 	.globl _USBF4
                                    357 	.globl _USBF3
                                    358 	.globl _USBF2
                                    359 	.globl _USBF1
                                    360 	.globl _USBF0
                                    361 	.globl _USBCNTH
                                    362 	.globl _USBCNTL
                                    363 	.globl _USBCNT0
                                    364 	.globl _USBCSOH
                                    365 	.globl _USBCSOL
                                    366 	.globl _USBMAXO
                                    367 	.globl _USBCSIH
                                    368 	.globl _USBCSIL
                                    369 	.globl _USBCS0
                                    370 	.globl _USBMAXI
                                    371 	.globl _USBCTRL
                                    372 	.globl _USBINDEX
                                    373 	.globl _USBFRMH
                                    374 	.globl _USBFRML
                                    375 	.globl _USBCIE
                                    376 	.globl _USBOIE
                                    377 	.globl _USBIIE
                                    378 	.globl _USBCIF
                                    379 	.globl _USBOIF
                                    380 	.globl _USBIIF
                                    381 	.globl _USBPOW
                                    382 	.globl _USBADDR
                                    383 	.globl _CSPT
                                    384 	.globl _CSPZ
                                    385 	.globl _CSPY
                                    386 	.globl _CSPX
                                    387 	.globl _CSPSTAT
                                    388 	.globl _CSPCTRL
                                    389 	.globl _CSPPROG23
                                    390 	.globl _CSPPROG22
                                    391 	.globl _CSPPROG21
                                    392 	.globl _CSPPROG20
                                    393 	.globl _CSPPROG19
                                    394 	.globl _CSPPROG18
                                    395 	.globl _CSPPROG17
                                    396 	.globl _CSPPROG16
                                    397 	.globl _CSPPROG15
                                    398 	.globl _CSPPROG14
                                    399 	.globl _CSPPROG13
                                    400 	.globl _CSPPROG12
                                    401 	.globl _CSPPROG11
                                    402 	.globl _CSPPROG10
                                    403 	.globl _CSPPROG9
                                    404 	.globl _CSPPROG8
                                    405 	.globl _CSPPROG7
                                    406 	.globl _CSPPROG6
                                    407 	.globl _CSPPROG5
                                    408 	.globl _CSPPROG4
                                    409 	.globl _CSPPROG3
                                    410 	.globl _CSPPROG2
                                    411 	.globl _CSPPROG1
                                    412 	.globl _CSPPROG0
                                    413 	.globl _RFC_OBS_CTRL2
                                    414 	.globl _RFC_OBS_CTRL1
                                    415 	.globl _RFC_OBS_CTRL0
                                    416 	.globl _TXFILTCFG
                                    417 	.globl _PTEST1
                                    418 	.globl _PTEST0
                                    419 	.globl _ATEST
                                    420 	.globl _DACTEST2
                                    421 	.globl _DACTEST1
                                    422 	.globl _DACTEST0
                                    423 	.globl _MDMTEST1
                                    424 	.globl _MDMTEST0
                                    425 	.globl _ADCTEST2
                                    426 	.globl _ADCTEST1
                                    427 	.globl _ADCTEST0
                                    428 	.globl _AGCCTRL3
                                    429 	.globl _AGCCTRL2
                                    430 	.globl _AGCCTRL1
                                    431 	.globl _AGCCTRL0
                                    432 	.globl _FSCAL3
                                    433 	.globl _FSCAL2
                                    434 	.globl _FSCAL1
                                    435 	.globl _FSCAL0
                                    436 	.globl _FSCTRL
                                    437 	.globl _RXCTRL
                                    438 	.globl _FREQEST
                                    439 	.globl _MDMCTRL1
                                    440 	.globl _MDMCTRL0
                                    441 	.globl _RFRND
                                    442 	.globl _RFERRM
                                    443 	.globl _RFIRQM1
                                    444 	.globl _RFIRQM0
                                    445 	.globl _TXLAST_PTR
                                    446 	.globl _TXFIRST_PTR
                                    447 	.globl _RXP1_PTR
                                    448 	.globl _RXLAST_PTR
                                    449 	.globl _RXFIRST_PTR
                                    450 	.globl _TXFIFOCNT
                                    451 	.globl _RXFIFOCNT
                                    452 	.globl _RXFIRST
                                    453 	.globl _RSSISTAT
                                    454 	.globl _RSSI
                                    455 	.globl _CCACTRL1
                                    456 	.globl _CCACTRL0
                                    457 	.globl _FSMCTRL
                                    458 	.globl _FIFOPCTRL
                                    459 	.globl _FSMSTAT1
                                    460 	.globl _FSMSTAT0
                                    461 	.globl _TXCTRL
                                    462 	.globl _TXPOWER
                                    463 	.globl _FREQCTRL
                                    464 	.globl _FREQTUNE
                                    465 	.globl _RXMASKCLR
                                    466 	.globl _RXMASKSET
                                    467 	.globl _RXENABLE
                                    468 	.globl _FRMCTRL1
                                    469 	.globl _FRMCTRL0
                                    470 	.globl _SRCEXTEN2
                                    471 	.globl _SRCEXTEN1
                                    472 	.globl _SRCEXTEN0
                                    473 	.globl _SRCSHORTEN2
                                    474 	.globl _SRCSHORTEN1
                                    475 	.globl _SRCSHORTEN0
                                    476 	.globl _SRCMATCH
                                    477 	.globl _FRMFILT1
                                    478 	.globl _FRMFILT0
                                    479 	.globl _SHORT_ADDR1
                                    480 	.globl _SHORT_ADDR0
                                    481 	.globl _PAN_ID1
                                    482 	.globl _PAN_ID0
                                    483 	.globl _EXT_ADDR7
                                    484 	.globl _EXT_ADDR6
                                    485 	.globl _EXT_ADDR5
                                    486 	.globl _EXT_ADDR4
                                    487 	.globl _EXT_ADDR3
                                    488 	.globl _EXT_ADDR2
                                    489 	.globl _EXT_ADDR1
                                    490 	.globl _EXT_ADDR0
                                    491 	.globl _SRCSHORTPENDEN2
                                    492 	.globl _SRCSHORTPENDEN1
                                    493 	.globl _SRCSHORTPENDEN0
                                    494 	.globl _SRCEXTPENDEN2
                                    495 	.globl _SRCEXTPENDEN1
                                    496 	.globl _SRCEXTPENDEN0
                                    497 	.globl _SRCRESINDEX
                                    498 	.globl _SRCRESMASK2
                                    499 	.globl _SRCRESMASK1
                                    500 	.globl _SRCRESMASK0
                                    501 	.globl _SRC_ADDR_TABLE
                                    502 	.globl _TXFIFO
                                    503 	.globl _RXFIFO
                                    504 	.globl _RFCORE_RAM
                                    505 	.globl _CMPCTL
                                    506 	.globl _OPAMPS
                                    507 	.globl _OPAMPC
                                    508 	.globl _STCV2
                                    509 	.globl _STCV1
                                    510 	.globl _STCV0
                                    511 	.globl _STCS
                                    512 	.globl _STCC
                                    513 	.globl _T1CC4H
                                    514 	.globl _T1CC4L
                                    515 	.globl _T1CC3H
                                    516 	.globl _T1CC3L
                                    517 	.globl _XX_T1CC2H
                                    518 	.globl _XX_T1CC2L
                                    519 	.globl _XX_T1CC1H
                                    520 	.globl _XX_T1CC1L
                                    521 	.globl _XX_T1CC0H
                                    522 	.globl _XX_T1CC0L
                                    523 	.globl _T1CCTL4
                                    524 	.globl _T1CCTL3
                                    525 	.globl _XX_T1CCTL2
                                    526 	.globl _XX_T1CCTL1
                                    527 	.globl _XX_T1CCTL0
                                    528 	.globl _CLD
                                    529 	.globl _IRCTL
                                    530 	.globl _CHIPINFO1
                                    531 	.globl _CHIPINFO0
                                    532 	.globl _FWDATA
                                    533 	.globl _FADDRH
                                    534 	.globl _FADDRL
                                    535 	.globl _FCTL
                                    536 	.globl _IVCTRL
                                    537 	.globl _BATTMON
                                    538 	.globl _SRCRC
                                    539 	.globl _DBGDATA
                                    540 	.globl _TESTREG0
                                    541 	.globl _CHIPID
                                    542 	.globl _CHVER
                                    543 	.globl _OBSSEL5
                                    544 	.globl _OBSSEL4
                                    545 	.globl _OBSSEL3
                                    546 	.globl _OBSSEL2
                                    547 	.globl _OBSSEL1
                                    548 	.globl _OBSSEL0
                                    549 	.globl _I2CIO
                                    550 	.globl _I2CWC
                                    551 	.globl _I2CADDR
                                    552 	.globl _I2CDATA
                                    553 	.globl _I2CSTAT
                                    554 	.globl _I2CCFG
                                    555 	.globl _OPAMPMC
                                    556 	.globl _MONMUX
                                    557 ;--------------------------------------------------------
                                    558 ; special function registers
                                    559 ;--------------------------------------------------------
                                    560 	.area RSEG    (ABS,DATA)
      000000                        561 	.org 0x0000
                           000080   562 _P0	=	0x0080
                           000081   563 _SP	=	0x0081
                           000082   564 _DPL0	=	0x0082
                           000083   565 _DPH0	=	0x0083
                           000084   566 _DPL1	=	0x0084
                           000085   567 _DPH1	=	0x0085
                           000087   568 _PCON	=	0x0087
                           000088   569 _TCON	=	0x0088
                           000090   570 _P1	=	0x0090
                           000092   571 _DPS	=	0x0092
                           000098   572 _S0CON	=	0x0098
                           00009A   573 _IEN2	=	0x009a
                           00009B   574 _S1CON	=	0x009b
                           0000A0   575 _P2	=	0x00a0
                           0000A8   576 _IEN0	=	0x00a8
                           0000A9   577 _IP0	=	0x00a9
                           0000B8   578 _IEN1	=	0x00b8
                           0000B9   579 _IP1	=	0x00b9
                           0000C0   580 _IRCON	=	0x00c0
                           0000D0   581 _PSW	=	0x00d0
                           0000E0   582 _ACC	=	0x00e0
                           0000E8   583 _IRCON2	=	0x00e8
                           0000F0   584 _B	=	0x00f0
                           0000B4   585 _ADCCON1	=	0x00b4
                           0000B5   586 _ADCCON2	=	0x00b5
                           0000B6   587 _ADCCON3	=	0x00b6
                           0000BA   588 _ADCL	=	0x00ba
                           0000BB   589 _ADCH	=	0x00bb
                           0000BC   590 _RNDL	=	0x00bc
                           0000BD   591 _RNDH	=	0x00bd
                           0000B1   592 _ENCDI	=	0x00b1
                           0000B2   593 _ENCDO	=	0x00b2
                           0000B3   594 _ENCCS	=	0x00b3
                           0000D1   595 _DMAIRQ	=	0x00d1
                           0000D2   596 _DMA1CFGL	=	0x00d2
                           0000D3   597 _DMA1CFGH	=	0x00d3
                           0000D4   598 _DMA0CFGL	=	0x00d4
                           0000D5   599 _DMA0CFGH	=	0x00d5
                           0000D6   600 _DMAARM	=	0x00d6
                           0000D7   601 _DMAREQ	=	0x00d7
                           000089   602 _P0IFG	=	0x0089
                           00008A   603 _P1IFG	=	0x008a
                           00008B   604 _P2IFG	=	0x008b
                           00008C   605 _PICTL	=	0x008c
                           0000AB   606 _P0IEN	=	0x00ab
                           00008D   607 _P1IEN	=	0x008d
                           0000AC   608 _P2IEN	=	0x00ac
                           00008F   609 _P0INP	=	0x008f
                           0000F1   610 _PERCFG	=	0x00f1
                           0000F2   611 _APCFG	=	0x00f2
                           0000F3   612 _P0SEL	=	0x00f3
                           0000F4   613 _P1SEL	=	0x00f4
                           0000F5   614 _P2SEL	=	0x00f5
                           0000F6   615 _P1INP	=	0x00f6
                           0000F7   616 _P2INP	=	0x00f7
                           0000FD   617 _P0DIR	=	0x00fd
                           0000FE   618 _P1DIR	=	0x00fe
                           0000FF   619 _P2DIR	=	0x00ff
                           0000AE   620 _PMUX	=	0x00ae
                           000093   621 _MPAGE	=	0x0093
                           000093   622 __XPAGE	=	0x0093
                           0000C7   623 _MEMCTR	=	0x00c7
                           00009F   624 _FMAP	=	0x009f
                           00009F   625 _PSBANK	=	0x009f
                           000091   626 _RFIRQF1	=	0x0091
                           0000D9   627 _RFD	=	0x00d9
                           0000E1   628 _RFST	=	0x00e1
                           0000E9   629 _RFIRQF0	=	0x00e9
                           0000BF   630 _RFERRF	=	0x00bf
                           000095   631 _ST0	=	0x0095
                           000096   632 _ST1	=	0x0096
                           000097   633 _ST2	=	0x0097
                           0000AD   634 _STLOAD	=	0x00ad
                           0000BE   635 _SLEEPCMD	=	0x00be
                           00009D   636 _SLEEPSTA	=	0x009d
                           0000C6   637 _CLKCONCMD	=	0x00c6
                           00009E   638 _CLKCONSTA	=	0x009e
                           0000DA   639 _T1CC0L	=	0x00da
                           0000DB   640 _T1CC0H	=	0x00db
                           0000DC   641 _T1CC1L	=	0x00dc
                           0000DD   642 _T1CC1H	=	0x00dd
                           0000DE   643 _T1CC2L	=	0x00de
                           0000DF   644 _T1CC2H	=	0x00df
                           0000E2   645 _T1CNTL	=	0x00e2
                           0000E3   646 _T1CNTH	=	0x00e3
                           0000E4   647 _T1CTL	=	0x00e4
                           0000E5   648 _T1CCTL0	=	0x00e5
                           0000E6   649 _T1CCTL1	=	0x00e6
                           0000E7   650 _T1CCTL2	=	0x00e7
                           0000AF   651 _T1STAT	=	0x00af
                           000094   652 _T2CTRL	=	0x0094
                           00009C   653 _T2EVTCFG	=	0x009c
                           0000A1   654 _T2IRQF	=	0x00a1
                           0000A2   655 _T2M0	=	0x00a2
                           0000A3   656 _T2M1	=	0x00a3
                           0000A4   657 _T2MOVF0	=	0x00a4
                           0000A5   658 _T2MOVF1	=	0x00a5
                           0000A6   659 _T2MOVF2	=	0x00a6
                           0000A7   660 _T2IRQM	=	0x00a7
                           0000C3   661 _T2MSEL	=	0x00c3
                           0000CA   662 _T3CNT	=	0x00ca
                           0000CB   663 _T3CTL	=	0x00cb
                           0000CC   664 _T3CCTL0	=	0x00cc
                           0000CD   665 _T3CC0	=	0x00cd
                           0000CE   666 _T3CCTL1	=	0x00ce
                           0000CF   667 _T3CC1	=	0x00cf
                           0000EA   668 _T4CNT	=	0x00ea
                           0000EB   669 _T4CTL	=	0x00eb
                           0000EC   670 _T4CCTL0	=	0x00ec
                           0000ED   671 _T4CC0	=	0x00ed
                           0000EE   672 _T4CCTL1	=	0x00ee
                           0000EF   673 _T4CC1	=	0x00ef
                           0000D8   674 _TIMIF	=	0x00d8
                           000086   675 _U0CSR	=	0x0086
                           0000C1   676 _U0DBUF	=	0x00c1
                           0000C2   677 _U0BAUD	=	0x00c2
                           0000C4   678 _U0UCR	=	0x00c4
                           0000C5   679 _U0GCR	=	0x00c5
                           0000F8   680 _U1CSR	=	0x00f8
                           0000F9   681 _U1DBUF	=	0x00f9
                           0000FA   682 _U1BAUD	=	0x00fa
                           0000FB   683 _U1UCR	=	0x00fb
                           0000FC   684 _U1GCR	=	0x00fc
                           0000C9   685 _WDCTL	=	0x00c9
                                    686 ;--------------------------------------------------------
                                    687 ; special function bits
                                    688 ;--------------------------------------------------------
                                    689 	.area RSEG    (ABS,DATA)
      000000                        690 	.org 0x0000
                           000087   691 _P0_7	=	0x0087
                           000086   692 _P0_6	=	0x0086
                           000085   693 _P0_5	=	0x0085
                           000084   694 _P0_4	=	0x0084
                           000083   695 _P0_3	=	0x0083
                           000082   696 _P0_2	=	0x0082
                           000081   697 _P0_1	=	0x0081
                           000080   698 _P0_0	=	0x0080
                           00008F   699 _URX1IF	=	0x008f
                           00008D   700 _ADCIF	=	0x008d
                           00008B   701 _URX0IF	=	0x008b
                           00008A   702 _IT1	=	0x008a
                           000089   703 _RFERRIF	=	0x0089
                           000088   704 _IT0	=	0x0088
                           000097   705 _P1_7	=	0x0097
                           000096   706 _P1_6	=	0x0096
                           000095   707 _P1_5	=	0x0095
                           000094   708 _P1_4	=	0x0094
                           000093   709 _P1_3	=	0x0093
                           000092   710 _P1_2	=	0x0092
                           000091   711 _P1_1	=	0x0091
                           000090   712 _P1_0	=	0x0090
                           000099   713 _ENCIF_1	=	0x0099
                           000098   714 _ENCIF_0	=	0x0098
                           0000A7   715 _P2_7	=	0x00a7
                           0000A6   716 _P2_6	=	0x00a6
                           0000A5   717 _P2_5	=	0x00a5
                           0000A4   718 _P2_4	=	0x00a4
                           0000A3   719 _P2_3	=	0x00a3
                           0000A2   720 _P2_2	=	0x00a2
                           0000A1   721 _P2_1	=	0x00a1
                           0000A0   722 _P2_0	=	0x00a0
                           0000AF   723 _EA	=	0x00af
                           0000AD   724 _STIE	=	0x00ad
                           0000AC   725 _ENCIE	=	0x00ac
                           0000AB   726 _URX1IE	=	0x00ab
                           0000AA   727 _URX0IE	=	0x00aa
                           0000A9   728 _ADCIE	=	0x00a9
                           0000A8   729 _RFERRIE	=	0x00a8
                           0000BD   730 _P0IE	=	0x00bd
                           0000BC   731 _T4IE	=	0x00bc
                           0000BB   732 _T3IE	=	0x00bb
                           0000BA   733 _T2IE	=	0x00ba
                           0000B9   734 _T1IE	=	0x00b9
                           0000B8   735 _DMAIE	=	0x00b8
                           0000C7   736 _STIF	=	0x00c7
                           0000C5   737 _P0IF	=	0x00c5
                           0000C4   738 _T4IF	=	0x00c4
                           0000C3   739 _T3IF	=	0x00c3
                           0000C2   740 _T2IF	=	0x00c2
                           0000C1   741 _T1IF	=	0x00c1
                           0000C0   742 _DMAIF	=	0x00c0
                           0000D7   743 _CY	=	0x00d7
                           0000D6   744 _AC	=	0x00d6
                           0000D5   745 _F0	=	0x00d5
                           0000D4   746 _RS1	=	0x00d4
                           0000D3   747 _RS0	=	0x00d3
                           0000D2   748 _OV	=	0x00d2
                           0000D1   749 _F1	=	0x00d1
                           0000D0   750 _P	=	0x00d0
                           0000E7   751 _ACC_7	=	0x00e7
                           0000E6   752 _ACC_6	=	0x00e6
                           0000E5   753 _ACC_5	=	0x00e5
                           0000E4   754 _ACC_4	=	0x00e4
                           0000E3   755 _ACC_3	=	0x00e3
                           0000E2   756 _ACC_2	=	0x00e2
                           0000E1   757 _ACC_1	=	0x00e1
                           0000E0   758 _ACC_0	=	0x00e0
                           0000EC   759 _WDTIF	=	0x00ec
                           0000EB   760 _P1IF	=	0x00eb
                           0000EA   761 _UTX1IF	=	0x00ea
                           0000E9   762 _UTX0IF	=	0x00e9
                           0000E8   763 _P2IF	=	0x00e8
                           0000F7   764 _B_7	=	0x00f7
                           0000F6   765 _B_6	=	0x00f6
                           0000F5   766 _B_5	=	0x00f5
                           0000F4   767 _B_4	=	0x00f4
                           0000F3   768 _B_3	=	0x00f3
                           0000F2   769 _B_2	=	0x00f2
                           0000F1   770 _B_1	=	0x00f1
                           0000F0   771 _B_0	=	0x00f0
                           0000DE   772 _OVFIM	=	0x00de
                           0000DD   773 _T4CH1IF	=	0x00dd
                           0000DC   774 _T4CH0IF	=	0x00dc
                           0000DB   775 _T4OVFIF	=	0x00db
                           0000DA   776 _T3CH1IF	=	0x00da
                           0000D9   777 _T3CH0IF	=	0x00d9
                           0000D8   778 _T3OVFIF	=	0x00d8
                           0000FF   779 _MODE	=	0x00ff
                           0000FE   780 _RE	=	0x00fe
                           0000FD   781 _SLAVE	=	0x00fd
                           0000FC   782 _FE	=	0x00fc
                           0000FB   783 _ERR	=	0x00fb
                           0000FA   784 _RX_BYTE	=	0x00fa
                           0000F9   785 _TX_BYTE	=	0x00f9
                           0000F8   786 _ACTIVE	=	0x00f8
                                    787 ;--------------------------------------------------------
                                    788 ; overlayable register banks
                                    789 ;--------------------------------------------------------
                                    790 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        791 	.ds 8
                                    792 ;--------------------------------------------------------
                                    793 ; internal ram data
                                    794 ;--------------------------------------------------------
                                    795 	.area DSEG    (DATA)
                                    796 ;--------------------------------------------------------
                                    797 ; overlayable items in internal ram 
                                    798 ;--------------------------------------------------------
                                    799 ;--------------------------------------------------------
                                    800 ; indirectly addressable internal ram data
                                    801 ;--------------------------------------------------------
                                    802 	.area ISEG    (DATA)
                                    803 ;--------------------------------------------------------
                                    804 ; absolute internal ram data
                                    805 ;--------------------------------------------------------
                                    806 	.area IABS    (ABS,DATA)
                                    807 	.area IABS    (ABS,DATA)
                                    808 ;--------------------------------------------------------
                                    809 ; bit data
                                    810 ;--------------------------------------------------------
                                    811 	.area BSEG    (BIT)
                                    812 ;--------------------------------------------------------
                                    813 ; paged external ram data
                                    814 ;--------------------------------------------------------
                                    815 	.area PSEG    (PAG,XDATA)
                                    816 ;--------------------------------------------------------
                                    817 ; external ram data
                                    818 ;--------------------------------------------------------
                                    819 	.area XSEG    (XDATA)
                           0061A6   820 _MONMUX	=	0x61a6
                           0061A6   821 _OPAMPMC	=	0x61a6
                           006230   822 _I2CCFG	=	0x6230
                           006231   823 _I2CSTAT	=	0x6231
                           006232   824 _I2CDATA	=	0x6232
                           006233   825 _I2CADDR	=	0x6233
                           006234   826 _I2CWC	=	0x6234
                           006235   827 _I2CIO	=	0x6235
                           006243   828 _OBSSEL0	=	0x6243
                           006244   829 _OBSSEL1	=	0x6244
                           006245   830 _OBSSEL2	=	0x6245
                           006246   831 _OBSSEL3	=	0x6246
                           006247   832 _OBSSEL4	=	0x6247
                           006248   833 _OBSSEL5	=	0x6248
                           006249   834 _CHVER	=	0x6249
                           00624A   835 _CHIPID	=	0x624a
                           00624B   836 _TESTREG0	=	0x624b
                           006260   837 _DBGDATA	=	0x6260
                           006262   838 _SRCRC	=	0x6262
                           006264   839 _BATTMON	=	0x6264
                           006265   840 _IVCTRL	=	0x6265
                           006270   841 _FCTL	=	0x6270
                           006271   842 _FADDRL	=	0x6271
                           006272   843 _FADDRH	=	0x6272
                           006273   844 _FWDATA	=	0x6273
                           006276   845 _CHIPINFO0	=	0x6276
                           006277   846 _CHIPINFO1	=	0x6277
                           006281   847 _IRCTL	=	0x6281
                           006290   848 _CLD	=	0x6290
                           0062A0   849 _XX_T1CCTL0	=	0x62a0
                           0062A1   850 _XX_T1CCTL1	=	0x62a1
                           0062A2   851 _XX_T1CCTL2	=	0x62a2
                           0062A3   852 _T1CCTL3	=	0x62a3
                           0062A4   853 _T1CCTL4	=	0x62a4
                           0062A6   854 _XX_T1CC0L	=	0x62a6
                           0062A7   855 _XX_T1CC0H	=	0x62a7
                           0062A8   856 _XX_T1CC1L	=	0x62a8
                           0062A9   857 _XX_T1CC1H	=	0x62a9
                           0062AA   858 _XX_T1CC2L	=	0x62aa
                           0062AB   859 _XX_T1CC2H	=	0x62ab
                           0062AC   860 _T1CC3L	=	0x62ac
                           0062AD   861 _T1CC3H	=	0x62ad
                           0062AE   862 _T1CC4L	=	0x62ae
                           0062AF   863 _T1CC4H	=	0x62af
                           0062B0   864 _STCC	=	0x62b0
                           0062B1   865 _STCS	=	0x62b1
                           0062B2   866 _STCV0	=	0x62b2
                           0062B3   867 _STCV1	=	0x62b3
                           0062B4   868 _STCV2	=	0x62b4
                           0062C0   869 _OPAMPC	=	0x62c0
                           0062C1   870 _OPAMPS	=	0x62c1
                           0062D0   871 _CMPCTL	=	0x62d0
                           006000   872 _RFCORE_RAM	=	0x6000
                           006000   873 _RXFIFO	=	0x6000
                           006080   874 _TXFIFO	=	0x6080
                           006100   875 _SRC_ADDR_TABLE	=	0x6100
                           006160   876 _SRCRESMASK0	=	0x6160
                           006161   877 _SRCRESMASK1	=	0x6161
                           006162   878 _SRCRESMASK2	=	0x6162
                           006163   879 _SRCRESINDEX	=	0x6163
                           006164   880 _SRCEXTPENDEN0	=	0x6164
                           006165   881 _SRCEXTPENDEN1	=	0x6165
                           006166   882 _SRCEXTPENDEN2	=	0x6166
                           006167   883 _SRCSHORTPENDEN0	=	0x6167
                           006168   884 _SRCSHORTPENDEN1	=	0x6168
                           006169   885 _SRCSHORTPENDEN2	=	0x6169
                           00616A   886 _EXT_ADDR0	=	0x616a
                           00616B   887 _EXT_ADDR1	=	0x616b
                           00616C   888 _EXT_ADDR2	=	0x616c
                           00616D   889 _EXT_ADDR3	=	0x616d
                           00616E   890 _EXT_ADDR4	=	0x616e
                           00616F   891 _EXT_ADDR5	=	0x616f
                           006170   892 _EXT_ADDR6	=	0x6170
                           006171   893 _EXT_ADDR7	=	0x6171
                           006172   894 _PAN_ID0	=	0x6172
                           006173   895 _PAN_ID1	=	0x6173
                           006174   896 _SHORT_ADDR0	=	0x6174
                           006175   897 _SHORT_ADDR1	=	0x6175
                           006180   898 _FRMFILT0	=	0x6180
                           006181   899 _FRMFILT1	=	0x6181
                           006182   900 _SRCMATCH	=	0x6182
                           006183   901 _SRCSHORTEN0	=	0x6183
                           006184   902 _SRCSHORTEN1	=	0x6184
                           006185   903 _SRCSHORTEN2	=	0x6185
                           006186   904 _SRCEXTEN0	=	0x6186
                           006187   905 _SRCEXTEN1	=	0x6187
                           006188   906 _SRCEXTEN2	=	0x6188
                           006189   907 _FRMCTRL0	=	0x6189
                           00618A   908 _FRMCTRL1	=	0x618a
                           00618B   909 _RXENABLE	=	0x618b
                           00618C   910 _RXMASKSET	=	0x618c
                           00618D   911 _RXMASKCLR	=	0x618d
                           00618E   912 _FREQTUNE	=	0x618e
                           00618F   913 _FREQCTRL	=	0x618f
                           006190   914 _TXPOWER	=	0x6190
                           006191   915 _TXCTRL	=	0x6191
                           006192   916 _FSMSTAT0	=	0x6192
                           006193   917 _FSMSTAT1	=	0x6193
                           006194   918 _FIFOPCTRL	=	0x6194
                           006195   919 _FSMCTRL	=	0x6195
                           006196   920 _CCACTRL0	=	0x6196
                           006197   921 _CCACTRL1	=	0x6197
                           006198   922 _RSSI	=	0x6198
                           006199   923 _RSSISTAT	=	0x6199
                           00619A   924 _RXFIRST	=	0x619a
                           00619B   925 _RXFIFOCNT	=	0x619b
                           00619C   926 _TXFIFOCNT	=	0x619c
                           00619D   927 _RXFIRST_PTR	=	0x619d
                           00619E   928 _RXLAST_PTR	=	0x619e
                           00619F   929 _RXP1_PTR	=	0x619f
                           0061A1   930 _TXFIRST_PTR	=	0x61a1
                           0061A2   931 _TXLAST_PTR	=	0x61a2
                           0061A3   932 _RFIRQM0	=	0x61a3
                           0061A4   933 _RFIRQM1	=	0x61a4
                           0061A5   934 _RFERRM	=	0x61a5
                           0061A7   935 _RFRND	=	0x61a7
                           0061A8   936 _MDMCTRL0	=	0x61a8
                           0061A9   937 _MDMCTRL1	=	0x61a9
                           0061AA   938 _FREQEST	=	0x61aa
                           0061AB   939 _RXCTRL	=	0x61ab
                           0061AC   940 _FSCTRL	=	0x61ac
                           0061AD   941 _FSCAL0	=	0x61ad
                           0061AE   942 _FSCAL1	=	0x61ae
                           0061AF   943 _FSCAL2	=	0x61af
                           0061B0   944 _FSCAL3	=	0x61b0
                           0061B1   945 _AGCCTRL0	=	0x61b1
                           0061B2   946 _AGCCTRL1	=	0x61b2
                           0061B3   947 _AGCCTRL2	=	0x61b3
                           0061B4   948 _AGCCTRL3	=	0x61b4
                           0061B5   949 _ADCTEST0	=	0x61b5
                           0061B6   950 _ADCTEST1	=	0x61b6
                           0061B7   951 _ADCTEST2	=	0x61b7
                           0061B8   952 _MDMTEST0	=	0x61b8
                           0061B9   953 _MDMTEST1	=	0x61b9
                           0061BA   954 _DACTEST0	=	0x61ba
                           0061BB   955 _DACTEST1	=	0x61bb
                           0061BC   956 _DACTEST2	=	0x61bc
                           0061BD   957 _ATEST	=	0x61bd
                           0061BE   958 _PTEST0	=	0x61be
                           0061BF   959 _PTEST1	=	0x61bf
                           0061FA   960 _TXFILTCFG	=	0x61fa
                           0061EB   961 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   962 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   963 _RFC_OBS_CTRL2	=	0x61ed
                           0061C0   964 _CSPPROG0	=	0x61c0
                           0061C1   965 _CSPPROG1	=	0x61c1
                           0061C2   966 _CSPPROG2	=	0x61c2
                           0061C3   967 _CSPPROG3	=	0x61c3
                           0061C4   968 _CSPPROG4	=	0x61c4
                           0061C5   969 _CSPPROG5	=	0x61c5
                           0061C6   970 _CSPPROG6	=	0x61c6
                           0061C7   971 _CSPPROG7	=	0x61c7
                           0061C8   972 _CSPPROG8	=	0x61c8
                           0061C9   973 _CSPPROG9	=	0x61c9
                           0061CA   974 _CSPPROG10	=	0x61ca
                           0061CB   975 _CSPPROG11	=	0x61cb
                           0061CC   976 _CSPPROG12	=	0x61cc
                           0061CD   977 _CSPPROG13	=	0x61cd
                           0061CE   978 _CSPPROG14	=	0x61ce
                           0061CF   979 _CSPPROG15	=	0x61cf
                           0061D0   980 _CSPPROG16	=	0x61d0
                           0061D1   981 _CSPPROG17	=	0x61d1
                           0061D2   982 _CSPPROG18	=	0x61d2
                           0061D3   983 _CSPPROG19	=	0x61d3
                           0061D4   984 _CSPPROG20	=	0x61d4
                           0061D5   985 _CSPPROG21	=	0x61d5
                           0061D6   986 _CSPPROG22	=	0x61d6
                           0061D7   987 _CSPPROG23	=	0x61d7
                           0061E0   988 _CSPCTRL	=	0x61e0
                           0061E1   989 _CSPSTAT	=	0x61e1
                           0061E2   990 _CSPX	=	0x61e2
                           0061E3   991 _CSPY	=	0x61e3
                           0061E4   992 _CSPZ	=	0x61e4
                           0061E5   993 _CSPT	=	0x61e5
                           006200   994 _USBADDR	=	0x6200
                           006201   995 _USBPOW	=	0x6201
                           006202   996 _USBIIF	=	0x6202
                           006204   997 _USBOIF	=	0x6204
                           006206   998 _USBCIF	=	0x6206
                           006207   999 _USBIIE	=	0x6207
                           006209  1000 _USBOIE	=	0x6209
                           00620B  1001 _USBCIE	=	0x620b
                           00620C  1002 _USBFRML	=	0x620c
                           00620D  1003 _USBFRMH	=	0x620d
                           00620E  1004 _USBINDEX	=	0x620e
                           00620F  1005 _USBCTRL	=	0x620f
                           006210  1006 _USBMAXI	=	0x6210
                           006211  1007 _USBCS0	=	0x6211
                           006211  1008 _USBCSIL	=	0x6211
                           006212  1009 _USBCSIH	=	0x6212
                           006213  1010 _USBMAXO	=	0x6213
                           006214  1011 _USBCSOL	=	0x6214
                           006215  1012 _USBCSOH	=	0x6215
                           006216  1013 _USBCNT0	=	0x6216
                           006216  1014 _USBCNTL	=	0x6216
                           006217  1015 _USBCNTH	=	0x6217
                           006220  1016 _USBF0	=	0x6220
                           006222  1017 _USBF1	=	0x6222
                           006224  1018 _USBF2	=	0x6224
                           006226  1019 _USBF3	=	0x6226
                           006228  1020 _USBF4	=	0x6228
                           00622A  1021 _USBF5	=	0x622a
                           007080  1022 _X_P0	=	0x7080
                           007086  1023 _X_U0CSR	=	0x7086
                           007089  1024 _X_P0IFG	=	0x7089
                           00708A  1025 _X_P1IFG	=	0x708a
                           00708B  1026 _X_P2IFG	=	0x708b
                           00708C  1027 _X_PICTL	=	0x708c
                           00708D  1028 _X_P1IEN	=	0x708d
                           00708F  1029 _X_P0INP	=	0x708f
                           007090  1030 _X_P1	=	0x7090
                           007091  1031 _X_RFIRQF1	=	0x7091
                           007093  1032 _X_MPAGE	=	0x7093
                           007093  1033 _X__XPAGE	=	0x7093
                           007094  1034 _X_T2CTRL	=	0x7094
                           007095  1035 _X_ST0	=	0x7095
                           007096  1036 _X_ST1	=	0x7096
                           007097  1037 _X_ST2	=	0x7097
                           00709C  1038 _X_T2EVTCFG	=	0x709c
                           00709D  1039 _X_SLEEPSTA	=	0x709d
                           00709E  1040 _X_CLKCONSTA	=	0x709e
                           00709F  1041 _X_FMAP	=	0x709f
                           00709F  1042 _X_PSBANK	=	0x709f
                           0070A0  1043 _X_P2	=	0x70a0
                           0070A1  1044 _X_T2IRQF	=	0x70a1
                           0070A2  1045 _X_T2M0	=	0x70a2
                           0070A3  1046 _X_T2M1	=	0x70a3
                           0070A4  1047 _X_T2MOVF0	=	0x70a4
                           0070A5  1048 _X_T2MOVF1	=	0x70a5
                           0070A6  1049 _X_T2MOVF2	=	0x70a6
                           0070A7  1050 _X_T2IRQM	=	0x70a7
                           0070AB  1051 _X_P0IEN	=	0x70ab
                           0070AC  1052 _X_P2IEN	=	0x70ac
                           0070AD  1053 _X_STLOAD	=	0x70ad
                           0070AE  1054 _X_PMUX	=	0x70ae
                           0070AF  1055 _X_T1STAT	=	0x70af
                           0070B1  1056 _X_ENCDI	=	0x70b1
                           0070B2  1057 _X_ENCDO	=	0x70b2
                           0070B3  1058 _X_ENCCS	=	0x70b3
                           0070B4  1059 _X_ADCCON1	=	0x70b4
                           0070B5  1060 _X_ADCCON2	=	0x70b5
                           0070B6  1061 _X_ADCCON3	=	0x70b6
                           0070BA  1062 _X_ADCL	=	0x70ba
                           0070BB  1063 _X_ADCH	=	0x70bb
                           0070BC  1064 _X_RNDL	=	0x70bc
                           0070BD  1065 _X_RNDH	=	0x70bd
                           0070BE  1066 _X_SLEEPCMD	=	0x70be
                           0070BF  1067 _X_RFERRF	=	0x70bf
                           0070C1  1068 _X_U0DBUF	=	0x70c1
                           0070C2  1069 _X_U0BAUD	=	0x70c2
                           0070C3  1070 _X_T2MSEL	=	0x70c3
                           0070C4  1071 _X_U0UCR	=	0x70c4
                           0070C5  1072 _X_U0GCR	=	0x70c5
                           0070C6  1073 _X_CLKCONCMD	=	0x70c6
                           0070C7  1074 _X_MEMCTR	=	0x70c7
                           0070C9  1075 _X_WDCTL	=	0x70c9
                           0070CA  1076 _X_T3CNT	=	0x70ca
                           0070CB  1077 _X_T3CTL	=	0x70cb
                           0070CC  1078 _X_T3CCTL0	=	0x70cc
                           0070CD  1079 _X_T3CC0	=	0x70cd
                           0070CE  1080 _X_T3CCTL1	=	0x70ce
                           0070CF  1081 _X_T3CC1	=	0x70cf
                           0070D1  1082 _X_DMAIRQ	=	0x70d1
                           0070D2  1083 _X_DMA1CFGL	=	0x70d2
                           0070D3  1084 _X_DMA1CFGH	=	0x70d3
                           0070D4  1085 _X_DMA0CFGL	=	0x70d4
                           0070D5  1086 _X_DMA0CFGH	=	0x70d5
                           0070D6  1087 _X_DMAARM	=	0x70d6
                           0070D7  1088 _X_DMAREQ	=	0x70d7
                           0070D8  1089 _X_TIMIF	=	0x70d8
                           0070D9  1090 _X_RFD	=	0x70d9
                           0070DA  1091 _X_T1CC0L	=	0x70da
                           0070DB  1092 _X_T1CC0H	=	0x70db
                           0070DC  1093 _X_T1CC1L	=	0x70dc
                           0070DD  1094 _X_T1CC1H	=	0x70dd
                           0070DE  1095 _X_T1CC2L	=	0x70de
                           0070DF  1096 _X_T1CC2H	=	0x70df
                           0070E1  1097 _X_RFST	=	0x70e1
                           0070E2  1098 _X_T1CNTL	=	0x70e2
                           0070E3  1099 _X_T1CNTH	=	0x70e3
                           0070E4  1100 _X_T1CTL	=	0x70e4
                           0070E5  1101 _X_T1CCTL0	=	0x70e5
                           0070E6  1102 _X_T1CCTL1	=	0x70e6
                           0070E7  1103 _X_T1CCTL2	=	0x70e7
                           0070E9  1104 _X_RFIRQF0	=	0x70e9
                           0070EA  1105 _X_T4CNT	=	0x70ea
                           0070EB  1106 _X_T4CTL	=	0x70eb
                           0070EC  1107 _X_T4CCTL0	=	0x70ec
                           0070ED  1108 _X_T4CC0	=	0x70ed
                           0070EE  1109 _X_T4CCTL1	=	0x70ee
                           0070EF  1110 _X_T4CC1	=	0x70ef
                           0070F1  1111 _X_PERCFG	=	0x70f1
                           0070F2  1112 _X_APCFG	=	0x70f2
                           0070F3  1113 _X_P0SEL	=	0x70f3
                           0070F4  1114 _X_P1SEL	=	0x70f4
                           0070F5  1115 _X_P2SEL	=	0x70f5
                           0070F6  1116 _X_P1INP	=	0x70f6
                           0070F7  1117 _X_P2INP	=	0x70f7
                           0070F8  1118 _X_U1CSR	=	0x70f8
                           0070F9  1119 _X_U1DBUF	=	0x70f9
                           0070FA  1120 _X_U1BAUD	=	0x70fa
                           0070FB  1121 _X_U1UCR	=	0x70fb
                           0070FC  1122 _X_U1GCR	=	0x70fc
                           0070FD  1123 _X_P0DIR	=	0x70fd
                           0070FE  1124 _X_P1DIR	=	0x70fe
                           0070FF  1125 _X_P2DIR	=	0x70ff
                           007800  1126 _X_INFOPAGE	=	0x7800
                           00780C  1127 _X_IEEE_ADDR	=	0x780c
      000004                       1128 _buf:
      000004                       1129 	.ds 40
      00002C                       1130 _l_conn:
      00002C                       1131 	.ds 3
      00002F                       1132 _g_conn:
      00002F                       1133 	.ds 3
      000032                       1134 _timeout_handler_seq_id_1_584:
      000032                       1135 	.ds 2
      000034                       1136 _process_thread_udp_client_process_et_1_589:
      000034                       1137 	.ds 10
                                   1138 ;--------------------------------------------------------
                                   1139 ; absolute external ram data
                                   1140 ;--------------------------------------------------------
                                   1141 	.area XABS    (ABS,XDATA)
                                   1142 ;--------------------------------------------------------
                                   1143 ; external initialized ram data
                                   1144 ;--------------------------------------------------------
                                   1145 	.area XISEG   (XDATA)
      001155                       1146 _udp_client_process::
      001155                       1147 	.ds 10
                                   1148 	.area HOME    (CODE)
                                   1149 	.area GSINIT0 (CODE)
                                   1150 	.area GSINIT1 (CODE)
                                   1151 	.area GSINIT2 (CODE)
                                   1152 	.area GSINIT3 (CODE)
                                   1153 	.area GSINIT4 (CODE)
                                   1154 	.area GSINIT5 (CODE)
                                   1155 	.area GSINIT  (CODE)
                                   1156 	.area GSFINAL (CODE)
                                   1157 	.area CSEG    (CODE)
                                   1158 ;--------------------------------------------------------
                                   1159 ; global & static initialisations
                                   1160 ;--------------------------------------------------------
                                   1161 	.area HOME    (CODE)
                                   1162 	.area GSINIT  (CODE)
                                   1163 	.area GSFINAL (CODE)
                                   1164 	.area GSINIT  (CODE)
                                   1165 ;--------------------------------------------------------
                                   1166 ; Home
                                   1167 ;--------------------------------------------------------
                                   1168 	.area HOME    (CODE)
                                   1169 	.area HOME    (CODE)
                                   1170 ;--------------------------------------------------------
                                   1171 ; code
                                   1172 ;--------------------------------------------------------
                                   1173 	.area BANK1   (CODE)
                                   1174 ;------------------------------------------------------------
                                   1175 ;Allocation info for local variables in function 'tcpip_handler'
                                   1176 ;------------------------------------------------------------
                                   1177 ;	client.c:65: tcpip_handler(void)
                                   1178 ;	-----------------------------------------
                                   1179 ;	 function tcpip_handler
                                   1180 ;	-----------------------------------------
      038000                       1181 _tcpip_handler:
                           000007  1182 	ar7 = 0x07
                           000006  1183 	ar6 = 0x06
                           000005  1184 	ar5 = 0x05
                           000004  1185 	ar4 = 0x04
                           000003  1186 	ar3 = 0x03
                           000002  1187 	ar2 = 0x02
                           000001  1188 	ar1 = 0x01
                           000000  1189 	ar0 = 0x00
                                   1190 ;	client.c:67: leds_on(LEDS_GREEN);
      038000 75 82 01         [24] 1191 	mov	dpl,#0x01
      038003 78 EB            [12] 1192 	mov	r0,#_leds_on
      038005 79 83            [12] 1193 	mov	r1,#(_leds_on >> 8)
      038007 7A 04            [12] 1194 	mov	r2,#(_leds_on >> 16)
      038009 12 1D 71         [24] 1195 	lcall	__sdcc_banked_call
                                   1196 ;	client.c:68: if(uip_newdata()) {
      03800C 90 07 60         [24] 1197 	mov	dptr,#_uip_flags
      03800F E0               [24] 1198 	movx	a,@dptr
      038010 FF               [12] 1199 	mov	r7,a
      038011 20 E1 03         [24] 1200 	jb	acc.1,00108$
      038014 02 80 9A         [24] 1201 	ljmp	00102$
      038017                       1202 00108$:
                                   1203 ;	client.c:69: putstring("0x");
      038017 90 7B A8         [24] 1204 	mov	dptr,#___str_0
      03801A 75 F0 80         [24] 1205 	mov	b,#0x80
      03801D 78 A0            [12] 1206 	mov	r0,#_putstring
      03801F 79 8B            [12] 1207 	mov	r1,#(_putstring >> 8)
      038021 7A 04            [12] 1208 	mov	r2,#(_putstring >> 16)
      038023 12 1D 71         [24] 1209 	lcall	__sdcc_banked_call
                                   1210 ;	client.c:70: puthex(uip_datalen());
      038026 90 07 5C         [24] 1211 	mov	dptr,#_uip_len
      038029 E0               [24] 1212 	movx	a,@dptr
      03802A FE               [12] 1213 	mov	r6,a
      03802B A3               [24] 1214 	inc	dptr
      03802C E0               [24] 1215 	movx	a,@dptr
      03802D 8E 82            [24] 1216 	mov	dpl,r6
      03802F 78 D3            [12] 1217 	mov	r0,#_puthex
      038031 79 8B            [12] 1218 	mov	r1,#(_puthex >> 8)
      038033 7A 04            [12] 1219 	mov	r2,#(_puthex >> 16)
      038035 12 1D 71         [24] 1220 	lcall	__sdcc_banked_call
                                   1221 ;	client.c:71: putstring(" bytes response=0x");
      038038 90 7B AB         [24] 1222 	mov	dptr,#___str_1
      03803B 75 F0 80         [24] 1223 	mov	b,#0x80
      03803E 78 A0            [12] 1224 	mov	r0,#_putstring
      038040 79 8B            [12] 1225 	mov	r1,#(_putstring >> 8)
      038042 7A 04            [12] 1226 	mov	r2,#(_putstring >> 16)
      038044 12 1D 71         [24] 1227 	lcall	__sdcc_banked_call
                                   1228 ;	client.c:72: puthex((*(uint16_t *) uip_appdata) >> 8);
      038047 90 07 56         [24] 1229 	mov	dptr,#_uip_appdata
      03804A E0               [24] 1230 	movx	a,@dptr
      03804B FD               [12] 1231 	mov	r5,a
      03804C A3               [24] 1232 	inc	dptr
      03804D E0               [24] 1233 	movx	a,@dptr
      03804E FE               [12] 1234 	mov	r6,a
      03804F A3               [24] 1235 	inc	dptr
      038050 E0               [24] 1236 	movx	a,@dptr
      038051 FF               [12] 1237 	mov	r7,a
      038052 8D 82            [24] 1238 	mov	dpl,r5
      038054 8E 83            [24] 1239 	mov	dph,r6
      038056 8F F0            [24] 1240 	mov	b,r7
      038058 12 58 0A         [24] 1241 	lcall	__gptrget
      03805B A3               [24] 1242 	inc	dptr
      03805C 12 58 0A         [24] 1243 	lcall	__gptrget
      03805F F5 82            [12] 1244 	mov	dpl,a
      038061 78 D3            [12] 1245 	mov	r0,#_puthex
      038063 79 8B            [12] 1246 	mov	r1,#(_puthex >> 8)
      038065 7A 04            [12] 1247 	mov	r2,#(_puthex >> 16)
      038067 12 1D 71         [24] 1248 	lcall	__sdcc_banked_call
                                   1249 ;	client.c:73: puthex((*(uint16_t *) uip_appdata) & 0xFF);
      03806A 90 07 56         [24] 1250 	mov	dptr,#_uip_appdata
      03806D E0               [24] 1251 	movx	a,@dptr
      03806E FD               [12] 1252 	mov	r5,a
      03806F A3               [24] 1253 	inc	dptr
      038070 E0               [24] 1254 	movx	a,@dptr
      038071 FE               [12] 1255 	mov	r6,a
      038072 A3               [24] 1256 	inc	dptr
      038073 E0               [24] 1257 	movx	a,@dptr
      038074 FF               [12] 1258 	mov	r7,a
      038075 8D 82            [24] 1259 	mov	dpl,r5
      038077 8E 83            [24] 1260 	mov	dph,r6
      038079 8F F0            [24] 1261 	mov	b,r7
      03807B 12 58 0A         [24] 1262 	lcall	__gptrget
      03807E FD               [12] 1263 	mov	r5,a
      03807F A3               [24] 1264 	inc	dptr
      038080 12 58 0A         [24] 1265 	lcall	__gptrget
      038083 8D 82            [24] 1266 	mov	dpl,r5
      038085 78 D3            [12] 1267 	mov	r0,#_puthex
      038087 79 8B            [12] 1268 	mov	r1,#(_puthex >> 8)
      038089 7A 04            [12] 1269 	mov	r2,#(_puthex >> 16)
      03808B 12 1D 71         [24] 1270 	lcall	__sdcc_banked_call
                                   1271 ;	client.c:74: putchar('\n');
      03808E 75 82 0A         [24] 1272 	mov	dpl,#0x0A
      038091 78 95            [12] 1273 	mov	r0,#_putchar
      038093 79 C0            [12] 1274 	mov	r1,#(_putchar >> 8)
      038095 7A 02            [12] 1275 	mov	r2,#(_putchar >> 16)
      038097 12 1D 71         [24] 1276 	lcall	__sdcc_banked_call
      03809A                       1277 00102$:
                                   1278 ;	client.c:76: leds_off(LEDS_GREEN);
      03809A 75 82 01         [24] 1279 	mov	dpl,#0x01
      03809D 78 01            [12] 1280 	mov	r0,#_leds_off
      03809F 79 84            [12] 1281 	mov	r1,#(_leds_off >> 8)
      0380A1 7A 04            [12] 1282 	mov	r2,#(_leds_off >> 16)
      0380A3 12 1D 71         [24] 1283 	lcall	__sdcc_banked_call
                                   1284 ;	client.c:77: return;
      0380A6 02 1D 83         [24] 1285 	ljmp	__sdcc_banked_ret
                                   1286 ;------------------------------------------------------------
                                   1287 ;Allocation info for local variables in function 'timeout_handler'
                                   1288 ;------------------------------------------------------------
                                   1289 ;this_conn                 Allocated to registers r5 r6 r7 
                                   1290 ;seq_id                    Allocated with name '_timeout_handler_seq_id_1_584'
                                   1291 ;------------------------------------------------------------
                                   1292 ;	client.c:81: timeout_handler(void)
                                   1293 ;	-----------------------------------------
                                   1294 ;	 function timeout_handler
                                   1295 ;	-----------------------------------------
      0380A9                       1296 _timeout_handler:
                                   1297 ;	client.c:86: leds_on(LEDS_RED);
      0380A9 75 82 02         [24] 1298 	mov	dpl,#0x02
      0380AC 78 EB            [12] 1299 	mov	r0,#_leds_on
      0380AE 79 83            [12] 1300 	mov	r1,#(_leds_on >> 8)
      0380B0 7A 04            [12] 1301 	mov	r2,#(_leds_on >> 16)
      0380B2 12 1D 71         [24] 1302 	lcall	__sdcc_banked_call
                                   1303 ;	client.c:87: memset(buf, 0, MAX_PAYLOAD_LEN);
      0380B5 74 28            [12] 1304 	mov	a,#0x28
      0380B7 C0 E0            [24] 1305 	push	acc
      0380B9 E4               [12] 1306 	clr	a
      0380BA C0 E0            [24] 1307 	push	acc
      0380BC C0 E0            [24] 1308 	push	acc
      0380BE 90 00 04         [24] 1309 	mov	dptr,#_buf
      0380C1 75 F0 00         [24] 1310 	mov	b,#0x00
      0380C4 78 55            [12] 1311 	mov	r0,#_memset
      0380C6 79 56            [12] 1312 	mov	r1,#(_memset >> 8)
      0380C8 7A 00            [12] 1313 	mov	r2,#(_memset >> 16)
      0380CA 12 1D 71         [24] 1314 	lcall	__sdcc_banked_call
      0380CD 15 81            [12] 1315 	dec	sp
      0380CF 15 81            [12] 1316 	dec	sp
      0380D1 15 81            [12] 1317 	dec	sp
                                   1318 ;	client.c:88: seq_id++;
      0380D3 90 00 32         [24] 1319 	mov	dptr,#_timeout_handler_seq_id_1_584
      0380D6 E0               [24] 1320 	movx	a,@dptr
      0380D7 24 01            [12] 1321 	add	a,#0x01
      0380D9 F0               [24] 1322 	movx	@dptr,a
      0380DA A3               [24] 1323 	inc	dptr
      0380DB E0               [24] 1324 	movx	a,@dptr
      0380DC 34 00            [12] 1325 	addc	a,#0x00
      0380DE F0               [24] 1326 	movx	@dptr,a
                                   1327 ;	client.c:91: if(seq_id & 0x01) {
      0380DF 90 00 32         [24] 1328 	mov	dptr,#_timeout_handler_seq_id_1_584
      0380E2 E0               [24] 1329 	movx	a,@dptr
      0380E3 FE               [12] 1330 	mov	r6,a
      0380E4 A3               [24] 1331 	inc	dptr
      0380E5 E0               [24] 1332 	movx	a,@dptr
      0380E6 FF               [12] 1333 	mov	r7,a
      0380E7 EE               [12] 1334 	mov	a,r6
      0380E8 30 E0 0D         [24] 1335 	jnb	acc.0,00104$
                                   1336 ;	client.c:92: this_conn = l_conn;
      0380EB 90 00 2C         [24] 1337 	mov	dptr,#_l_conn
      0380EE E0               [24] 1338 	movx	a,@dptr
      0380EF FD               [12] 1339 	mov	r5,a
      0380F0 A3               [24] 1340 	inc	dptr
      0380F1 E0               [24] 1341 	movx	a,@dptr
      0380F2 FE               [12] 1342 	mov	r6,a
      0380F3 A3               [24] 1343 	inc	dptr
      0380F4 E0               [24] 1344 	movx	a,@dptr
      0380F5 FF               [12] 1345 	mov	r7,a
      0380F6 80 36            [24] 1346 	sjmp	00105$
      0380F8                       1347 00104$:
                                   1348 ;	client.c:94: this_conn = g_conn;
      0380F8 90 00 2F         [24] 1349 	mov	dptr,#_g_conn
      0380FB E0               [24] 1350 	movx	a,@dptr
      0380FC FA               [12] 1351 	mov	r2,a
      0380FD A3               [24] 1352 	inc	dptr
      0380FE E0               [24] 1353 	movx	a,@dptr
      0380FF FB               [12] 1354 	mov	r3,a
      038100 A3               [24] 1355 	inc	dptr
      038101 E0               [24] 1356 	movx	a,@dptr
      038102 FC               [12] 1357 	mov	r4,a
      038103 8A 05            [24] 1358 	mov	ar5,r2
      038105 8B 06            [24] 1359 	mov	ar6,r3
      038107 8C 07            [24] 1360 	mov	ar7,r4
                                   1361 ;	client.c:95: if(uip_ds6_get_global(ADDR_PREFERRED) == NULL) {
      038109 75 82 01         [24] 1362 	mov	dpl,#0x01
      03810C C0 07            [24] 1363 	push	ar7
      03810E C0 06            [24] 1364 	push	ar6
      038110 C0 05            [24] 1365 	push	ar5
      038112 78 AA            [12] 1366 	mov	r0,#_uip_ds6_get_global
      038114 79 96            [12] 1367 	mov	r1,#(_uip_ds6_get_global >> 8)
      038116 7A 02            [12] 1368 	mov	r2,#(_uip_ds6_get_global >> 16)
      038118 12 1D 71         [24] 1369 	lcall	__sdcc_banked_call
      03811B AA 82            [24] 1370 	mov	r2,dpl
      03811D AB 83            [24] 1371 	mov	r3,dph
      03811F AC F0            [24] 1372 	mov	r4,b
      038121 D0 05            [24] 1373 	pop	ar5
      038123 D0 06            [24] 1374 	pop	ar6
      038125 D0 07            [24] 1375 	pop	ar7
      038127 EA               [12] 1376 	mov	a,r2
      038128 4B               [12] 1377 	orl	a,r3
      038129 70 03            [24] 1378 	jnz	00105$
                                   1379 ;	client.c:96: return;
      03812B 02 82 3F         [24] 1380 	ljmp	00106$
      03812E                       1381 00105$:
                                   1382 ;	client.c:100: PRINTF("Client to: ");
      03812E C0 07            [24] 1383 	push	ar7
      038130 C0 06            [24] 1384 	push	ar6
      038132 C0 05            [24] 1385 	push	ar5
      038134 74 BE            [12] 1386 	mov	a,#___str_2
      038136 C0 E0            [24] 1387 	push	acc
      038138 74 7B            [12] 1388 	mov	a,#(___str_2 >> 8)
      03813A C0 E0            [24] 1389 	push	acc
      03813C 74 80            [12] 1390 	mov	a,#0x80
      03813E C0 E0            [24] 1391 	push	acc
      038140 78 AB            [12] 1392 	mov	r0,#_printf
      038142 79 57            [12] 1393 	mov	r1,#(_printf >> 8)
      038144 7A 00            [12] 1394 	mov	r2,#(_printf >> 16)
      038146 12 1D 71         [24] 1395 	lcall	__sdcc_banked_call
      038149 15 81            [12] 1396 	dec	sp
      03814B 15 81            [12] 1397 	dec	sp
      03814D 15 81            [12] 1398 	dec	sp
      03814F D0 05            [24] 1399 	pop	ar5
      038151 D0 06            [24] 1400 	pop	ar6
      038153 D0 07            [24] 1401 	pop	ar7
                                   1402 ;	client.c:101: PRINT6ADDR(&this_conn->ripaddr);
      038155 8D 82            [24] 1403 	mov	dpl,r5
      038157 8E 83            [24] 1404 	mov	dph,r6
      038159 8F F0            [24] 1405 	mov	b,r7
      03815B C0 07            [24] 1406 	push	ar7
      03815D C0 06            [24] 1407 	push	ar6
      03815F C0 05            [24] 1408 	push	ar5
      038161 78 C2            [12] 1409 	mov	r0,#_uip_debug_ipaddr_print
      038163 79 A7            [12] 1410 	mov	r1,#(_uip_debug_ipaddr_print >> 8)
      038165 7A 04            [12] 1411 	mov	r2,#(_uip_debug_ipaddr_print >> 16)
      038167 12 1D 71         [24] 1412 	lcall	__sdcc_banked_call
                                   1413 ;	client.c:103: memcpy(buf, &seq_id, sizeof(seq_id));
      03816A 74 02            [12] 1414 	mov	a,#0x02
      03816C C0 E0            [24] 1415 	push	acc
      03816E E4               [12] 1416 	clr	a
      03816F C0 E0            [24] 1417 	push	acc
      038171 74 32            [12] 1418 	mov	a,#_timeout_handler_seq_id_1_584
      038173 C0 E0            [24] 1419 	push	acc
      038175 74 00            [12] 1420 	mov	a,#(_timeout_handler_seq_id_1_584 >> 8)
      038177 C0 E0            [24] 1421 	push	acc
      038179 E4               [12] 1422 	clr	a
      03817A C0 E0            [24] 1423 	push	acc
      03817C 90 00 04         [24] 1424 	mov	dptr,#_buf
      03817F 75 F0 00         [24] 1425 	mov	b,#0x00
      038182 78 C1            [12] 1426 	mov	r0,#_memcpy
      038184 79 56            [12] 1427 	mov	r1,#(_memcpy >> 8)
      038186 7A 00            [12] 1428 	mov	r2,#(_memcpy >> 16)
      038188 12 1D 71         [24] 1429 	lcall	__sdcc_banked_call
      03818B E5 81            [12] 1430 	mov	a,sp
      03818D 24 FB            [12] 1431 	add	a,#0xfb
      03818F F5 81            [12] 1432 	mov	sp,a
      038191 D0 05            [24] 1433 	pop	ar5
      038193 D0 06            [24] 1434 	pop	ar6
      038195 D0 07            [24] 1435 	pop	ar7
                                   1436 ;	client.c:105: PRINTF(" Remote Port %u,", UIP_HTONS(this_conn->rport));
      038197 74 12            [12] 1437 	mov	a,#0x12
      038199 2D               [12] 1438 	add	a,r5
      03819A FA               [12] 1439 	mov	r2,a
      03819B E4               [12] 1440 	clr	a
      03819C 3E               [12] 1441 	addc	a,r6
      03819D FB               [12] 1442 	mov	r3,a
      03819E 8F 04            [24] 1443 	mov	ar4,r7
      0381A0 8A 82            [24] 1444 	mov	dpl,r2
      0381A2 8B 83            [24] 1445 	mov	dph,r3
      0381A4 8C F0            [24] 1446 	mov	b,r4
      0381A6 12 58 0A         [24] 1447 	lcall	__gptrget
      0381A9 FA               [12] 1448 	mov	r2,a
      0381AA A3               [24] 1449 	inc	dptr
      0381AB 12 58 0A         [24] 1450 	lcall	__gptrget
      0381AE FB               [12] 1451 	mov	r3,a
      0381AF EA               [12] 1452 	mov	a,r2
      0381B0 8B 02            [24] 1453 	mov	ar2,r3
      0381B2 FB               [12] 1454 	mov	r3,a
      0381B3 C0 07            [24] 1455 	push	ar7
      0381B5 C0 06            [24] 1456 	push	ar6
      0381B7 C0 05            [24] 1457 	push	ar5
      0381B9 C0 02            [24] 1458 	push	ar2
      0381BB C0 03            [24] 1459 	push	ar3
      0381BD 74 CA            [12] 1460 	mov	a,#___str_3
      0381BF C0 E0            [24] 1461 	push	acc
      0381C1 74 7B            [12] 1462 	mov	a,#(___str_3 >> 8)
      0381C3 C0 E0            [24] 1463 	push	acc
      0381C5 74 80            [12] 1464 	mov	a,#0x80
      0381C7 C0 E0            [24] 1465 	push	acc
      0381C9 78 AB            [12] 1466 	mov	r0,#_printf
      0381CB 79 57            [12] 1467 	mov	r1,#(_printf >> 8)
      0381CD 7A 00            [12] 1468 	mov	r2,#(_printf >> 16)
      0381CF 12 1D 71         [24] 1469 	lcall	__sdcc_banked_call
      0381D2 E5 81            [12] 1470 	mov	a,sp
      0381D4 24 FB            [12] 1471 	add	a,#0xfb
      0381D6 F5 81            [12] 1472 	mov	sp,a
                                   1473 ;	client.c:106: PRINTF(" (msg=0x%04x), %u bytes\n", *(uint16_t *) buf, sizeof(seq_id));
      0381D8 90 00 04         [24] 1474 	mov	dptr,#_buf
      0381DB E0               [24] 1475 	movx	a,@dptr
      0381DC FB               [12] 1476 	mov	r3,a
      0381DD A3               [24] 1477 	inc	dptr
      0381DE E0               [24] 1478 	movx	a,@dptr
      0381DF FC               [12] 1479 	mov	r4,a
      0381E0 74 02            [12] 1480 	mov	a,#0x02
      0381E2 C0 E0            [24] 1481 	push	acc
      0381E4 E4               [12] 1482 	clr	a
      0381E5 C0 E0            [24] 1483 	push	acc
      0381E7 C0 03            [24] 1484 	push	ar3
      0381E9 C0 04            [24] 1485 	push	ar4
      0381EB 74 DB            [12] 1486 	mov	a,#___str_4
      0381ED C0 E0            [24] 1487 	push	acc
      0381EF 74 7B            [12] 1488 	mov	a,#(___str_4 >> 8)
      0381F1 C0 E0            [24] 1489 	push	acc
      0381F3 74 80            [12] 1490 	mov	a,#0x80
      0381F5 C0 E0            [24] 1491 	push	acc
      0381F7 78 AB            [12] 1492 	mov	r0,#_printf
      0381F9 79 57            [12] 1493 	mov	r1,#(_printf >> 8)
      0381FB 7A 00            [12] 1494 	mov	r2,#(_printf >> 16)
      0381FD 12 1D 71         [24] 1495 	lcall	__sdcc_banked_call
      038200 E5 81            [12] 1496 	mov	a,sp
      038202 24 F9            [12] 1497 	add	a,#0xf9
      038204 F5 81            [12] 1498 	mov	sp,a
      038206 D0 05            [24] 1499 	pop	ar5
      038208 D0 06            [24] 1500 	pop	ar6
      03820A D0 07            [24] 1501 	pop	ar7
                                   1502 ;	client.c:108: uip_udp_packet_send(this_conn, buf, sizeof(seq_id));
      03820C 74 02            [12] 1503 	mov	a,#0x02
      03820E C0 E0            [24] 1504 	push	acc
      038210 E4               [12] 1505 	clr	a
      038211 C0 E0            [24] 1506 	push	acc
      038213 74 04            [12] 1507 	mov	a,#_buf
      038215 C0 E0            [24] 1508 	push	acc
      038217 74 00            [12] 1509 	mov	a,#(_buf >> 8)
      038219 C0 E0            [24] 1510 	push	acc
      03821B E4               [12] 1511 	clr	a
      03821C C0 E0            [24] 1512 	push	acc
      03821E 8D 82            [24] 1513 	mov	dpl,r5
      038220 8E 83            [24] 1514 	mov	dph,r6
      038222 8F F0            [24] 1515 	mov	b,r7
      038224 78 46            [12] 1516 	mov	r0,#_uip_udp_packet_send
      038226 79 4E            [12] 1517 	mov	r1,#(_uip_udp_packet_send >> 8)
      038228 7A 00            [12] 1518 	mov	r2,#(_uip_udp_packet_send >> 16)
      03822A 12 1D 71         [24] 1519 	lcall	__sdcc_banked_call
      03822D E5 81            [12] 1520 	mov	a,sp
      03822F 24 FB            [12] 1521 	add	a,#0xfb
      038231 F5 81            [12] 1522 	mov	sp,a
                                   1523 ;	client.c:109: leds_off(LEDS_RED);
      038233 75 82 02         [24] 1524 	mov	dpl,#0x02
      038236 78 01            [12] 1525 	mov	r0,#_leds_off
      038238 79 84            [12] 1526 	mov	r1,#(_leds_off >> 8)
      03823A 7A 04            [12] 1527 	mov	r2,#(_leds_off >> 16)
      03823C 12 1D 71         [24] 1528 	lcall	__sdcc_banked_call
      03823F                       1529 00106$:
      03823F 02 1D 83         [24] 1530 	ljmp	__sdcc_banked_ret
                                   1531 ;------------------------------------------------------------
                                   1532 ;Allocation info for local variables in function 'process_thread_udp_client_process'
                                   1533 ;------------------------------------------------------------
                                   1534 ;ev                        Allocated to stack - sp -22
                                   1535 ;data                      Allocated to stack - sp -25
                                   1536 ;process_pt                Allocated to registers r5 r6 r7 
                                   1537 ;ipaddr                    Allocated to stack - sp -15
                                   1538 ;PT_YIELD_FLAG             Allocated to registers r4 
                                   1539 ;sloc0                     Allocated to stack - sp -18
                                   1540 ;et                        Allocated with name '_process_thread_udp_client_process_et_1_589'
                                   1541 ;------------------------------------------------------------
                                   1542 ;	client.c:112: PROCESS_THREAD(udp_client_process, ev, data)
                                   1543 ;	-----------------------------------------
                                   1544 ;	 function process_thread_udp_client_process
                                   1545 ;	-----------------------------------------
      038242                       1546 _process_thread_udp_client_process:
      038242 E5 81            [12] 1547 	mov	a,sp
      038244 24 13            [12] 1548 	add	a,#0x13
      038246 F5 81            [12] 1549 	mov	sp,a
                                   1550 ;	client.c:117: PROCESS_BEGIN();
      038248 AD 82            [24] 1551 	mov	r5,dpl
      03824A AE 83            [24] 1552 	mov	r6,dph
      03824C AF F0            [24] 1553 	mov	r7,b
      03824E 7C 01            [12] 1554 	mov	r4,#0x01
      038250 12 58 0A         [24] 1555 	lcall	__gptrget
      038253 FA               [12] 1556 	mov	r2,a
      038254 A3               [24] 1557 	inc	dptr
      038255 12 58 0A         [24] 1558 	lcall	__gptrget
      038258 FB               [12] 1559 	mov	r3,a
      038259 BA 00 05         [24] 1560 	cjne	r2,#0x00,00153$
      03825C BB 00 02         [24] 1561 	cjne	r3,#0x00,00153$
      03825F 80 0C            [24] 1562 	sjmp	00101$
      038261                       1563 00153$:
      038261 BA 94 06         [24] 1564 	cjne	r2,#0x94,00154$
      038264 BB 00 03         [24] 1565 	cjne	r3,#0x00,00154$
      038267 02 86 47         [24] 1566 	ljmp	00112$
      03826A                       1567 00154$:
      03826A 02 86 C0         [24] 1568 	ljmp	00126$
      03826D                       1569 00101$:
                                   1570 ;	client.c:118: PRINTF("UDP client process started\n");
      03826D C0 05            [24] 1571 	push	ar5
      03826F C0 06            [24] 1572 	push	ar6
      038271 C0 07            [24] 1573 	push	ar7
      038273 C0 07            [24] 1574 	push	ar7
      038275 C0 06            [24] 1575 	push	ar6
      038277 C0 05            [24] 1576 	push	ar5
      038279 74 F4            [12] 1577 	mov	a,#___str_5
      03827B C0 E0            [24] 1578 	push	acc
      03827D 74 7B            [12] 1579 	mov	a,#(___str_5 >> 8)
      03827F C0 E0            [24] 1580 	push	acc
      038281 74 80            [12] 1581 	mov	a,#0x80
      038283 C0 E0            [24] 1582 	push	acc
      038285 78 AB            [12] 1583 	mov	r0,#_printf
      038287 79 57            [12] 1584 	mov	r1,#(_printf >> 8)
      038289 7A 00            [12] 1585 	mov	r2,#(_printf >> 16)
      03828B 12 1D 71         [24] 1586 	lcall	__sdcc_banked_call
      03828E 15 81            [12] 1587 	dec	sp
      038290 15 81            [12] 1588 	dec	sp
      038292 15 81            [12] 1589 	dec	sp
      038294 D0 05            [24] 1590 	pop	ar5
      038296 D0 06            [24] 1591 	pop	ar6
      038298 D0 07            [24] 1592 	pop	ar7
                                   1593 ;	client.c:120: uip_ip6addr(&ipaddr, 0xfe80, 0, 0, 0, 0x0215, 0x2000, 0x0002, 0x2145);
      03829A E5 81            [12] 1594 	mov	a,sp
      03829C 24 EE            [12] 1595 	add	a,#0xEE
      03829E F8               [12] 1596 	mov	r0,a
      03829F 76 FE            [12] 1597 	mov	@r0,#0xFE
      0382A1 08               [12] 1598 	inc	r0
      0382A2 76 80            [12] 1599 	mov	@r0,#0x80
      0382A4 E5 81            [12] 1600 	mov	a,sp
      0382A6 24 EE            [12] 1601 	add	a,#0xEE
      0382A8 FB               [12] 1602 	mov	r3,a
      0382A9 24 02            [12] 1603 	add	a,#0x02
      0382AB F8               [12] 1604 	mov	r0,a
      0382AC 76 00            [12] 1605 	mov	@r0,#0x00
      0382AE 08               [12] 1606 	inc	r0
      0382AF 76 00            [12] 1607 	mov	@r0,#0x00
      0382B1 74 04            [12] 1608 	mov	a,#0x04
      0382B3 2B               [12] 1609 	add	a,r3
      0382B4 F8               [12] 1610 	mov	r0,a
      0382B5 76 00            [12] 1611 	mov	@r0,#0x00
      0382B7 08               [12] 1612 	inc	r0
      0382B8 76 00            [12] 1613 	mov	@r0,#0x00
      0382BA 74 06            [12] 1614 	mov	a,#0x06
      0382BC 2B               [12] 1615 	add	a,r3
      0382BD F8               [12] 1616 	mov	r0,a
      0382BE 76 00            [12] 1617 	mov	@r0,#0x00
      0382C0 08               [12] 1618 	inc	r0
      0382C1 76 00            [12] 1619 	mov	@r0,#0x00
      0382C3 74 08            [12] 1620 	mov	a,#0x08
      0382C5 2B               [12] 1621 	add	a,r3
      0382C6 F8               [12] 1622 	mov	r0,a
      0382C7 76 02            [12] 1623 	mov	@r0,#0x02
      0382C9 08               [12] 1624 	inc	r0
      0382CA 76 15            [12] 1625 	mov	@r0,#0x15
      0382CC 74 0A            [12] 1626 	mov	a,#0x0A
      0382CE 2B               [12] 1627 	add	a,r3
      0382CF F8               [12] 1628 	mov	r0,a
      0382D0 76 20            [12] 1629 	mov	@r0,#0x20
      0382D2 08               [12] 1630 	inc	r0
      0382D3 76 00            [12] 1631 	mov	@r0,#0x00
      0382D5 74 0C            [12] 1632 	mov	a,#0x0C
      0382D7 2B               [12] 1633 	add	a,r3
      0382D8 F8               [12] 1634 	mov	r0,a
      0382D9 76 00            [12] 1635 	mov	@r0,#0x00
      0382DB 08               [12] 1636 	inc	r0
      0382DC 76 02            [12] 1637 	mov	@r0,#0x02
      0382DE 74 0E            [12] 1638 	mov	a,#0x0E
      0382E0 2B               [12] 1639 	add	a,r3
      0382E1 F8               [12] 1640 	mov	r0,a
      0382E2 76 21            [12] 1641 	mov	@r0,#0x21
      0382E4 08               [12] 1642 	inc	r0
      0382E5 76 45            [12] 1643 	mov	@r0,#0x45
                                   1644 ;	client.c:122: l_conn = udp_new(&ipaddr, UIP_HTONS(3000), NULL);
      0382E7 E5 81            [12] 1645 	mov	a,sp
      0382E9 24 EE            [12] 1646 	add	a,#0xEE
      0382EB F9               [12] 1647 	mov	r1,a
      0382EC FA               [12] 1648 	mov	r2,a
      0382ED 7B 00            [12] 1649 	mov	r3,#0x00
      0382EF 7F 40            [12] 1650 	mov	r7,#0x40
      0382F1 C0 01            [24] 1651 	push	ar1
      0382F3 E4               [12] 1652 	clr	a
      0382F4 C0 E0            [24] 1653 	push	acc
      0382F6 C0 E0            [24] 1654 	push	acc
      0382F8 C0 E0            [24] 1655 	push	acc
      0382FA 74 0B            [12] 1656 	mov	a,#0x0B
      0382FC C0 E0            [24] 1657 	push	acc
      0382FE 74 B8            [12] 1658 	mov	a,#0xB8
      038300 C0 E0            [24] 1659 	push	acc
      038302 8A 82            [24] 1660 	mov	dpl,r2
      038304 8B 83            [24] 1661 	mov	dph,r3
      038306 8F F0            [24] 1662 	mov	b,r7
      038308 78 B6            [12] 1663 	mov	r0,#_udp_new
      03830A 79 87            [12] 1664 	mov	r1,#(_udp_new >> 8)
      03830C 7A 03            [12] 1665 	mov	r2,#(_udp_new >> 16)
      03830E 12 1D 71         [24] 1666 	lcall	__sdcc_banked_call
      038311 AD 82            [24] 1667 	mov	r5,dpl
      038313 AE 83            [24] 1668 	mov	r6,dph
      038315 AF F0            [24] 1669 	mov	r7,b
      038317 E5 81            [12] 1670 	mov	a,sp
      038319 24 FB            [12] 1671 	add	a,#0xfb
      03831B F5 81            [12] 1672 	mov	sp,a
      03831D D0 01            [24] 1673 	pop	ar1
      03831F 90 00 2C         [24] 1674 	mov	dptr,#_l_conn
      038322 ED               [12] 1675 	mov	a,r5
      038323 F0               [24] 1676 	movx	@dptr,a
      038324 EE               [12] 1677 	mov	a,r6
      038325 A3               [24] 1678 	inc	dptr
      038326 F0               [24] 1679 	movx	@dptr,a
      038327 EF               [12] 1680 	mov	a,r7
      038328 A3               [24] 1681 	inc	dptr
      038329 F0               [24] 1682 	movx	@dptr,a
                                   1683 ;	client.c:123: if(!l_conn) {
      03832A ED               [12] 1684 	mov	a,r5
      03832B 4E               [12] 1685 	orl	a,r6
      03832C D0 07            [24] 1686 	pop	ar7
      03832E D0 06            [24] 1687 	pop	ar6
      038330 D0 05            [24] 1688 	pop	ar5
      038332 70 2B            [24] 1689 	jnz	00106$
                                   1690 ;	client.c:124: PRINTF("udp_new l_conn error.\n");
      038334 C0 07            [24] 1691 	push	ar7
      038336 C0 06            [24] 1692 	push	ar6
      038338 C0 05            [24] 1693 	push	ar5
      03833A C0 01            [24] 1694 	push	ar1
      03833C 74 10            [12] 1695 	mov	a,#___str_6
      03833E C0 E0            [24] 1696 	push	acc
      038340 74 7C            [12] 1697 	mov	a,#(___str_6 >> 8)
      038342 C0 E0            [24] 1698 	push	acc
      038344 74 80            [12] 1699 	mov	a,#0x80
      038346 C0 E0            [24] 1700 	push	acc
      038348 78 AB            [12] 1701 	mov	r0,#_printf
      03834A 79 57            [12] 1702 	mov	r1,#(_printf >> 8)
      03834C 7A 00            [12] 1703 	mov	r2,#(_printf >> 16)
      03834E 12 1D 71         [24] 1704 	lcall	__sdcc_banked_call
      038351 15 81            [12] 1705 	dec	sp
      038353 15 81            [12] 1706 	dec	sp
      038355 15 81            [12] 1707 	dec	sp
      038357 D0 01            [24] 1708 	pop	ar1
      038359 D0 05            [24] 1709 	pop	ar5
      03835B D0 06            [24] 1710 	pop	ar6
      03835D D0 07            [24] 1711 	pop	ar7
      03835F                       1712 00106$:
                                   1713 ;	client.c:126: udp_bind(l_conn, UIP_HTONS(LOCAL_CONN_PORT));
      03835F C0 05            [24] 1714 	push	ar5
      038361 C0 06            [24] 1715 	push	ar6
      038363 C0 07            [24] 1716 	push	ar7
      038365 90 00 2C         [24] 1717 	mov	dptr,#_l_conn
      038368 E0               [24] 1718 	movx	a,@dptr
      038369 FA               [12] 1719 	mov	r2,a
      03836A A3               [24] 1720 	inc	dptr
      03836B E0               [24] 1721 	movx	a,@dptr
      03836C FB               [12] 1722 	mov	r3,a
      03836D A3               [24] 1723 	inc	dptr
      03836E E0               [24] 1724 	movx	a,@dptr
      03836F FF               [12] 1725 	mov	r7,a
      038370 74 10            [12] 1726 	mov	a,#0x10
      038372 2A               [12] 1727 	add	a,r2
      038373 FA               [12] 1728 	mov	r2,a
      038374 E4               [12] 1729 	clr	a
      038375 3B               [12] 1730 	addc	a,r3
      038376 FB               [12] 1731 	mov	r3,a
      038377 8A 82            [24] 1732 	mov	dpl,r2
      038379 8B 83            [24] 1733 	mov	dph,r3
      03837B 8F F0            [24] 1734 	mov	b,r7
      03837D 74 0B            [12] 1735 	mov	a,#0x0B
      03837F 12 51 0A         [24] 1736 	lcall	__gptrput
      038382 A3               [24] 1737 	inc	dptr
      038383 74 B9            [12] 1738 	mov	a,#0xB9
      038385 12 51 0A         [24] 1739 	lcall	__gptrput
                                   1740 ;	client.c:128: PRINTF("Link-Local connection with ");
      038388 C0 07            [24] 1741 	push	ar7
      03838A C0 06            [24] 1742 	push	ar6
      03838C C0 05            [24] 1743 	push	ar5
      03838E C0 01            [24] 1744 	push	ar1
      038390 74 27            [12] 1745 	mov	a,#___str_7
      038392 C0 E0            [24] 1746 	push	acc
      038394 74 7C            [12] 1747 	mov	a,#(___str_7 >> 8)
      038396 C0 E0            [24] 1748 	push	acc
      038398 74 80            [12] 1749 	mov	a,#0x80
      03839A C0 E0            [24] 1750 	push	acc
      03839C 78 AB            [12] 1751 	mov	r0,#_printf
      03839E 79 57            [12] 1752 	mov	r1,#(_printf >> 8)
      0383A0 7A 00            [12] 1753 	mov	r2,#(_printf >> 16)
      0383A2 12 1D 71         [24] 1754 	lcall	__sdcc_banked_call
      0383A5 15 81            [12] 1755 	dec	sp
      0383A7 15 81            [12] 1756 	dec	sp
      0383A9 15 81            [12] 1757 	dec	sp
      0383AB D0 01            [24] 1758 	pop	ar1
      0383AD D0 05            [24] 1759 	pop	ar5
      0383AF D0 06            [24] 1760 	pop	ar6
      0383B1 D0 07            [24] 1761 	pop	ar7
                                   1762 ;	client.c:129: PRINT6ADDR(&l_conn->ripaddr);
      0383B3 90 00 2C         [24] 1763 	mov	dptr,#_l_conn
      0383B6 E0               [24] 1764 	movx	a,@dptr
      0383B7 FD               [12] 1765 	mov	r5,a
      0383B8 A3               [24] 1766 	inc	dptr
      0383B9 E0               [24] 1767 	movx	a,@dptr
      0383BA FE               [12] 1768 	mov	r6,a
      0383BB A3               [24] 1769 	inc	dptr
      0383BC E0               [24] 1770 	movx	a,@dptr
      0383BD FF               [12] 1771 	mov	r7,a
      0383BE 8D 82            [24] 1772 	mov	dpl,r5
      0383C0 8E 83            [24] 1773 	mov	dph,r6
      0383C2 8F F0            [24] 1774 	mov	b,r7
      0383C4 C0 07            [24] 1775 	push	ar7
      0383C6 C0 06            [24] 1776 	push	ar6
      0383C8 C0 05            [24] 1777 	push	ar5
      0383CA C0 01            [24] 1778 	push	ar1
      0383CC 78 C2            [12] 1779 	mov	r0,#_uip_debug_ipaddr_print
      0383CE 79 A7            [12] 1780 	mov	r1,#(_uip_debug_ipaddr_print >> 8)
      0383D0 7A 04            [12] 1781 	mov	r2,#(_uip_debug_ipaddr_print >> 16)
      0383D2 12 1D 71         [24] 1782 	lcall	__sdcc_banked_call
      0383D5 D0 01            [24] 1783 	pop	ar1
      0383D7 D0 05            [24] 1784 	pop	ar5
      0383D9 D0 06            [24] 1785 	pop	ar6
      0383DB D0 07            [24] 1786 	pop	ar7
                                   1787 ;	client.c:130: PRINTF(" local/remote port %u/%u\n",
      0383DD 90 00 2C         [24] 1788 	mov	dptr,#_l_conn
      0383E0 E5 81            [12] 1789 	mov	a,sp
      0383E2 24 EB            [12] 1790 	add	a,#0xeb
      0383E4 F8               [12] 1791 	mov	r0,a
      0383E5 E0               [24] 1792 	movx	a,@dptr
      0383E6 F6               [12] 1793 	mov	@r0,a
      0383E7 A3               [24] 1794 	inc	dptr
      0383E8 E0               [24] 1795 	movx	a,@dptr
      0383E9 08               [12] 1796 	inc	r0
      0383EA F6               [12] 1797 	mov	@r0,a
      0383EB A3               [24] 1798 	inc	dptr
      0383EC E0               [24] 1799 	movx	a,@dptr
      0383ED 08               [12] 1800 	inc	r0
      0383EE F6               [12] 1801 	mov	@r0,a
      0383EF E5 81            [12] 1802 	mov	a,sp
      0383F1 24 EB            [12] 1803 	add	a,#0xeb
      0383F3 F8               [12] 1804 	mov	r0,a
      0383F4 74 12            [12] 1805 	mov	a,#0x12
      0383F6 26               [12] 1806 	add	a,@r0
      0383F7 FA               [12] 1807 	mov	r2,a
      0383F8 E4               [12] 1808 	clr	a
      0383F9 08               [12] 1809 	inc	r0
      0383FA 36               [12] 1810 	addc	a,@r0
      0383FB FB               [12] 1811 	mov	r3,a
      0383FC 08               [12] 1812 	inc	r0
      0383FD 86 07            [24] 1813 	mov	ar7,@r0
      0383FF 8A 82            [24] 1814 	mov	dpl,r2
      038401 8B 83            [24] 1815 	mov	dph,r3
      038403 8F F0            [24] 1816 	mov	b,r7
      038405 12 58 0A         [24] 1817 	lcall	__gptrget
      038408 FA               [12] 1818 	mov	r2,a
      038409 A3               [24] 1819 	inc	dptr
      03840A 12 58 0A         [24] 1820 	lcall	__gptrget
      03840D FB               [12] 1821 	mov	r3,a
      03840E EA               [12] 1822 	mov	a,r2
      03840F 8B 02            [24] 1823 	mov	ar2,r3
      038411 FB               [12] 1824 	mov	r3,a
      038412 E5 81            [12] 1825 	mov	a,sp
      038414 24 EB            [12] 1826 	add	a,#0xeb
      038416 F8               [12] 1827 	mov	r0,a
      038417 74 10            [12] 1828 	mov	a,#0x10
      038419 26               [12] 1829 	add	a,@r0
      03841A FD               [12] 1830 	mov	r5,a
      03841B E4               [12] 1831 	clr	a
      03841C 08               [12] 1832 	inc	r0
      03841D 36               [12] 1833 	addc	a,@r0
      03841E FE               [12] 1834 	mov	r6,a
      03841F 08               [12] 1835 	inc	r0
      038420 86 07            [24] 1836 	mov	ar7,@r0
      038422 8D 82            [24] 1837 	mov	dpl,r5
      038424 8E 83            [24] 1838 	mov	dph,r6
      038426 8F F0            [24] 1839 	mov	b,r7
      038428 12 58 0A         [24] 1840 	lcall	__gptrget
      03842B FD               [12] 1841 	mov	r5,a
      03842C A3               [24] 1842 	inc	dptr
      03842D 12 58 0A         [24] 1843 	lcall	__gptrget
      038430 FE               [12] 1844 	mov	r6,a
      038431 ED               [12] 1845 	mov	a,r5
      038432 8E 05            [24] 1846 	mov	ar5,r6
      038434 FE               [12] 1847 	mov	r6,a
      038435 C0 07            [24] 1848 	push	ar7
      038437 C0 06            [24] 1849 	push	ar6
      038439 C0 05            [24] 1850 	push	ar5
      03843B C0 01            [24] 1851 	push	ar1
      03843D C0 02            [24] 1852 	push	ar2
      03843F C0 03            [24] 1853 	push	ar3
      038441 C0 05            [24] 1854 	push	ar5
      038443 C0 06            [24] 1855 	push	ar6
      038445 74 43            [12] 1856 	mov	a,#___str_8
      038447 C0 E0            [24] 1857 	push	acc
      038449 74 7C            [12] 1858 	mov	a,#(___str_8 >> 8)
      03844B C0 E0            [24] 1859 	push	acc
      03844D 74 80            [12] 1860 	mov	a,#0x80
      03844F C0 E0            [24] 1861 	push	acc
      038451 78 AB            [12] 1862 	mov	r0,#_printf
      038453 79 57            [12] 1863 	mov	r1,#(_printf >> 8)
      038455 7A 00            [12] 1864 	mov	r2,#(_printf >> 16)
      038457 12 1D 71         [24] 1865 	lcall	__sdcc_banked_call
      03845A E5 81            [12] 1866 	mov	a,sp
      03845C 24 F9            [12] 1867 	add	a,#0xf9
      03845E F5 81            [12] 1868 	mov	sp,a
      038460 D0 01            [24] 1869 	pop	ar1
      038462 D0 05            [24] 1870 	pop	ar5
      038464 D0 06            [24] 1871 	pop	ar6
      038466 D0 07            [24] 1872 	pop	ar7
                                   1873 ;	client.c:133: uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0x0215, 0x2000, 0x0002, 0x2145);
      038468 77 AA            [12] 1874 	mov	@r1,#0xAA
      03846A 09               [12] 1875 	inc	r1
      03846B 77 AA            [12] 1876 	mov	@r1,#0xAA
      03846D 19               [12] 1877 	dec	r1
      03846E 74 02            [12] 1878 	mov	a,#0x02
      038470 29               [12] 1879 	add	a,r1
      038471 F8               [12] 1880 	mov	r0,a
      038472 76 00            [12] 1881 	mov	@r0,#0x00
      038474 08               [12] 1882 	inc	r0
      038475 76 00            [12] 1883 	mov	@r0,#0x00
      038477 74 04            [12] 1884 	mov	a,#0x04
      038479 29               [12] 1885 	add	a,r1
      03847A F8               [12] 1886 	mov	r0,a
      03847B 76 00            [12] 1887 	mov	@r0,#0x00
      03847D 08               [12] 1888 	inc	r0
      03847E 76 00            [12] 1889 	mov	@r0,#0x00
      038480 74 06            [12] 1890 	mov	a,#0x06
      038482 29               [12] 1891 	add	a,r1
      038483 F8               [12] 1892 	mov	r0,a
      038484 76 00            [12] 1893 	mov	@r0,#0x00
      038486 08               [12] 1894 	inc	r0
      038487 76 00            [12] 1895 	mov	@r0,#0x00
      038489 74 08            [12] 1896 	mov	a,#0x08
      03848B 29               [12] 1897 	add	a,r1
      03848C F8               [12] 1898 	mov	r0,a
      03848D 76 02            [12] 1899 	mov	@r0,#0x02
      03848F 08               [12] 1900 	inc	r0
      038490 76 15            [12] 1901 	mov	@r0,#0x15
      038492 74 0A            [12] 1902 	mov	a,#0x0A
      038494 29               [12] 1903 	add	a,r1
      038495 F8               [12] 1904 	mov	r0,a
      038496 76 20            [12] 1905 	mov	@r0,#0x20
      038498 08               [12] 1906 	inc	r0
      038499 76 00            [12] 1907 	mov	@r0,#0x00
      03849B 74 0C            [12] 1908 	mov	a,#0x0C
      03849D 29               [12] 1909 	add	a,r1
      03849E F8               [12] 1910 	mov	r0,a
      03849F 76 00            [12] 1911 	mov	@r0,#0x00
      0384A1 08               [12] 1912 	inc	r0
      0384A2 76 02            [12] 1913 	mov	@r0,#0x02
      0384A4 74 0E            [12] 1914 	mov	a,#0x0E
      0384A6 29               [12] 1915 	add	a,r1
      0384A7 F8               [12] 1916 	mov	r0,a
      0384A8 76 21            [12] 1917 	mov	@r0,#0x21
      0384AA 08               [12] 1918 	inc	r0
      0384AB 76 45            [12] 1919 	mov	@r0,#0x45
                                   1920 ;	client.c:134: g_conn = udp_new(&ipaddr, UIP_HTONS(3000), NULL);
      0384AD 89 07            [24] 1921 	mov	ar7,r1
      0384AF 7E 00            [12] 1922 	mov	r6,#0x00
      0384B1 7D 40            [12] 1923 	mov	r5,#0x40
      0384B3 E4               [12] 1924 	clr	a
      0384B4 C0 E0            [24] 1925 	push	acc
      0384B6 C0 E0            [24] 1926 	push	acc
      0384B8 C0 E0            [24] 1927 	push	acc
      0384BA 74 0B            [12] 1928 	mov	a,#0x0B
      0384BC C0 E0            [24] 1929 	push	acc
      0384BE 74 B8            [12] 1930 	mov	a,#0xB8
      0384C0 C0 E0            [24] 1931 	push	acc
      0384C2 8F 82            [24] 1932 	mov	dpl,r7
      0384C4 8E 83            [24] 1933 	mov	dph,r6
      0384C6 8D F0            [24] 1934 	mov	b,r5
      0384C8 78 B6            [12] 1935 	mov	r0,#_udp_new
      0384CA 79 87            [12] 1936 	mov	r1,#(_udp_new >> 8)
      0384CC 7A 03            [12] 1937 	mov	r2,#(_udp_new >> 16)
      0384CE 12 1D 71         [24] 1938 	lcall	__sdcc_banked_call
      0384D1 AD 82            [24] 1939 	mov	r5,dpl
      0384D3 AE 83            [24] 1940 	mov	r6,dph
      0384D5 AF F0            [24] 1941 	mov	r7,b
      0384D7 E5 81            [12] 1942 	mov	a,sp
      0384D9 24 FB            [12] 1943 	add	a,#0xfb
      0384DB F5 81            [12] 1944 	mov	sp,a
      0384DD 90 00 2F         [24] 1945 	mov	dptr,#_g_conn
      0384E0 ED               [12] 1946 	mov	a,r5
      0384E1 F0               [24] 1947 	movx	@dptr,a
      0384E2 EE               [12] 1948 	mov	a,r6
      0384E3 A3               [24] 1949 	inc	dptr
      0384E4 F0               [24] 1950 	movx	@dptr,a
      0384E5 EF               [12] 1951 	mov	a,r7
      0384E6 A3               [24] 1952 	inc	dptr
      0384E7 F0               [24] 1953 	movx	@dptr,a
                                   1954 ;	client.c:135: if(!g_conn) {
      0384E8 ED               [12] 1955 	mov	a,r5
      0384E9 4E               [12] 1956 	orl	a,r6
      0384EA D0 07            [24] 1957 	pop	ar7
      0384EC D0 06            [24] 1958 	pop	ar6
      0384EE D0 05            [24] 1959 	pop	ar5
      0384F0 70 27            [24] 1960 	jnz	00111$
                                   1961 ;	client.c:136: PRINTF("udp_new g_conn error.\n");
      0384F2 C0 07            [24] 1962 	push	ar7
      0384F4 C0 06            [24] 1963 	push	ar6
      0384F6 C0 05            [24] 1964 	push	ar5
      0384F8 74 5D            [12] 1965 	mov	a,#___str_9
      0384FA C0 E0            [24] 1966 	push	acc
      0384FC 74 7C            [12] 1967 	mov	a,#(___str_9 >> 8)
      0384FE C0 E0            [24] 1968 	push	acc
      038500 74 80            [12] 1969 	mov	a,#0x80
      038502 C0 E0            [24] 1970 	push	acc
      038504 78 AB            [12] 1971 	mov	r0,#_printf
      038506 79 57            [12] 1972 	mov	r1,#(_printf >> 8)
      038508 7A 00            [12] 1973 	mov	r2,#(_printf >> 16)
      03850A 12 1D 71         [24] 1974 	lcall	__sdcc_banked_call
      03850D 15 81            [12] 1975 	dec	sp
      03850F 15 81            [12] 1976 	dec	sp
      038511 15 81            [12] 1977 	dec	sp
      038513 D0 05            [24] 1978 	pop	ar5
      038515 D0 06            [24] 1979 	pop	ar6
      038517 D0 07            [24] 1980 	pop	ar7
      038519                       1981 00111$:
                                   1982 ;	client.c:138: udp_bind(g_conn, UIP_HTONS(GLOBAL_CONN_PORT));
      038519 C0 05            [24] 1983 	push	ar5
      03851B C0 06            [24] 1984 	push	ar6
      03851D C0 07            [24] 1985 	push	ar7
      03851F 90 00 2F         [24] 1986 	mov	dptr,#_g_conn
      038522 E0               [24] 1987 	movx	a,@dptr
      038523 FA               [12] 1988 	mov	r2,a
      038524 A3               [24] 1989 	inc	dptr
      038525 E0               [24] 1990 	movx	a,@dptr
      038526 FB               [12] 1991 	mov	r3,a
      038527 A3               [24] 1992 	inc	dptr
      038528 E0               [24] 1993 	movx	a,@dptr
      038529 FF               [12] 1994 	mov	r7,a
      03852A 74 10            [12] 1995 	mov	a,#0x10
      03852C 2A               [12] 1996 	add	a,r2
      03852D FA               [12] 1997 	mov	r2,a
      03852E E4               [12] 1998 	clr	a
      03852F 3B               [12] 1999 	addc	a,r3
      038530 FB               [12] 2000 	mov	r3,a
      038531 8A 82            [24] 2001 	mov	dpl,r2
      038533 8B 83            [24] 2002 	mov	dph,r3
      038535 8F F0            [24] 2003 	mov	b,r7
      038537 74 0B            [12] 2004 	mov	a,#0x0B
      038539 12 51 0A         [24] 2005 	lcall	__gptrput
      03853C A3               [24] 2006 	inc	dptr
      03853D 74 BA            [12] 2007 	mov	a,#0xBA
      03853F 12 51 0A         [24] 2008 	lcall	__gptrput
                                   2009 ;	client.c:140: PRINTF("Global connection with ");
      038542 C0 07            [24] 2010 	push	ar7
      038544 C0 06            [24] 2011 	push	ar6
      038546 C0 05            [24] 2012 	push	ar5
      038548 74 74            [12] 2013 	mov	a,#___str_10
      03854A C0 E0            [24] 2014 	push	acc
      03854C 74 7C            [12] 2015 	mov	a,#(___str_10 >> 8)
      03854E C0 E0            [24] 2016 	push	acc
      038550 74 80            [12] 2017 	mov	a,#0x80
      038552 C0 E0            [24] 2018 	push	acc
      038554 78 AB            [12] 2019 	mov	r0,#_printf
      038556 79 57            [12] 2020 	mov	r1,#(_printf >> 8)
      038558 7A 00            [12] 2021 	mov	r2,#(_printf >> 16)
      03855A 12 1D 71         [24] 2022 	lcall	__sdcc_banked_call
      03855D 15 81            [12] 2023 	dec	sp
      03855F 15 81            [12] 2024 	dec	sp
      038561 15 81            [12] 2025 	dec	sp
      038563 D0 05            [24] 2026 	pop	ar5
      038565 D0 06            [24] 2027 	pop	ar6
      038567 D0 07            [24] 2028 	pop	ar7
                                   2029 ;	client.c:141: PRINT6ADDR(&g_conn->ripaddr);
      038569 90 00 2F         [24] 2030 	mov	dptr,#_g_conn
      03856C E0               [24] 2031 	movx	a,@dptr
      03856D FD               [12] 2032 	mov	r5,a
      03856E A3               [24] 2033 	inc	dptr
      03856F E0               [24] 2034 	movx	a,@dptr
      038570 FE               [12] 2035 	mov	r6,a
      038571 A3               [24] 2036 	inc	dptr
      038572 E0               [24] 2037 	movx	a,@dptr
      038573 FF               [12] 2038 	mov	r7,a
      038574 8D 82            [24] 2039 	mov	dpl,r5
      038576 8E 83            [24] 2040 	mov	dph,r6
      038578 8F F0            [24] 2041 	mov	b,r7
      03857A C0 07            [24] 2042 	push	ar7
      03857C C0 06            [24] 2043 	push	ar6
      03857E C0 05            [24] 2044 	push	ar5
      038580 78 C2            [12] 2045 	mov	r0,#_uip_debug_ipaddr_print
      038582 79 A7            [12] 2046 	mov	r1,#(_uip_debug_ipaddr_print >> 8)
      038584 7A 04            [12] 2047 	mov	r2,#(_uip_debug_ipaddr_print >> 16)
      038586 12 1D 71         [24] 2048 	lcall	__sdcc_banked_call
      038589 D0 05            [24] 2049 	pop	ar5
      03858B D0 06            [24] 2050 	pop	ar6
      03858D D0 07            [24] 2051 	pop	ar7
                                   2052 ;	client.c:142: PRINTF(" local/remote port %u/%u\n",
      03858F 90 00 2F         [24] 2053 	mov	dptr,#_g_conn
      038592 E5 81            [12] 2054 	mov	a,sp
      038594 24 EB            [12] 2055 	add	a,#0xeb
      038596 F8               [12] 2056 	mov	r0,a
      038597 E0               [24] 2057 	movx	a,@dptr
      038598 F6               [12] 2058 	mov	@r0,a
      038599 A3               [24] 2059 	inc	dptr
      03859A E0               [24] 2060 	movx	a,@dptr
      03859B 08               [12] 2061 	inc	r0
      03859C F6               [12] 2062 	mov	@r0,a
      03859D A3               [24] 2063 	inc	dptr
      03859E E0               [24] 2064 	movx	a,@dptr
      03859F 08               [12] 2065 	inc	r0
      0385A0 F6               [12] 2066 	mov	@r0,a
      0385A1 E5 81            [12] 2067 	mov	a,sp
      0385A3 24 EB            [12] 2068 	add	a,#0xeb
      0385A5 F8               [12] 2069 	mov	r0,a
      0385A6 74 12            [12] 2070 	mov	a,#0x12
      0385A8 26               [12] 2071 	add	a,@r0
      0385A9 FA               [12] 2072 	mov	r2,a
      0385AA E4               [12] 2073 	clr	a
      0385AB 08               [12] 2074 	inc	r0
      0385AC 36               [12] 2075 	addc	a,@r0
      0385AD FB               [12] 2076 	mov	r3,a
      0385AE 08               [12] 2077 	inc	r0
      0385AF 86 07            [24] 2078 	mov	ar7,@r0
      0385B1 8A 82            [24] 2079 	mov	dpl,r2
      0385B3 8B 83            [24] 2080 	mov	dph,r3
      0385B5 8F F0            [24] 2081 	mov	b,r7
      0385B7 12 58 0A         [24] 2082 	lcall	__gptrget
      0385BA FA               [12] 2083 	mov	r2,a
      0385BB A3               [24] 2084 	inc	dptr
      0385BC 12 58 0A         [24] 2085 	lcall	__gptrget
      0385BF FB               [12] 2086 	mov	r3,a
      0385C0 EA               [12] 2087 	mov	a,r2
      0385C1 8B 02            [24] 2088 	mov	ar2,r3
      0385C3 FB               [12] 2089 	mov	r3,a
      0385C4 E5 81            [12] 2090 	mov	a,sp
      0385C6 24 EB            [12] 2091 	add	a,#0xeb
      0385C8 F8               [12] 2092 	mov	r0,a
      0385C9 74 10            [12] 2093 	mov	a,#0x10
      0385CB 26               [12] 2094 	add	a,@r0
      0385CC FD               [12] 2095 	mov	r5,a
      0385CD E4               [12] 2096 	clr	a
      0385CE 08               [12] 2097 	inc	r0
      0385CF 36               [12] 2098 	addc	a,@r0
      0385D0 FE               [12] 2099 	mov	r6,a
      0385D1 08               [12] 2100 	inc	r0
      0385D2 86 07            [24] 2101 	mov	ar7,@r0
      0385D4 8D 82            [24] 2102 	mov	dpl,r5
      0385D6 8E 83            [24] 2103 	mov	dph,r6
      0385D8 8F F0            [24] 2104 	mov	b,r7
      0385DA 12 58 0A         [24] 2105 	lcall	__gptrget
      0385DD FD               [12] 2106 	mov	r5,a
      0385DE A3               [24] 2107 	inc	dptr
      0385DF 12 58 0A         [24] 2108 	lcall	__gptrget
      0385E2 FE               [12] 2109 	mov	r6,a
      0385E3 ED               [12] 2110 	mov	a,r5
      0385E4 8E 05            [24] 2111 	mov	ar5,r6
      0385E6 FE               [12] 2112 	mov	r6,a
      0385E7 C0 07            [24] 2113 	push	ar7
      0385E9 C0 06            [24] 2114 	push	ar6
      0385EB C0 05            [24] 2115 	push	ar5
      0385ED C0 02            [24] 2116 	push	ar2
      0385EF C0 03            [24] 2117 	push	ar3
      0385F1 C0 05            [24] 2118 	push	ar5
      0385F3 C0 06            [24] 2119 	push	ar6
      0385F5 74 43            [12] 2120 	mov	a,#___str_8
      0385F7 C0 E0            [24] 2121 	push	acc
      0385F9 74 7C            [12] 2122 	mov	a,#(___str_8 >> 8)
      0385FB C0 E0            [24] 2123 	push	acc
      0385FD 74 80            [12] 2124 	mov	a,#0x80
      0385FF C0 E0            [24] 2125 	push	acc
      038601 78 AB            [12] 2126 	mov	r0,#_printf
      038603 79 57            [12] 2127 	mov	r1,#(_printf >> 8)
      038605 7A 00            [12] 2128 	mov	r2,#(_printf >> 16)
      038607 12 1D 71         [24] 2129 	lcall	__sdcc_banked_call
      03860A E5 81            [12] 2130 	mov	a,sp
      03860C 24 F9            [12] 2131 	add	a,#0xf9
      03860E F5 81            [12] 2132 	mov	sp,a
                                   2133 ;	client.c:145: etimer_set(&et, SEND_INTERVAL);
      038610 E4               [12] 2134 	clr	a
      038611 C0 E0            [24] 2135 	push	acc
      038613 04               [12] 2136 	inc	a
      038614 C0 E0            [24] 2137 	push	acc
      038616 90 00 34         [24] 2138 	mov	dptr,#_process_thread_udp_client_process_et_1_589
      038619 75 F0 00         [24] 2139 	mov	b,#0x00
      03861C 78 EE            [12] 2140 	mov	r0,#_etimer_set
      03861E 79 A2            [12] 2141 	mov	r1,#(_etimer_set >> 8)
      038620 7A 03            [12] 2142 	mov	r2,#(_etimer_set >> 16)
      038622 12 1D 71         [24] 2143 	lcall	__sdcc_banked_call
      038625 15 81            [12] 2144 	dec	sp
      038627 15 81            [12] 2145 	dec	sp
      038629 D0 05            [24] 2146 	pop	ar5
      03862B D0 06            [24] 2147 	pop	ar6
      03862D D0 07            [24] 2148 	pop	ar7
                                   2149 ;	client.c:157: PROCESS_END();
      03862F D0 07            [24] 2150 	pop	ar7
      038631 D0 06            [24] 2151 	pop	ar6
      038633 D0 05            [24] 2152 	pop	ar5
                                   2153 ;	client.c:147: while(1) {
      038635                       2154 00124$:
                                   2155 ;	client.c:148: PROCESS_YIELD();
      038635 7C 00            [12] 2156 	mov	r4,#0x00
      038637 8D 82            [24] 2157 	mov	dpl,r5
      038639 8E 83            [24] 2158 	mov	dph,r6
      03863B 8F F0            [24] 2159 	mov	b,r7
      03863D 74 94            [12] 2160 	mov	a,#0x94
      03863F 12 51 0A         [24] 2161 	lcall	__gptrput
      038642 A3               [24] 2162 	inc	dptr
      038643 E4               [12] 2163 	clr	a
      038644 12 51 0A         [24] 2164 	lcall	__gptrput
      038647                       2165 00112$:
      038647 EC               [12] 2166 	mov	a,r4
      038648 70 06            [24] 2167 	jnz	00116$
      03864A 75 82 01         [24] 2168 	mov	dpl,#0x01
      03864D 02 86 D1         [24] 2169 	ljmp	00127$
      038650                       2170 00116$:
                                   2171 ;	client.c:149: if(etimer_expired(&et)) {
      038650 90 00 34         [24] 2172 	mov	dptr,#_process_thread_udp_client_process_et_1_589
      038653 75 F0 00         [24] 2173 	mov	b,#0x00
      038656 C0 07            [24] 2174 	push	ar7
      038658 C0 06            [24] 2175 	push	ar6
      03865A C0 05            [24] 2176 	push	ar5
      03865C 78 28            [12] 2177 	mov	r0,#_etimer_expired
      03865E 79 A4            [12] 2178 	mov	r1,#(_etimer_expired >> 8)
      038660 7A 03            [12] 2179 	mov	r2,#(_etimer_expired >> 16)
      038662 12 1D 71         [24] 2180 	lcall	__sdcc_banked_call
      038665 E5 82            [12] 2181 	mov	a,dpl
      038667 85 83 F0         [24] 2182 	mov	b,dph
      03866A D0 05            [24] 2183 	pop	ar5
      03866C D0 06            [24] 2184 	pop	ar6
      03866E D0 07            [24] 2185 	pop	ar7
      038670 45 F0            [12] 2186 	orl	a,b
      038672 60 26            [24] 2187 	jz	00121$
                                   2188 ;	client.c:150: timeout_handler();
      038674 C0 07            [24] 2189 	push	ar7
      038676 C0 06            [24] 2190 	push	ar6
      038678 C0 05            [24] 2191 	push	ar5
      03867A 78 A9            [12] 2192 	mov	r0,#_timeout_handler
      03867C 79 80            [12] 2193 	mov	r1,#(_timeout_handler >> 8)
      03867E 7A 03            [12] 2194 	mov	r2,#(_timeout_handler >> 16)
      038680 12 1D 71         [24] 2195 	lcall	__sdcc_banked_call
                                   2196 ;	client.c:151: etimer_restart(&et);
      038683 90 00 34         [24] 2197 	mov	dptr,#_process_thread_udp_client_process_et_1_589
      038686 75 F0 00         [24] 2198 	mov	b,#0x00
      038689 78 A9            [12] 2199 	mov	r0,#_etimer_restart
      03868B 79 A3            [12] 2200 	mov	r1,#(_etimer_restart >> 8)
      03868D 7A 03            [12] 2201 	mov	r2,#(_etimer_restart >> 16)
      03868F 12 1D 71         [24] 2202 	lcall	__sdcc_banked_call
      038692 D0 05            [24] 2203 	pop	ar5
      038694 D0 06            [24] 2204 	pop	ar6
      038696 D0 07            [24] 2205 	pop	ar7
      038698 80 9B            [24] 2206 	sjmp	00124$
      03869A                       2207 00121$:
                                   2208 ;	client.c:152: } else if(ev == tcpip_event) {
      03869A 90 00 3E         [24] 2209 	mov	dptr,#_tcpip_event
      03869D E0               [24] 2210 	movx	a,@dptr
      03869E FC               [12] 2211 	mov	r4,a
      03869F E5 81            [12] 2212 	mov	a,sp
      0386A1 24 EA            [12] 2213 	add	a,#0xea
      0386A3 F8               [12] 2214 	mov	r0,a
      0386A4 E6               [12] 2215 	mov	a,@r0
      0386A5 B5 04 8D         [24] 2216 	cjne	a,ar4,00124$
                                   2217 ;	client.c:153: tcpip_handler();
      0386A8 C0 07            [24] 2218 	push	ar7
      0386AA C0 06            [24] 2219 	push	ar6
      0386AC C0 05            [24] 2220 	push	ar5
      0386AE 78 00            [12] 2221 	mov	r0,#_tcpip_handler
      0386B0 79 80            [12] 2222 	mov	r1,#(_tcpip_handler >> 8)
      0386B2 7A 03            [12] 2223 	mov	r2,#(_tcpip_handler >> 16)
      0386B4 12 1D 71         [24] 2224 	lcall	__sdcc_banked_call
      0386B7 D0 05            [24] 2225 	pop	ar5
      0386B9 D0 06            [24] 2226 	pop	ar6
      0386BB D0 07            [24] 2227 	pop	ar7
      0386BD 02 86 35         [24] 2228 	ljmp	00124$
                                   2229 ;	client.c:157: PROCESS_END();
      0386C0                       2230 00126$:
      0386C0 8D 82            [24] 2231 	mov	dpl,r5
      0386C2 8E 83            [24] 2232 	mov	dph,r6
      0386C4 8F F0            [24] 2233 	mov	b,r7
      0386C6 E4               [12] 2234 	clr	a
      0386C7 12 51 0A         [24] 2235 	lcall	__gptrput
      0386CA A3               [24] 2236 	inc	dptr
      0386CB 12 51 0A         [24] 2237 	lcall	__gptrput
      0386CE 75 82 03         [24] 2238 	mov	dpl,#0x03
      0386D1                       2239 00127$:
      0386D1 E5 81            [12] 2240 	mov	a,sp
      0386D3 24 ED            [12] 2241 	add	a,#0xED
      0386D5 F5 81            [12] 2242 	mov	sp,a
      0386D7 02 1D 83         [24] 2243 	ljmp	__sdcc_banked_ret
                                   2244 	.area CSEG    (CODE)
                                   2245 	.area CONST   (CODE)
      007B9F                       2246 _autostart_processes:
      007B9F 55 11 00              2247 	.byte _udp_client_process, (_udp_client_process >> 8),#0x00
      007BA2 46 12 00              2248 	.byte _ping6_process, (_ping6_process >> 8),#0x00
                                   2249 ; generic printIvalPtr
      007BA5 00 00 00              2250 	.byte #0x00,#0x00,#0x00
      007BA8                       2251 ___str_0:
      007BA8 30 78                 2252 	.ascii "0x"
      007BAA 00                    2253 	.db 0x00
      007BAB                       2254 ___str_1:
      007BAB 20 62 79 74 65 73 20  2255 	.ascii " bytes response=0x"
             72 65 73 70 6F 6E 73
             65 3D 30 78
      007BBD 00                    2256 	.db 0x00
      007BBE                       2257 ___str_2:
      007BBE 43 6C 69 65 6E 74 20  2258 	.ascii "Client to: "
             74 6F 3A 20
      007BC9 00                    2259 	.db 0x00
      007BCA                       2260 ___str_3:
      007BCA 20 52 65 6D 6F 74 65  2261 	.ascii " Remote Port %u,"
             20 50 6F 72 74 20 25
             75 2C
      007BDA 00                    2262 	.db 0x00
      007BDB                       2263 ___str_4:
      007BDB 20 28 6D 73 67 3D 30  2264 	.ascii " (msg=0x%04x), %u bytes"
             78 25 30 34 78 29 2C
             20 25 75 20 62 79 74
             65 73
      007BF2 0A                    2265 	.db 0x0A
      007BF3 00                    2266 	.db 0x00
      007BF4                       2267 ___str_5:
      007BF4 55 44 50 20 63 6C 69  2268 	.ascii "UDP client process started"
             65 6E 74 20 70 72 6F
             63 65 73 73 20 73 74
             61 72 74 65 64
      007C0E 0A                    2269 	.db 0x0A
      007C0F 00                    2270 	.db 0x00
      007C10                       2271 ___str_6:
      007C10 75 64 70 5F 6E 65 77  2272 	.ascii "udp_new l_conn error."
             20 6C 5F 63 6F 6E 6E
             20 65 72 72 6F 72 2E
      007C25 0A                    2273 	.db 0x0A
      007C26 00                    2274 	.db 0x00
      007C27                       2275 ___str_7:
      007C27 4C 69 6E 6B 2D 4C 6F  2276 	.ascii "Link-Local connection with "
             63 61 6C 20 63 6F 6E
             6E 65 63 74 69 6F 6E
             20 77 69 74 68 20
      007C42 00                    2277 	.db 0x00
      007C43                       2278 ___str_8:
      007C43 20 6C 6F 63 61 6C 2F  2279 	.ascii " local/remote port %u/%u"
             72 65 6D 6F 74 65 20
             70 6F 72 74 20 25 75
             2F 25 75
      007C5B 0A                    2280 	.db 0x0A
      007C5C 00                    2281 	.db 0x00
      007C5D                       2282 ___str_9:
      007C5D 75 64 70 5F 6E 65 77  2283 	.ascii "udp_new g_conn error."
             20 67 5F 63 6F 6E 6E
             20 65 72 72 6F 72 2E
      007C72 0A                    2284 	.db 0x0A
      007C73 00                    2285 	.db 0x00
      007C74                       2286 ___str_10:
      007C74 47 6C 6F 62 61 6C 20  2287 	.ascii "Global connection with "
             63 6F 6E 6E 65 63 74
             69 6F 6E 20 77 69 74
             68 20
      007C8B 00                    2288 	.db 0x00
                                   2289 	.area XINIT   (CODE)
      007E8A                       2290 __xinit__udp_client_process:
                                   2291 ; generic printIvalPtr
      007E8A 00 00 00              2292 	.byte #0x00,#0x00,#0x00
      007E8D 42 82 03              2293 	.byte _process_thread_udp_client_process, (_process_thread_udp_client_process >> 8), (_process_thread_udp_client_process >> 16)
      007E90 00 00                 2294 	.byte #0x00, #0x00
      007E92 00                    2295 	.db #0x00	; 0
      007E93 00                    2296 	.db #0x00	; 0
                                   2297 	.area CABS    (ABS,CODE)
