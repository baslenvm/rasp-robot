                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.5 #9380 (Linux)
                                      4 ; This file was generated Wed Nov 18 02:57:24 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module contiki_main
                                      7 	.optsdcc -mmcs51 --model-huge
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _random_init
                                     14 	.globl _puthex
                                     15 	.globl _putstring
                                     16 	.globl _netstack_init
                                     17 	.globl _queuebuf_init
                                     18 	.globl _packetbuf_set_datalen
                                     19 	.globl _packetbuf_dataptr
                                     20 	.globl _packetbuf_clear
                                     21 	.globl _watchdog_periodic
                                     22 	.globl _watchdog_start
                                     23 	.globl _watchdog_init
                                     24 	.globl _uart0_set_input
                                     25 	.globl _uart0_init
                                     26 	.globl _leds_off
                                     27 	.globl _leds_on
                                     28 	.globl _leds_init
                                     29 	.globl _serial_line_init
                                     30 	.globl _serial_line_input_byte
                                     31 	.globl _soc_init
                                     32 	.globl _energest_init
                                     33 	.globl _rtimer_init
                                     34 	.globl _ctimer_init
                                     35 	.globl _etimer_next_expiration_time
                                     36 	.globl _etimer_pending
                                     37 	.globl _etimer_request_poll
                                     38 	.globl _clock_time
                                     39 	.globl _clock_init
                                     40 	.globl _autostart_start
                                     41 	.globl _process_run
                                     42 	.globl _process_init
                                     43 	.globl _process_start
                                     44 	.globl _memcpy
                                     45 	.globl _ACTIVE
                                     46 	.globl _TX_BYTE
                                     47 	.globl _RX_BYTE
                                     48 	.globl _ERR
                                     49 	.globl _FE
                                     50 	.globl _SLAVE
                                     51 	.globl _RE
                                     52 	.globl _MODE
                                     53 	.globl _T3OVFIF
                                     54 	.globl _T3CH0IF
                                     55 	.globl _T3CH1IF
                                     56 	.globl _T4OVFIF
                                     57 	.globl _T4CH0IF
                                     58 	.globl _T4CH1IF
                                     59 	.globl _OVFIM
                                     60 	.globl _B_0
                                     61 	.globl _B_1
                                     62 	.globl _B_2
                                     63 	.globl _B_3
                                     64 	.globl _B_4
                                     65 	.globl _B_5
                                     66 	.globl _B_6
                                     67 	.globl _B_7
                                     68 	.globl _P2IF
                                     69 	.globl _UTX0IF
                                     70 	.globl _UTX1IF
                                     71 	.globl _P1IF
                                     72 	.globl _WDTIF
                                     73 	.globl _ACC_0
                                     74 	.globl _ACC_1
                                     75 	.globl _ACC_2
                                     76 	.globl _ACC_3
                                     77 	.globl _ACC_4
                                     78 	.globl _ACC_5
                                     79 	.globl _ACC_6
                                     80 	.globl _ACC_7
                                     81 	.globl _P
                                     82 	.globl _F1
                                     83 	.globl _OV
                                     84 	.globl _RS0
                                     85 	.globl _RS1
                                     86 	.globl _F0
                                     87 	.globl _AC
                                     88 	.globl _CY
                                     89 	.globl _DMAIF
                                     90 	.globl _T1IF
                                     91 	.globl _T2IF
                                     92 	.globl _T3IF
                                     93 	.globl _T4IF
                                     94 	.globl _P0IF
                                     95 	.globl _STIF
                                     96 	.globl _DMAIE
                                     97 	.globl _T1IE
                                     98 	.globl _T2IE
                                     99 	.globl _T3IE
                                    100 	.globl _T4IE
                                    101 	.globl _P0IE
                                    102 	.globl _RFERRIE
                                    103 	.globl _ADCIE
                                    104 	.globl _URX0IE
                                    105 	.globl _URX1IE
                                    106 	.globl _ENCIE
                                    107 	.globl _STIE
                                    108 	.globl _EA
                                    109 	.globl _P2_0
                                    110 	.globl _P2_1
                                    111 	.globl _P2_2
                                    112 	.globl _P2_3
                                    113 	.globl _P2_4
                                    114 	.globl _P2_5
                                    115 	.globl _P2_6
                                    116 	.globl _P2_7
                                    117 	.globl _ENCIF_0
                                    118 	.globl _ENCIF_1
                                    119 	.globl _P1_0
                                    120 	.globl _P1_1
                                    121 	.globl _P1_2
                                    122 	.globl _P1_3
                                    123 	.globl _P1_4
                                    124 	.globl _P1_5
                                    125 	.globl _P1_6
                                    126 	.globl _P1_7
                                    127 	.globl _IT0
                                    128 	.globl _RFERRIF
                                    129 	.globl _IT1
                                    130 	.globl _URX0IF
                                    131 	.globl _ADCIF
                                    132 	.globl _URX1IF
                                    133 	.globl _P0_0
                                    134 	.globl _P0_1
                                    135 	.globl _P0_2
                                    136 	.globl _P0_3
                                    137 	.globl _P0_4
                                    138 	.globl _P0_5
                                    139 	.globl _P0_6
                                    140 	.globl _P0_7
                                    141 	.globl _WDCTL
                                    142 	.globl _U1GCR
                                    143 	.globl _U1UCR
                                    144 	.globl _U1BAUD
                                    145 	.globl _U1DBUF
                                    146 	.globl _U1CSR
                                    147 	.globl _U0GCR
                                    148 	.globl _U0UCR
                                    149 	.globl _U0BAUD
                                    150 	.globl _U0DBUF
                                    151 	.globl _U0CSR
                                    152 	.globl _TIMIF
                                    153 	.globl _T4CC1
                                    154 	.globl _T4CCTL1
                                    155 	.globl _T4CC0
                                    156 	.globl _T4CCTL0
                                    157 	.globl _T4CTL
                                    158 	.globl _T4CNT
                                    159 	.globl _T3CC1
                                    160 	.globl _T3CCTL1
                                    161 	.globl _T3CC0
                                    162 	.globl _T3CCTL0
                                    163 	.globl _T3CTL
                                    164 	.globl _T3CNT
                                    165 	.globl _T2MSEL
                                    166 	.globl _T2IRQM
                                    167 	.globl _T2MOVF2
                                    168 	.globl _T2MOVF1
                                    169 	.globl _T2MOVF0
                                    170 	.globl _T2M1
                                    171 	.globl _T2M0
                                    172 	.globl _T2IRQF
                                    173 	.globl _T2EVTCFG
                                    174 	.globl _T2CTRL
                                    175 	.globl _T1STAT
                                    176 	.globl _T1CCTL2
                                    177 	.globl _T1CCTL1
                                    178 	.globl _T1CCTL0
                                    179 	.globl _T1CTL
                                    180 	.globl _T1CNTH
                                    181 	.globl _T1CNTL
                                    182 	.globl _T1CC2H
                                    183 	.globl _T1CC2L
                                    184 	.globl _T1CC1H
                                    185 	.globl _T1CC1L
                                    186 	.globl _T1CC0H
                                    187 	.globl _T1CC0L
                                    188 	.globl _CLKCONSTA
                                    189 	.globl _CLKCONCMD
                                    190 	.globl _SLEEPSTA
                                    191 	.globl _SLEEPCMD
                                    192 	.globl _STLOAD
                                    193 	.globl _ST2
                                    194 	.globl _ST1
                                    195 	.globl _ST0
                                    196 	.globl _RFERRF
                                    197 	.globl _RFIRQF0
                                    198 	.globl _RFST
                                    199 	.globl _RFD
                                    200 	.globl _RFIRQF1
                                    201 	.globl _PSBANK
                                    202 	.globl _FMAP
                                    203 	.globl _MEMCTR
                                    204 	.globl __XPAGE
                                    205 	.globl _MPAGE
                                    206 	.globl _PMUX
                                    207 	.globl _P2DIR
                                    208 	.globl _P1DIR
                                    209 	.globl _P0DIR
                                    210 	.globl _P2INP
                                    211 	.globl _P1INP
                                    212 	.globl _P2SEL
                                    213 	.globl _P1SEL
                                    214 	.globl _P0SEL
                                    215 	.globl _APCFG
                                    216 	.globl _PERCFG
                                    217 	.globl _P0INP
                                    218 	.globl _P2IEN
                                    219 	.globl _P1IEN
                                    220 	.globl _P0IEN
                                    221 	.globl _PICTL
                                    222 	.globl _P2IFG
                                    223 	.globl _P1IFG
                                    224 	.globl _P0IFG
                                    225 	.globl _DMAREQ
                                    226 	.globl _DMAARM
                                    227 	.globl _DMA0CFGH
                                    228 	.globl _DMA0CFGL
                                    229 	.globl _DMA1CFGH
                                    230 	.globl _DMA1CFGL
                                    231 	.globl _DMAIRQ
                                    232 	.globl _ENCCS
                                    233 	.globl _ENCDO
                                    234 	.globl _ENCDI
                                    235 	.globl _RNDH
                                    236 	.globl _RNDL
                                    237 	.globl _ADCH
                                    238 	.globl _ADCL
                                    239 	.globl _ADCCON3
                                    240 	.globl _ADCCON2
                                    241 	.globl _ADCCON1
                                    242 	.globl _B
                                    243 	.globl _IRCON2
                                    244 	.globl _ACC
                                    245 	.globl _PSW
                                    246 	.globl _IRCON
                                    247 	.globl _IP1
                                    248 	.globl _IEN1
                                    249 	.globl _IP0
                                    250 	.globl _IEN0
                                    251 	.globl _P2
                                    252 	.globl _S1CON
                                    253 	.globl _IEN2
                                    254 	.globl _S0CON
                                    255 	.globl _DPS
                                    256 	.globl _P1
                                    257 	.globl _TCON
                                    258 	.globl _PCON
                                    259 	.globl _DPH1
                                    260 	.globl _DPL1
                                    261 	.globl _DPH0
                                    262 	.globl _DPL0
                                    263 	.globl _SP
                                    264 	.globl _P0
                                    265 	.globl _X_IEEE_ADDR
                                    266 	.globl _X_INFOPAGE
                                    267 	.globl _X_P2DIR
                                    268 	.globl _X_P1DIR
                                    269 	.globl _X_P0DIR
                                    270 	.globl _X_U1GCR
                                    271 	.globl _X_U1UCR
                                    272 	.globl _X_U1BAUD
                                    273 	.globl _X_U1DBUF
                                    274 	.globl _X_U1CSR
                                    275 	.globl _X_P2INP
                                    276 	.globl _X_P1INP
                                    277 	.globl _X_P2SEL
                                    278 	.globl _X_P1SEL
                                    279 	.globl _X_P0SEL
                                    280 	.globl _X_APCFG
                                    281 	.globl _X_PERCFG
                                    282 	.globl _X_T4CC1
                                    283 	.globl _X_T4CCTL1
                                    284 	.globl _X_T4CC0
                                    285 	.globl _X_T4CCTL0
                                    286 	.globl _X_T4CTL
                                    287 	.globl _X_T4CNT
                                    288 	.globl _X_RFIRQF0
                                    289 	.globl _X_T1CCTL2
                                    290 	.globl _X_T1CCTL1
                                    291 	.globl _X_T1CCTL0
                                    292 	.globl _X_T1CTL
                                    293 	.globl _X_T1CNTH
                                    294 	.globl _X_T1CNTL
                                    295 	.globl _X_RFST
                                    296 	.globl _X_T1CC2H
                                    297 	.globl _X_T1CC2L
                                    298 	.globl _X_T1CC1H
                                    299 	.globl _X_T1CC1L
                                    300 	.globl _X_T1CC0H
                                    301 	.globl _X_T1CC0L
                                    302 	.globl _X_RFD
                                    303 	.globl _X_TIMIF
                                    304 	.globl _X_DMAREQ
                                    305 	.globl _X_DMAARM
                                    306 	.globl _X_DMA0CFGH
                                    307 	.globl _X_DMA0CFGL
                                    308 	.globl _X_DMA1CFGH
                                    309 	.globl _X_DMA1CFGL
                                    310 	.globl _X_DMAIRQ
                                    311 	.globl _X_T3CC1
                                    312 	.globl _X_T3CCTL1
                                    313 	.globl _X_T3CC0
                                    314 	.globl _X_T3CCTL0
                                    315 	.globl _X_T3CTL
                                    316 	.globl _X_T3CNT
                                    317 	.globl _X_WDCTL
                                    318 	.globl _X_MEMCTR
                                    319 	.globl _X_CLKCONCMD
                                    320 	.globl _X_U0GCR
                                    321 	.globl _X_U0UCR
                                    322 	.globl _X_T2MSEL
                                    323 	.globl _X_U0BAUD
                                    324 	.globl _X_U0DBUF
                                    325 	.globl _X_RFERRF
                                    326 	.globl _X_SLEEPCMD
                                    327 	.globl _X_RNDH
                                    328 	.globl _X_RNDL
                                    329 	.globl _X_ADCH
                                    330 	.globl _X_ADCL
                                    331 	.globl _X_ADCCON3
                                    332 	.globl _X_ADCCON2
                                    333 	.globl _X_ADCCON1
                                    334 	.globl _X_ENCCS
                                    335 	.globl _X_ENCDO
                                    336 	.globl _X_ENCDI
                                    337 	.globl _X_T1STAT
                                    338 	.globl _X_PMUX
                                    339 	.globl _X_STLOAD
                                    340 	.globl _X_P2IEN
                                    341 	.globl _X_P0IEN
                                    342 	.globl _X_T2IRQM
                                    343 	.globl _X_T2MOVF2
                                    344 	.globl _X_T2MOVF1
                                    345 	.globl _X_T2MOVF0
                                    346 	.globl _X_T2M1
                                    347 	.globl _X_T2M0
                                    348 	.globl _X_T2IRQF
                                    349 	.globl _X_P2
                                    350 	.globl _X_PSBANK
                                    351 	.globl _X_FMAP
                                    352 	.globl _X_CLKCONSTA
                                    353 	.globl _X_SLEEPSTA
                                    354 	.globl _X_T2EVTCFG
                                    355 	.globl _X_ST2
                                    356 	.globl _X_ST1
                                    357 	.globl _X_ST0
                                    358 	.globl _X_T2CTRL
                                    359 	.globl _X__XPAGE
                                    360 	.globl _X_MPAGE
                                    361 	.globl _X_RFIRQF1
                                    362 	.globl _X_P1
                                    363 	.globl _X_P0INP
                                    364 	.globl _X_P1IEN
                                    365 	.globl _X_PICTL
                                    366 	.globl _X_P2IFG
                                    367 	.globl _X_P1IFG
                                    368 	.globl _X_P0IFG
                                    369 	.globl _X_U0CSR
                                    370 	.globl _X_P0
                                    371 	.globl _USBF5
                                    372 	.globl _USBF4
                                    373 	.globl _USBF3
                                    374 	.globl _USBF2
                                    375 	.globl _USBF1
                                    376 	.globl _USBF0
                                    377 	.globl _USBCNTH
                                    378 	.globl _USBCNTL
                                    379 	.globl _USBCNT0
                                    380 	.globl _USBCSOH
                                    381 	.globl _USBCSOL
                                    382 	.globl _USBMAXO
                                    383 	.globl _USBCSIH
                                    384 	.globl _USBCSIL
                                    385 	.globl _USBCS0
                                    386 	.globl _USBMAXI
                                    387 	.globl _USBCTRL
                                    388 	.globl _USBINDEX
                                    389 	.globl _USBFRMH
                                    390 	.globl _USBFRML
                                    391 	.globl _USBCIE
                                    392 	.globl _USBOIE
                                    393 	.globl _USBIIE
                                    394 	.globl _USBCIF
                                    395 	.globl _USBOIF
                                    396 	.globl _USBIIF
                                    397 	.globl _USBPOW
                                    398 	.globl _USBADDR
                                    399 	.globl _CSPT
                                    400 	.globl _CSPZ
                                    401 	.globl _CSPY
                                    402 	.globl _CSPX
                                    403 	.globl _CSPSTAT
                                    404 	.globl _CSPCTRL
                                    405 	.globl _CSPPROG23
                                    406 	.globl _CSPPROG22
                                    407 	.globl _CSPPROG21
                                    408 	.globl _CSPPROG20
                                    409 	.globl _CSPPROG19
                                    410 	.globl _CSPPROG18
                                    411 	.globl _CSPPROG17
                                    412 	.globl _CSPPROG16
                                    413 	.globl _CSPPROG15
                                    414 	.globl _CSPPROG14
                                    415 	.globl _CSPPROG13
                                    416 	.globl _CSPPROG12
                                    417 	.globl _CSPPROG11
                                    418 	.globl _CSPPROG10
                                    419 	.globl _CSPPROG9
                                    420 	.globl _CSPPROG8
                                    421 	.globl _CSPPROG7
                                    422 	.globl _CSPPROG6
                                    423 	.globl _CSPPROG5
                                    424 	.globl _CSPPROG4
                                    425 	.globl _CSPPROG3
                                    426 	.globl _CSPPROG2
                                    427 	.globl _CSPPROG1
                                    428 	.globl _CSPPROG0
                                    429 	.globl _RFC_OBS_CTRL2
                                    430 	.globl _RFC_OBS_CTRL1
                                    431 	.globl _RFC_OBS_CTRL0
                                    432 	.globl _TXFILTCFG
                                    433 	.globl _PTEST1
                                    434 	.globl _PTEST0
                                    435 	.globl _ATEST
                                    436 	.globl _DACTEST2
                                    437 	.globl _DACTEST1
                                    438 	.globl _DACTEST0
                                    439 	.globl _MDMTEST1
                                    440 	.globl _MDMTEST0
                                    441 	.globl _ADCTEST2
                                    442 	.globl _ADCTEST1
                                    443 	.globl _ADCTEST0
                                    444 	.globl _AGCCTRL3
                                    445 	.globl _AGCCTRL2
                                    446 	.globl _AGCCTRL1
                                    447 	.globl _AGCCTRL0
                                    448 	.globl _FSCAL3
                                    449 	.globl _FSCAL2
                                    450 	.globl _FSCAL1
                                    451 	.globl _FSCAL0
                                    452 	.globl _FSCTRL
                                    453 	.globl _RXCTRL
                                    454 	.globl _FREQEST
                                    455 	.globl _MDMCTRL1
                                    456 	.globl _MDMCTRL0
                                    457 	.globl _RFRND
                                    458 	.globl _RFERRM
                                    459 	.globl _RFIRQM1
                                    460 	.globl _RFIRQM0
                                    461 	.globl _TXLAST_PTR
                                    462 	.globl _TXFIRST_PTR
                                    463 	.globl _RXP1_PTR
                                    464 	.globl _RXLAST_PTR
                                    465 	.globl _RXFIRST_PTR
                                    466 	.globl _TXFIFOCNT
                                    467 	.globl _RXFIFOCNT
                                    468 	.globl _RXFIRST
                                    469 	.globl _RSSISTAT
                                    470 	.globl _RSSI
                                    471 	.globl _CCACTRL1
                                    472 	.globl _CCACTRL0
                                    473 	.globl _FSMCTRL
                                    474 	.globl _FIFOPCTRL
                                    475 	.globl _FSMSTAT1
                                    476 	.globl _FSMSTAT0
                                    477 	.globl _TXCTRL
                                    478 	.globl _TXPOWER
                                    479 	.globl _FREQCTRL
                                    480 	.globl _FREQTUNE
                                    481 	.globl _RXMASKCLR
                                    482 	.globl _RXMASKSET
                                    483 	.globl _RXENABLE
                                    484 	.globl _FRMCTRL1
                                    485 	.globl _FRMCTRL0
                                    486 	.globl _SRCEXTEN2
                                    487 	.globl _SRCEXTEN1
                                    488 	.globl _SRCEXTEN0
                                    489 	.globl _SRCSHORTEN2
                                    490 	.globl _SRCSHORTEN1
                                    491 	.globl _SRCSHORTEN0
                                    492 	.globl _SRCMATCH
                                    493 	.globl _FRMFILT1
                                    494 	.globl _FRMFILT0
                                    495 	.globl _SHORT_ADDR1
                                    496 	.globl _SHORT_ADDR0
                                    497 	.globl _PAN_ID1
                                    498 	.globl _PAN_ID0
                                    499 	.globl _EXT_ADDR7
                                    500 	.globl _EXT_ADDR6
                                    501 	.globl _EXT_ADDR5
                                    502 	.globl _EXT_ADDR4
                                    503 	.globl _EXT_ADDR3
                                    504 	.globl _EXT_ADDR2
                                    505 	.globl _EXT_ADDR1
                                    506 	.globl _EXT_ADDR0
                                    507 	.globl _SRCSHORTPENDEN2
                                    508 	.globl _SRCSHORTPENDEN1
                                    509 	.globl _SRCSHORTPENDEN0
                                    510 	.globl _SRCEXTPENDEN2
                                    511 	.globl _SRCEXTPENDEN1
                                    512 	.globl _SRCEXTPENDEN0
                                    513 	.globl _SRCRESINDEX
                                    514 	.globl _SRCRESMASK2
                                    515 	.globl _SRCRESMASK1
                                    516 	.globl _SRCRESMASK0
                                    517 	.globl _SRC_ADDR_TABLE
                                    518 	.globl _TXFIFO
                                    519 	.globl _RXFIFO
                                    520 	.globl _RFCORE_RAM
                                    521 	.globl _CMPCTL
                                    522 	.globl _OPAMPS
                                    523 	.globl _OPAMPC
                                    524 	.globl _STCV2
                                    525 	.globl _STCV1
                                    526 	.globl _STCV0
                                    527 	.globl _STCS
                                    528 	.globl _STCC
                                    529 	.globl _T1CC4H
                                    530 	.globl _T1CC4L
                                    531 	.globl _T1CC3H
                                    532 	.globl _T1CC3L
                                    533 	.globl _XX_T1CC2H
                                    534 	.globl _XX_T1CC2L
                                    535 	.globl _XX_T1CC1H
                                    536 	.globl _XX_T1CC1L
                                    537 	.globl _XX_T1CC0H
                                    538 	.globl _XX_T1CC0L
                                    539 	.globl _T1CCTL4
                                    540 	.globl _T1CCTL3
                                    541 	.globl _XX_T1CCTL2
                                    542 	.globl _XX_T1CCTL1
                                    543 	.globl _XX_T1CCTL0
                                    544 	.globl _CLD
                                    545 	.globl _IRCTL
                                    546 	.globl _CHIPINFO1
                                    547 	.globl _CHIPINFO0
                                    548 	.globl _FWDATA
                                    549 	.globl _FADDRH
                                    550 	.globl _FADDRL
                                    551 	.globl _FCTL
                                    552 	.globl _IVCTRL
                                    553 	.globl _BATTMON
                                    554 	.globl _SRCRC
                                    555 	.globl _DBGDATA
                                    556 	.globl _TESTREG0
                                    557 	.globl _CHIPID
                                    558 	.globl _CHVER
                                    559 	.globl _OBSSEL5
                                    560 	.globl _OBSSEL4
                                    561 	.globl _OBSSEL3
                                    562 	.globl _OBSSEL2
                                    563 	.globl _OBSSEL1
                                    564 	.globl _OBSSEL0
                                    565 	.globl _I2CIO
                                    566 	.globl _I2CWC
                                    567 	.globl _I2CADDR
                                    568 	.globl _I2CDATA
                                    569 	.globl _I2CSTAT
                                    570 	.globl _I2CCFG
                                    571 	.globl _OPAMPMC
                                    572 	.globl _MONMUX
                                    573 ;--------------------------------------------------------
                                    574 ; special function registers
                                    575 ;--------------------------------------------------------
                                    576 	.area RSEG    (ABS,DATA)
      000000                        577 	.org 0x0000
                           000080   578 _P0	=	0x0080
                           000081   579 _SP	=	0x0081
                           000082   580 _DPL0	=	0x0082
                           000083   581 _DPH0	=	0x0083
                           000084   582 _DPL1	=	0x0084
                           000085   583 _DPH1	=	0x0085
                           000087   584 _PCON	=	0x0087
                           000088   585 _TCON	=	0x0088
                           000090   586 _P1	=	0x0090
                           000092   587 _DPS	=	0x0092
                           000098   588 _S0CON	=	0x0098
                           00009A   589 _IEN2	=	0x009a
                           00009B   590 _S1CON	=	0x009b
                           0000A0   591 _P2	=	0x00a0
                           0000A8   592 _IEN0	=	0x00a8
                           0000A9   593 _IP0	=	0x00a9
                           0000B8   594 _IEN1	=	0x00b8
                           0000B9   595 _IP1	=	0x00b9
                           0000C0   596 _IRCON	=	0x00c0
                           0000D0   597 _PSW	=	0x00d0
                           0000E0   598 _ACC	=	0x00e0
                           0000E8   599 _IRCON2	=	0x00e8
                           0000F0   600 _B	=	0x00f0
                           0000B4   601 _ADCCON1	=	0x00b4
                           0000B5   602 _ADCCON2	=	0x00b5
                           0000B6   603 _ADCCON3	=	0x00b6
                           0000BA   604 _ADCL	=	0x00ba
                           0000BB   605 _ADCH	=	0x00bb
                           0000BC   606 _RNDL	=	0x00bc
                           0000BD   607 _RNDH	=	0x00bd
                           0000B1   608 _ENCDI	=	0x00b1
                           0000B2   609 _ENCDO	=	0x00b2
                           0000B3   610 _ENCCS	=	0x00b3
                           0000D1   611 _DMAIRQ	=	0x00d1
                           0000D2   612 _DMA1CFGL	=	0x00d2
                           0000D3   613 _DMA1CFGH	=	0x00d3
                           0000D4   614 _DMA0CFGL	=	0x00d4
                           0000D5   615 _DMA0CFGH	=	0x00d5
                           0000D6   616 _DMAARM	=	0x00d6
                           0000D7   617 _DMAREQ	=	0x00d7
                           000089   618 _P0IFG	=	0x0089
                           00008A   619 _P1IFG	=	0x008a
                           00008B   620 _P2IFG	=	0x008b
                           00008C   621 _PICTL	=	0x008c
                           0000AB   622 _P0IEN	=	0x00ab
                           00008D   623 _P1IEN	=	0x008d
                           0000AC   624 _P2IEN	=	0x00ac
                           00008F   625 _P0INP	=	0x008f
                           0000F1   626 _PERCFG	=	0x00f1
                           0000F2   627 _APCFG	=	0x00f2
                           0000F3   628 _P0SEL	=	0x00f3
                           0000F4   629 _P1SEL	=	0x00f4
                           0000F5   630 _P2SEL	=	0x00f5
                           0000F6   631 _P1INP	=	0x00f6
                           0000F7   632 _P2INP	=	0x00f7
                           0000FD   633 _P0DIR	=	0x00fd
                           0000FE   634 _P1DIR	=	0x00fe
                           0000FF   635 _P2DIR	=	0x00ff
                           0000AE   636 _PMUX	=	0x00ae
                           000093   637 _MPAGE	=	0x0093
                           000093   638 __XPAGE	=	0x0093
                           0000C7   639 _MEMCTR	=	0x00c7
                           00009F   640 _FMAP	=	0x009f
                           00009F   641 _PSBANK	=	0x009f
                           000091   642 _RFIRQF1	=	0x0091
                           0000D9   643 _RFD	=	0x00d9
                           0000E1   644 _RFST	=	0x00e1
                           0000E9   645 _RFIRQF0	=	0x00e9
                           0000BF   646 _RFERRF	=	0x00bf
                           000095   647 _ST0	=	0x0095
                           000096   648 _ST1	=	0x0096
                           000097   649 _ST2	=	0x0097
                           0000AD   650 _STLOAD	=	0x00ad
                           0000BE   651 _SLEEPCMD	=	0x00be
                           00009D   652 _SLEEPSTA	=	0x009d
                           0000C6   653 _CLKCONCMD	=	0x00c6
                           00009E   654 _CLKCONSTA	=	0x009e
                           0000DA   655 _T1CC0L	=	0x00da
                           0000DB   656 _T1CC0H	=	0x00db
                           0000DC   657 _T1CC1L	=	0x00dc
                           0000DD   658 _T1CC1H	=	0x00dd
                           0000DE   659 _T1CC2L	=	0x00de
                           0000DF   660 _T1CC2H	=	0x00df
                           0000E2   661 _T1CNTL	=	0x00e2
                           0000E3   662 _T1CNTH	=	0x00e3
                           0000E4   663 _T1CTL	=	0x00e4
                           0000E5   664 _T1CCTL0	=	0x00e5
                           0000E6   665 _T1CCTL1	=	0x00e6
                           0000E7   666 _T1CCTL2	=	0x00e7
                           0000AF   667 _T1STAT	=	0x00af
                           000094   668 _T2CTRL	=	0x0094
                           00009C   669 _T2EVTCFG	=	0x009c
                           0000A1   670 _T2IRQF	=	0x00a1
                           0000A2   671 _T2M0	=	0x00a2
                           0000A3   672 _T2M1	=	0x00a3
                           0000A4   673 _T2MOVF0	=	0x00a4
                           0000A5   674 _T2MOVF1	=	0x00a5
                           0000A6   675 _T2MOVF2	=	0x00a6
                           0000A7   676 _T2IRQM	=	0x00a7
                           0000C3   677 _T2MSEL	=	0x00c3
                           0000CA   678 _T3CNT	=	0x00ca
                           0000CB   679 _T3CTL	=	0x00cb
                           0000CC   680 _T3CCTL0	=	0x00cc
                           0000CD   681 _T3CC0	=	0x00cd
                           0000CE   682 _T3CCTL1	=	0x00ce
                           0000CF   683 _T3CC1	=	0x00cf
                           0000EA   684 _T4CNT	=	0x00ea
                           0000EB   685 _T4CTL	=	0x00eb
                           0000EC   686 _T4CCTL0	=	0x00ec
                           0000ED   687 _T4CC0	=	0x00ed
                           0000EE   688 _T4CCTL1	=	0x00ee
                           0000EF   689 _T4CC1	=	0x00ef
                           0000D8   690 _TIMIF	=	0x00d8
                           000086   691 _U0CSR	=	0x0086
                           0000C1   692 _U0DBUF	=	0x00c1
                           0000C2   693 _U0BAUD	=	0x00c2
                           0000C4   694 _U0UCR	=	0x00c4
                           0000C5   695 _U0GCR	=	0x00c5
                           0000F8   696 _U1CSR	=	0x00f8
                           0000F9   697 _U1DBUF	=	0x00f9
                           0000FA   698 _U1BAUD	=	0x00fa
                           0000FB   699 _U1UCR	=	0x00fb
                           0000FC   700 _U1GCR	=	0x00fc
                           0000C9   701 _WDCTL	=	0x00c9
                                    702 ;--------------------------------------------------------
                                    703 ; special function bits
                                    704 ;--------------------------------------------------------
                                    705 	.area RSEG    (ABS,DATA)
      000000                        706 	.org 0x0000
                           000087   707 _P0_7	=	0x0087
                           000086   708 _P0_6	=	0x0086
                           000085   709 _P0_5	=	0x0085
                           000084   710 _P0_4	=	0x0084
                           000083   711 _P0_3	=	0x0083
                           000082   712 _P0_2	=	0x0082
                           000081   713 _P0_1	=	0x0081
                           000080   714 _P0_0	=	0x0080
                           00008F   715 _URX1IF	=	0x008f
                           00008D   716 _ADCIF	=	0x008d
                           00008B   717 _URX0IF	=	0x008b
                           00008A   718 _IT1	=	0x008a
                           000089   719 _RFERRIF	=	0x0089
                           000088   720 _IT0	=	0x0088
                           000097   721 _P1_7	=	0x0097
                           000096   722 _P1_6	=	0x0096
                           000095   723 _P1_5	=	0x0095
                           000094   724 _P1_4	=	0x0094
                           000093   725 _P1_3	=	0x0093
                           000092   726 _P1_2	=	0x0092
                           000091   727 _P1_1	=	0x0091
                           000090   728 _P1_0	=	0x0090
                           000099   729 _ENCIF_1	=	0x0099
                           000098   730 _ENCIF_0	=	0x0098
                           0000A7   731 _P2_7	=	0x00a7
                           0000A6   732 _P2_6	=	0x00a6
                           0000A5   733 _P2_5	=	0x00a5
                           0000A4   734 _P2_4	=	0x00a4
                           0000A3   735 _P2_3	=	0x00a3
                           0000A2   736 _P2_2	=	0x00a2
                           0000A1   737 _P2_1	=	0x00a1
                           0000A0   738 _P2_0	=	0x00a0
                           0000AF   739 _EA	=	0x00af
                           0000AD   740 _STIE	=	0x00ad
                           0000AC   741 _ENCIE	=	0x00ac
                           0000AB   742 _URX1IE	=	0x00ab
                           0000AA   743 _URX0IE	=	0x00aa
                           0000A9   744 _ADCIE	=	0x00a9
                           0000A8   745 _RFERRIE	=	0x00a8
                           0000BD   746 _P0IE	=	0x00bd
                           0000BC   747 _T4IE	=	0x00bc
                           0000BB   748 _T3IE	=	0x00bb
                           0000BA   749 _T2IE	=	0x00ba
                           0000B9   750 _T1IE	=	0x00b9
                           0000B8   751 _DMAIE	=	0x00b8
                           0000C7   752 _STIF	=	0x00c7
                           0000C5   753 _P0IF	=	0x00c5
                           0000C4   754 _T4IF	=	0x00c4
                           0000C3   755 _T3IF	=	0x00c3
                           0000C2   756 _T2IF	=	0x00c2
                           0000C1   757 _T1IF	=	0x00c1
                           0000C0   758 _DMAIF	=	0x00c0
                           0000D7   759 _CY	=	0x00d7
                           0000D6   760 _AC	=	0x00d6
                           0000D5   761 _F0	=	0x00d5
                           0000D4   762 _RS1	=	0x00d4
                           0000D3   763 _RS0	=	0x00d3
                           0000D2   764 _OV	=	0x00d2
                           0000D1   765 _F1	=	0x00d1
                           0000D0   766 _P	=	0x00d0
                           0000E7   767 _ACC_7	=	0x00e7
                           0000E6   768 _ACC_6	=	0x00e6
                           0000E5   769 _ACC_5	=	0x00e5
                           0000E4   770 _ACC_4	=	0x00e4
                           0000E3   771 _ACC_3	=	0x00e3
                           0000E2   772 _ACC_2	=	0x00e2
                           0000E1   773 _ACC_1	=	0x00e1
                           0000E0   774 _ACC_0	=	0x00e0
                           0000EC   775 _WDTIF	=	0x00ec
                           0000EB   776 _P1IF	=	0x00eb
                           0000EA   777 _UTX1IF	=	0x00ea
                           0000E9   778 _UTX0IF	=	0x00e9
                           0000E8   779 _P2IF	=	0x00e8
                           0000F7   780 _B_7	=	0x00f7
                           0000F6   781 _B_6	=	0x00f6
                           0000F5   782 _B_5	=	0x00f5
                           0000F4   783 _B_4	=	0x00f4
                           0000F3   784 _B_3	=	0x00f3
                           0000F2   785 _B_2	=	0x00f2
                           0000F1   786 _B_1	=	0x00f1
                           0000F0   787 _B_0	=	0x00f0
                           0000DE   788 _OVFIM	=	0x00de
                           0000DD   789 _T4CH1IF	=	0x00dd
                           0000DC   790 _T4CH0IF	=	0x00dc
                           0000DB   791 _T4OVFIF	=	0x00db
                           0000DA   792 _T3CH1IF	=	0x00da
                           0000D9   793 _T3CH0IF	=	0x00d9
                           0000D8   794 _T3OVFIF	=	0x00d8
                           0000FF   795 _MODE	=	0x00ff
                           0000FE   796 _RE	=	0x00fe
                           0000FD   797 _SLAVE	=	0x00fd
                           0000FC   798 _FE	=	0x00fc
                           0000FB   799 _ERR	=	0x00fb
                           0000FA   800 _RX_BYTE	=	0x00fa
                           0000F9   801 _TX_BYTE	=	0x00f9
                           0000F8   802 _ACTIVE	=	0x00f8
                                    803 ;--------------------------------------------------------
                                    804 ; overlayable register banks
                                    805 ;--------------------------------------------------------
                                    806 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        807 	.ds 8
                                    808 ;--------------------------------------------------------
                                    809 ; internal ram data
                                    810 ;--------------------------------------------------------
                                    811 	.area DSEG    (DATA)
      000008                        812 _len:
      000008                        813 	.ds 2
                                    814 ;--------------------------------------------------------
                                    815 ; overlayable items in internal ram 
                                    816 ;--------------------------------------------------------
                                    817 ;--------------------------------------------------------
                                    818 ; Stack segment in internal ram 
                                    819 ;--------------------------------------------------------
                                    820 	.area	SSEG
      000021                        821 __start__stack:
      000021                        822 	.ds	1
                                    823 
                                    824 ;--------------------------------------------------------
                                    825 ; indirectly addressable internal ram data
                                    826 ;--------------------------------------------------------
                                    827 	.area ISEG    (DATA)
                                    828 ;--------------------------------------------------------
                                    829 ; absolute internal ram data
                                    830 ;--------------------------------------------------------
                                    831 	.area IABS    (ABS,DATA)
                                    832 	.area IABS    (ABS,DATA)
                                    833 ;--------------------------------------------------------
                                    834 ; bit data
                                    835 ;--------------------------------------------------------
                                    836 	.area BSEG    (BIT)
                                    837 ;--------------------------------------------------------
                                    838 ; paged external ram data
                                    839 ;--------------------------------------------------------
                                    840 	.area PSEG    (PAG,XDATA)
                                    841 ;--------------------------------------------------------
                                    842 ; external ram data
                                    843 ;--------------------------------------------------------
                                    844 	.area XSEG    (XDATA)
                           0061A6   845 _MONMUX	=	0x61a6
                           0061A6   846 _OPAMPMC	=	0x61a6
                           006230   847 _I2CCFG	=	0x6230
                           006231   848 _I2CSTAT	=	0x6231
                           006232   849 _I2CDATA	=	0x6232
                           006233   850 _I2CADDR	=	0x6233
                           006234   851 _I2CWC	=	0x6234
                           006235   852 _I2CIO	=	0x6235
                           006243   853 _OBSSEL0	=	0x6243
                           006244   854 _OBSSEL1	=	0x6244
                           006245   855 _OBSSEL2	=	0x6245
                           006246   856 _OBSSEL3	=	0x6246
                           006247   857 _OBSSEL4	=	0x6247
                           006248   858 _OBSSEL5	=	0x6248
                           006249   859 _CHVER	=	0x6249
                           00624A   860 _CHIPID	=	0x624a
                           00624B   861 _TESTREG0	=	0x624b
                           006260   862 _DBGDATA	=	0x6260
                           006262   863 _SRCRC	=	0x6262
                           006264   864 _BATTMON	=	0x6264
                           006265   865 _IVCTRL	=	0x6265
                           006270   866 _FCTL	=	0x6270
                           006271   867 _FADDRL	=	0x6271
                           006272   868 _FADDRH	=	0x6272
                           006273   869 _FWDATA	=	0x6273
                           006276   870 _CHIPINFO0	=	0x6276
                           006277   871 _CHIPINFO1	=	0x6277
                           006281   872 _IRCTL	=	0x6281
                           006290   873 _CLD	=	0x6290
                           0062A0   874 _XX_T1CCTL0	=	0x62a0
                           0062A1   875 _XX_T1CCTL1	=	0x62a1
                           0062A2   876 _XX_T1CCTL2	=	0x62a2
                           0062A3   877 _T1CCTL3	=	0x62a3
                           0062A4   878 _T1CCTL4	=	0x62a4
                           0062A6   879 _XX_T1CC0L	=	0x62a6
                           0062A7   880 _XX_T1CC0H	=	0x62a7
                           0062A8   881 _XX_T1CC1L	=	0x62a8
                           0062A9   882 _XX_T1CC1H	=	0x62a9
                           0062AA   883 _XX_T1CC2L	=	0x62aa
                           0062AB   884 _XX_T1CC2H	=	0x62ab
                           0062AC   885 _T1CC3L	=	0x62ac
                           0062AD   886 _T1CC3H	=	0x62ad
                           0062AE   887 _T1CC4L	=	0x62ae
                           0062AF   888 _T1CC4H	=	0x62af
                           0062B0   889 _STCC	=	0x62b0
                           0062B1   890 _STCS	=	0x62b1
                           0062B2   891 _STCV0	=	0x62b2
                           0062B3   892 _STCV1	=	0x62b3
                           0062B4   893 _STCV2	=	0x62b4
                           0062C0   894 _OPAMPC	=	0x62c0
                           0062C1   895 _OPAMPS	=	0x62c1
                           0062D0   896 _CMPCTL	=	0x62d0
                           006000   897 _RFCORE_RAM	=	0x6000
                           006000   898 _RXFIFO	=	0x6000
                           006080   899 _TXFIFO	=	0x6080
                           006100   900 _SRC_ADDR_TABLE	=	0x6100
                           006160   901 _SRCRESMASK0	=	0x6160
                           006161   902 _SRCRESMASK1	=	0x6161
                           006162   903 _SRCRESMASK2	=	0x6162
                           006163   904 _SRCRESINDEX	=	0x6163
                           006164   905 _SRCEXTPENDEN0	=	0x6164
                           006165   906 _SRCEXTPENDEN1	=	0x6165
                           006166   907 _SRCEXTPENDEN2	=	0x6166
                           006167   908 _SRCSHORTPENDEN0	=	0x6167
                           006168   909 _SRCSHORTPENDEN1	=	0x6168
                           006169   910 _SRCSHORTPENDEN2	=	0x6169
                           00616A   911 _EXT_ADDR0	=	0x616a
                           00616B   912 _EXT_ADDR1	=	0x616b
                           00616C   913 _EXT_ADDR2	=	0x616c
                           00616D   914 _EXT_ADDR3	=	0x616d
                           00616E   915 _EXT_ADDR4	=	0x616e
                           00616F   916 _EXT_ADDR5	=	0x616f
                           006170   917 _EXT_ADDR6	=	0x6170
                           006171   918 _EXT_ADDR7	=	0x6171
                           006172   919 _PAN_ID0	=	0x6172
                           006173   920 _PAN_ID1	=	0x6173
                           006174   921 _SHORT_ADDR0	=	0x6174
                           006175   922 _SHORT_ADDR1	=	0x6175
                           006180   923 _FRMFILT0	=	0x6180
                           006181   924 _FRMFILT1	=	0x6181
                           006182   925 _SRCMATCH	=	0x6182
                           006183   926 _SRCSHORTEN0	=	0x6183
                           006184   927 _SRCSHORTEN1	=	0x6184
                           006185   928 _SRCSHORTEN2	=	0x6185
                           006186   929 _SRCEXTEN0	=	0x6186
                           006187   930 _SRCEXTEN1	=	0x6187
                           006188   931 _SRCEXTEN2	=	0x6188
                           006189   932 _FRMCTRL0	=	0x6189
                           00618A   933 _FRMCTRL1	=	0x618a
                           00618B   934 _RXENABLE	=	0x618b
                           00618C   935 _RXMASKSET	=	0x618c
                           00618D   936 _RXMASKCLR	=	0x618d
                           00618E   937 _FREQTUNE	=	0x618e
                           00618F   938 _FREQCTRL	=	0x618f
                           006190   939 _TXPOWER	=	0x6190
                           006191   940 _TXCTRL	=	0x6191
                           006192   941 _FSMSTAT0	=	0x6192
                           006193   942 _FSMSTAT1	=	0x6193
                           006194   943 _FIFOPCTRL	=	0x6194
                           006195   944 _FSMCTRL	=	0x6195
                           006196   945 _CCACTRL0	=	0x6196
                           006197   946 _CCACTRL1	=	0x6197
                           006198   947 _RSSI	=	0x6198
                           006199   948 _RSSISTAT	=	0x6199
                           00619A   949 _RXFIRST	=	0x619a
                           00619B   950 _RXFIFOCNT	=	0x619b
                           00619C   951 _TXFIFOCNT	=	0x619c
                           00619D   952 _RXFIRST_PTR	=	0x619d
                           00619E   953 _RXLAST_PTR	=	0x619e
                           00619F   954 _RXP1_PTR	=	0x619f
                           0061A1   955 _TXFIRST_PTR	=	0x61a1
                           0061A2   956 _TXLAST_PTR	=	0x61a2
                           0061A3   957 _RFIRQM0	=	0x61a3
                           0061A4   958 _RFIRQM1	=	0x61a4
                           0061A5   959 _RFERRM	=	0x61a5
                           0061A7   960 _RFRND	=	0x61a7
                           0061A8   961 _MDMCTRL0	=	0x61a8
                           0061A9   962 _MDMCTRL1	=	0x61a9
                           0061AA   963 _FREQEST	=	0x61aa
                           0061AB   964 _RXCTRL	=	0x61ab
                           0061AC   965 _FSCTRL	=	0x61ac
                           0061AD   966 _FSCAL0	=	0x61ad
                           0061AE   967 _FSCAL1	=	0x61ae
                           0061AF   968 _FSCAL2	=	0x61af
                           0061B0   969 _FSCAL3	=	0x61b0
                           0061B1   970 _AGCCTRL0	=	0x61b1
                           0061B2   971 _AGCCTRL1	=	0x61b2
                           0061B3   972 _AGCCTRL2	=	0x61b3
                           0061B4   973 _AGCCTRL3	=	0x61b4
                           0061B5   974 _ADCTEST0	=	0x61b5
                           0061B6   975 _ADCTEST1	=	0x61b6
                           0061B7   976 _ADCTEST2	=	0x61b7
                           0061B8   977 _MDMTEST0	=	0x61b8
                           0061B9   978 _MDMTEST1	=	0x61b9
                           0061BA   979 _DACTEST0	=	0x61ba
                           0061BB   980 _DACTEST1	=	0x61bb
                           0061BC   981 _DACTEST2	=	0x61bc
                           0061BD   982 _ATEST	=	0x61bd
                           0061BE   983 _PTEST0	=	0x61be
                           0061BF   984 _PTEST1	=	0x61bf
                           0061FA   985 _TXFILTCFG	=	0x61fa
                           0061EB   986 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   987 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   988 _RFC_OBS_CTRL2	=	0x61ed
                           0061C0   989 _CSPPROG0	=	0x61c0
                           0061C1   990 _CSPPROG1	=	0x61c1
                           0061C2   991 _CSPPROG2	=	0x61c2
                           0061C3   992 _CSPPROG3	=	0x61c3
                           0061C4   993 _CSPPROG4	=	0x61c4
                           0061C5   994 _CSPPROG5	=	0x61c5
                           0061C6   995 _CSPPROG6	=	0x61c6
                           0061C7   996 _CSPPROG7	=	0x61c7
                           0061C8   997 _CSPPROG8	=	0x61c8
                           0061C9   998 _CSPPROG9	=	0x61c9
                           0061CA   999 _CSPPROG10	=	0x61ca
                           0061CB  1000 _CSPPROG11	=	0x61cb
                           0061CC  1001 _CSPPROG12	=	0x61cc
                           0061CD  1002 _CSPPROG13	=	0x61cd
                           0061CE  1003 _CSPPROG14	=	0x61ce
                           0061CF  1004 _CSPPROG15	=	0x61cf
                           0061D0  1005 _CSPPROG16	=	0x61d0
                           0061D1  1006 _CSPPROG17	=	0x61d1
                           0061D2  1007 _CSPPROG18	=	0x61d2
                           0061D3  1008 _CSPPROG19	=	0x61d3
                           0061D4  1009 _CSPPROG20	=	0x61d4
                           0061D5  1010 _CSPPROG21	=	0x61d5
                           0061D6  1011 _CSPPROG22	=	0x61d6
                           0061D7  1012 _CSPPROG23	=	0x61d7
                           0061E0  1013 _CSPCTRL	=	0x61e0
                           0061E1  1014 _CSPSTAT	=	0x61e1
                           0061E2  1015 _CSPX	=	0x61e2
                           0061E3  1016 _CSPY	=	0x61e3
                           0061E4  1017 _CSPZ	=	0x61e4
                           0061E5  1018 _CSPT	=	0x61e5
                           006200  1019 _USBADDR	=	0x6200
                           006201  1020 _USBPOW	=	0x6201
                           006202  1021 _USBIIF	=	0x6202
                           006204  1022 _USBOIF	=	0x6204
                           006206  1023 _USBCIF	=	0x6206
                           006207  1024 _USBIIE	=	0x6207
                           006209  1025 _USBOIE	=	0x6209
                           00620B  1026 _USBCIE	=	0x620b
                           00620C  1027 _USBFRML	=	0x620c
                           00620D  1028 _USBFRMH	=	0x620d
                           00620E  1029 _USBINDEX	=	0x620e
                           00620F  1030 _USBCTRL	=	0x620f
                           006210  1031 _USBMAXI	=	0x6210
                           006211  1032 _USBCS0	=	0x6211
                           006211  1033 _USBCSIL	=	0x6211
                           006212  1034 _USBCSIH	=	0x6212
                           006213  1035 _USBMAXO	=	0x6213
                           006214  1036 _USBCSOL	=	0x6214
                           006215  1037 _USBCSOH	=	0x6215
                           006216  1038 _USBCNT0	=	0x6216
                           006216  1039 _USBCNTL	=	0x6216
                           006217  1040 _USBCNTH	=	0x6217
                           006220  1041 _USBF0	=	0x6220
                           006222  1042 _USBF1	=	0x6222
                           006224  1043 _USBF2	=	0x6224
                           006226  1044 _USBF3	=	0x6226
                           006228  1045 _USBF4	=	0x6228
                           00622A  1046 _USBF5	=	0x622a
                           007080  1047 _X_P0	=	0x7080
                           007086  1048 _X_U0CSR	=	0x7086
                           007089  1049 _X_P0IFG	=	0x7089
                           00708A  1050 _X_P1IFG	=	0x708a
                           00708B  1051 _X_P2IFG	=	0x708b
                           00708C  1052 _X_PICTL	=	0x708c
                           00708D  1053 _X_P1IEN	=	0x708d
                           00708F  1054 _X_P0INP	=	0x708f
                           007090  1055 _X_P1	=	0x7090
                           007091  1056 _X_RFIRQF1	=	0x7091
                           007093  1057 _X_MPAGE	=	0x7093
                           007093  1058 _X__XPAGE	=	0x7093
                           007094  1059 _X_T2CTRL	=	0x7094
                           007095  1060 _X_ST0	=	0x7095
                           007096  1061 _X_ST1	=	0x7096
                           007097  1062 _X_ST2	=	0x7097
                           00709C  1063 _X_T2EVTCFG	=	0x709c
                           00709D  1064 _X_SLEEPSTA	=	0x709d
                           00709E  1065 _X_CLKCONSTA	=	0x709e
                           00709F  1066 _X_FMAP	=	0x709f
                           00709F  1067 _X_PSBANK	=	0x709f
                           0070A0  1068 _X_P2	=	0x70a0
                           0070A1  1069 _X_T2IRQF	=	0x70a1
                           0070A2  1070 _X_T2M0	=	0x70a2
                           0070A3  1071 _X_T2M1	=	0x70a3
                           0070A4  1072 _X_T2MOVF0	=	0x70a4
                           0070A5  1073 _X_T2MOVF1	=	0x70a5
                           0070A6  1074 _X_T2MOVF2	=	0x70a6
                           0070A7  1075 _X_T2IRQM	=	0x70a7
                           0070AB  1076 _X_P0IEN	=	0x70ab
                           0070AC  1077 _X_P2IEN	=	0x70ac
                           0070AD  1078 _X_STLOAD	=	0x70ad
                           0070AE  1079 _X_PMUX	=	0x70ae
                           0070AF  1080 _X_T1STAT	=	0x70af
                           0070B1  1081 _X_ENCDI	=	0x70b1
                           0070B2  1082 _X_ENCDO	=	0x70b2
                           0070B3  1083 _X_ENCCS	=	0x70b3
                           0070B4  1084 _X_ADCCON1	=	0x70b4
                           0070B5  1085 _X_ADCCON2	=	0x70b5
                           0070B6  1086 _X_ADCCON3	=	0x70b6
                           0070BA  1087 _X_ADCL	=	0x70ba
                           0070BB  1088 _X_ADCH	=	0x70bb
                           0070BC  1089 _X_RNDL	=	0x70bc
                           0070BD  1090 _X_RNDH	=	0x70bd
                           0070BE  1091 _X_SLEEPCMD	=	0x70be
                           0070BF  1092 _X_RFERRF	=	0x70bf
                           0070C1  1093 _X_U0DBUF	=	0x70c1
                           0070C2  1094 _X_U0BAUD	=	0x70c2
                           0070C3  1095 _X_T2MSEL	=	0x70c3
                           0070C4  1096 _X_U0UCR	=	0x70c4
                           0070C5  1097 _X_U0GCR	=	0x70c5
                           0070C6  1098 _X_CLKCONCMD	=	0x70c6
                           0070C7  1099 _X_MEMCTR	=	0x70c7
                           0070C9  1100 _X_WDCTL	=	0x70c9
                           0070CA  1101 _X_T3CNT	=	0x70ca
                           0070CB  1102 _X_T3CTL	=	0x70cb
                           0070CC  1103 _X_T3CCTL0	=	0x70cc
                           0070CD  1104 _X_T3CC0	=	0x70cd
                           0070CE  1105 _X_T3CCTL1	=	0x70ce
                           0070CF  1106 _X_T3CC1	=	0x70cf
                           0070D1  1107 _X_DMAIRQ	=	0x70d1
                           0070D2  1108 _X_DMA1CFGL	=	0x70d2
                           0070D3  1109 _X_DMA1CFGH	=	0x70d3
                           0070D4  1110 _X_DMA0CFGL	=	0x70d4
                           0070D5  1111 _X_DMA0CFGH	=	0x70d5
                           0070D6  1112 _X_DMAARM	=	0x70d6
                           0070D7  1113 _X_DMAREQ	=	0x70d7
                           0070D8  1114 _X_TIMIF	=	0x70d8
                           0070D9  1115 _X_RFD	=	0x70d9
                           0070DA  1116 _X_T1CC0L	=	0x70da
                           0070DB  1117 _X_T1CC0H	=	0x70db
                           0070DC  1118 _X_T1CC1L	=	0x70dc
                           0070DD  1119 _X_T1CC1H	=	0x70dd
                           0070DE  1120 _X_T1CC2L	=	0x70de
                           0070DF  1121 _X_T1CC2H	=	0x70df
                           0070E1  1122 _X_RFST	=	0x70e1
                           0070E2  1123 _X_T1CNTL	=	0x70e2
                           0070E3  1124 _X_T1CNTH	=	0x70e3
                           0070E4  1125 _X_T1CTL	=	0x70e4
                           0070E5  1126 _X_T1CCTL0	=	0x70e5
                           0070E6  1127 _X_T1CCTL1	=	0x70e6
                           0070E7  1128 _X_T1CCTL2	=	0x70e7
                           0070E9  1129 _X_RFIRQF0	=	0x70e9
                           0070EA  1130 _X_T4CNT	=	0x70ea
                           0070EB  1131 _X_T4CTL	=	0x70eb
                           0070EC  1132 _X_T4CCTL0	=	0x70ec
                           0070ED  1133 _X_T4CC0	=	0x70ed
                           0070EE  1134 _X_T4CCTL1	=	0x70ee
                           0070EF  1135 _X_T4CC1	=	0x70ef
                           0070F1  1136 _X_PERCFG	=	0x70f1
                           0070F2  1137 _X_APCFG	=	0x70f2
                           0070F3  1138 _X_P0SEL	=	0x70f3
                           0070F4  1139 _X_P1SEL	=	0x70f4
                           0070F5  1140 _X_P2SEL	=	0x70f5
                           0070F6  1141 _X_P1INP	=	0x70f6
                           0070F7  1142 _X_P2INP	=	0x70f7
                           0070F8  1143 _X_U1CSR	=	0x70f8
                           0070F9  1144 _X_U1DBUF	=	0x70f9
                           0070FA  1145 _X_U1BAUD	=	0x70fa
                           0070FB  1146 _X_U1UCR	=	0x70fb
                           0070FC  1147 _X_U1GCR	=	0x70fc
                           0070FD  1148 _X_P0DIR	=	0x70fd
                           0070FE  1149 _X_P1DIR	=	0x70fe
                           0070FF  1150 _X_P2DIR	=	0x70ff
                           007800  1151 _X_INFOPAGE	=	0x7800
                           00780C  1152 _X_IEEE_ADDR	=	0x780c
                                   1153 ;--------------------------------------------------------
                                   1154 ; absolute external ram data
                                   1155 ;--------------------------------------------------------
                                   1156 	.area XABS    (ABS,XDATA)
                                   1157 ;--------------------------------------------------------
                                   1158 ; external initialized ram data
                                   1159 ;--------------------------------------------------------
                                   1160 	.area XISEG   (XDATA)
                                   1161 	.area HOME    (CODE)
                                   1162 	.area GSINIT0 (CODE)
                                   1163 	.area GSINIT1 (CODE)
                                   1164 	.area GSINIT2 (CODE)
                                   1165 	.area GSINIT3 (CODE)
                                   1166 	.area GSINIT4 (CODE)
                                   1167 	.area GSINIT5 (CODE)
                                   1168 	.area GSINIT  (CODE)
                                   1169 	.area GSFINAL (CODE)
                                   1170 	.area CSEG    (CODE)
                                   1171 ;--------------------------------------------------------
                                   1172 ; interrupt vector 
                                   1173 ;--------------------------------------------------------
                                   1174 	.area HOME    (CODE)
      000000                       1175 __interrupt_vect:
      000000 02 51 DF         [24] 1176 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1177 	reti
      000004                       1178 	.ds	7
      00000B 32               [24] 1179 	reti
      00000C                       1180 	.ds	7
      000013 02 09 FB         [24] 1181 	ljmp	_uart0_rx_isr
      000016                       1182 	.ds	5
      00001B 32               [24] 1183 	reti
      00001C                       1184 	.ds	7
      000023 32               [24] 1185 	reti
      000024                       1186 	.ds	7
      00002B 02 22 2B         [24] 1187 	ljmp	_clock_isr
      00002E                       1188 	.ds	5
      000033 32               [24] 1189 	reti
      000034                       1190 	.ds	7
      00003B 32               [24] 1191 	reti
      00003C                       1192 	.ds	7
      000043 32               [24] 1193 	reti
      000044                       1194 	.ds	7
      00004B 02 23 65         [24] 1195 	ljmp	_rtimer_isr
      00004E                       1196 	.ds	5
      000053 32               [24] 1197 	reti
      000054                       1198 	.ds	7
      00005B 32               [24] 1199 	reti
      00005C                       1200 	.ds	7
      000063 32               [24] 1201 	reti
      000064                       1202 	.ds	7
      00006B 02 0B 2F         [24] 1203 	ljmp	_port_0_isr
                                   1204 ;--------------------------------------------------------
                                   1205 ; global & static initialisations
                                   1206 ;--------------------------------------------------------
                                   1207 	.area HOME    (CODE)
                                   1208 	.area GSINIT  (CODE)
                                   1209 	.area GSFINAL (CODE)
                                   1210 	.area GSINIT  (CODE)
                                   1211 	.globl __sdcc_gsinit_startup
                                   1212 	.globl __sdcc_program_startup
                                   1213 	.globl __start__stack
                                   1214 	.globl __mcs51_genXINIT
                                   1215 	.globl __mcs51_genXRAMCLEAR
                                   1216 	.globl __mcs51_genRAMCLEAR
                                   1217 	.area GSFINAL (CODE)
      005255 02 00 6E         [24] 1218 	ljmp	__sdcc_program_startup
                                   1219 ;--------------------------------------------------------
                                   1220 ; Home
                                   1221 ;--------------------------------------------------------
                                   1222 	.area HOME    (CODE)
                                   1223 	.area HOME    (CODE)
      00006E                       1224 __sdcc_program_startup:
      00006E 02 02 DB         [24] 1225 	ljmp	_main
                                   1226 ;	return from main will return to caller
                                   1227 ;--------------------------------------------------------
                                   1228 ; code
                                   1229 ;--------------------------------------------------------
                                   1230 	.area HOME    (CODE)
                                   1231 ;------------------------------------------------------------
                                   1232 ;Allocation info for local variables in function 'fade'
                                   1233 ;------------------------------------------------------------
                                   1234 ;l                         Allocated to stack - sp -5
                                   1235 ;i                         Allocated to stack - sp -3
                                   1236 ;a                         Allocated to stack - sp -1
                                   1237 ;k                         Allocated to registers r4 r5 
                                   1238 ;j                         Allocated to registers r2 r3 
                                   1239 ;------------------------------------------------------------
                                   1240 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:64: fade(int l) CC_NON_BANKED
                                   1241 ;	-----------------------------------------
                                   1242 ;	 function fade
                                   1243 ;	-----------------------------------------
      000071                       1244 _fade:
                           000007  1245 	ar7 = 0x07
                           000006  1246 	ar6 = 0x06
                           000005  1247 	ar5 = 0x05
                           000004  1248 	ar4 = 0x04
                           000003  1249 	ar3 = 0x03
                           000002  1250 	ar2 = 0x02
                           000001  1251 	ar1 = 0x01
                           000000  1252 	ar0 = 0x00
      000071 C0 82            [24] 1253 	push	dpl
      000073 C0 83            [24] 1254 	push	dph
      000075 E5 81            [12] 1255 	mov	a,sp
      000077 24 04            [12] 1256 	add	a,#0x04
      000079 F5 81            [12] 1257 	mov	sp,a
                                   1258 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:68: for(k = 0; k < 400; ++k) {
      00007B 7C 00            [12] 1259 	mov	r4,#0x00
      00007D 7D 00            [12] 1260 	mov	r5,#0x00
      00007F                       1261 00110$:
                                   1262 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:69: j = k > 200 ? 400 - k : k;
      00007F C3               [12] 1263 	clr	c
      000080 74 C8            [12] 1264 	mov	a,#0xC8
      000082 9C               [12] 1265 	subb	a,r4
      000083 74 80            [12] 1266 	mov	a,#(0x00 ^ 0x80)
      000085 8D F0            [24] 1267 	mov	b,r5
      000087 63 F0 80         [24] 1268 	xrl	b,#0x80
      00008A 95 F0            [12] 1269 	subb	a,b
      00008C 50 0B            [24] 1270 	jnc	00114$
      00008E 74 90            [12] 1271 	mov	a,#0x90
      000090 C3               [12] 1272 	clr	c
      000091 9C               [12] 1273 	subb	a,r4
      000092 FA               [12] 1274 	mov	r2,a
      000093 74 01            [12] 1275 	mov	a,#0x01
      000095 9D               [12] 1276 	subb	a,r5
      000096 FB               [12] 1277 	mov	r3,a
      000097 80 04            [24] 1278 	sjmp	00115$
      000099                       1279 00114$:
      000099 8C 02            [24] 1280 	mov	ar2,r4
      00009B 8D 03            [24] 1281 	mov	ar3,r5
      00009D                       1282 00115$:
                                   1283 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:71: leds_on(l);
      00009D E5 81            [12] 1284 	mov	a,sp
      00009F 24 FB            [12] 1285 	add	a,#0xfb
      0000A1 F8               [12] 1286 	mov	r0,a
      0000A2 86 07            [24] 1287 	mov	ar7,@r0
      0000A4 8F 82            [24] 1288 	mov	dpl,r7
      0000A6 C0 07            [24] 1289 	push	ar7
      0000A8 C0 05            [24] 1290 	push	ar5
      0000AA C0 04            [24] 1291 	push	ar4
      0000AC C0 03            [24] 1292 	push	ar3
      0000AE C0 02            [24] 1293 	push	ar2
      0000B0 78 BE            [12] 1294 	mov	r0,#_leds_on
      0000B2 79 83            [12] 1295 	mov	r1,#(_leds_on >> 8)
      0000B4 7A 04            [12] 1296 	mov	r2,#(_leds_on >> 16)
      0000B6 12 20 BA         [24] 1297 	lcall	__sdcc_banked_call
      0000B9 D0 02            [24] 1298 	pop	ar2
      0000BB D0 03            [24] 1299 	pop	ar3
      0000BD D0 04            [24] 1300 	pop	ar4
      0000BF D0 05            [24] 1301 	pop	ar5
      0000C1 D0 07            [24] 1302 	pop	ar7
                                   1303 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:72: for(i = 0; i < j; ++i) {
      0000C3 E5 81            [12] 1304 	mov	a,sp
      0000C5 24 FD            [12] 1305 	add	a,#0xfd
      0000C7 F8               [12] 1306 	mov	r0,a
      0000C8 E4               [12] 1307 	clr	a
      0000C9 F6               [12] 1308 	mov	@r0,a
      0000CA 08               [12] 1309 	inc	r0
      0000CB F6               [12] 1310 	mov	@r0,a
      0000CC                       1311 00105$:
      0000CC E5 81            [12] 1312 	mov	a,sp
      0000CE 24 FD            [12] 1313 	add	a,#0xfd
      0000D0 F8               [12] 1314 	mov	r0,a
      0000D1 C3               [12] 1315 	clr	c
      0000D2 E6               [12] 1316 	mov	a,@r0
      0000D3 9A               [12] 1317 	subb	a,r2
      0000D4 08               [12] 1318 	inc	r0
      0000D5 E6               [12] 1319 	mov	a,@r0
      0000D6 64 80            [12] 1320 	xrl	a,#0x80
      0000D8 8B F0            [24] 1321 	mov	b,r3
      0000DA 63 F0 80         [24] 1322 	xrl	b,#0x80
      0000DD 95 F0            [12] 1323 	subb	a,b
      0000DF 50 1D            [24] 1324 	jnc	00101$
                                   1325 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:73: a = i;
      0000E1 E5 81            [12] 1326 	mov	a,sp
      0000E3 24 FD            [12] 1327 	add	a,#0xfd
      0000E5 F8               [12] 1328 	mov	r0,a
      0000E6 A9 81            [24] 1329 	mov	r1,sp
      0000E8 19               [12] 1330 	dec	r1
      0000E9 E6               [12] 1331 	mov	a,@r0
      0000EA F7               [12] 1332 	mov	@r1,a
      0000EB 08               [12] 1333 	inc	r0
      0000EC 09               [12] 1334 	inc	r1
      0000ED E6               [12] 1335 	mov	a,@r0
      0000EE F7               [12] 1336 	mov	@r1,a
                                   1337 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:72: for(i = 0; i < j; ++i) {
      0000EF E5 81            [12] 1338 	mov	a,sp
      0000F1 24 FD            [12] 1339 	add	a,#0xfd
      0000F3 F8               [12] 1340 	mov	r0,a
      0000F4 74 01            [12] 1341 	mov	a,#0x01
      0000F6 26               [12] 1342 	add	a,@r0
      0000F7 F6               [12] 1343 	mov	@r0,a
      0000F8 E4               [12] 1344 	clr	a
      0000F9 08               [12] 1345 	inc	r0
      0000FA 36               [12] 1346 	addc	a,@r0
      0000FB F6               [12] 1347 	mov	@r0,a
      0000FC 80 CE            [24] 1348 	sjmp	00105$
      0000FE                       1349 00101$:
                                   1350 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:75: leds_off(l);
      0000FE 8F 82            [24] 1351 	mov	dpl,r7
      000100 C0 05            [24] 1352 	push	ar5
      000102 C0 04            [24] 1353 	push	ar4
      000104 C0 03            [24] 1354 	push	ar3
      000106 C0 02            [24] 1355 	push	ar2
      000108 78 D4            [12] 1356 	mov	r0,#_leds_off
      00010A 79 83            [12] 1357 	mov	r1,#(_leds_off >> 8)
      00010C 7A 04            [12] 1358 	mov	r2,#(_leds_off >> 16)
      00010E 12 20 BA         [24] 1359 	lcall	__sdcc_banked_call
      000111 D0 02            [24] 1360 	pop	ar2
      000113 D0 03            [24] 1361 	pop	ar3
      000115 D0 04            [24] 1362 	pop	ar4
      000117 D0 05            [24] 1363 	pop	ar5
                                   1364 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:76: for(i = 0; i < 200 - j; ++i) {
      000119 E5 81            [12] 1365 	mov	a,sp
      00011B 24 FD            [12] 1366 	add	a,#0xfd
      00011D F8               [12] 1367 	mov	r0,a
      00011E E4               [12] 1368 	clr	a
      00011F F6               [12] 1369 	mov	@r0,a
      000120 08               [12] 1370 	inc	r0
      000121 F6               [12] 1371 	mov	@r0,a
      000122 74 C8            [12] 1372 	mov	a,#0xC8
      000124 C3               [12] 1373 	clr	c
      000125 9A               [12] 1374 	subb	a,r2
      000126 FE               [12] 1375 	mov	r6,a
      000127 E4               [12] 1376 	clr	a
      000128 9B               [12] 1377 	subb	a,r3
      000129 FF               [12] 1378 	mov	r7,a
      00012A                       1379 00108$:
      00012A E5 81            [12] 1380 	mov	a,sp
      00012C 24 FD            [12] 1381 	add	a,#0xfd
      00012E F8               [12] 1382 	mov	r0,a
      00012F C3               [12] 1383 	clr	c
      000130 E6               [12] 1384 	mov	a,@r0
      000131 9E               [12] 1385 	subb	a,r6
      000132 08               [12] 1386 	inc	r0
      000133 E6               [12] 1387 	mov	a,@r0
      000134 64 80            [12] 1388 	xrl	a,#0x80
      000136 8F F0            [24] 1389 	mov	b,r7
      000138 63 F0 80         [24] 1390 	xrl	b,#0x80
      00013B 95 F0            [12] 1391 	subb	a,b
      00013D 50 1D            [24] 1392 	jnc	00111$
                                   1393 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:77: a = i;
      00013F E5 81            [12] 1394 	mov	a,sp
      000141 24 FD            [12] 1395 	add	a,#0xfd
      000143 F8               [12] 1396 	mov	r0,a
      000144 A9 81            [24] 1397 	mov	r1,sp
      000146 19               [12] 1398 	dec	r1
      000147 E6               [12] 1399 	mov	a,@r0
      000148 F7               [12] 1400 	mov	@r1,a
      000149 08               [12] 1401 	inc	r0
      00014A 09               [12] 1402 	inc	r1
      00014B E6               [12] 1403 	mov	a,@r0
      00014C F7               [12] 1404 	mov	@r1,a
                                   1405 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:76: for(i = 0; i < 200 - j; ++i) {
      00014D E5 81            [12] 1406 	mov	a,sp
      00014F 24 FD            [12] 1407 	add	a,#0xfd
      000151 F8               [12] 1408 	mov	r0,a
      000152 74 01            [12] 1409 	mov	a,#0x01
      000154 26               [12] 1410 	add	a,@r0
      000155 F6               [12] 1411 	mov	@r0,a
      000156 E4               [12] 1412 	clr	a
      000157 08               [12] 1413 	inc	r0
      000158 36               [12] 1414 	addc	a,@r0
      000159 F6               [12] 1415 	mov	@r0,a
      00015A 80 CE            [24] 1416 	sjmp	00108$
      00015C                       1417 00111$:
                                   1418 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:68: for(k = 0; k < 400; ++k) {
      00015C 0C               [12] 1419 	inc	r4
      00015D BC 00 01         [24] 1420 	cjne	r4,#0x00,00138$
      000160 0D               [12] 1421 	inc	r5
      000161                       1422 00138$:
      000161 C3               [12] 1423 	clr	c
      000162 EC               [12] 1424 	mov	a,r4
      000163 94 90            [12] 1425 	subb	a,#0x90
      000165 ED               [12] 1426 	mov	a,r5
      000166 64 80            [12] 1427 	xrl	a,#0x80
      000168 94 81            [12] 1428 	subb	a,#0x81
      00016A 50 03            [24] 1429 	jnc	00139$
      00016C 02 00 7F         [24] 1430 	ljmp	00110$
      00016F                       1431 00139$:
      00016F E5 81            [12] 1432 	mov	a,sp
      000171 24 FA            [12] 1433 	add	a,#0xFA
      000173 F5 81            [12] 1434 	mov	sp,a
      000175 22               [24] 1435 	ret
                                   1436 ;------------------------------------------------------------
                                   1437 ;Allocation info for local variables in function 'set_rf_params'
                                   1438 ;------------------------------------------------------------
                                   1439 ;i                         Allocated to registers r4 
                                   1440 ;short_addr                Allocated to registers r7 r6 
                                   1441 ;ext_addr                  Allocated to stack - sp -7
                                   1442 ;macp                      Allocated to registers 
                                   1443 ;------------------------------------------------------------
                                   1444 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:83: set_rf_params(void) CC_NON_BANKED
                                   1445 ;	-----------------------------------------
                                   1446 ;	 function set_rf_params
                                   1447 ;	-----------------------------------------
      000176                       1448 _set_rf_params:
      000176 E5 81            [12] 1449 	mov	a,sp
      000178 24 08            [12] 1450 	add	a,#0x08
      00017A F5 81            [12] 1451 	mov	sp,a
                                   1452 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:90: __xdata unsigned char *macp = &X_IEEE_ADDR;
      00017C 7E 0C            [12] 1453 	mov	r6,#_X_IEEE_ADDR
      00017E 7F 78            [12] 1454 	mov	r7,#(_X_IEEE_ADDR >> 8)
                                   1455 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:124: for(i = 7; i >= 0; --i) {
      000180 E5 81            [12] 1456 	mov	a,sp
      000182 24 F9            [12] 1457 	add	a,#0xF9
      000184 FD               [12] 1458 	mov	r5,a
      000185 7C 07            [12] 1459 	mov	r4,#0x07
      000187                       1460 00102$:
                                   1461 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:125: ext_addr[i] = *macp;
      000187 EC               [12] 1462 	mov	a,r4
      000188 2D               [12] 1463 	add	a,r5
      000189 F9               [12] 1464 	mov	r1,a
      00018A 8E 82            [24] 1465 	mov	dpl,r6
      00018C 8F 83            [24] 1466 	mov	dph,r7
      00018E E0               [24] 1467 	movx	a,@dptr
      00018F FB               [12] 1468 	mov	r3,a
      000190 A3               [24] 1469 	inc	dptr
      000191 AE 82            [24] 1470 	mov	r6,dpl
      000193 AF 83            [24] 1471 	mov	r7,dph
      000195 A7 03            [24] 1472 	mov	@r1,ar3
                                   1473 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:126: macp++;
                                   1474 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:124: for(i = 7; i >= 0; --i) {
      000197 1C               [12] 1475 	dec	r4
      000198 EC               [12] 1476 	mov	a,r4
      000199 30 E7 EB         [24] 1477 	jnb	acc.7,00102$
                                   1478 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:135: short_addr = ext_addr[7];
      00019C 74 07            [12] 1479 	mov	a,#0x07
      00019E 2D               [12] 1480 	add	a,r5
      00019F F9               [12] 1481 	mov	r1,a
      0001A0 87 07            [24] 1482 	mov	ar7,@r1
      0001A2 7E 00            [12] 1483 	mov	r6,#0x00
                                   1484 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:136: short_addr |= ext_addr[6] << 8;
      0001A4 74 06            [12] 1485 	mov	a,#0x06
      0001A6 2D               [12] 1486 	add	a,r5
      0001A7 F9               [12] 1487 	mov	r1,a
      0001A8 87 04            [24] 1488 	mov	ar4,@r1
      0001AA 8C 03            [24] 1489 	mov	ar3,r4
      0001AC E4               [12] 1490 	clr	a
      0001AD 42 07            [12] 1491 	orl	ar7,a
      0001AF EB               [12] 1492 	mov	a,r3
      0001B0 42 06            [12] 1493 	orl	ar6,a
                                   1494 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:139: memcpy(&linkaddr_node_addr, &ext_addr[8 - LINKADDR_SIZE], LINKADDR_SIZE);
      0001B2 8D 04            [24] 1495 	mov	ar4,r5
      0001B4 7B 00            [12] 1496 	mov	r3,#0x00
      0001B6 7A 40            [12] 1497 	mov	r2,#0x40
      0001B8 C0 07            [24] 1498 	push	ar7
      0001BA C0 06            [24] 1499 	push	ar6
      0001BC C0 05            [24] 1500 	push	ar5
      0001BE 74 08            [12] 1501 	mov	a,#0x08
      0001C0 C0 E0            [24] 1502 	push	acc
      0001C2 E4               [12] 1503 	clr	a
      0001C3 C0 E0            [24] 1504 	push	acc
      0001C5 C0 04            [24] 1505 	push	ar4
      0001C7 C0 03            [24] 1506 	push	ar3
      0001C9 C0 02            [24] 1507 	push	ar2
      0001CB 90 03 89         [24] 1508 	mov	dptr,#_linkaddr_node_addr
      0001CE 75 F0 00         [24] 1509 	mov	b,#0x00
      0001D1 78 0F            [12] 1510 	mov	r0,#_memcpy
      0001D3 79 58            [12] 1511 	mov	r1,#(_memcpy >> 8)
      0001D5 7A 00            [12] 1512 	mov	r2,#(_memcpy >> 16)
      0001D7 12 20 BA         [24] 1513 	lcall	__sdcc_banked_call
      0001DA E5 81            [12] 1514 	mov	a,sp
      0001DC 24 FB            [12] 1515 	add	a,#0xfb
      0001DE F5 81            [12] 1516 	mov	sp,a
                                   1517 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:153: NETSTACK_RADIO.set_value(RADIO_PARAM_PAN_ID, IEEE802154_PANID);
      0001E0 90 7E 08         [24] 1518 	mov	dptr,#(_cc2530_rf_driver + 0x0021)
      0001E3 E4               [12] 1519 	clr	a
      0001E4 93               [24] 1520 	movc	a,@a+dptr
      0001E5 FA               [12] 1521 	mov	r2,a
      0001E6 A3               [24] 1522 	inc	dptr
      0001E7 E4               [12] 1523 	clr	a
      0001E8 93               [24] 1524 	movc	a,@a+dptr
      0001E9 FB               [12] 1525 	mov	r3,a
      0001EA A3               [24] 1526 	inc	dptr
      0001EB E4               [12] 1527 	clr	a
      0001EC 93               [24] 1528 	movc	a,@a+dptr
      0001ED FC               [12] 1529 	mov	r4,a
      0001EE C0 04            [24] 1530 	push	ar4
      0001F0 C0 03            [24] 1531 	push	ar3
      0001F2 C0 02            [24] 1532 	push	ar2
      0001F4 74 CD            [12] 1533 	mov	a,#0xCD
      0001F6 C0 E0            [24] 1534 	push	acc
      0001F8 74 AB            [12] 1535 	mov	a,#0xAB
      0001FA C0 E0            [24] 1536 	push	acc
      0001FC C0 02            [24] 1537 	push	ar2
      0001FE C0 03            [24] 1538 	push	ar3
      000200 C0 04            [24] 1539 	push	ar4
      000202 90 00 02         [24] 1540 	mov	dptr,#0x0002
      000205 D0 02            [24] 1541 	pop	ar2
      000207 D0 01            [24] 1542 	pop	ar1
      000209 D0 00            [24] 1543 	pop	ar0
      00020B 12 20 BA         [24] 1544 	lcall	__sdcc_banked_call
      00020E 15 81            [12] 1545 	dec	sp
      000210 15 81            [12] 1546 	dec	sp
      000212 D0 02            [24] 1547 	pop	ar2
      000214 D0 03            [24] 1548 	pop	ar3
      000216 D0 04            [24] 1549 	pop	ar4
      000218 D0 05            [24] 1550 	pop	ar5
      00021A D0 06            [24] 1551 	pop	ar6
      00021C D0 07            [24] 1552 	pop	ar7
                                   1553 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:154: NETSTACK_RADIO.set_value(RADIO_PARAM_16BIT_ADDR, short_addr);
      00021E 90 7E 08         [24] 1554 	mov	dptr,#(_cc2530_rf_driver + 0x0021)
      000221 E4               [12] 1555 	clr	a
      000222 93               [24] 1556 	movc	a,@a+dptr
      000223 FA               [12] 1557 	mov	r2,a
      000224 A3               [24] 1558 	inc	dptr
      000225 E4               [12] 1559 	clr	a
      000226 93               [24] 1560 	movc	a,@a+dptr
      000227 FB               [12] 1561 	mov	r3,a
      000228 A3               [24] 1562 	inc	dptr
      000229 E4               [12] 1563 	clr	a
      00022A 93               [24] 1564 	movc	a,@a+dptr
      00022B FC               [12] 1565 	mov	r4,a
      00022C C0 05            [24] 1566 	push	ar5
      00022E C0 04            [24] 1567 	push	ar4
      000230 C0 03            [24] 1568 	push	ar3
      000232 C0 02            [24] 1569 	push	ar2
      000234 C0 07            [24] 1570 	push	ar7
      000236 C0 06            [24] 1571 	push	ar6
      000238 C0 02            [24] 1572 	push	ar2
      00023A C0 03            [24] 1573 	push	ar3
      00023C C0 04            [24] 1574 	push	ar4
      00023E 90 00 03         [24] 1575 	mov	dptr,#0x0003
      000241 D0 02            [24] 1576 	pop	ar2
      000243 D0 01            [24] 1577 	pop	ar1
      000245 D0 00            [24] 1578 	pop	ar0
      000247 12 20 BA         [24] 1579 	lcall	__sdcc_banked_call
      00024A 15 81            [12] 1580 	dec	sp
      00024C 15 81            [12] 1581 	dec	sp
      00024E D0 02            [24] 1582 	pop	ar2
      000250 D0 03            [24] 1583 	pop	ar3
      000252 D0 04            [24] 1584 	pop	ar4
      000254 D0 05            [24] 1585 	pop	ar5
                                   1586 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:155: NETSTACK_RADIO.set_value(RADIO_PARAM_CHANNEL, CC2530_RF_CHANNEL);
      000256 90 7E 08         [24] 1587 	mov	dptr,#(_cc2530_rf_driver + 0x0021)
      000259 E4               [12] 1588 	clr	a
      00025A 93               [24] 1589 	movc	a,@a+dptr
      00025B FC               [12] 1590 	mov	r4,a
      00025C A3               [24] 1591 	inc	dptr
      00025D E4               [12] 1592 	clr	a
      00025E 93               [24] 1593 	movc	a,@a+dptr
      00025F FE               [12] 1594 	mov	r6,a
      000260 A3               [24] 1595 	inc	dptr
      000261 E4               [12] 1596 	clr	a
      000262 93               [24] 1597 	movc	a,@a+dptr
      000263 FF               [12] 1598 	mov	r7,a
      000264 C0 07            [24] 1599 	push	ar7
      000266 C0 06            [24] 1600 	push	ar6
      000268 C0 05            [24] 1601 	push	ar5
      00026A C0 04            [24] 1602 	push	ar4
      00026C 74 19            [12] 1603 	mov	a,#0x19
      00026E C0 E0            [24] 1604 	push	acc
      000270 E4               [12] 1605 	clr	a
      000271 C0 E0            [24] 1606 	push	acc
      000273 C0 04            [24] 1607 	push	ar4
      000275 C0 06            [24] 1608 	push	ar6
      000277 C0 07            [24] 1609 	push	ar7
      000279 90 00 01         [24] 1610 	mov	dptr,#0x0001
      00027C D0 02            [24] 1611 	pop	ar2
      00027E D0 01            [24] 1612 	pop	ar1
      000280 D0 00            [24] 1613 	pop	ar0
      000282 12 20 BA         [24] 1614 	lcall	__sdcc_banked_call
      000285 15 81            [12] 1615 	dec	sp
      000287 15 81            [12] 1616 	dec	sp
      000289 D0 04            [24] 1617 	pop	ar4
      00028B D0 05            [24] 1618 	pop	ar5
      00028D D0 06            [24] 1619 	pop	ar6
      00028F D0 07            [24] 1620 	pop	ar7
                                   1621 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:156: NETSTACK_RADIO.set_object(RADIO_PARAM_64BIT_ADDR, ext_addr, 8);
      000291 90 7E 0E         [24] 1622 	mov	dptr,#(_cc2530_rf_driver + 0x0027)
      000294 E4               [12] 1623 	clr	a
      000295 93               [24] 1624 	movc	a,@a+dptr
      000296 FC               [12] 1625 	mov	r4,a
      000297 A3               [24] 1626 	inc	dptr
      000298 E4               [12] 1627 	clr	a
      000299 93               [24] 1628 	movc	a,@a+dptr
      00029A FE               [12] 1629 	mov	r6,a
      00029B A3               [24] 1630 	inc	dptr
      00029C E4               [12] 1631 	clr	a
      00029D 93               [24] 1632 	movc	a,@a+dptr
      00029E FF               [12] 1633 	mov	r7,a
      00029F 7B 00            [12] 1634 	mov	r3,#0x00
      0002A1 7A 40            [12] 1635 	mov	r2,#0x40
      0002A3 C0 07            [24] 1636 	push	ar7
      0002A5 C0 06            [24] 1637 	push	ar6
      0002A7 C0 04            [24] 1638 	push	ar4
      0002A9 74 08            [12] 1639 	mov	a,#0x08
      0002AB C0 E0            [24] 1640 	push	acc
      0002AD E4               [12] 1641 	clr	a
      0002AE C0 E0            [24] 1642 	push	acc
      0002B0 C0 05            [24] 1643 	push	ar5
      0002B2 C0 03            [24] 1644 	push	ar3
      0002B4 C0 02            [24] 1645 	push	ar2
      0002B6 C0 04            [24] 1646 	push	ar4
      0002B8 C0 06            [24] 1647 	push	ar6
      0002BA C0 07            [24] 1648 	push	ar7
      0002BC 90 00 09         [24] 1649 	mov	dptr,#0x0009
      0002BF D0 02            [24] 1650 	pop	ar2
      0002C1 D0 01            [24] 1651 	pop	ar1
      0002C3 D0 00            [24] 1652 	pop	ar0
      0002C5 12 20 BA         [24] 1653 	lcall	__sdcc_banked_call
      0002C8 E5 81            [12] 1654 	mov	a,sp
      0002CA 24 FB            [12] 1655 	add	a,#0xfb
      0002CC F5 81            [12] 1656 	mov	sp,a
      0002CE D0 04            [24] 1657 	pop	ar4
      0002D0 D0 06            [24] 1658 	pop	ar6
      0002D2 D0 07            [24] 1659 	pop	ar7
                                   1660 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:157: return;
      0002D4 E5 81            [12] 1661 	mov	a,sp
      0002D6 24 F8            [12] 1662 	add	a,#0xF8
      0002D8 F5 81            [12] 1663 	mov	sp,a
      0002DA 22               [24] 1664 	ret
                                   1665 ;------------------------------------------------------------
                                   1666 ;Allocation info for local variables in function 'main'
                                   1667 ;------------------------------------------------------------
                                   1668 ;r                         Allocated to registers r6 
                                   1669 ;------------------------------------------------------------
                                   1670 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:161: main(void) CC_NON_BANKED
                                   1671 ;	-----------------------------------------
                                   1672 ;	 function main
                                   1673 ;	-----------------------------------------
      0002DB                       1674 _main:
                                   1675 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:164: clock_init();
      0002DB 78 5E            [12] 1676 	mov	r0,#_clock_init
      0002DD 79 21            [12] 1677 	mov	r1,#(_clock_init >> 8)
      0002DF 7A 00            [12] 1678 	mov	r2,#(_clock_init >> 16)
      0002E1 12 20 BA         [24] 1679 	lcall	__sdcc_banked_call
                                   1680 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:165: soc_init();
      0002E4 78 A6            [12] 1681 	mov	r0,#_soc_init
      0002E6 79 51            [12] 1682 	mov	r1,#(_soc_init >> 8)
      0002E8 7A 00            [12] 1683 	mov	r2,#(_soc_init >> 16)
      0002EA 12 20 BA         [24] 1684 	lcall	__sdcc_banked_call
                                   1685 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:166: rtimer_init();
      0002ED 78 02            [12] 1686 	mov	r0,#_rtimer_init
      0002EF 79 84            [12] 1687 	mov	r1,#(_rtimer_init >> 8)
      0002F1 7A 04            [12] 1688 	mov	r2,#(_rtimer_init >> 16)
      0002F3 12 20 BA         [24] 1689 	lcall	__sdcc_banked_call
                                   1690 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:171: leds_init();
      0002F6 78 64            [12] 1691 	mov	r0,#_leds_init
      0002F8 79 83            [12] 1692 	mov	r1,#(_leds_init >> 8)
      0002FA 7A 04            [12] 1693 	mov	r2,#(_leds_init >> 16)
      0002FC 12 20 BA         [24] 1694 	lcall	__sdcc_banked_call
                                   1695 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:172: leds_off(LEDS_ALL);
      0002FF 75 82 07         [24] 1696 	mov	dpl,#0x07
      000302 78 D4            [12] 1697 	mov	r0,#_leds_off
      000304 79 83            [12] 1698 	mov	r1,#(_leds_off >> 8)
      000306 7A 04            [12] 1699 	mov	r2,#(_leds_off >> 16)
      000308 12 20 BA         [24] 1700 	lcall	__sdcc_banked_call
                                   1701 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:173: fade(LEDS_GREEN);
      00030B 90 00 01         [24] 1702 	mov	dptr,#0x0001
      00030E 12 00 71         [24] 1703 	lcall	_fade
                                   1704 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:176: process_init();
      000311 78 8F            [12] 1705 	mov	r0,#_process_init
      000313 79 90            [12] 1706 	mov	r1,#(_process_init >> 8)
      000315 7A 03            [12] 1707 	mov	r2,#(_process_init >> 16)
      000317 12 20 BA         [24] 1708 	lcall	__sdcc_banked_call
                                   1709 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:182: io_arch_init();
      00031A 78 77            [12] 1710 	mov	r0,#_uart0_init
      00031C 79 9B            [12] 1711 	mov	r1,#(_uart0_init >> 8)
      00031E 7A 04            [12] 1712 	mov	r2,#(_uart0_init >> 16)
      000320 12 20 BA         [24] 1713 	lcall	__sdcc_banked_call
                                   1714 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:187: io_arch_set_input(serial_line_input_byte);
      000323 90 86 56         [24] 1715 	mov	dptr,#_serial_line_input_byte
      000326 75 F0 04         [24] 1716 	mov	b,#(_serial_line_input_byte >> 16)
      000329 78 E8            [12] 1717 	mov	r0,#_uart0_set_input
      00032B 79 09            [12] 1718 	mov	r1,#(_uart0_set_input >> 8)
      00032D 7A 00            [12] 1719 	mov	r2,#(_uart0_set_input >> 16)
      00032F 12 20 BA         [24] 1720 	lcall	__sdcc_banked_call
                                   1721 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:188: serial_line_init();
      000332 78 87            [12] 1722 	mov	r0,#_serial_line_init
      000334 79 88            [12] 1723 	mov	r1,#(_serial_line_init >> 8)
      000336 7A 04            [12] 1724 	mov	r2,#(_serial_line_init >> 16)
      000338 12 20 BA         [24] 1725 	lcall	__sdcc_banked_call
                                   1726 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:190: fade(LEDS_RED);
      00033B 90 00 02         [24] 1727 	mov	dptr,#0x0002
      00033E 12 00 71         [24] 1728 	lcall	_fade
                                   1729 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:193: putstring(CONTIKI_VERSION_STRING "\n");
      000341 90 7C 94         [24] 1730 	mov	dptr,#___str_0
      000344 75 F0 80         [24] 1731 	mov	b,#0x80
      000347 78 C7            [12] 1732 	mov	r0,#_putstring
      000349 79 8D            [12] 1733 	mov	r1,#(_putstring >> 8)
      00034B 7A 04            [12] 1734 	mov	r2,#(_putstring >> 16)
      00034D 12 20 BA         [24] 1735 	lcall	__sdcc_banked_call
                                   1736 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:194: putstring(MODEL_STRING);
      000350 90 7C AF         [24] 1737 	mov	dptr,#___str_1
      000353 75 F0 80         [24] 1738 	mov	b,#0x80
      000356 78 C7            [12] 1739 	mov	r0,#_putstring
      000358 79 8D            [12] 1740 	mov	r1,#(_putstring >> 8)
      00035A 7A 04            [12] 1741 	mov	r2,#(_putstring >> 16)
      00035C 12 20 BA         [24] 1742 	lcall	__sdcc_banked_call
                                   1743 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:195: switch(CHIPID) {
      00035F 90 62 4A         [24] 1744 	mov	dptr,#_CHIPID
      000362 E0               [24] 1745 	movx	a,@dptr
      000363 FF               [12] 1746 	mov	r7,a
      000364 BF 8D 02         [24] 1747 	cjne	r7,#0x8D,00158$
      000367 80 42            [24] 1748 	sjmp	00104$
      000369                       1749 00158$:
      000369 BF 95 02         [24] 1750 	cjne	r7,#0x95,00159$
      00036C 80 2C            [24] 1751 	sjmp	00103$
      00036E                       1752 00159$:
      00036E BF A5 02         [24] 1753 	cjne	r7,#0xA5,00160$
      000371 80 05            [24] 1754 	sjmp	00101$
      000373                       1755 00160$:
                                   1756 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:196: case 0xA5:
      000373 BF B5 44         [24] 1757 	cjne	r7,#0xB5,00105$
      000376 80 11            [24] 1758 	sjmp	00102$
      000378                       1759 00101$:
                                   1760 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:197: putstring("cc2530");
      000378 90 7C C0         [24] 1761 	mov	dptr,#___str_2
      00037B 75 F0 80         [24] 1762 	mov	b,#0x80
      00037E 78 C7            [12] 1763 	mov	r0,#_putstring
      000380 79 8D            [12] 1764 	mov	r1,#(_putstring >> 8)
      000382 7A 04            [12] 1765 	mov	r2,#(_putstring >> 16)
      000384 12 20 BA         [24] 1766 	lcall	__sdcc_banked_call
                                   1767 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:198: break;
                                   1768 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:199: case 0xB5:
      000387 80 31            [24] 1769 	sjmp	00105$
      000389                       1770 00102$:
                                   1771 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:200: putstring("cc2531");
      000389 90 7C C7         [24] 1772 	mov	dptr,#___str_3
      00038C 75 F0 80         [24] 1773 	mov	b,#0x80
      00038F 78 C7            [12] 1774 	mov	r0,#_putstring
      000391 79 8D            [12] 1775 	mov	r1,#(_putstring >> 8)
      000393 7A 04            [12] 1776 	mov	r2,#(_putstring >> 16)
      000395 12 20 BA         [24] 1777 	lcall	__sdcc_banked_call
                                   1778 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:201: break;
                                   1779 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:202: case 0x95:
      000398 80 20            [24] 1780 	sjmp	00105$
      00039A                       1781 00103$:
                                   1782 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:203: putstring("cc2533");
      00039A 90 7C CE         [24] 1783 	mov	dptr,#___str_4
      00039D 75 F0 80         [24] 1784 	mov	b,#0x80
      0003A0 78 C7            [12] 1785 	mov	r0,#_putstring
      0003A2 79 8D            [12] 1786 	mov	r1,#(_putstring >> 8)
      0003A4 7A 04            [12] 1787 	mov	r2,#(_putstring >> 16)
      0003A6 12 20 BA         [24] 1788 	lcall	__sdcc_banked_call
                                   1789 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:204: break;
                                   1790 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:205: case 0x8D:
      0003A9 80 0F            [24] 1791 	sjmp	00105$
      0003AB                       1792 00104$:
                                   1793 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:206: putstring("cc2540");
      0003AB 90 7C D5         [24] 1794 	mov	dptr,#___str_5
      0003AE 75 F0 80         [24] 1795 	mov	b,#0x80
      0003B1 78 C7            [12] 1796 	mov	r0,#_putstring
      0003B3 79 8D            [12] 1797 	mov	r1,#(_putstring >> 8)
      0003B5 7A 04            [12] 1798 	mov	r2,#(_putstring >> 16)
      0003B7 12 20 BA         [24] 1799 	lcall	__sdcc_banked_call
                                   1800 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:208: }
      0003BA                       1801 00105$:
                                   1802 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:210: putstring("-" CC2530_FLAVOR_STRING ", ");
      0003BA 90 7C DC         [24] 1803 	mov	dptr,#___str_6
      0003BD 75 F0 80         [24] 1804 	mov	b,#0x80
      0003C0 78 C7            [12] 1805 	mov	r0,#_putstring
      0003C2 79 8D            [12] 1806 	mov	r1,#(_putstring >> 8)
      0003C4 7A 04            [12] 1807 	mov	r2,#(_putstring >> 16)
      0003C6 12 20 BA         [24] 1808 	lcall	__sdcc_banked_call
                                   1809 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:211: puthex(CHIPINFO1 + 1);
      0003C9 90 62 77         [24] 1810 	mov	dptr,#_CHIPINFO1
      0003CC E0               [24] 1811 	movx	a,@dptr
      0003CD FF               [12] 1812 	mov	r7,a
      0003CE 0F               [12] 1813 	inc	r7
      0003CF 8F 82            [24] 1814 	mov	dpl,r7
      0003D1 78 FA            [12] 1815 	mov	r0,#_puthex
      0003D3 79 8D            [12] 1816 	mov	r1,#(_puthex >> 8)
      0003D5 7A 04            [12] 1817 	mov	r2,#(_puthex >> 16)
      0003D7 12 20 BA         [24] 1818 	lcall	__sdcc_banked_call
                                   1819 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:212: putstring("KB SRAM\n");
      0003DA 90 7C E4         [24] 1820 	mov	dptr,#___str_7
      0003DD 75 F0 80         [24] 1821 	mov	b,#0x80
      0003E0 78 C7            [12] 1822 	mov	r0,#_putstring
      0003E2 79 8D            [12] 1823 	mov	r1,#(_putstring >> 8)
      0003E4 7A 04            [12] 1824 	mov	r2,#(_putstring >> 16)
      0003E6 12 20 BA         [24] 1825 	lcall	__sdcc_banked_call
                                   1826 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:244: watchdog_init();
      0003E9 78 BB            [12] 1827 	mov	r0,#_watchdog_init
      0003EB 79 94            [12] 1828 	mov	r1,#(_watchdog_init >> 8)
      0003ED 7A 03            [12] 1829 	mov	r2,#(_watchdog_init >> 16)
      0003EF 12 20 BA         [24] 1830 	lcall	__sdcc_banked_call
                                   1831 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:247: random_init(0);
      0003F2 90 00 00         [24] 1832 	mov	dptr,#0x0000
      0003F5 78 C0            [12] 1833 	mov	r0,#_random_init
      0003F7 79 9E            [12] 1834 	mov	r1,#(_random_init >> 8)
      0003F9 7A 04            [12] 1835 	mov	r2,#(_random_init >> 16)
      0003FB 12 20 BA         [24] 1836 	lcall	__sdcc_banked_call
                                   1837 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:250: process_start(&etimer_process, NULL);
      0003FE E4               [12] 1838 	clr	a
      0003FF C0 E0            [24] 1839 	push	acc
      000401 C0 E0            [24] 1840 	push	acc
      000403 C0 E0            [24] 1841 	push	acc
      000405 90 12 1D         [24] 1842 	mov	dptr,#_etimer_process
      000408 75 F0 00         [24] 1843 	mov	b,#0x00
      00040B 78 63            [12] 1844 	mov	r0,#_process_start
      00040D 79 8A            [12] 1845 	mov	r1,#(_process_start >> 8)
      00040F 7A 03            [12] 1846 	mov	r2,#(_process_start >> 16)
      000411 12 20 BA         [24] 1847 	lcall	__sdcc_banked_call
      000414 15 81            [12] 1848 	dec	sp
      000416 15 81            [12] 1849 	dec	sp
      000418 15 81            [12] 1850 	dec	sp
                                   1851 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:251: ctimer_init();
      00041A 78 36            [12] 1852 	mov	r0,#_ctimer_init
      00041C 79 D5            [12] 1853 	mov	r1,#(_ctimer_init >> 8)
      00041E 7A 03            [12] 1854 	mov	r2,#(_ctimer_init >> 16)
      000420 12 20 BA         [24] 1855 	lcall	__sdcc_banked_call
                                   1856 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:254: netstack_init();
      000423 78 9E            [12] 1857 	mov	r0,#_netstack_init
      000425 79 8E            [12] 1858 	mov	r1,#(_netstack_init >> 8)
      000427 7A 04            [12] 1859 	mov	r2,#(_netstack_init >> 16)
      000429 12 20 BA         [24] 1860 	lcall	__sdcc_banked_call
                                   1861 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:255: set_rf_params();
      00042C 12 01 76         [24] 1862 	lcall	_set_rf_params
                                   1863 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:258: process_start(&sensors_process, NULL);
      00042F E4               [12] 1864 	clr	a
      000430 C0 E0            [24] 1865 	push	acc
      000432 C0 E0            [24] 1866 	push	acc
      000434 C0 E0            [24] 1867 	push	acc
      000436 90 12 71         [24] 1868 	mov	dptr,#_sensors_process
      000439 75 F0 00         [24] 1869 	mov	b,#0x00
      00043C 78 63            [12] 1870 	mov	r0,#_process_start
      00043E 79 8A            [12] 1871 	mov	r1,#(_process_start >> 8)
      000440 7A 03            [12] 1872 	mov	r2,#(_process_start >> 16)
      000442 12 20 BA         [24] 1873 	lcall	__sdcc_banked_call
      000445 15 81            [12] 1874 	dec	sp
      000447 15 81            [12] 1875 	dec	sp
      000449 15 81            [12] 1876 	dec	sp
                                   1877 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:259: BUTTON_SENSOR_ACTIVATE();
      00044B 90 7D 09         [24] 1878 	mov	dptr,#(_button_1_sensor + 0x0006)
      00044E E4               [12] 1879 	clr	a
      00044F 93               [24] 1880 	movc	a,@a+dptr
      000450 FD               [12] 1881 	mov	r5,a
      000451 A3               [24] 1882 	inc	dptr
      000452 E4               [12] 1883 	clr	a
      000453 93               [24] 1884 	movc	a,@a+dptr
      000454 FE               [12] 1885 	mov	r6,a
      000455 A3               [24] 1886 	inc	dptr
      000456 E4               [12] 1887 	clr	a
      000457 93               [24] 1888 	movc	a,@a+dptr
      000458 FF               [12] 1889 	mov	r7,a
      000459 C0 07            [24] 1890 	push	ar7
      00045B C0 06            [24] 1891 	push	ar6
      00045D C0 05            [24] 1892 	push	ar5
      00045F 74 01            [12] 1893 	mov	a,#0x01
      000461 C0 E0            [24] 1894 	push	acc
      000463 E4               [12] 1895 	clr	a
      000464 C0 E0            [24] 1896 	push	acc
      000466 C0 05            [24] 1897 	push	ar5
      000468 C0 06            [24] 1898 	push	ar6
      00046A C0 07            [24] 1899 	push	ar7
      00046C 90 00 81         [24] 1900 	mov	dptr,#0x0081
      00046F D0 02            [24] 1901 	pop	ar2
      000471 D0 01            [24] 1902 	pop	ar1
      000473 D0 00            [24] 1903 	pop	ar0
      000475 12 20 BA         [24] 1904 	lcall	__sdcc_banked_call
      000478 15 81            [12] 1905 	dec	sp
      00047A 15 81            [12] 1906 	dec	sp
      00047C D0 05            [24] 1907 	pop	ar5
      00047E D0 06            [24] 1908 	pop	ar6
      000480 D0 07            [24] 1909 	pop	ar7
                                   1910 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:260: ADC_SENSOR_ACTIVATE();
      000482 90 7C F9         [24] 1911 	mov	dptr,#(_adc_sensor + 0x0006)
      000485 E4               [12] 1912 	clr	a
      000486 93               [24] 1913 	movc	a,@a+dptr
      000487 FD               [12] 1914 	mov	r5,a
      000488 A3               [24] 1915 	inc	dptr
      000489 E4               [12] 1916 	clr	a
      00048A 93               [24] 1917 	movc	a,@a+dptr
      00048B FE               [12] 1918 	mov	r6,a
      00048C A3               [24] 1919 	inc	dptr
      00048D E4               [12] 1920 	clr	a
      00048E 93               [24] 1921 	movc	a,@a+dptr
      00048F FF               [12] 1922 	mov	r7,a
      000490 C0 07            [24] 1923 	push	ar7
      000492 C0 06            [24] 1924 	push	ar6
      000494 C0 05            [24] 1925 	push	ar5
      000496 74 01            [12] 1926 	mov	a,#0x01
      000498 C0 E0            [24] 1927 	push	acc
      00049A E4               [12] 1928 	clr	a
      00049B C0 E0            [24] 1929 	push	acc
      00049D C0 05            [24] 1930 	push	ar5
      00049F C0 06            [24] 1931 	push	ar6
      0004A1 C0 07            [24] 1932 	push	ar7
      0004A3 90 00 81         [24] 1933 	mov	dptr,#0x0081
      0004A6 D0 02            [24] 1934 	pop	ar2
      0004A8 D0 01            [24] 1935 	pop	ar1
      0004AA D0 00            [24] 1936 	pop	ar0
      0004AC 12 20 BA         [24] 1937 	lcall	__sdcc_banked_call
      0004AF 15 81            [12] 1938 	dec	sp
      0004B1 15 81            [12] 1939 	dec	sp
      0004B3 D0 05            [24] 1940 	pop	ar5
      0004B5 D0 06            [24] 1941 	pop	ar6
      0004B7 D0 07            [24] 1942 	pop	ar7
                                   1943 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:264: memcpy(&uip_lladdr.addr, &linkaddr_node_addr, sizeof(uip_lladdr.addr));
      0004B9 74 08            [12] 1944 	mov	a,#0x08
      0004BB C0 E0            [24] 1945 	push	acc
      0004BD E4               [12] 1946 	clr	a
      0004BE C0 E0            [24] 1947 	push	acc
      0004C0 74 89            [12] 1948 	mov	a,#_linkaddr_node_addr
      0004C2 C0 E0            [24] 1949 	push	acc
      0004C4 74 03            [12] 1950 	mov	a,#(_linkaddr_node_addr >> 8)
      0004C6 C0 E0            [24] 1951 	push	acc
      0004C8 E4               [12] 1952 	clr	a
      0004C9 C0 E0            [24] 1953 	push	acc
      0004CB 90 07 16         [24] 1954 	mov	dptr,#_uip_lladdr
      0004CE 75 F0 00         [24] 1955 	mov	b,#0x00
      0004D1 78 0F            [12] 1956 	mov	r0,#_memcpy
      0004D3 79 58            [12] 1957 	mov	r1,#(_memcpy >> 8)
      0004D5 7A 00            [12] 1958 	mov	r2,#(_memcpy >> 16)
      0004D7 12 20 BA         [24] 1959 	lcall	__sdcc_banked_call
      0004DA E5 81            [12] 1960 	mov	a,sp
      0004DC 24 FB            [12] 1961 	add	a,#0xfb
      0004DE F5 81            [12] 1962 	mov	sp,a
                                   1963 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:265: queuebuf_init();
      0004E0 78 7F            [12] 1964 	mov	r0,#_queuebuf_init
      0004E2 79 96            [12] 1965 	mov	r1,#(_queuebuf_init >> 8)
      0004E4 7A 04            [12] 1966 	mov	r2,#(_queuebuf_init >> 16)
      0004E6 12 20 BA         [24] 1967 	lcall	__sdcc_banked_call
                                   1968 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:266: process_start(&tcpip_process, NULL);
      0004E9 E4               [12] 1969 	clr	a
      0004EA C0 E0            [24] 1970 	push	acc
      0004EC C0 E0            [24] 1971 	push	acc
      0004EE C0 E0            [24] 1972 	push	acc
      0004F0 90 12 00         [24] 1973 	mov	dptr,#_tcpip_process
      0004F3 75 F0 00         [24] 1974 	mov	b,#0x00
      0004F6 78 63            [12] 1975 	mov	r0,#_process_start
      0004F8 79 8A            [12] 1976 	mov	r1,#(_process_start >> 8)
      0004FA 7A 03            [12] 1977 	mov	r2,#(_process_start >> 16)
      0004FC 12 20 BA         [24] 1978 	lcall	__sdcc_banked_call
      0004FF 15 81            [12] 1979 	dec	sp
      000501 15 81            [12] 1980 	dec	sp
      000503 15 81            [12] 1981 	dec	sp
                                   1982 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:270: process_start(&viztool_process, NULL);
      000505 E4               [12] 1983 	clr	a
      000506 C0 E0            [24] 1984 	push	acc
      000508 C0 E0            [24] 1985 	push	acc
      00050A C0 E0            [24] 1986 	push	acc
      00050C 90 12 B2         [24] 1987 	mov	dptr,#_viztool_process
      00050F 75 F0 00         [24] 1988 	mov	b,#0x00
      000512 78 63            [12] 1989 	mov	r0,#_process_start
      000514 79 8A            [12] 1990 	mov	r1,#(_process_start >> 8)
      000516 7A 03            [12] 1991 	mov	r2,#(_process_start >> 16)
      000518 12 20 BA         [24] 1992 	lcall	__sdcc_banked_call
      00051B 15 81            [12] 1993 	dec	sp
      00051D 15 81            [12] 1994 	dec	sp
      00051F 15 81            [12] 1995 	dec	sp
                                   1996 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:273: energest_init();
      000521 78 D2            [12] 1997 	mov	r0,#_energest_init
      000523 79 20            [12] 1998 	mov	r1,#(_energest_init >> 8)
      000525 7A 00            [12] 1999 	mov	r2,#(_energest_init >> 16)
      000527 12 20 BA         [24] 2000 	lcall	__sdcc_banked_call
                                   2001 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:276: autostart_start(autostart_processes);
      00052A 90 7C ED         [24] 2002 	mov	dptr,#_autostart_processes
      00052D 75 F0 80         [24] 2003 	mov	b,#0x80
      000530 78 3E            [12] 2004 	mov	r0,#_autostart_start
      000532 79 C6            [12] 2005 	mov	r1,#(_autostart_start >> 8)
      000534 7A 03            [12] 2006 	mov	r2,#(_autostart_start >> 16)
      000536 12 20 BA         [24] 2007 	lcall	__sdcc_banked_call
                                   2008 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:278: watchdog_start();
      000539 78 C1            [12] 2009 	mov	r0,#_watchdog_start
      00053B 79 94            [12] 2010 	mov	r1,#(_watchdog_start >> 8)
      00053D 7A 03            [12] 2011 	mov	r2,#(_watchdog_start >> 16)
      00053F 12 20 BA         [24] 2012 	lcall	__sdcc_banked_call
                                   2013 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:280: fade(LEDS_YELLOW);
      000542 90 00 04         [24] 2014 	mov	dptr,#0x0004
      000545 12 00 71         [24] 2015 	lcall	_fade
                                   2016 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:284: do {
      000548                       2017 00113$:
                                   2018 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:286: watchdog_periodic();
      000548 78 C7            [12] 2019 	mov	r0,#_watchdog_periodic
      00054A 79 94            [12] 2020 	mov	r1,#(_watchdog_periodic >> 8)
      00054C 7A 03            [12] 2021 	mov	r2,#(_watchdog_periodic >> 16)
      00054E 12 20 BA         [24] 2022 	lcall	__sdcc_banked_call
                                   2023 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:289: if(sleep_flag) {
      000551 90 10 05         [24] 2024 	mov	dptr,#_sleep_flag
      000554 E0               [24] 2025 	movx	a,@dptr
      000555 E0               [24] 2026 	movx	a,@dptr
      000556 60 57            [24] 2027 	jz	00112$
                                   2028 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:290: if(etimer_pending() &&
      000558 78 08            [12] 2029 	mov	r0,#_etimer_pending
      00055A 79 9E            [12] 2030 	mov	r1,#(_etimer_pending >> 8)
      00055C 7A 03            [12] 2031 	mov	r2,#(_etimer_pending >> 16)
      00055E 12 20 BA         [24] 2032 	lcall	__sdcc_banked_call
      000561 E5 82            [12] 2033 	mov	a,dpl
      000563 85 83 F0         [24] 2034 	mov	b,dph
      000566 45 F0            [12] 2035 	orl	a,b
      000568 60 40            [24] 2036 	jz	00109$
                                   2037 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:291: (etimer_next_expiration_time() - clock_time() - 1) > MAX_TICKS) {
      00056A 78 41            [12] 2038 	mov	r0,#_etimer_next_expiration_time
      00056C 79 9E            [12] 2039 	mov	r1,#(_etimer_next_expiration_time >> 8)
      00056E 7A 03            [12] 2040 	mov	r2,#(_etimer_next_expiration_time >> 16)
      000570 12 20 BA         [24] 2041 	lcall	__sdcc_banked_call
      000573 AE 82            [24] 2042 	mov	r6,dpl
      000575 AF 83            [24] 2043 	mov	r7,dph
      000577 C0 07            [24] 2044 	push	ar7
      000579 C0 06            [24] 2045 	push	ar6
      00057B 78 43            [12] 2046 	mov	r0,#_clock_time
      00057D 79 21            [12] 2047 	mov	r1,#(_clock_time >> 8)
      00057F 7A 00            [12] 2048 	mov	r2,#(_clock_time >> 16)
      000581 12 20 BA         [24] 2049 	lcall	__sdcc_banked_call
      000584 AC 82            [24] 2050 	mov	r4,dpl
      000586 AD 83            [24] 2051 	mov	r5,dph
      000588 D0 06            [24] 2052 	pop	ar6
      00058A D0 07            [24] 2053 	pop	ar7
      00058C EE               [12] 2054 	mov	a,r6
      00058D C3               [12] 2055 	clr	c
      00058E 9C               [12] 2056 	subb	a,r4
      00058F FE               [12] 2057 	mov	r6,a
      000590 EF               [12] 2058 	mov	a,r7
      000591 9D               [12] 2059 	subb	a,r5
      000592 FF               [12] 2060 	mov	r7,a
      000593 1E               [12] 2061 	dec	r6
      000594 BE FF 01         [24] 2062 	cjne	r6,#0xFF,00164$
      000597 1F               [12] 2063 	dec	r7
      000598                       2064 00164$:
      000598 C3               [12] 2065 	clr	c
      000599 74 FF            [12] 2066 	mov	a,#0xFF
      00059B 9E               [12] 2067 	subb	a,r6
      00059C 74 7F            [12] 2068 	mov	a,#0x7F
      00059E 9F               [12] 2069 	subb	a,r7
      00059F 50 09            [24] 2070 	jnc	00109$
                                   2071 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:292: etimer_request_poll();
      0005A1 78 D7            [12] 2072 	mov	r0,#_etimer_request_poll
      0005A3 79 9A            [12] 2073 	mov	r1,#(_etimer_request_poll >> 8)
      0005A5 7A 03            [12] 2074 	mov	r2,#(_etimer_request_poll >> 16)
      0005A7 12 20 BA         [24] 2075 	lcall	__sdcc_banked_call
      0005AA                       2076 00109$:
                                   2077 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:294: sleep_flag = 0;
      0005AA 90 10 05         [24] 2078 	mov	dptr,#_sleep_flag
      0005AD E4               [12] 2079 	clr	a
      0005AE F0               [24] 2080 	movx	@dptr,a
      0005AF                       2081 00112$:
                                   2082 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:297: r = process_run();
      0005AF 78 24            [12] 2083 	mov	r0,#_process_run
      0005B1 79 93            [12] 2084 	mov	r1,#(_process_run >> 8)
      0005B3 7A 03            [12] 2085 	mov	r2,#(_process_run >> 16)
      0005B5 12 20 BA         [24] 2086 	lcall	__sdcc_banked_call
      0005B8 AE 82            [24] 2087 	mov	r6,dpl
      0005BA AF 83            [24] 2088 	mov	r7,dph
                                   2089 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:298: } while(r > 0);
      0005BC EE               [12] 2090 	mov	a,r6
      0005BD 70 89            [24] 2091 	jnz	00113$
                                   2092 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:299: len = NETSTACK_RADIO.pending_packet();
      0005BF 90 7D FC         [24] 2093 	mov	dptr,#(_cc2530_rf_driver + 0x0015)
      0005C2 E4               [12] 2094 	clr	a
      0005C3 93               [24] 2095 	movc	a,@a+dptr
      0005C4 FD               [12] 2096 	mov	r5,a
      0005C5 A3               [24] 2097 	inc	dptr
      0005C6 E4               [12] 2098 	clr	a
      0005C7 93               [24] 2099 	movc	a,@a+dptr
      0005C8 FE               [12] 2100 	mov	r6,a
      0005C9 A3               [24] 2101 	inc	dptr
      0005CA E4               [12] 2102 	clr	a
      0005CB 93               [24] 2103 	movc	a,@a+dptr
      0005CC FF               [12] 2104 	mov	r7,a
      0005CD C0 07            [24] 2105 	push	ar7
      0005CF C0 06            [24] 2106 	push	ar6
      0005D1 C0 05            [24] 2107 	push	ar5
      0005D3 C0 05            [24] 2108 	push	ar5
      0005D5 C0 06            [24] 2109 	push	ar6
      0005D7 C0 07            [24] 2110 	push	ar7
      0005D9 D0 02            [24] 2111 	pop	ar2
      0005DB D0 01            [24] 2112 	pop	ar1
      0005DD D0 00            [24] 2113 	pop	ar0
      0005DF 12 20 BA         [24] 2114 	lcall	__sdcc_banked_call
      0005E2 85 82 08         [24] 2115 	mov	_len,dpl
      0005E5 85 83 09         [24] 2116 	mov	(_len + 1),dph
      0005E8 D0 05            [24] 2117 	pop	ar5
      0005EA D0 06            [24] 2118 	pop	ar6
      0005EC D0 07            [24] 2119 	pop	ar7
                                   2120 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:300: if(len) {
      0005EE E5 08            [12] 2121 	mov	a,_len
      0005F0 45 09            [12] 2122 	orl	a,(_len + 1)
      0005F2 70 03            [24] 2123 	jnz	00167$
      0005F4 02 05 48         [24] 2124 	ljmp	00113$
      0005F7                       2125 00167$:
                                   2126 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:301: packetbuf_clear();
      0005F7 78 C0            [12] 2127 	mov	r0,#_packetbuf_clear
      0005F9 79 B2            [12] 2128 	mov	r1,#(_packetbuf_clear >> 8)
      0005FB 7A 03            [12] 2129 	mov	r2,#(_packetbuf_clear >> 16)
      0005FD 12 20 BA         [24] 2130 	lcall	__sdcc_banked_call
                                   2131 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:302: len = NETSTACK_RADIO.read(packetbuf_dataptr(), PACKETBUF_SIZE);
      000600 90 7D F3         [24] 2132 	mov	dptr,#(_cc2530_rf_driver + 0x000c)
      000603 E4               [12] 2133 	clr	a
      000604 93               [24] 2134 	movc	a,@a+dptr
      000605 FD               [12] 2135 	mov	r5,a
      000606 A3               [24] 2136 	inc	dptr
      000607 E4               [12] 2137 	clr	a
      000608 93               [24] 2138 	movc	a,@a+dptr
      000609 FE               [12] 2139 	mov	r6,a
      00060A A3               [24] 2140 	inc	dptr
      00060B E4               [12] 2141 	clr	a
      00060C 93               [24] 2142 	movc	a,@a+dptr
      00060D FF               [12] 2143 	mov	r7,a
      00060E C0 07            [24] 2144 	push	ar7
      000610 C0 06            [24] 2145 	push	ar6
      000612 C0 05            [24] 2146 	push	ar5
      000614 78 95            [12] 2147 	mov	r0,#_packetbuf_dataptr
      000616 79 B6            [12] 2148 	mov	r1,#(_packetbuf_dataptr >> 8)
      000618 7A 03            [12] 2149 	mov	r2,#(_packetbuf_dataptr >> 16)
      00061A 12 20 BA         [24] 2150 	lcall	__sdcc_banked_call
      00061D AA 82            [24] 2151 	mov	r2,dpl
      00061F AB 83            [24] 2152 	mov	r3,dph
      000621 AC F0            [24] 2153 	mov	r4,b
      000623 D0 05            [24] 2154 	pop	ar5
      000625 D0 06            [24] 2155 	pop	ar6
      000627 D0 07            [24] 2156 	pop	ar7
      000629 C0 07            [24] 2157 	push	ar7
      00062B C0 06            [24] 2158 	push	ar6
      00062D C0 05            [24] 2159 	push	ar5
      00062F 74 80            [12] 2160 	mov	a,#0x80
      000631 C0 E0            [24] 2161 	push	acc
      000633 E4               [12] 2162 	clr	a
      000634 C0 E0            [24] 2163 	push	acc
      000636 C0 05            [24] 2164 	push	ar5
      000638 C0 06            [24] 2165 	push	ar6
      00063A C0 07            [24] 2166 	push	ar7
      00063C 8A 82            [24] 2167 	mov	dpl,r2
      00063E 8B 83            [24] 2168 	mov	dph,r3
      000640 8C F0            [24] 2169 	mov	b,r4
      000642 D0 02            [24] 2170 	pop	ar2
      000644 D0 01            [24] 2171 	pop	ar1
      000646 D0 00            [24] 2172 	pop	ar0
      000648 12 20 BA         [24] 2173 	lcall	__sdcc_banked_call
      00064B 85 82 08         [24] 2174 	mov	_len,dpl
      00064E 85 83 09         [24] 2175 	mov	(_len + 1),dph
      000651 15 81            [12] 2176 	dec	sp
      000653 15 81            [12] 2177 	dec	sp
      000655 D0 05            [24] 2178 	pop	ar5
      000657 D0 06            [24] 2179 	pop	ar6
      000659 D0 07            [24] 2180 	pop	ar7
                                   2181 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:303: if(len > 0) {
      00065B E5 08            [12] 2182 	mov	a,_len
      00065D 45 09            [12] 2183 	orl	a,(_len + 1)
      00065F 70 03            [24] 2184 	jnz	00168$
      000661 02 05 48         [24] 2185 	ljmp	00113$
      000664                       2186 00168$:
                                   2187 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:304: packetbuf_set_datalen(len);
      000664 85 08 82         [24] 2188 	mov	dpl,_len
      000667 85 09 83         [24] 2189 	mov	dph,(_len + 1)
      00066A 78 87            [12] 2190 	mov	r0,#_packetbuf_set_datalen
      00066C 79 B6            [12] 2191 	mov	r1,#(_packetbuf_set_datalen >> 8)
      00066E 7A 03            [12] 2192 	mov	r2,#(_packetbuf_set_datalen >> 16)
      000670 12 20 BA         [24] 2193 	lcall	__sdcc_banked_call
                                   2194 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:305: NETSTACK_RDC.input();
      000673 90 7E 3C         [24] 2195 	mov	dptr,#(_nullrdc_driver + 0x000c)
      000676 E4               [12] 2196 	clr	a
      000677 93               [24] 2197 	movc	a,@a+dptr
      000678 FD               [12] 2198 	mov	r5,a
      000679 A3               [24] 2199 	inc	dptr
      00067A E4               [12] 2200 	clr	a
      00067B 93               [24] 2201 	movc	a,@a+dptr
      00067C FE               [12] 2202 	mov	r6,a
      00067D A3               [24] 2203 	inc	dptr
      00067E E4               [12] 2204 	clr	a
      00067F 93               [24] 2205 	movc	a,@a+dptr
      000680 FF               [12] 2206 	mov	r7,a
      000681 C0 07            [24] 2207 	push	ar7
      000683 C0 06            [24] 2208 	push	ar6
      000685 C0 05            [24] 2209 	push	ar5
      000687 C0 05            [24] 2210 	push	ar5
      000689 C0 06            [24] 2211 	push	ar6
      00068B C0 07            [24] 2212 	push	ar7
      00068D D0 02            [24] 2213 	pop	ar2
      00068F D0 01            [24] 2214 	pop	ar1
      000691 D0 00            [24] 2215 	pop	ar0
      000693 12 20 BA         [24] 2216 	lcall	__sdcc_banked_call
      000696 D0 05            [24] 2217 	pop	ar5
      000698 D0 06            [24] 2218 	pop	ar6
      00069A D0 07            [24] 2219 	pop	ar7
      00069C 02 05 48         [24] 2220 	ljmp	00113$
                                   2221 	.area CSEG    (CODE)
                                   2222 	.area CONST   (CODE)
      007C94                       2223 ___str_0:
      007C94 43 6F 6E 74 69 6B 69  2224 	.ascii "Contiki-3.x-1610-g566b251"
             2D 33 2E 78 2D 31 36
             31 30 2D 67 35 36 36
             62 32 35 31
      007CAD 0A                    2225 	.db 0x0A
      007CAE 00                    2226 	.db 0x00
      007CAF                       2227 ___str_1:
      007CAF 54 49 20 53 6D 61 72  2228 	.ascii "TI SmartRF05 EB"
             74 52 46 30 35 20 45
             42
      007CBE 0A                    2229 	.db 0x0A
      007CBF 00                    2230 	.db 0x00
      007CC0                       2231 ___str_2:
      007CC0 63 63 32 35 33 30     2232 	.ascii "cc2530"
      007CC6 00                    2233 	.db 0x00
      007CC7                       2234 ___str_3:
      007CC7 63 63 32 35 33 31     2235 	.ascii "cc2531"
      007CCD 00                    2236 	.db 0x00
      007CCE                       2237 ___str_4:
      007CCE 63 63 32 35 33 33     2238 	.ascii "cc2533"
      007CD4 00                    2239 	.db 0x00
      007CD5                       2240 ___str_5:
      007CD5 63 63 32 35 34 30     2241 	.ascii "cc2540"
      007CDB 00                    2242 	.db 0x00
      007CDC                       2243 ___str_6:
      007CDC 2D 46 32 35 36 2C 20  2244 	.ascii "-F256, "
      007CE3 00                    2245 	.db 0x00
      007CE4                       2246 ___str_7:
      007CE4 4B 42 20 53 52 41 4D  2247 	.ascii "KB SRAM"
      007CEB 0A                    2248 	.db 0x0A
      007CEC 00                    2249 	.db 0x00
                                   2250 	.area XINIT   (CODE)
                                   2251 	.area CABS    (ABS,CODE)
