                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.5 #9380 (Linux)
                                      4 ; This file was generated Tue Nov 17 16:52:48 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module contiki_main
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _random_init
                                     14 	.globl _puthex
                                     15 	.globl _putstring
                                     16 	.globl _netstack_init
                                     17 	.globl _packetbuf_set_datalen
                                     18 	.globl _packetbuf_dataptr
                                     19 	.globl _packetbuf_clear
                                     20 	.globl _watchdog_periodic
                                     21 	.globl _watchdog_start
                                     22 	.globl _watchdog_init
                                     23 	.globl _uart0_set_input
                                     24 	.globl _uart0_init
                                     25 	.globl _leds_off
                                     26 	.globl _leds_on
                                     27 	.globl _leds_init
                                     28 	.globl _serial_line_init
                                     29 	.globl _serial_line_input_byte
                                     30 	.globl _soc_init
                                     31 	.globl _energest_init
                                     32 	.globl _rtimer_init
                                     33 	.globl _ctimer_init
                                     34 	.globl _etimer_next_expiration_time
                                     35 	.globl _etimer_pending
                                     36 	.globl _etimer_request_poll
                                     37 	.globl _clock_time
                                     38 	.globl _clock_init
                                     39 	.globl _autostart_start
                                     40 	.globl _process_run
                                     41 	.globl _process_init
                                     42 	.globl _process_start
                                     43 	.globl _memcpy
                                     44 	.globl _ACTIVE
                                     45 	.globl _TX_BYTE
                                     46 	.globl _RX_BYTE
                                     47 	.globl _ERR
                                     48 	.globl _FE
                                     49 	.globl _SLAVE
                                     50 	.globl _RE
                                     51 	.globl _MODE
                                     52 	.globl _T3OVFIF
                                     53 	.globl _T3CH0IF
                                     54 	.globl _T3CH1IF
                                     55 	.globl _T4OVFIF
                                     56 	.globl _T4CH0IF
                                     57 	.globl _T4CH1IF
                                     58 	.globl _OVFIM
                                     59 	.globl _B_0
                                     60 	.globl _B_1
                                     61 	.globl _B_2
                                     62 	.globl _B_3
                                     63 	.globl _B_4
                                     64 	.globl _B_5
                                     65 	.globl _B_6
                                     66 	.globl _B_7
                                     67 	.globl _P2IF
                                     68 	.globl _UTX0IF
                                     69 	.globl _UTX1IF
                                     70 	.globl _P1IF
                                     71 	.globl _WDTIF
                                     72 	.globl _ACC_0
                                     73 	.globl _ACC_1
                                     74 	.globl _ACC_2
                                     75 	.globl _ACC_3
                                     76 	.globl _ACC_4
                                     77 	.globl _ACC_5
                                     78 	.globl _ACC_6
                                     79 	.globl _ACC_7
                                     80 	.globl _P
                                     81 	.globl _F1
                                     82 	.globl _OV
                                     83 	.globl _RS0
                                     84 	.globl _RS1
                                     85 	.globl _F0
                                     86 	.globl _AC
                                     87 	.globl _CY
                                     88 	.globl _DMAIF
                                     89 	.globl _T1IF
                                     90 	.globl _T2IF
                                     91 	.globl _T3IF
                                     92 	.globl _T4IF
                                     93 	.globl _P0IF
                                     94 	.globl _STIF
                                     95 	.globl _DMAIE
                                     96 	.globl _T1IE
                                     97 	.globl _T2IE
                                     98 	.globl _T3IE
                                     99 	.globl _T4IE
                                    100 	.globl _P0IE
                                    101 	.globl _RFERRIE
                                    102 	.globl _ADCIE
                                    103 	.globl _URX0IE
                                    104 	.globl _URX1IE
                                    105 	.globl _ENCIE
                                    106 	.globl _STIE
                                    107 	.globl _EA
                                    108 	.globl _P2_0
                                    109 	.globl _P2_1
                                    110 	.globl _P2_2
                                    111 	.globl _P2_3
                                    112 	.globl _P2_4
                                    113 	.globl _P2_5
                                    114 	.globl _P2_6
                                    115 	.globl _P2_7
                                    116 	.globl _ENCIF_0
                                    117 	.globl _ENCIF_1
                                    118 	.globl _P1_0
                                    119 	.globl _P1_1
                                    120 	.globl _P1_2
                                    121 	.globl _P1_3
                                    122 	.globl _P1_4
                                    123 	.globl _P1_5
                                    124 	.globl _P1_6
                                    125 	.globl _P1_7
                                    126 	.globl _IT0
                                    127 	.globl _RFERRIF
                                    128 	.globl _IT1
                                    129 	.globl _URX0IF
                                    130 	.globl _ADCIF
                                    131 	.globl _URX1IF
                                    132 	.globl _P0_0
                                    133 	.globl _P0_1
                                    134 	.globl _P0_2
                                    135 	.globl _P0_3
                                    136 	.globl _P0_4
                                    137 	.globl _P0_5
                                    138 	.globl _P0_6
                                    139 	.globl _P0_7
                                    140 	.globl _WDCTL
                                    141 	.globl _U1GCR
                                    142 	.globl _U1UCR
                                    143 	.globl _U1BAUD
                                    144 	.globl _U1DBUF
                                    145 	.globl _U1CSR
                                    146 	.globl _U0GCR
                                    147 	.globl _U0UCR
                                    148 	.globl _U0BAUD
                                    149 	.globl _U0DBUF
                                    150 	.globl _U0CSR
                                    151 	.globl _TIMIF
                                    152 	.globl _T4CC1
                                    153 	.globl _T4CCTL1
                                    154 	.globl _T4CC0
                                    155 	.globl _T4CCTL0
                                    156 	.globl _T4CTL
                                    157 	.globl _T4CNT
                                    158 	.globl _T3CC1
                                    159 	.globl _T3CCTL1
                                    160 	.globl _T3CC0
                                    161 	.globl _T3CCTL0
                                    162 	.globl _T3CTL
                                    163 	.globl _T3CNT
                                    164 	.globl _T2MSEL
                                    165 	.globl _T2IRQM
                                    166 	.globl _T2MOVF2
                                    167 	.globl _T2MOVF1
                                    168 	.globl _T2MOVF0
                                    169 	.globl _T2M1
                                    170 	.globl _T2M0
                                    171 	.globl _T2IRQF
                                    172 	.globl _T2EVTCFG
                                    173 	.globl _T2CTRL
                                    174 	.globl _T1STAT
                                    175 	.globl _T1CCTL2
                                    176 	.globl _T1CCTL1
                                    177 	.globl _T1CCTL0
                                    178 	.globl _T1CTL
                                    179 	.globl _T1CNTH
                                    180 	.globl _T1CNTL
                                    181 	.globl _T1CC2H
                                    182 	.globl _T1CC2L
                                    183 	.globl _T1CC1H
                                    184 	.globl _T1CC1L
                                    185 	.globl _T1CC0H
                                    186 	.globl _T1CC0L
                                    187 	.globl _CLKCONSTA
                                    188 	.globl _CLKCONCMD
                                    189 	.globl _SLEEPSTA
                                    190 	.globl _SLEEPCMD
                                    191 	.globl _STLOAD
                                    192 	.globl _ST2
                                    193 	.globl _ST1
                                    194 	.globl _ST0
                                    195 	.globl _RFERRF
                                    196 	.globl _RFIRQF0
                                    197 	.globl _RFST
                                    198 	.globl _RFD
                                    199 	.globl _RFIRQF1
                                    200 	.globl _PSBANK
                                    201 	.globl _FMAP
                                    202 	.globl _MEMCTR
                                    203 	.globl __XPAGE
                                    204 	.globl _MPAGE
                                    205 	.globl _PMUX
                                    206 	.globl _P2DIR
                                    207 	.globl _P1DIR
                                    208 	.globl _P0DIR
                                    209 	.globl _P2INP
                                    210 	.globl _P1INP
                                    211 	.globl _P2SEL
                                    212 	.globl _P1SEL
                                    213 	.globl _P0SEL
                                    214 	.globl _APCFG
                                    215 	.globl _PERCFG
                                    216 	.globl _P0INP
                                    217 	.globl _P2IEN
                                    218 	.globl _P1IEN
                                    219 	.globl _P0IEN
                                    220 	.globl _PICTL
                                    221 	.globl _P2IFG
                                    222 	.globl _P1IFG
                                    223 	.globl _P0IFG
                                    224 	.globl _DMAREQ
                                    225 	.globl _DMAARM
                                    226 	.globl _DMA0CFGH
                                    227 	.globl _DMA0CFGL
                                    228 	.globl _DMA1CFGH
                                    229 	.globl _DMA1CFGL
                                    230 	.globl _DMAIRQ
                                    231 	.globl _ENCCS
                                    232 	.globl _ENCDO
                                    233 	.globl _ENCDI
                                    234 	.globl _RNDH
                                    235 	.globl _RNDL
                                    236 	.globl _ADCH
                                    237 	.globl _ADCL
                                    238 	.globl _ADCCON3
                                    239 	.globl _ADCCON2
                                    240 	.globl _ADCCON1
                                    241 	.globl _B
                                    242 	.globl _IRCON2
                                    243 	.globl _ACC
                                    244 	.globl _PSW
                                    245 	.globl _IRCON
                                    246 	.globl _IP1
                                    247 	.globl _IEN1
                                    248 	.globl _IP0
                                    249 	.globl _IEN0
                                    250 	.globl _P2
                                    251 	.globl _S1CON
                                    252 	.globl _IEN2
                                    253 	.globl _S0CON
                                    254 	.globl _DPS
                                    255 	.globl _P1
                                    256 	.globl _TCON
                                    257 	.globl _PCON
                                    258 	.globl _DPH1
                                    259 	.globl _DPL1
                                    260 	.globl _DPH0
                                    261 	.globl _DPL0
                                    262 	.globl _SP
                                    263 	.globl _P0
                                    264 	.globl _X_IEEE_ADDR
                                    265 	.globl _X_INFOPAGE
                                    266 	.globl _X_P2DIR
                                    267 	.globl _X_P1DIR
                                    268 	.globl _X_P0DIR
                                    269 	.globl _X_U1GCR
                                    270 	.globl _X_U1UCR
                                    271 	.globl _X_U1BAUD
                                    272 	.globl _X_U1DBUF
                                    273 	.globl _X_U1CSR
                                    274 	.globl _X_P2INP
                                    275 	.globl _X_P1INP
                                    276 	.globl _X_P2SEL
                                    277 	.globl _X_P1SEL
                                    278 	.globl _X_P0SEL
                                    279 	.globl _X_APCFG
                                    280 	.globl _X_PERCFG
                                    281 	.globl _X_T4CC1
                                    282 	.globl _X_T4CCTL1
                                    283 	.globl _X_T4CC0
                                    284 	.globl _X_T4CCTL0
                                    285 	.globl _X_T4CTL
                                    286 	.globl _X_T4CNT
                                    287 	.globl _X_RFIRQF0
                                    288 	.globl _X_T1CCTL2
                                    289 	.globl _X_T1CCTL1
                                    290 	.globl _X_T1CCTL0
                                    291 	.globl _X_T1CTL
                                    292 	.globl _X_T1CNTH
                                    293 	.globl _X_T1CNTL
                                    294 	.globl _X_RFST
                                    295 	.globl _X_T1CC2H
                                    296 	.globl _X_T1CC2L
                                    297 	.globl _X_T1CC1H
                                    298 	.globl _X_T1CC1L
                                    299 	.globl _X_T1CC0H
                                    300 	.globl _X_T1CC0L
                                    301 	.globl _X_RFD
                                    302 	.globl _X_TIMIF
                                    303 	.globl _X_DMAREQ
                                    304 	.globl _X_DMAARM
                                    305 	.globl _X_DMA0CFGH
                                    306 	.globl _X_DMA0CFGL
                                    307 	.globl _X_DMA1CFGH
                                    308 	.globl _X_DMA1CFGL
                                    309 	.globl _X_DMAIRQ
                                    310 	.globl _X_T3CC1
                                    311 	.globl _X_T3CCTL1
                                    312 	.globl _X_T3CC0
                                    313 	.globl _X_T3CCTL0
                                    314 	.globl _X_T3CTL
                                    315 	.globl _X_T3CNT
                                    316 	.globl _X_WDCTL
                                    317 	.globl _X_MEMCTR
                                    318 	.globl _X_CLKCONCMD
                                    319 	.globl _X_U0GCR
                                    320 	.globl _X_U0UCR
                                    321 	.globl _X_T2MSEL
                                    322 	.globl _X_U0BAUD
                                    323 	.globl _X_U0DBUF
                                    324 	.globl _X_RFERRF
                                    325 	.globl _X_SLEEPCMD
                                    326 	.globl _X_RNDH
                                    327 	.globl _X_RNDL
                                    328 	.globl _X_ADCH
                                    329 	.globl _X_ADCL
                                    330 	.globl _X_ADCCON3
                                    331 	.globl _X_ADCCON2
                                    332 	.globl _X_ADCCON1
                                    333 	.globl _X_ENCCS
                                    334 	.globl _X_ENCDO
                                    335 	.globl _X_ENCDI
                                    336 	.globl _X_T1STAT
                                    337 	.globl _X_PMUX
                                    338 	.globl _X_STLOAD
                                    339 	.globl _X_P2IEN
                                    340 	.globl _X_P0IEN
                                    341 	.globl _X_T2IRQM
                                    342 	.globl _X_T2MOVF2
                                    343 	.globl _X_T2MOVF1
                                    344 	.globl _X_T2MOVF0
                                    345 	.globl _X_T2M1
                                    346 	.globl _X_T2M0
                                    347 	.globl _X_T2IRQF
                                    348 	.globl _X_P2
                                    349 	.globl _X_PSBANK
                                    350 	.globl _X_FMAP
                                    351 	.globl _X_CLKCONSTA
                                    352 	.globl _X_SLEEPSTA
                                    353 	.globl _X_T2EVTCFG
                                    354 	.globl _X_ST2
                                    355 	.globl _X_ST1
                                    356 	.globl _X_ST0
                                    357 	.globl _X_T2CTRL
                                    358 	.globl _X__XPAGE
                                    359 	.globl _X_MPAGE
                                    360 	.globl _X_RFIRQF1
                                    361 	.globl _X_P1
                                    362 	.globl _X_P0INP
                                    363 	.globl _X_P1IEN
                                    364 	.globl _X_PICTL
                                    365 	.globl _X_P2IFG
                                    366 	.globl _X_P1IFG
                                    367 	.globl _X_P0IFG
                                    368 	.globl _X_U0CSR
                                    369 	.globl _X_P0
                                    370 	.globl _USBF5
                                    371 	.globl _USBF4
                                    372 	.globl _USBF3
                                    373 	.globl _USBF2
                                    374 	.globl _USBF1
                                    375 	.globl _USBF0
                                    376 	.globl _USBCNTH
                                    377 	.globl _USBCNTL
                                    378 	.globl _USBCNT0
                                    379 	.globl _USBCSOH
                                    380 	.globl _USBCSOL
                                    381 	.globl _USBMAXO
                                    382 	.globl _USBCSIH
                                    383 	.globl _USBCSIL
                                    384 	.globl _USBCS0
                                    385 	.globl _USBMAXI
                                    386 	.globl _USBCTRL
                                    387 	.globl _USBINDEX
                                    388 	.globl _USBFRMH
                                    389 	.globl _USBFRML
                                    390 	.globl _USBCIE
                                    391 	.globl _USBOIE
                                    392 	.globl _USBIIE
                                    393 	.globl _USBCIF
                                    394 	.globl _USBOIF
                                    395 	.globl _USBIIF
                                    396 	.globl _USBPOW
                                    397 	.globl _USBADDR
                                    398 	.globl _CSPT
                                    399 	.globl _CSPZ
                                    400 	.globl _CSPY
                                    401 	.globl _CSPX
                                    402 	.globl _CSPSTAT
                                    403 	.globl _CSPCTRL
                                    404 	.globl _CSPPROG23
                                    405 	.globl _CSPPROG22
                                    406 	.globl _CSPPROG21
                                    407 	.globl _CSPPROG20
                                    408 	.globl _CSPPROG19
                                    409 	.globl _CSPPROG18
                                    410 	.globl _CSPPROG17
                                    411 	.globl _CSPPROG16
                                    412 	.globl _CSPPROG15
                                    413 	.globl _CSPPROG14
                                    414 	.globl _CSPPROG13
                                    415 	.globl _CSPPROG12
                                    416 	.globl _CSPPROG11
                                    417 	.globl _CSPPROG10
                                    418 	.globl _CSPPROG9
                                    419 	.globl _CSPPROG8
                                    420 	.globl _CSPPROG7
                                    421 	.globl _CSPPROG6
                                    422 	.globl _CSPPROG5
                                    423 	.globl _CSPPROG4
                                    424 	.globl _CSPPROG3
                                    425 	.globl _CSPPROG2
                                    426 	.globl _CSPPROG1
                                    427 	.globl _CSPPROG0
                                    428 	.globl _RFC_OBS_CTRL2
                                    429 	.globl _RFC_OBS_CTRL1
                                    430 	.globl _RFC_OBS_CTRL0
                                    431 	.globl _TXFILTCFG
                                    432 	.globl _PTEST1
                                    433 	.globl _PTEST0
                                    434 	.globl _ATEST
                                    435 	.globl _DACTEST2
                                    436 	.globl _DACTEST1
                                    437 	.globl _DACTEST0
                                    438 	.globl _MDMTEST1
                                    439 	.globl _MDMTEST0
                                    440 	.globl _ADCTEST2
                                    441 	.globl _ADCTEST1
                                    442 	.globl _ADCTEST0
                                    443 	.globl _AGCCTRL3
                                    444 	.globl _AGCCTRL2
                                    445 	.globl _AGCCTRL1
                                    446 	.globl _AGCCTRL0
                                    447 	.globl _FSCAL3
                                    448 	.globl _FSCAL2
                                    449 	.globl _FSCAL1
                                    450 	.globl _FSCAL0
                                    451 	.globl _FSCTRL
                                    452 	.globl _RXCTRL
                                    453 	.globl _FREQEST
                                    454 	.globl _MDMCTRL1
                                    455 	.globl _MDMCTRL0
                                    456 	.globl _RFRND
                                    457 	.globl _RFERRM
                                    458 	.globl _RFIRQM1
                                    459 	.globl _RFIRQM0
                                    460 	.globl _TXLAST_PTR
                                    461 	.globl _TXFIRST_PTR
                                    462 	.globl _RXP1_PTR
                                    463 	.globl _RXLAST_PTR
                                    464 	.globl _RXFIRST_PTR
                                    465 	.globl _TXFIFOCNT
                                    466 	.globl _RXFIFOCNT
                                    467 	.globl _RXFIRST
                                    468 	.globl _RSSISTAT
                                    469 	.globl _RSSI
                                    470 	.globl _CCACTRL1
                                    471 	.globl _CCACTRL0
                                    472 	.globl _FSMCTRL
                                    473 	.globl _FIFOPCTRL
                                    474 	.globl _FSMSTAT1
                                    475 	.globl _FSMSTAT0
                                    476 	.globl _TXCTRL
                                    477 	.globl _TXPOWER
                                    478 	.globl _FREQCTRL
                                    479 	.globl _FREQTUNE
                                    480 	.globl _RXMASKCLR
                                    481 	.globl _RXMASKSET
                                    482 	.globl _RXENABLE
                                    483 	.globl _FRMCTRL1
                                    484 	.globl _FRMCTRL0
                                    485 	.globl _SRCEXTEN2
                                    486 	.globl _SRCEXTEN1
                                    487 	.globl _SRCEXTEN0
                                    488 	.globl _SRCSHORTEN2
                                    489 	.globl _SRCSHORTEN1
                                    490 	.globl _SRCSHORTEN0
                                    491 	.globl _SRCMATCH
                                    492 	.globl _FRMFILT1
                                    493 	.globl _FRMFILT0
                                    494 	.globl _SHORT_ADDR1
                                    495 	.globl _SHORT_ADDR0
                                    496 	.globl _PAN_ID1
                                    497 	.globl _PAN_ID0
                                    498 	.globl _EXT_ADDR7
                                    499 	.globl _EXT_ADDR6
                                    500 	.globl _EXT_ADDR5
                                    501 	.globl _EXT_ADDR4
                                    502 	.globl _EXT_ADDR3
                                    503 	.globl _EXT_ADDR2
                                    504 	.globl _EXT_ADDR1
                                    505 	.globl _EXT_ADDR0
                                    506 	.globl _SRCSHORTPENDEN2
                                    507 	.globl _SRCSHORTPENDEN1
                                    508 	.globl _SRCSHORTPENDEN0
                                    509 	.globl _SRCEXTPENDEN2
                                    510 	.globl _SRCEXTPENDEN1
                                    511 	.globl _SRCEXTPENDEN0
                                    512 	.globl _SRCRESINDEX
                                    513 	.globl _SRCRESMASK2
                                    514 	.globl _SRCRESMASK1
                                    515 	.globl _SRCRESMASK0
                                    516 	.globl _SRC_ADDR_TABLE
                                    517 	.globl _TXFIFO
                                    518 	.globl _RXFIFO
                                    519 	.globl _RFCORE_RAM
                                    520 	.globl _CMPCTL
                                    521 	.globl _OPAMPS
                                    522 	.globl _OPAMPC
                                    523 	.globl _STCV2
                                    524 	.globl _STCV1
                                    525 	.globl _STCV0
                                    526 	.globl _STCS
                                    527 	.globl _STCC
                                    528 	.globl _T1CC4H
                                    529 	.globl _T1CC4L
                                    530 	.globl _T1CC3H
                                    531 	.globl _T1CC3L
                                    532 	.globl _XX_T1CC2H
                                    533 	.globl _XX_T1CC2L
                                    534 	.globl _XX_T1CC1H
                                    535 	.globl _XX_T1CC1L
                                    536 	.globl _XX_T1CC0H
                                    537 	.globl _XX_T1CC0L
                                    538 	.globl _T1CCTL4
                                    539 	.globl _T1CCTL3
                                    540 	.globl _XX_T1CCTL2
                                    541 	.globl _XX_T1CCTL1
                                    542 	.globl _XX_T1CCTL0
                                    543 	.globl _CLD
                                    544 	.globl _IRCTL
                                    545 	.globl _CHIPINFO1
                                    546 	.globl _CHIPINFO0
                                    547 	.globl _FWDATA
                                    548 	.globl _FADDRH
                                    549 	.globl _FADDRL
                                    550 	.globl _FCTL
                                    551 	.globl _IVCTRL
                                    552 	.globl _BATTMON
                                    553 	.globl _SRCRC
                                    554 	.globl _DBGDATA
                                    555 	.globl _TESTREG0
                                    556 	.globl _CHIPID
                                    557 	.globl _CHVER
                                    558 	.globl _OBSSEL5
                                    559 	.globl _OBSSEL4
                                    560 	.globl _OBSSEL3
                                    561 	.globl _OBSSEL2
                                    562 	.globl _OBSSEL1
                                    563 	.globl _OBSSEL0
                                    564 	.globl _I2CIO
                                    565 	.globl _I2CWC
                                    566 	.globl _I2CADDR
                                    567 	.globl _I2CDATA
                                    568 	.globl _I2CSTAT
                                    569 	.globl _I2CCFG
                                    570 	.globl _OPAMPMC
                                    571 	.globl _MONMUX
                                    572 ;--------------------------------------------------------
                                    573 ; special function registers
                                    574 ;--------------------------------------------------------
                                    575 	.area RSEG    (ABS,DATA)
      000000                        576 	.org 0x0000
                           000080   577 _P0	=	0x0080
                           000081   578 _SP	=	0x0081
                           000082   579 _DPL0	=	0x0082
                           000083   580 _DPH0	=	0x0083
                           000084   581 _DPL1	=	0x0084
                           000085   582 _DPH1	=	0x0085
                           000087   583 _PCON	=	0x0087
                           000088   584 _TCON	=	0x0088
                           000090   585 _P1	=	0x0090
                           000092   586 _DPS	=	0x0092
                           000098   587 _S0CON	=	0x0098
                           00009A   588 _IEN2	=	0x009a
                           00009B   589 _S1CON	=	0x009b
                           0000A0   590 _P2	=	0x00a0
                           0000A8   591 _IEN0	=	0x00a8
                           0000A9   592 _IP0	=	0x00a9
                           0000B8   593 _IEN1	=	0x00b8
                           0000B9   594 _IP1	=	0x00b9
                           0000C0   595 _IRCON	=	0x00c0
                           0000D0   596 _PSW	=	0x00d0
                           0000E0   597 _ACC	=	0x00e0
                           0000E8   598 _IRCON2	=	0x00e8
                           0000F0   599 _B	=	0x00f0
                           0000B4   600 _ADCCON1	=	0x00b4
                           0000B5   601 _ADCCON2	=	0x00b5
                           0000B6   602 _ADCCON3	=	0x00b6
                           0000BA   603 _ADCL	=	0x00ba
                           0000BB   604 _ADCH	=	0x00bb
                           0000BC   605 _RNDL	=	0x00bc
                           0000BD   606 _RNDH	=	0x00bd
                           0000B1   607 _ENCDI	=	0x00b1
                           0000B2   608 _ENCDO	=	0x00b2
                           0000B3   609 _ENCCS	=	0x00b3
                           0000D1   610 _DMAIRQ	=	0x00d1
                           0000D2   611 _DMA1CFGL	=	0x00d2
                           0000D3   612 _DMA1CFGH	=	0x00d3
                           0000D4   613 _DMA0CFGL	=	0x00d4
                           0000D5   614 _DMA0CFGH	=	0x00d5
                           0000D6   615 _DMAARM	=	0x00d6
                           0000D7   616 _DMAREQ	=	0x00d7
                           000089   617 _P0IFG	=	0x0089
                           00008A   618 _P1IFG	=	0x008a
                           00008B   619 _P2IFG	=	0x008b
                           00008C   620 _PICTL	=	0x008c
                           0000AB   621 _P0IEN	=	0x00ab
                           00008D   622 _P1IEN	=	0x008d
                           0000AC   623 _P2IEN	=	0x00ac
                           00008F   624 _P0INP	=	0x008f
                           0000F1   625 _PERCFG	=	0x00f1
                           0000F2   626 _APCFG	=	0x00f2
                           0000F3   627 _P0SEL	=	0x00f3
                           0000F4   628 _P1SEL	=	0x00f4
                           0000F5   629 _P2SEL	=	0x00f5
                           0000F6   630 _P1INP	=	0x00f6
                           0000F7   631 _P2INP	=	0x00f7
                           0000FD   632 _P0DIR	=	0x00fd
                           0000FE   633 _P1DIR	=	0x00fe
                           0000FF   634 _P2DIR	=	0x00ff
                           0000AE   635 _PMUX	=	0x00ae
                           000093   636 _MPAGE	=	0x0093
                           000093   637 __XPAGE	=	0x0093
                           0000C7   638 _MEMCTR	=	0x00c7
                           00009F   639 _FMAP	=	0x009f
                           00009F   640 _PSBANK	=	0x009f
                           000091   641 _RFIRQF1	=	0x0091
                           0000D9   642 _RFD	=	0x00d9
                           0000E1   643 _RFST	=	0x00e1
                           0000E9   644 _RFIRQF0	=	0x00e9
                           0000BF   645 _RFERRF	=	0x00bf
                           000095   646 _ST0	=	0x0095
                           000096   647 _ST1	=	0x0096
                           000097   648 _ST2	=	0x0097
                           0000AD   649 _STLOAD	=	0x00ad
                           0000BE   650 _SLEEPCMD	=	0x00be
                           00009D   651 _SLEEPSTA	=	0x009d
                           0000C6   652 _CLKCONCMD	=	0x00c6
                           00009E   653 _CLKCONSTA	=	0x009e
                           0000DA   654 _T1CC0L	=	0x00da
                           0000DB   655 _T1CC0H	=	0x00db
                           0000DC   656 _T1CC1L	=	0x00dc
                           0000DD   657 _T1CC1H	=	0x00dd
                           0000DE   658 _T1CC2L	=	0x00de
                           0000DF   659 _T1CC2H	=	0x00df
                           0000E2   660 _T1CNTL	=	0x00e2
                           0000E3   661 _T1CNTH	=	0x00e3
                           0000E4   662 _T1CTL	=	0x00e4
                           0000E5   663 _T1CCTL0	=	0x00e5
                           0000E6   664 _T1CCTL1	=	0x00e6
                           0000E7   665 _T1CCTL2	=	0x00e7
                           0000AF   666 _T1STAT	=	0x00af
                           000094   667 _T2CTRL	=	0x0094
                           00009C   668 _T2EVTCFG	=	0x009c
                           0000A1   669 _T2IRQF	=	0x00a1
                           0000A2   670 _T2M0	=	0x00a2
                           0000A3   671 _T2M1	=	0x00a3
                           0000A4   672 _T2MOVF0	=	0x00a4
                           0000A5   673 _T2MOVF1	=	0x00a5
                           0000A6   674 _T2MOVF2	=	0x00a6
                           0000A7   675 _T2IRQM	=	0x00a7
                           0000C3   676 _T2MSEL	=	0x00c3
                           0000CA   677 _T3CNT	=	0x00ca
                           0000CB   678 _T3CTL	=	0x00cb
                           0000CC   679 _T3CCTL0	=	0x00cc
                           0000CD   680 _T3CC0	=	0x00cd
                           0000CE   681 _T3CCTL1	=	0x00ce
                           0000CF   682 _T3CC1	=	0x00cf
                           0000EA   683 _T4CNT	=	0x00ea
                           0000EB   684 _T4CTL	=	0x00eb
                           0000EC   685 _T4CCTL0	=	0x00ec
                           0000ED   686 _T4CC0	=	0x00ed
                           0000EE   687 _T4CCTL1	=	0x00ee
                           0000EF   688 _T4CC1	=	0x00ef
                           0000D8   689 _TIMIF	=	0x00d8
                           000086   690 _U0CSR	=	0x0086
                           0000C1   691 _U0DBUF	=	0x00c1
                           0000C2   692 _U0BAUD	=	0x00c2
                           0000C4   693 _U0UCR	=	0x00c4
                           0000C5   694 _U0GCR	=	0x00c5
                           0000F8   695 _U1CSR	=	0x00f8
                           0000F9   696 _U1DBUF	=	0x00f9
                           0000FA   697 _U1BAUD	=	0x00fa
                           0000FB   698 _U1UCR	=	0x00fb
                           0000FC   699 _U1GCR	=	0x00fc
                           0000C9   700 _WDCTL	=	0x00c9
                                    701 ;--------------------------------------------------------
                                    702 ; special function bits
                                    703 ;--------------------------------------------------------
                                    704 	.area RSEG    (ABS,DATA)
      000000                        705 	.org 0x0000
                           000087   706 _P0_7	=	0x0087
                           000086   707 _P0_6	=	0x0086
                           000085   708 _P0_5	=	0x0085
                           000084   709 _P0_4	=	0x0084
                           000083   710 _P0_3	=	0x0083
                           000082   711 _P0_2	=	0x0082
                           000081   712 _P0_1	=	0x0081
                           000080   713 _P0_0	=	0x0080
                           00008F   714 _URX1IF	=	0x008f
                           00008D   715 _ADCIF	=	0x008d
                           00008B   716 _URX0IF	=	0x008b
                           00008A   717 _IT1	=	0x008a
                           000089   718 _RFERRIF	=	0x0089
                           000088   719 _IT0	=	0x0088
                           000097   720 _P1_7	=	0x0097
                           000096   721 _P1_6	=	0x0096
                           000095   722 _P1_5	=	0x0095
                           000094   723 _P1_4	=	0x0094
                           000093   724 _P1_3	=	0x0093
                           000092   725 _P1_2	=	0x0092
                           000091   726 _P1_1	=	0x0091
                           000090   727 _P1_0	=	0x0090
                           000099   728 _ENCIF_1	=	0x0099
                           000098   729 _ENCIF_0	=	0x0098
                           0000A7   730 _P2_7	=	0x00a7
                           0000A6   731 _P2_6	=	0x00a6
                           0000A5   732 _P2_5	=	0x00a5
                           0000A4   733 _P2_4	=	0x00a4
                           0000A3   734 _P2_3	=	0x00a3
                           0000A2   735 _P2_2	=	0x00a2
                           0000A1   736 _P2_1	=	0x00a1
                           0000A0   737 _P2_0	=	0x00a0
                           0000AF   738 _EA	=	0x00af
                           0000AD   739 _STIE	=	0x00ad
                           0000AC   740 _ENCIE	=	0x00ac
                           0000AB   741 _URX1IE	=	0x00ab
                           0000AA   742 _URX0IE	=	0x00aa
                           0000A9   743 _ADCIE	=	0x00a9
                           0000A8   744 _RFERRIE	=	0x00a8
                           0000BD   745 _P0IE	=	0x00bd
                           0000BC   746 _T4IE	=	0x00bc
                           0000BB   747 _T3IE	=	0x00bb
                           0000BA   748 _T2IE	=	0x00ba
                           0000B9   749 _T1IE	=	0x00b9
                           0000B8   750 _DMAIE	=	0x00b8
                           0000C7   751 _STIF	=	0x00c7
                           0000C5   752 _P0IF	=	0x00c5
                           0000C4   753 _T4IF	=	0x00c4
                           0000C3   754 _T3IF	=	0x00c3
                           0000C2   755 _T2IF	=	0x00c2
                           0000C1   756 _T1IF	=	0x00c1
                           0000C0   757 _DMAIF	=	0x00c0
                           0000D7   758 _CY	=	0x00d7
                           0000D6   759 _AC	=	0x00d6
                           0000D5   760 _F0	=	0x00d5
                           0000D4   761 _RS1	=	0x00d4
                           0000D3   762 _RS0	=	0x00d3
                           0000D2   763 _OV	=	0x00d2
                           0000D1   764 _F1	=	0x00d1
                           0000D0   765 _P	=	0x00d0
                           0000E7   766 _ACC_7	=	0x00e7
                           0000E6   767 _ACC_6	=	0x00e6
                           0000E5   768 _ACC_5	=	0x00e5
                           0000E4   769 _ACC_4	=	0x00e4
                           0000E3   770 _ACC_3	=	0x00e3
                           0000E2   771 _ACC_2	=	0x00e2
                           0000E1   772 _ACC_1	=	0x00e1
                           0000E0   773 _ACC_0	=	0x00e0
                           0000EC   774 _WDTIF	=	0x00ec
                           0000EB   775 _P1IF	=	0x00eb
                           0000EA   776 _UTX1IF	=	0x00ea
                           0000E9   777 _UTX0IF	=	0x00e9
                           0000E8   778 _P2IF	=	0x00e8
                           0000F7   779 _B_7	=	0x00f7
                           0000F6   780 _B_6	=	0x00f6
                           0000F5   781 _B_5	=	0x00f5
                           0000F4   782 _B_4	=	0x00f4
                           0000F3   783 _B_3	=	0x00f3
                           0000F2   784 _B_2	=	0x00f2
                           0000F1   785 _B_1	=	0x00f1
                           0000F0   786 _B_0	=	0x00f0
                           0000DE   787 _OVFIM	=	0x00de
                           0000DD   788 _T4CH1IF	=	0x00dd
                           0000DC   789 _T4CH0IF	=	0x00dc
                           0000DB   790 _T4OVFIF	=	0x00db
                           0000DA   791 _T3CH1IF	=	0x00da
                           0000D9   792 _T3CH0IF	=	0x00d9
                           0000D8   793 _T3OVFIF	=	0x00d8
                           0000FF   794 _MODE	=	0x00ff
                           0000FE   795 _RE	=	0x00fe
                           0000FD   796 _SLAVE	=	0x00fd
                           0000FC   797 _FE	=	0x00fc
                           0000FB   798 _ERR	=	0x00fb
                           0000FA   799 _RX_BYTE	=	0x00fa
                           0000F9   800 _TX_BYTE	=	0x00f9
                           0000F8   801 _ACTIVE	=	0x00f8
                                    802 ;--------------------------------------------------------
                                    803 ; overlayable register banks
                                    804 ;--------------------------------------------------------
                                    805 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        806 	.ds 8
                                    807 ;--------------------------------------------------------
                                    808 ; internal ram data
                                    809 ;--------------------------------------------------------
                                    810 	.area DSEG    (DATA)
      000008                        811 _len:
      000008                        812 	.ds 2
                                    813 ;--------------------------------------------------------
                                    814 ; overlayable items in internal ram 
                                    815 ;--------------------------------------------------------
                                    816 ;--------------------------------------------------------
                                    817 ; Stack segment in internal ram 
                                    818 ;--------------------------------------------------------
                                    819 	.area	SSEG
      000021                        820 __start__stack:
      000021                        821 	.ds	1
                                    822 
                                    823 ;--------------------------------------------------------
                                    824 ; indirectly addressable internal ram data
                                    825 ;--------------------------------------------------------
                                    826 	.area ISEG    (DATA)
                                    827 ;--------------------------------------------------------
                                    828 ; absolute internal ram data
                                    829 ;--------------------------------------------------------
                                    830 	.area IABS    (ABS,DATA)
                                    831 	.area IABS    (ABS,DATA)
                                    832 ;--------------------------------------------------------
                                    833 ; bit data
                                    834 ;--------------------------------------------------------
                                    835 	.area BSEG    (BIT)
                                    836 ;--------------------------------------------------------
                                    837 ; paged external ram data
                                    838 ;--------------------------------------------------------
                                    839 	.area PSEG    (PAG,XDATA)
                                    840 ;--------------------------------------------------------
                                    841 ; external ram data
                                    842 ;--------------------------------------------------------
                                    843 	.area XSEG    (XDATA)
                           0061A6   844 _MONMUX	=	0x61a6
                           0061A6   845 _OPAMPMC	=	0x61a6
                           006230   846 _I2CCFG	=	0x6230
                           006231   847 _I2CSTAT	=	0x6231
                           006232   848 _I2CDATA	=	0x6232
                           006233   849 _I2CADDR	=	0x6233
                           006234   850 _I2CWC	=	0x6234
                           006235   851 _I2CIO	=	0x6235
                           006243   852 _OBSSEL0	=	0x6243
                           006244   853 _OBSSEL1	=	0x6244
                           006245   854 _OBSSEL2	=	0x6245
                           006246   855 _OBSSEL3	=	0x6246
                           006247   856 _OBSSEL4	=	0x6247
                           006248   857 _OBSSEL5	=	0x6248
                           006249   858 _CHVER	=	0x6249
                           00624A   859 _CHIPID	=	0x624a
                           00624B   860 _TESTREG0	=	0x624b
                           006260   861 _DBGDATA	=	0x6260
                           006262   862 _SRCRC	=	0x6262
                           006264   863 _BATTMON	=	0x6264
                           006265   864 _IVCTRL	=	0x6265
                           006270   865 _FCTL	=	0x6270
                           006271   866 _FADDRL	=	0x6271
                           006272   867 _FADDRH	=	0x6272
                           006273   868 _FWDATA	=	0x6273
                           006276   869 _CHIPINFO0	=	0x6276
                           006277   870 _CHIPINFO1	=	0x6277
                           006281   871 _IRCTL	=	0x6281
                           006290   872 _CLD	=	0x6290
                           0062A0   873 _XX_T1CCTL0	=	0x62a0
                           0062A1   874 _XX_T1CCTL1	=	0x62a1
                           0062A2   875 _XX_T1CCTL2	=	0x62a2
                           0062A3   876 _T1CCTL3	=	0x62a3
                           0062A4   877 _T1CCTL4	=	0x62a4
                           0062A6   878 _XX_T1CC0L	=	0x62a6
                           0062A7   879 _XX_T1CC0H	=	0x62a7
                           0062A8   880 _XX_T1CC1L	=	0x62a8
                           0062A9   881 _XX_T1CC1H	=	0x62a9
                           0062AA   882 _XX_T1CC2L	=	0x62aa
                           0062AB   883 _XX_T1CC2H	=	0x62ab
                           0062AC   884 _T1CC3L	=	0x62ac
                           0062AD   885 _T1CC3H	=	0x62ad
                           0062AE   886 _T1CC4L	=	0x62ae
                           0062AF   887 _T1CC4H	=	0x62af
                           0062B0   888 _STCC	=	0x62b0
                           0062B1   889 _STCS	=	0x62b1
                           0062B2   890 _STCV0	=	0x62b2
                           0062B3   891 _STCV1	=	0x62b3
                           0062B4   892 _STCV2	=	0x62b4
                           0062C0   893 _OPAMPC	=	0x62c0
                           0062C1   894 _OPAMPS	=	0x62c1
                           0062D0   895 _CMPCTL	=	0x62d0
                           006000   896 _RFCORE_RAM	=	0x6000
                           006000   897 _RXFIFO	=	0x6000
                           006080   898 _TXFIFO	=	0x6080
                           006100   899 _SRC_ADDR_TABLE	=	0x6100
                           006160   900 _SRCRESMASK0	=	0x6160
                           006161   901 _SRCRESMASK1	=	0x6161
                           006162   902 _SRCRESMASK2	=	0x6162
                           006163   903 _SRCRESINDEX	=	0x6163
                           006164   904 _SRCEXTPENDEN0	=	0x6164
                           006165   905 _SRCEXTPENDEN1	=	0x6165
                           006166   906 _SRCEXTPENDEN2	=	0x6166
                           006167   907 _SRCSHORTPENDEN0	=	0x6167
                           006168   908 _SRCSHORTPENDEN1	=	0x6168
                           006169   909 _SRCSHORTPENDEN2	=	0x6169
                           00616A   910 _EXT_ADDR0	=	0x616a
                           00616B   911 _EXT_ADDR1	=	0x616b
                           00616C   912 _EXT_ADDR2	=	0x616c
                           00616D   913 _EXT_ADDR3	=	0x616d
                           00616E   914 _EXT_ADDR4	=	0x616e
                           00616F   915 _EXT_ADDR5	=	0x616f
                           006170   916 _EXT_ADDR6	=	0x6170
                           006171   917 _EXT_ADDR7	=	0x6171
                           006172   918 _PAN_ID0	=	0x6172
                           006173   919 _PAN_ID1	=	0x6173
                           006174   920 _SHORT_ADDR0	=	0x6174
                           006175   921 _SHORT_ADDR1	=	0x6175
                           006180   922 _FRMFILT0	=	0x6180
                           006181   923 _FRMFILT1	=	0x6181
                           006182   924 _SRCMATCH	=	0x6182
                           006183   925 _SRCSHORTEN0	=	0x6183
                           006184   926 _SRCSHORTEN1	=	0x6184
                           006185   927 _SRCSHORTEN2	=	0x6185
                           006186   928 _SRCEXTEN0	=	0x6186
                           006187   929 _SRCEXTEN1	=	0x6187
                           006188   930 _SRCEXTEN2	=	0x6188
                           006189   931 _FRMCTRL0	=	0x6189
                           00618A   932 _FRMCTRL1	=	0x618a
                           00618B   933 _RXENABLE	=	0x618b
                           00618C   934 _RXMASKSET	=	0x618c
                           00618D   935 _RXMASKCLR	=	0x618d
                           00618E   936 _FREQTUNE	=	0x618e
                           00618F   937 _FREQCTRL	=	0x618f
                           006190   938 _TXPOWER	=	0x6190
                           006191   939 _TXCTRL	=	0x6191
                           006192   940 _FSMSTAT0	=	0x6192
                           006193   941 _FSMSTAT1	=	0x6193
                           006194   942 _FIFOPCTRL	=	0x6194
                           006195   943 _FSMCTRL	=	0x6195
                           006196   944 _CCACTRL0	=	0x6196
                           006197   945 _CCACTRL1	=	0x6197
                           006198   946 _RSSI	=	0x6198
                           006199   947 _RSSISTAT	=	0x6199
                           00619A   948 _RXFIRST	=	0x619a
                           00619B   949 _RXFIFOCNT	=	0x619b
                           00619C   950 _TXFIFOCNT	=	0x619c
                           00619D   951 _RXFIRST_PTR	=	0x619d
                           00619E   952 _RXLAST_PTR	=	0x619e
                           00619F   953 _RXP1_PTR	=	0x619f
                           0061A1   954 _TXFIRST_PTR	=	0x61a1
                           0061A2   955 _TXLAST_PTR	=	0x61a2
                           0061A3   956 _RFIRQM0	=	0x61a3
                           0061A4   957 _RFIRQM1	=	0x61a4
                           0061A5   958 _RFERRM	=	0x61a5
                           0061A7   959 _RFRND	=	0x61a7
                           0061A8   960 _MDMCTRL0	=	0x61a8
                           0061A9   961 _MDMCTRL1	=	0x61a9
                           0061AA   962 _FREQEST	=	0x61aa
                           0061AB   963 _RXCTRL	=	0x61ab
                           0061AC   964 _FSCTRL	=	0x61ac
                           0061AD   965 _FSCAL0	=	0x61ad
                           0061AE   966 _FSCAL1	=	0x61ae
                           0061AF   967 _FSCAL2	=	0x61af
                           0061B0   968 _FSCAL3	=	0x61b0
                           0061B1   969 _AGCCTRL0	=	0x61b1
                           0061B2   970 _AGCCTRL1	=	0x61b2
                           0061B3   971 _AGCCTRL2	=	0x61b3
                           0061B4   972 _AGCCTRL3	=	0x61b4
                           0061B5   973 _ADCTEST0	=	0x61b5
                           0061B6   974 _ADCTEST1	=	0x61b6
                           0061B7   975 _ADCTEST2	=	0x61b7
                           0061B8   976 _MDMTEST0	=	0x61b8
                           0061B9   977 _MDMTEST1	=	0x61b9
                           0061BA   978 _DACTEST0	=	0x61ba
                           0061BB   979 _DACTEST1	=	0x61bb
                           0061BC   980 _DACTEST2	=	0x61bc
                           0061BD   981 _ATEST	=	0x61bd
                           0061BE   982 _PTEST0	=	0x61be
                           0061BF   983 _PTEST1	=	0x61bf
                           0061FA   984 _TXFILTCFG	=	0x61fa
                           0061EB   985 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   986 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   987 _RFC_OBS_CTRL2	=	0x61ed
                           0061C0   988 _CSPPROG0	=	0x61c0
                           0061C1   989 _CSPPROG1	=	0x61c1
                           0061C2   990 _CSPPROG2	=	0x61c2
                           0061C3   991 _CSPPROG3	=	0x61c3
                           0061C4   992 _CSPPROG4	=	0x61c4
                           0061C5   993 _CSPPROG5	=	0x61c5
                           0061C6   994 _CSPPROG6	=	0x61c6
                           0061C7   995 _CSPPROG7	=	0x61c7
                           0061C8   996 _CSPPROG8	=	0x61c8
                           0061C9   997 _CSPPROG9	=	0x61c9
                           0061CA   998 _CSPPROG10	=	0x61ca
                           0061CB   999 _CSPPROG11	=	0x61cb
                           0061CC  1000 _CSPPROG12	=	0x61cc
                           0061CD  1001 _CSPPROG13	=	0x61cd
                           0061CE  1002 _CSPPROG14	=	0x61ce
                           0061CF  1003 _CSPPROG15	=	0x61cf
                           0061D0  1004 _CSPPROG16	=	0x61d0
                           0061D1  1005 _CSPPROG17	=	0x61d1
                           0061D2  1006 _CSPPROG18	=	0x61d2
                           0061D3  1007 _CSPPROG19	=	0x61d3
                           0061D4  1008 _CSPPROG20	=	0x61d4
                           0061D5  1009 _CSPPROG21	=	0x61d5
                           0061D6  1010 _CSPPROG22	=	0x61d6
                           0061D7  1011 _CSPPROG23	=	0x61d7
                           0061E0  1012 _CSPCTRL	=	0x61e0
                           0061E1  1013 _CSPSTAT	=	0x61e1
                           0061E2  1014 _CSPX	=	0x61e2
                           0061E3  1015 _CSPY	=	0x61e3
                           0061E4  1016 _CSPZ	=	0x61e4
                           0061E5  1017 _CSPT	=	0x61e5
                           006200  1018 _USBADDR	=	0x6200
                           006201  1019 _USBPOW	=	0x6201
                           006202  1020 _USBIIF	=	0x6202
                           006204  1021 _USBOIF	=	0x6204
                           006206  1022 _USBCIF	=	0x6206
                           006207  1023 _USBIIE	=	0x6207
                           006209  1024 _USBOIE	=	0x6209
                           00620B  1025 _USBCIE	=	0x620b
                           00620C  1026 _USBFRML	=	0x620c
                           00620D  1027 _USBFRMH	=	0x620d
                           00620E  1028 _USBINDEX	=	0x620e
                           00620F  1029 _USBCTRL	=	0x620f
                           006210  1030 _USBMAXI	=	0x6210
                           006211  1031 _USBCS0	=	0x6211
                           006211  1032 _USBCSIL	=	0x6211
                           006212  1033 _USBCSIH	=	0x6212
                           006213  1034 _USBMAXO	=	0x6213
                           006214  1035 _USBCSOL	=	0x6214
                           006215  1036 _USBCSOH	=	0x6215
                           006216  1037 _USBCNT0	=	0x6216
                           006216  1038 _USBCNTL	=	0x6216
                           006217  1039 _USBCNTH	=	0x6217
                           006220  1040 _USBF0	=	0x6220
                           006222  1041 _USBF1	=	0x6222
                           006224  1042 _USBF2	=	0x6224
                           006226  1043 _USBF3	=	0x6226
                           006228  1044 _USBF4	=	0x6228
                           00622A  1045 _USBF5	=	0x622a
                           007080  1046 _X_P0	=	0x7080
                           007086  1047 _X_U0CSR	=	0x7086
                           007089  1048 _X_P0IFG	=	0x7089
                           00708A  1049 _X_P1IFG	=	0x708a
                           00708B  1050 _X_P2IFG	=	0x708b
                           00708C  1051 _X_PICTL	=	0x708c
                           00708D  1052 _X_P1IEN	=	0x708d
                           00708F  1053 _X_P0INP	=	0x708f
                           007090  1054 _X_P1	=	0x7090
                           007091  1055 _X_RFIRQF1	=	0x7091
                           007093  1056 _X_MPAGE	=	0x7093
                           007093  1057 _X__XPAGE	=	0x7093
                           007094  1058 _X_T2CTRL	=	0x7094
                           007095  1059 _X_ST0	=	0x7095
                           007096  1060 _X_ST1	=	0x7096
                           007097  1061 _X_ST2	=	0x7097
                           00709C  1062 _X_T2EVTCFG	=	0x709c
                           00709D  1063 _X_SLEEPSTA	=	0x709d
                           00709E  1064 _X_CLKCONSTA	=	0x709e
                           00709F  1065 _X_FMAP	=	0x709f
                           00709F  1066 _X_PSBANK	=	0x709f
                           0070A0  1067 _X_P2	=	0x70a0
                           0070A1  1068 _X_T2IRQF	=	0x70a1
                           0070A2  1069 _X_T2M0	=	0x70a2
                           0070A3  1070 _X_T2M1	=	0x70a3
                           0070A4  1071 _X_T2MOVF0	=	0x70a4
                           0070A5  1072 _X_T2MOVF1	=	0x70a5
                           0070A6  1073 _X_T2MOVF2	=	0x70a6
                           0070A7  1074 _X_T2IRQM	=	0x70a7
                           0070AB  1075 _X_P0IEN	=	0x70ab
                           0070AC  1076 _X_P2IEN	=	0x70ac
                           0070AD  1077 _X_STLOAD	=	0x70ad
                           0070AE  1078 _X_PMUX	=	0x70ae
                           0070AF  1079 _X_T1STAT	=	0x70af
                           0070B1  1080 _X_ENCDI	=	0x70b1
                           0070B2  1081 _X_ENCDO	=	0x70b2
                           0070B3  1082 _X_ENCCS	=	0x70b3
                           0070B4  1083 _X_ADCCON1	=	0x70b4
                           0070B5  1084 _X_ADCCON2	=	0x70b5
                           0070B6  1085 _X_ADCCON3	=	0x70b6
                           0070BA  1086 _X_ADCL	=	0x70ba
                           0070BB  1087 _X_ADCH	=	0x70bb
                           0070BC  1088 _X_RNDL	=	0x70bc
                           0070BD  1089 _X_RNDH	=	0x70bd
                           0070BE  1090 _X_SLEEPCMD	=	0x70be
                           0070BF  1091 _X_RFERRF	=	0x70bf
                           0070C1  1092 _X_U0DBUF	=	0x70c1
                           0070C2  1093 _X_U0BAUD	=	0x70c2
                           0070C3  1094 _X_T2MSEL	=	0x70c3
                           0070C4  1095 _X_U0UCR	=	0x70c4
                           0070C5  1096 _X_U0GCR	=	0x70c5
                           0070C6  1097 _X_CLKCONCMD	=	0x70c6
                           0070C7  1098 _X_MEMCTR	=	0x70c7
                           0070C9  1099 _X_WDCTL	=	0x70c9
                           0070CA  1100 _X_T3CNT	=	0x70ca
                           0070CB  1101 _X_T3CTL	=	0x70cb
                           0070CC  1102 _X_T3CCTL0	=	0x70cc
                           0070CD  1103 _X_T3CC0	=	0x70cd
                           0070CE  1104 _X_T3CCTL1	=	0x70ce
                           0070CF  1105 _X_T3CC1	=	0x70cf
                           0070D1  1106 _X_DMAIRQ	=	0x70d1
                           0070D2  1107 _X_DMA1CFGL	=	0x70d2
                           0070D3  1108 _X_DMA1CFGH	=	0x70d3
                           0070D4  1109 _X_DMA0CFGL	=	0x70d4
                           0070D5  1110 _X_DMA0CFGH	=	0x70d5
                           0070D6  1111 _X_DMAARM	=	0x70d6
                           0070D7  1112 _X_DMAREQ	=	0x70d7
                           0070D8  1113 _X_TIMIF	=	0x70d8
                           0070D9  1114 _X_RFD	=	0x70d9
                           0070DA  1115 _X_T1CC0L	=	0x70da
                           0070DB  1116 _X_T1CC0H	=	0x70db
                           0070DC  1117 _X_T1CC1L	=	0x70dc
                           0070DD  1118 _X_T1CC1H	=	0x70dd
                           0070DE  1119 _X_T1CC2L	=	0x70de
                           0070DF  1120 _X_T1CC2H	=	0x70df
                           0070E1  1121 _X_RFST	=	0x70e1
                           0070E2  1122 _X_T1CNTL	=	0x70e2
                           0070E3  1123 _X_T1CNTH	=	0x70e3
                           0070E4  1124 _X_T1CTL	=	0x70e4
                           0070E5  1125 _X_T1CCTL0	=	0x70e5
                           0070E6  1126 _X_T1CCTL1	=	0x70e6
                           0070E7  1127 _X_T1CCTL2	=	0x70e7
                           0070E9  1128 _X_RFIRQF0	=	0x70e9
                           0070EA  1129 _X_T4CNT	=	0x70ea
                           0070EB  1130 _X_T4CTL	=	0x70eb
                           0070EC  1131 _X_T4CCTL0	=	0x70ec
                           0070ED  1132 _X_T4CC0	=	0x70ed
                           0070EE  1133 _X_T4CCTL1	=	0x70ee
                           0070EF  1134 _X_T4CC1	=	0x70ef
                           0070F1  1135 _X_PERCFG	=	0x70f1
                           0070F2  1136 _X_APCFG	=	0x70f2
                           0070F3  1137 _X_P0SEL	=	0x70f3
                           0070F4  1138 _X_P1SEL	=	0x70f4
                           0070F5  1139 _X_P2SEL	=	0x70f5
                           0070F6  1140 _X_P1INP	=	0x70f6
                           0070F7  1141 _X_P2INP	=	0x70f7
                           0070F8  1142 _X_U1CSR	=	0x70f8
                           0070F9  1143 _X_U1DBUF	=	0x70f9
                           0070FA  1144 _X_U1BAUD	=	0x70fa
                           0070FB  1145 _X_U1UCR	=	0x70fb
                           0070FC  1146 _X_U1GCR	=	0x70fc
                           0070FD  1147 _X_P0DIR	=	0x70fd
                           0070FE  1148 _X_P1DIR	=	0x70fe
                           0070FF  1149 _X_P2DIR	=	0x70ff
                           007800  1150 _X_INFOPAGE	=	0x7800
                           00780C  1151 _X_IEEE_ADDR	=	0x780c
                                   1152 ;--------------------------------------------------------
                                   1153 ; absolute external ram data
                                   1154 ;--------------------------------------------------------
                                   1155 	.area XABS    (ABS,XDATA)
                                   1156 ;--------------------------------------------------------
                                   1157 ; external initialized ram data
                                   1158 ;--------------------------------------------------------
                                   1159 	.area XISEG   (XDATA)
                                   1160 	.area HOME    (CODE)
                                   1161 	.area GSINIT0 (CODE)
                                   1162 	.area GSINIT1 (CODE)
                                   1163 	.area GSINIT2 (CODE)
                                   1164 	.area GSINIT3 (CODE)
                                   1165 	.area GSINIT4 (CODE)
                                   1166 	.area GSINIT5 (CODE)
                                   1167 	.area GSINIT  (CODE)
                                   1168 	.area GSFINAL (CODE)
                                   1169 	.area CSEG    (CODE)
                                   1170 ;--------------------------------------------------------
                                   1171 ; interrupt vector 
                                   1172 ;--------------------------------------------------------
                                   1173 	.area HOME    (CODE)
      000000                       1174 __interrupt_vect:
      000000 02 00 A1         [24] 1175 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1176 	reti
      000004                       1177 	.ds	7
      00000B 32               [24] 1178 	reti
      00000C                       1179 	.ds	7
      000013 02 07 31         [24] 1180 	ljmp	_uart0_rx_isr
      000016                       1181 	.ds	5
      00001B 32               [24] 1182 	reti
      00001C                       1183 	.ds	7
      000023 32               [24] 1184 	reti
      000024                       1185 	.ds	7
      00002B 02 35 B0         [24] 1186 	ljmp	_clock_isr
      00002E                       1187 	.ds	5
      000033 32               [24] 1188 	reti
      000034                       1189 	.ds	7
      00003B 32               [24] 1190 	reti
      00003C                       1191 	.ds	7
      000043 32               [24] 1192 	reti
      000044                       1193 	.ds	7
      00004B 02 3C BD         [24] 1194 	ljmp	_rtimer_isr
      00004E                       1195 	.ds	5
      000053 32               [24] 1196 	reti
      000054                       1197 	.ds	7
      00005B 32               [24] 1198 	reti
      00005C                       1199 	.ds	7
      000063 32               [24] 1200 	reti
      000064                       1201 	.ds	7
      00006B 02 12 F3         [24] 1202 	ljmp	_port_0_isr
                                   1203 ;--------------------------------------------------------
                                   1204 ; global & static initialisations
                                   1205 ;--------------------------------------------------------
                                   1206 	.area HOME    (CODE)
                                   1207 	.area GSINIT  (CODE)
                                   1208 	.area GSFINAL (CODE)
                                   1209 	.area GSINIT  (CODE)
                                   1210 	.globl __sdcc_gsinit_startup
                                   1211 	.globl __sdcc_program_startup
                                   1212 	.globl __start__stack
                                   1213 	.globl __mcs51_genXINIT
                                   1214 	.globl __mcs51_genXRAMCLEAR
                                   1215 	.globl __mcs51_genRAMCLEAR
                                   1216 	.area GSFINAL (CODE)
      000117 02 00 6E         [24] 1217 	ljmp	__sdcc_program_startup
                                   1218 ;--------------------------------------------------------
                                   1219 ; Home
                                   1220 ;--------------------------------------------------------
                                   1221 	.area HOME    (CODE)
                                   1222 	.area HOME    (CODE)
      00006E                       1223 __sdcc_program_startup:
      00006E 02 03 4A         [24] 1224 	ljmp	_main
                                   1225 ;	return from main will return to caller
                                   1226 ;--------------------------------------------------------
                                   1227 ; code
                                   1228 ;--------------------------------------------------------
                                   1229 	.area CSEG    (CODE)
                                   1230 ;------------------------------------------------------------
                                   1231 ;Allocation info for local variables in function 'fade'
                                   1232 ;------------------------------------------------------------
                                   1233 ;l                         Allocated to stack - sp -5
                                   1234 ;i                         Allocated to stack - sp -3
                                   1235 ;a                         Allocated to stack - sp -1
                                   1236 ;k                         Allocated to registers r4 r5 
                                   1237 ;j                         Allocated to registers r2 r3 
                                   1238 ;------------------------------------------------------------
                                   1239 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:64: fade(int l) CC_NON_BANKED
                                   1240 ;	-----------------------------------------
                                   1241 ;	 function fade
                                   1242 ;	-----------------------------------------
      00011A                       1243 _fade:
                           000007  1244 	ar7 = 0x07
                           000006  1245 	ar6 = 0x06
                           000005  1246 	ar5 = 0x05
                           000004  1247 	ar4 = 0x04
                           000003  1248 	ar3 = 0x03
                           000002  1249 	ar2 = 0x02
                           000001  1250 	ar1 = 0x01
                           000000  1251 	ar0 = 0x00
      00011A C0 82            [24] 1252 	push	dpl
      00011C C0 83            [24] 1253 	push	dph
      00011E E5 81            [12] 1254 	mov	a,sp
      000120 24 04            [12] 1255 	add	a,#0x04
      000122 F5 81            [12] 1256 	mov	sp,a
                                   1257 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:68: for(k = 0; k < 400; ++k) {
      000124 7C 00            [12] 1258 	mov	r4,#0x00
      000126 7D 00            [12] 1259 	mov	r5,#0x00
      000128                       1260 00110$:
                                   1261 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:69: j = k > 200 ? 400 - k : k;
      000128 C3               [12] 1262 	clr	c
      000129 74 C8            [12] 1263 	mov	a,#0xC8
      00012B 9C               [12] 1264 	subb	a,r4
      00012C 74 80            [12] 1265 	mov	a,#(0x00 ^ 0x80)
      00012E 8D F0            [24] 1266 	mov	b,r5
      000130 63 F0 80         [24] 1267 	xrl	b,#0x80
      000133 95 F0            [12] 1268 	subb	a,b
      000135 50 0B            [24] 1269 	jnc	00114$
      000137 74 90            [12] 1270 	mov	a,#0x90
      000139 C3               [12] 1271 	clr	c
      00013A 9C               [12] 1272 	subb	a,r4
      00013B FA               [12] 1273 	mov	r2,a
      00013C 74 01            [12] 1274 	mov	a,#0x01
      00013E 9D               [12] 1275 	subb	a,r5
      00013F FB               [12] 1276 	mov	r3,a
      000140 80 04            [24] 1277 	sjmp	00115$
      000142                       1278 00114$:
      000142 8C 02            [24] 1279 	mov	ar2,r4
      000144 8D 03            [24] 1280 	mov	ar3,r5
      000146                       1281 00115$:
                                   1282 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:71: leds_on(l);
      000146 E5 81            [12] 1283 	mov	a,sp
      000148 24 FB            [12] 1284 	add	a,#0xfb
      00014A F8               [12] 1285 	mov	r0,a
      00014B 86 07            [24] 1286 	mov	ar7,@r0
      00014D 8F 82            [24] 1287 	mov	dpl,r7
      00014F C0 07            [24] 1288 	push	ar7
      000151 C0 05            [24] 1289 	push	ar5
      000153 C0 04            [24] 1290 	push	ar4
      000155 C0 03            [24] 1291 	push	ar3
      000157 C0 02            [24] 1292 	push	ar2
      000159 12 07 E6         [24] 1293 	lcall	_leds_on
      00015C D0 02            [24] 1294 	pop	ar2
      00015E D0 03            [24] 1295 	pop	ar3
      000160 D0 04            [24] 1296 	pop	ar4
      000162 D0 05            [24] 1297 	pop	ar5
      000164 D0 07            [24] 1298 	pop	ar7
                                   1299 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:72: for(i = 0; i < j; ++i) {
      000166 E5 81            [12] 1300 	mov	a,sp
      000168 24 FD            [12] 1301 	add	a,#0xfd
      00016A F8               [12] 1302 	mov	r0,a
      00016B E4               [12] 1303 	clr	a
      00016C F6               [12] 1304 	mov	@r0,a
      00016D 08               [12] 1305 	inc	r0
      00016E F6               [12] 1306 	mov	@r0,a
      00016F                       1307 00105$:
      00016F E5 81            [12] 1308 	mov	a,sp
      000171 24 FD            [12] 1309 	add	a,#0xfd
      000173 F8               [12] 1310 	mov	r0,a
      000174 C3               [12] 1311 	clr	c
      000175 E6               [12] 1312 	mov	a,@r0
      000176 9A               [12] 1313 	subb	a,r2
      000177 08               [12] 1314 	inc	r0
      000178 E6               [12] 1315 	mov	a,@r0
      000179 64 80            [12] 1316 	xrl	a,#0x80
      00017B 8B F0            [24] 1317 	mov	b,r3
      00017D 63 F0 80         [24] 1318 	xrl	b,#0x80
      000180 95 F0            [12] 1319 	subb	a,b
      000182 50 1D            [24] 1320 	jnc	00101$
                                   1321 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:73: a = i;
      000184 E5 81            [12] 1322 	mov	a,sp
      000186 24 FD            [12] 1323 	add	a,#0xfd
      000188 F8               [12] 1324 	mov	r0,a
      000189 A9 81            [24] 1325 	mov	r1,sp
      00018B 19               [12] 1326 	dec	r1
      00018C E6               [12] 1327 	mov	a,@r0
      00018D F7               [12] 1328 	mov	@r1,a
      00018E 08               [12] 1329 	inc	r0
      00018F 09               [12] 1330 	inc	r1
      000190 E6               [12] 1331 	mov	a,@r0
      000191 F7               [12] 1332 	mov	@r1,a
                                   1333 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:72: for(i = 0; i < j; ++i) {
      000192 E5 81            [12] 1334 	mov	a,sp
      000194 24 FD            [12] 1335 	add	a,#0xfd
      000196 F8               [12] 1336 	mov	r0,a
      000197 74 01            [12] 1337 	mov	a,#0x01
      000199 26               [12] 1338 	add	a,@r0
      00019A F6               [12] 1339 	mov	@r0,a
      00019B E4               [12] 1340 	clr	a
      00019C 08               [12] 1341 	inc	r0
      00019D 36               [12] 1342 	addc	a,@r0
      00019E F6               [12] 1343 	mov	@r0,a
      00019F 80 CE            [24] 1344 	sjmp	00105$
      0001A1                       1345 00101$:
                                   1346 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:75: leds_off(l);
      0001A1 8F 82            [24] 1347 	mov	dpl,r7
      0001A3 C0 05            [24] 1348 	push	ar5
      0001A5 C0 04            [24] 1349 	push	ar4
      0001A7 C0 03            [24] 1350 	push	ar3
      0001A9 C0 02            [24] 1351 	push	ar2
      0001AB 12 07 F3         [24] 1352 	lcall	_leds_off
      0001AE D0 02            [24] 1353 	pop	ar2
      0001B0 D0 03            [24] 1354 	pop	ar3
      0001B2 D0 04            [24] 1355 	pop	ar4
      0001B4 D0 05            [24] 1356 	pop	ar5
                                   1357 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:76: for(i = 0; i < 200 - j; ++i) {
      0001B6 E5 81            [12] 1358 	mov	a,sp
      0001B8 24 FD            [12] 1359 	add	a,#0xfd
      0001BA F8               [12] 1360 	mov	r0,a
      0001BB E4               [12] 1361 	clr	a
      0001BC F6               [12] 1362 	mov	@r0,a
      0001BD 08               [12] 1363 	inc	r0
      0001BE F6               [12] 1364 	mov	@r0,a
      0001BF 74 C8            [12] 1365 	mov	a,#0xC8
      0001C1 C3               [12] 1366 	clr	c
      0001C2 9A               [12] 1367 	subb	a,r2
      0001C3 FE               [12] 1368 	mov	r6,a
      0001C4 E4               [12] 1369 	clr	a
      0001C5 9B               [12] 1370 	subb	a,r3
      0001C6 FF               [12] 1371 	mov	r7,a
      0001C7                       1372 00108$:
      0001C7 E5 81            [12] 1373 	mov	a,sp
      0001C9 24 FD            [12] 1374 	add	a,#0xfd
      0001CB F8               [12] 1375 	mov	r0,a
      0001CC C3               [12] 1376 	clr	c
      0001CD E6               [12] 1377 	mov	a,@r0
      0001CE 9E               [12] 1378 	subb	a,r6
      0001CF 08               [12] 1379 	inc	r0
      0001D0 E6               [12] 1380 	mov	a,@r0
      0001D1 64 80            [12] 1381 	xrl	a,#0x80
      0001D3 8F F0            [24] 1382 	mov	b,r7
      0001D5 63 F0 80         [24] 1383 	xrl	b,#0x80
      0001D8 95 F0            [12] 1384 	subb	a,b
      0001DA 50 1D            [24] 1385 	jnc	00111$
                                   1386 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:77: a = i;
      0001DC E5 81            [12] 1387 	mov	a,sp
      0001DE 24 FD            [12] 1388 	add	a,#0xfd
      0001E0 F8               [12] 1389 	mov	r0,a
      0001E1 A9 81            [24] 1390 	mov	r1,sp
      0001E3 19               [12] 1391 	dec	r1
      0001E4 E6               [12] 1392 	mov	a,@r0
      0001E5 F7               [12] 1393 	mov	@r1,a
      0001E6 08               [12] 1394 	inc	r0
      0001E7 09               [12] 1395 	inc	r1
      0001E8 E6               [12] 1396 	mov	a,@r0
      0001E9 F7               [12] 1397 	mov	@r1,a
                                   1398 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:76: for(i = 0; i < 200 - j; ++i) {
      0001EA E5 81            [12] 1399 	mov	a,sp
      0001EC 24 FD            [12] 1400 	add	a,#0xfd
      0001EE F8               [12] 1401 	mov	r0,a
      0001EF 74 01            [12] 1402 	mov	a,#0x01
      0001F1 26               [12] 1403 	add	a,@r0
      0001F2 F6               [12] 1404 	mov	@r0,a
      0001F3 E4               [12] 1405 	clr	a
      0001F4 08               [12] 1406 	inc	r0
      0001F5 36               [12] 1407 	addc	a,@r0
      0001F6 F6               [12] 1408 	mov	@r0,a
      0001F7 80 CE            [24] 1409 	sjmp	00108$
      0001F9                       1410 00111$:
                                   1411 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:68: for(k = 0; k < 400; ++k) {
      0001F9 0C               [12] 1412 	inc	r4
      0001FA BC 00 01         [24] 1413 	cjne	r4,#0x00,00138$
      0001FD 0D               [12] 1414 	inc	r5
      0001FE                       1415 00138$:
      0001FE C3               [12] 1416 	clr	c
      0001FF EC               [12] 1417 	mov	a,r4
      000200 94 90            [12] 1418 	subb	a,#0x90
      000202 ED               [12] 1419 	mov	a,r5
      000203 64 80            [12] 1420 	xrl	a,#0x80
      000205 94 81            [12] 1421 	subb	a,#0x81
      000207 50 03            [24] 1422 	jnc	00139$
      000209 02 01 28         [24] 1423 	ljmp	00110$
      00020C                       1424 00139$:
      00020C E5 81            [12] 1425 	mov	a,sp
      00020E 24 FA            [12] 1426 	add	a,#0xFA
      000210 F5 81            [12] 1427 	mov	sp,a
      000212 22               [24] 1428 	ret
                                   1429 ;------------------------------------------------------------
                                   1430 ;Allocation info for local variables in function 'set_rf_params'
                                   1431 ;------------------------------------------------------------
                                   1432 ;i                         Allocated to registers r4 
                                   1433 ;short_addr                Allocated to registers r7 r6 
                                   1434 ;ext_addr                  Allocated to stack - sp -7
                                   1435 ;macp                      Allocated to registers 
                                   1436 ;------------------------------------------------------------
                                   1437 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:83: set_rf_params(void) CC_NON_BANKED
                                   1438 ;	-----------------------------------------
                                   1439 ;	 function set_rf_params
                                   1440 ;	-----------------------------------------
      000213                       1441 _set_rf_params:
      000213 E5 81            [12] 1442 	mov	a,sp
      000215 24 08            [12] 1443 	add	a,#0x08
      000217 F5 81            [12] 1444 	mov	sp,a
                                   1445 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:90: __xdata unsigned char *macp = &X_IEEE_ADDR;
      000219 7E 0C            [12] 1446 	mov	r6,#_X_IEEE_ADDR
      00021B 7F 78            [12] 1447 	mov	r7,#(_X_IEEE_ADDR >> 8)
                                   1448 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:124: for(i = 7; i >= 0; --i) {
      00021D E5 81            [12] 1449 	mov	a,sp
      00021F 24 F9            [12] 1450 	add	a,#0xF9
      000221 FD               [12] 1451 	mov	r5,a
      000222 7C 07            [12] 1452 	mov	r4,#0x07
      000224                       1453 00102$:
                                   1454 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:125: ext_addr[i] = *macp;
      000224 EC               [12] 1455 	mov	a,r4
      000225 2D               [12] 1456 	add	a,r5
      000226 F9               [12] 1457 	mov	r1,a
      000227 8E 82            [24] 1458 	mov	dpl,r6
      000229 8F 83            [24] 1459 	mov	dph,r7
      00022B E0               [24] 1460 	movx	a,@dptr
      00022C FB               [12] 1461 	mov	r3,a
      00022D A3               [24] 1462 	inc	dptr
      00022E AE 82            [24] 1463 	mov	r6,dpl
      000230 AF 83            [24] 1464 	mov	r7,dph
      000232 A7 03            [24] 1465 	mov	@r1,ar3
                                   1466 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:126: macp++;
                                   1467 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:124: for(i = 7; i >= 0; --i) {
      000234 1C               [12] 1468 	dec	r4
      000235 EC               [12] 1469 	mov	a,r4
      000236 30 E7 EB         [24] 1470 	jnb	acc.7,00102$
                                   1471 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:135: short_addr = ext_addr[7];
      000239 74 07            [12] 1472 	mov	a,#0x07
      00023B 2D               [12] 1473 	add	a,r5
      00023C F9               [12] 1474 	mov	r1,a
      00023D 87 07            [24] 1475 	mov	ar7,@r1
      00023F 7E 00            [12] 1476 	mov	r6,#0x00
                                   1477 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:136: short_addr |= ext_addr[6] << 8;
      000241 74 06            [12] 1478 	mov	a,#0x06
      000243 2D               [12] 1479 	add	a,r5
      000244 F9               [12] 1480 	mov	r1,a
      000245 87 04            [24] 1481 	mov	ar4,@r1
      000247 8C 03            [24] 1482 	mov	ar3,r4
      000249 E4               [12] 1483 	clr	a
      00024A 42 07            [12] 1484 	orl	ar7,a
      00024C EB               [12] 1485 	mov	a,r3
      00024D 42 06            [12] 1486 	orl	ar6,a
                                   1487 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:139: memcpy(&linkaddr_node_addr, &ext_addr[8 - LINKADDR_SIZE], LINKADDR_SIZE);
      00024F 89 04            [24] 1488 	mov	ar4,r1
      000251 7B 00            [12] 1489 	mov	r3,#0x00
      000253 7A 40            [12] 1490 	mov	r2,#0x40
      000255 C0 07            [24] 1491 	push	ar7
      000257 C0 06            [24] 1492 	push	ar6
      000259 C0 05            [24] 1493 	push	ar5
      00025B 74 02            [12] 1494 	mov	a,#0x02
      00025D C0 E0            [24] 1495 	push	acc
      00025F E4               [12] 1496 	clr	a
      000260 C0 E0            [24] 1497 	push	acc
      000262 C0 04            [24] 1498 	push	ar4
      000264 C0 03            [24] 1499 	push	ar3
      000266 C0 02            [24] 1500 	push	ar2
      000268 90 03 0A         [24] 1501 	mov	dptr,#_linkaddr_node_addr
      00026B 75 F0 00         [24] 1502 	mov	b,#0x00
      00026E 12 41 4A         [24] 1503 	lcall	_memcpy
      000271 E5 81            [12] 1504 	mov	a,sp
      000273 24 FB            [12] 1505 	add	a,#0xfb
      000275 F5 81            [12] 1506 	mov	sp,a
      000277 D0 05            [24] 1507 	pop	ar5
      000279 D0 06            [24] 1508 	pop	ar6
      00027B D0 07            [24] 1509 	pop	ar7
                                   1510 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:153: NETSTACK_RADIO.set_value(RADIO_PARAM_PAN_ID, IEEE802154_PANID);
      00027D 90 A6 71         [24] 1511 	mov	dptr,#(_cc2530_rf_driver + 0x0016)
      000280 E4               [12] 1512 	clr	a
      000281 93               [24] 1513 	movc	a,@a+dptr
      000282 FB               [12] 1514 	mov	r3,a
      000283 A3               [24] 1515 	inc	dptr
      000284 E4               [12] 1516 	clr	a
      000285 93               [24] 1517 	movc	a,@a+dptr
      000286 FC               [12] 1518 	mov	r4,a
      000287 C0 07            [24] 1519 	push	ar7
      000289 C0 06            [24] 1520 	push	ar6
      00028B C0 05            [24] 1521 	push	ar5
      00028D C0 04            [24] 1522 	push	ar4
      00028F C0 03            [24] 1523 	push	ar3
      000291 74 CD            [12] 1524 	mov	a,#0xCD
      000293 C0 E0            [24] 1525 	push	acc
      000295 74 AB            [12] 1526 	mov	a,#0xAB
      000297 C0 E0            [24] 1527 	push	acc
      000299 12 02 9E         [24] 1528 	lcall	00114$
      00029C 80 08            [24] 1529 	sjmp	00115$
      00029E                       1530 00114$:
      00029E C0 03            [24] 1531 	push	ar3
      0002A0 C0 04            [24] 1532 	push	ar4
      0002A2 90 00 02         [24] 1533 	mov	dptr,#0x0002
      0002A5 22               [24] 1534 	ret
      0002A6                       1535 00115$:
      0002A6 15 81            [12] 1536 	dec	sp
      0002A8 15 81            [12] 1537 	dec	sp
      0002AA D0 03            [24] 1538 	pop	ar3
      0002AC D0 04            [24] 1539 	pop	ar4
      0002AE D0 05            [24] 1540 	pop	ar5
      0002B0 D0 06            [24] 1541 	pop	ar6
      0002B2 D0 07            [24] 1542 	pop	ar7
                                   1543 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:154: NETSTACK_RADIO.set_value(RADIO_PARAM_16BIT_ADDR, short_addr);
      0002B4 90 A6 71         [24] 1544 	mov	dptr,#(_cc2530_rf_driver + 0x0016)
      0002B7 E4               [12] 1545 	clr	a
      0002B8 93               [24] 1546 	movc	a,@a+dptr
      0002B9 FB               [12] 1547 	mov	r3,a
      0002BA A3               [24] 1548 	inc	dptr
      0002BB E4               [12] 1549 	clr	a
      0002BC 93               [24] 1550 	movc	a,@a+dptr
      0002BD FC               [12] 1551 	mov	r4,a
      0002BE C0 05            [24] 1552 	push	ar5
      0002C0 C0 04            [24] 1553 	push	ar4
      0002C2 C0 03            [24] 1554 	push	ar3
      0002C4 C0 07            [24] 1555 	push	ar7
      0002C6 C0 06            [24] 1556 	push	ar6
      0002C8 12 02 CD         [24] 1557 	lcall	00116$
      0002CB 80 08            [24] 1558 	sjmp	00117$
      0002CD                       1559 00116$:
      0002CD C0 03            [24] 1560 	push	ar3
      0002CF C0 04            [24] 1561 	push	ar4
      0002D1 90 00 03         [24] 1562 	mov	dptr,#0x0003
      0002D4 22               [24] 1563 	ret
      0002D5                       1564 00117$:
      0002D5 15 81            [12] 1565 	dec	sp
      0002D7 15 81            [12] 1566 	dec	sp
      0002D9 D0 03            [24] 1567 	pop	ar3
      0002DB D0 04            [24] 1568 	pop	ar4
      0002DD D0 05            [24] 1569 	pop	ar5
                                   1570 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:155: NETSTACK_RADIO.set_value(RADIO_PARAM_CHANNEL, CC2530_RF_CHANNEL);
      0002DF 90 A6 71         [24] 1571 	mov	dptr,#(_cc2530_rf_driver + 0x0016)
      0002E2 E4               [12] 1572 	clr	a
      0002E3 93               [24] 1573 	movc	a,@a+dptr
      0002E4 FE               [12] 1574 	mov	r6,a
      0002E5 A3               [24] 1575 	inc	dptr
      0002E6 E4               [12] 1576 	clr	a
      0002E7 93               [24] 1577 	movc	a,@a+dptr
      0002E8 FF               [12] 1578 	mov	r7,a
      0002E9 C0 07            [24] 1579 	push	ar7
      0002EB C0 06            [24] 1580 	push	ar6
      0002ED C0 05            [24] 1581 	push	ar5
      0002EF 74 19            [12] 1582 	mov	a,#0x19
      0002F1 C0 E0            [24] 1583 	push	acc
      0002F3 E4               [12] 1584 	clr	a
      0002F4 C0 E0            [24] 1585 	push	acc
      0002F6 12 02 FB         [24] 1586 	lcall	00118$
      0002F9 80 08            [24] 1587 	sjmp	00119$
      0002FB                       1588 00118$:
      0002FB C0 06            [24] 1589 	push	ar6
      0002FD C0 07            [24] 1590 	push	ar7
      0002FF 90 00 01         [24] 1591 	mov	dptr,#0x0001
      000302 22               [24] 1592 	ret
      000303                       1593 00119$:
      000303 15 81            [12] 1594 	dec	sp
      000305 15 81            [12] 1595 	dec	sp
      000307 D0 05            [24] 1596 	pop	ar5
      000309 D0 06            [24] 1597 	pop	ar6
      00030B D0 07            [24] 1598 	pop	ar7
                                   1599 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:156: NETSTACK_RADIO.set_object(RADIO_PARAM_64BIT_ADDR, ext_addr, 8);
      00030D 90 A6 75         [24] 1600 	mov	dptr,#(_cc2530_rf_driver + 0x001a)
      000310 E4               [12] 1601 	clr	a
      000311 93               [24] 1602 	movc	a,@a+dptr
      000312 FE               [12] 1603 	mov	r6,a
      000313 A3               [24] 1604 	inc	dptr
      000314 E4               [12] 1605 	clr	a
      000315 93               [24] 1606 	movc	a,@a+dptr
      000316 FF               [12] 1607 	mov	r7,a
      000317 7C 00            [12] 1608 	mov	r4,#0x00
      000319 7B 40            [12] 1609 	mov	r3,#0x40
      00031B C0 07            [24] 1610 	push	ar7
      00031D C0 06            [24] 1611 	push	ar6
      00031F 74 08            [12] 1612 	mov	a,#0x08
      000321 C0 E0            [24] 1613 	push	acc
      000323 E4               [12] 1614 	clr	a
      000324 C0 E0            [24] 1615 	push	acc
      000326 C0 05            [24] 1616 	push	ar5
      000328 C0 04            [24] 1617 	push	ar4
      00032A C0 03            [24] 1618 	push	ar3
      00032C 12 03 31         [24] 1619 	lcall	00120$
      00032F 80 08            [24] 1620 	sjmp	00121$
      000331                       1621 00120$:
      000331 C0 06            [24] 1622 	push	ar6
      000333 C0 07            [24] 1623 	push	ar7
      000335 90 00 09         [24] 1624 	mov	dptr,#0x0009
      000338 22               [24] 1625 	ret
      000339                       1626 00121$:
      000339 E5 81            [12] 1627 	mov	a,sp
      00033B 24 FB            [12] 1628 	add	a,#0xfb
      00033D F5 81            [12] 1629 	mov	sp,a
      00033F D0 06            [24] 1630 	pop	ar6
      000341 D0 07            [24] 1631 	pop	ar7
                                   1632 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:157: return;
      000343 E5 81            [12] 1633 	mov	a,sp
      000345 24 F8            [12] 1634 	add	a,#0xF8
      000347 F5 81            [12] 1635 	mov	sp,a
      000349 22               [24] 1636 	ret
                                   1637 ;------------------------------------------------------------
                                   1638 ;Allocation info for local variables in function 'main'
                                   1639 ;------------------------------------------------------------
                                   1640 ;r                         Allocated to registers r6 
                                   1641 ;------------------------------------------------------------
                                   1642 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:161: main(void) CC_NON_BANKED
                                   1643 ;	-----------------------------------------
                                   1644 ;	 function main
                                   1645 ;	-----------------------------------------
      00034A                       1646 _main:
                                   1647 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:164: clock_init();
      00034A 12 34 E8         [24] 1648 	lcall	_clock_init
                                   1649 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:165: soc_init();
      00034D 12 5C 1B         [24] 1650 	lcall	_soc_init
                                   1651 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:166: rtimer_init();
      000350 12 13 70         [24] 1652 	lcall	_rtimer_init
                                   1653 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:171: leds_init();
      000353 12 07 BD         [24] 1654 	lcall	_leds_init
                                   1655 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:172: leds_off(LEDS_ALL);
      000356 75 82 07         [24] 1656 	mov	dpl,#0x07
      000359 12 07 F3         [24] 1657 	lcall	_leds_off
                                   1658 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:173: fade(LEDS_GREEN);
      00035C 90 00 01         [24] 1659 	mov	dptr,#0x0001
      00035F 12 01 1A         [24] 1660 	lcall	_fade
                                   1661 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:176: process_init();
      000362 12 1D 0A         [24] 1662 	lcall	_process_init
                                   1663 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:182: io_arch_init();
      000365 12 05 7D         [24] 1664 	lcall	_uart0_init
                                   1665 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:187: io_arch_set_input(serial_line_input_byte);
      000368 90 14 EE         [24] 1666 	mov	dptr,#_serial_line_input_byte
      00036B 12 07 25         [24] 1667 	lcall	_uart0_set_input
                                   1668 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:188: serial_line_init();
      00036E 12 16 F0         [24] 1669 	lcall	_serial_line_init
                                   1670 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:190: fade(LEDS_RED);
      000371 90 00 02         [24] 1671 	mov	dptr,#0x0002
      000374 12 01 1A         [24] 1672 	lcall	_fade
                                   1673 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:193: putstring(CONTIKI_VERSION_STRING "\n");
      000377 90 A5 84         [24] 1674 	mov	dptr,#___str_0
      00037A 75 F0 80         [24] 1675 	mov	b,#0x80
      00037D 12 25 A7         [24] 1676 	lcall	_putstring
                                   1677 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:194: putstring(MODEL_STRING);
      000380 90 A5 9F         [24] 1678 	mov	dptr,#___str_1
      000383 75 F0 80         [24] 1679 	mov	b,#0x80
      000386 12 25 A7         [24] 1680 	lcall	_putstring
                                   1681 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:195: switch(CHIPID) {
      000389 90 62 4A         [24] 1682 	mov	dptr,#_CHIPID
      00038C E0               [24] 1683 	movx	a,@dptr
      00038D FF               [12] 1684 	mov	r7,a
      00038E BF 8D 02         [24] 1685 	cjne	r7,#0x8D,00158$
      000391 80 30            [24] 1686 	sjmp	00104$
      000393                       1687 00158$:
      000393 BF 95 02         [24] 1688 	cjne	r7,#0x95,00159$
      000396 80 20            [24] 1689 	sjmp	00103$
      000398                       1690 00159$:
      000398 BF A5 02         [24] 1691 	cjne	r7,#0xA5,00160$
      00039B 80 05            [24] 1692 	sjmp	00101$
      00039D                       1693 00160$:
                                   1694 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:196: case 0xA5:
      00039D BF B5 2C         [24] 1695 	cjne	r7,#0xB5,00105$
      0003A0 80 0B            [24] 1696 	sjmp	00102$
      0003A2                       1697 00101$:
                                   1698 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:197: putstring("cc2530");
      0003A2 90 A5 B0         [24] 1699 	mov	dptr,#___str_2
      0003A5 75 F0 80         [24] 1700 	mov	b,#0x80
      0003A8 12 25 A7         [24] 1701 	lcall	_putstring
                                   1702 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:198: break;
                                   1703 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:199: case 0xB5:
      0003AB 80 1F            [24] 1704 	sjmp	00105$
      0003AD                       1705 00102$:
                                   1706 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:200: putstring("cc2531");
      0003AD 90 A5 B7         [24] 1707 	mov	dptr,#___str_3
      0003B0 75 F0 80         [24] 1708 	mov	b,#0x80
      0003B3 12 25 A7         [24] 1709 	lcall	_putstring
                                   1710 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:201: break;
                                   1711 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:202: case 0x95:
      0003B6 80 14            [24] 1712 	sjmp	00105$
      0003B8                       1713 00103$:
                                   1714 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:203: putstring("cc2533");
      0003B8 90 A5 BE         [24] 1715 	mov	dptr,#___str_4
      0003BB 75 F0 80         [24] 1716 	mov	b,#0x80
      0003BE 12 25 A7         [24] 1717 	lcall	_putstring
                                   1718 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:204: break;
                                   1719 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:205: case 0x8D:
      0003C1 80 09            [24] 1720 	sjmp	00105$
      0003C3                       1721 00104$:
                                   1722 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:206: putstring("cc2540");
      0003C3 90 A5 C5         [24] 1723 	mov	dptr,#___str_5
      0003C6 75 F0 80         [24] 1724 	mov	b,#0x80
      0003C9 12 25 A7         [24] 1725 	lcall	_putstring
                                   1726 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:208: }
      0003CC                       1727 00105$:
                                   1728 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:210: putstring("-" CC2530_FLAVOR_STRING ", ");
      0003CC 90 A5 CC         [24] 1729 	mov	dptr,#___str_6
      0003CF 75 F0 80         [24] 1730 	mov	b,#0x80
      0003D2 12 25 A7         [24] 1731 	lcall	_putstring
                                   1732 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:211: puthex(CHIPINFO1 + 1);
      0003D5 90 62 77         [24] 1733 	mov	dptr,#_CHIPINFO1
      0003D8 E0               [24] 1734 	movx	a,@dptr
      0003D9 FF               [12] 1735 	mov	r7,a
      0003DA 0F               [12] 1736 	inc	r7
      0003DB 8F 82            [24] 1737 	mov	dpl,r7
      0003DD 12 25 D2         [24] 1738 	lcall	_puthex
                                   1739 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:212: putstring("KB SRAM\n");
      0003E0 90 A5 D4         [24] 1740 	mov	dptr,#___str_7
      0003E3 75 F0 80         [24] 1741 	mov	b,#0x80
      0003E6 12 25 A7         [24] 1742 	lcall	_putstring
                                   1743 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:244: watchdog_init();
      0003E9 12 07 8D         [24] 1744 	lcall	_watchdog_init
                                   1745 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:247: random_init(0);
      0003EC 90 00 00         [24] 1746 	mov	dptr,#0x0000
      0003EF 12 51 CB         [24] 1747 	lcall	_random_init
                                   1748 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:250: process_start(&etimer_process, NULL);
      0003F2 E4               [12] 1749 	clr	a
      0003F3 C0 E0            [24] 1750 	push	acc
      0003F5 C0 E0            [24] 1751 	push	acc
      0003F7 C0 E0            [24] 1752 	push	acc
      0003F9 90 0A 9F         [24] 1753 	mov	dptr,#_etimer_process
      0003FC 75 F0 00         [24] 1754 	mov	b,#0x00
      0003FF 12 17 2F         [24] 1755 	lcall	_process_start
      000402 15 81            [12] 1756 	dec	sp
      000404 15 81            [12] 1757 	dec	sp
      000406 15 81            [12] 1758 	dec	sp
                                   1759 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:251: ctimer_init();
      000408 12 55 3B         [24] 1760 	lcall	_ctimer_init
                                   1761 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:254: netstack_init();
      00040B 12 26 57         [24] 1762 	lcall	_netstack_init
                                   1763 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:255: set_rf_params();
      00040E 12 02 13         [24] 1764 	lcall	_set_rf_params
                                   1765 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:258: process_start(&sensors_process, NULL);
      000411 E4               [12] 1766 	clr	a
      000412 C0 E0            [24] 1767 	push	acc
      000414 C0 E0            [24] 1768 	push	acc
      000416 C0 E0            [24] 1769 	push	acc
      000418 90 0A B7         [24] 1770 	mov	dptr,#_sensors_process
      00041B 75 F0 00         [24] 1771 	mov	b,#0x00
      00041E 12 17 2F         [24] 1772 	lcall	_process_start
      000421 15 81            [12] 1773 	dec	sp
      000423 15 81            [12] 1774 	dec	sp
      000425 15 81            [12] 1775 	dec	sp
                                   1776 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:259: BUTTON_SENSOR_ACTIVATE();
      000427 90 A5 F5         [24] 1777 	mov	dptr,#(_button_1_sensor + 0x0005)
      00042A E4               [12] 1778 	clr	a
      00042B 93               [24] 1779 	movc	a,@a+dptr
      00042C FE               [12] 1780 	mov	r6,a
      00042D A3               [24] 1781 	inc	dptr
      00042E E4               [12] 1782 	clr	a
      00042F 93               [24] 1783 	movc	a,@a+dptr
      000430 FF               [12] 1784 	mov	r7,a
      000431 C0 07            [24] 1785 	push	ar7
      000433 C0 06            [24] 1786 	push	ar6
      000435 74 01            [12] 1787 	mov	a,#0x01
      000437 C0 E0            [24] 1788 	push	acc
      000439 E4               [12] 1789 	clr	a
      00043A C0 E0            [24] 1790 	push	acc
      00043C 12 04 41         [24] 1791 	lcall	00162$
      00043F 80 08            [24] 1792 	sjmp	00163$
      000441                       1793 00162$:
      000441 C0 06            [24] 1794 	push	ar6
      000443 C0 07            [24] 1795 	push	ar7
      000445 90 00 81         [24] 1796 	mov	dptr,#0x0081
      000448 22               [24] 1797 	ret
      000449                       1798 00163$:
      000449 15 81            [12] 1799 	dec	sp
      00044B 15 81            [12] 1800 	dec	sp
      00044D D0 06            [24] 1801 	pop	ar6
      00044F D0 07            [24] 1802 	pop	ar7
                                   1803 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:260: ADC_SENSOR_ACTIVATE();
      000451 90 A5 E8         [24] 1804 	mov	dptr,#(_adc_sensor + 0x0005)
      000454 E4               [12] 1805 	clr	a
      000455 93               [24] 1806 	movc	a,@a+dptr
      000456 FE               [12] 1807 	mov	r6,a
      000457 A3               [24] 1808 	inc	dptr
      000458 E4               [12] 1809 	clr	a
      000459 93               [24] 1810 	movc	a,@a+dptr
      00045A FF               [12] 1811 	mov	r7,a
      00045B C0 07            [24] 1812 	push	ar7
      00045D C0 06            [24] 1813 	push	ar6
      00045F 74 01            [12] 1814 	mov	a,#0x01
      000461 C0 E0            [24] 1815 	push	acc
      000463 E4               [12] 1816 	clr	a
      000464 C0 E0            [24] 1817 	push	acc
      000466 12 04 6B         [24] 1818 	lcall	00164$
      000469 80 08            [24] 1819 	sjmp	00165$
      00046B                       1820 00164$:
      00046B C0 06            [24] 1821 	push	ar6
      00046D C0 07            [24] 1822 	push	ar7
      00046F 90 00 81         [24] 1823 	mov	dptr,#0x0081
      000472 22               [24] 1824 	ret
      000473                       1825 00165$:
      000473 15 81            [12] 1826 	dec	sp
      000475 15 81            [12] 1827 	dec	sp
      000477 D0 06            [24] 1828 	pop	ar6
      000479 D0 07            [24] 1829 	pop	ar7
                                   1830 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:273: energest_init();
      00047B 12 26 BD         [24] 1831 	lcall	_energest_init
                                   1832 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:276: autostart_start(autostart_processes);
      00047E 90 A5 DD         [24] 1833 	mov	dptr,#_autostart_processes
      000481 75 F0 80         [24] 1834 	mov	b,#0x80
      000484 12 32 A5         [24] 1835 	lcall	_autostart_start
                                   1836 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:278: watchdog_start();
      000487 12 07 91         [24] 1837 	lcall	_watchdog_start
                                   1838 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:280: fade(LEDS_YELLOW);
      00048A 90 00 04         [24] 1839 	mov	dptr,#0x0004
      00048D 12 01 1A         [24] 1840 	lcall	_fade
                                   1841 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:284: do {
      000490                       1842 00113$:
                                   1843 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:286: watchdog_periodic();
      000490 12 07 95         [24] 1844 	lcall	_watchdog_periodic
                                   1845 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:289: if(sleep_flag) {
      000493 90 02 15         [24] 1846 	mov	dptr,#_sleep_flag
      000496 E0               [24] 1847 	movx	a,@dptr
      000497 E0               [24] 1848 	movx	a,@dptr
      000498 60 3F            [24] 1849 	jz	00112$
                                   1850 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:290: if(etimer_pending() &&
      00049A 12 10 A1         [24] 1851 	lcall	_etimer_pending
      00049D E5 82            [12] 1852 	mov	a,dpl
      00049F 85 83 F0         [24] 1853 	mov	b,dph
      0004A2 45 F0            [12] 1854 	orl	a,b
      0004A4 60 2E            [24] 1855 	jz	00109$
                                   1856 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:291: (etimer_next_expiration_time() - clock_time() - 1) > MAX_TICKS) {
      0004A6 12 10 D7         [24] 1857 	lcall	_etimer_next_expiration_time
      0004A9 AE 82            [24] 1858 	mov	r6,dpl
      0004AB AF 83            [24] 1859 	mov	r7,dph
      0004AD C0 07            [24] 1860 	push	ar7
      0004AF C0 06            [24] 1861 	push	ar6
      0004B1 12 34 D1         [24] 1862 	lcall	_clock_time
      0004B4 AC 82            [24] 1863 	mov	r4,dpl
      0004B6 AD 83            [24] 1864 	mov	r5,dph
      0004B8 D0 06            [24] 1865 	pop	ar6
      0004BA D0 07            [24] 1866 	pop	ar7
      0004BC EE               [12] 1867 	mov	a,r6
      0004BD C3               [12] 1868 	clr	c
      0004BE 9C               [12] 1869 	subb	a,r4
      0004BF FE               [12] 1870 	mov	r6,a
      0004C0 EF               [12] 1871 	mov	a,r7
      0004C1 9D               [12] 1872 	subb	a,r5
      0004C2 FF               [12] 1873 	mov	r7,a
      0004C3 1E               [12] 1874 	dec	r6
      0004C4 BE FF 01         [24] 1875 	cjne	r6,#0xFF,00168$
      0004C7 1F               [12] 1876 	dec	r7
      0004C8                       1877 00168$:
      0004C8 C3               [12] 1878 	clr	c
      0004C9 74 FF            [12] 1879 	mov	a,#0xFF
      0004CB 9E               [12] 1880 	subb	a,r6
      0004CC 74 7F            [12] 1881 	mov	a,#0x7F
      0004CE 9F               [12] 1882 	subb	a,r7
      0004CF 50 03            [24] 1883 	jnc	00109$
                                   1884 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:292: etimer_request_poll();
      0004D1 12 0D DC         [24] 1885 	lcall	_etimer_request_poll
      0004D4                       1886 00109$:
                                   1887 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:294: sleep_flag = 0;
      0004D4 90 02 15         [24] 1888 	mov	dptr,#_sleep_flag
      0004D7 E4               [12] 1889 	clr	a
      0004D8 F0               [24] 1890 	movx	@dptr,a
      0004D9                       1891 00112$:
                                   1892 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:297: r = process_run();
      0004D9 12 1F 7D         [24] 1893 	lcall	_process_run
      0004DC AE 82            [24] 1894 	mov	r6,dpl
      0004DE AF 83            [24] 1895 	mov	r7,dph
                                   1896 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:298: } while(r > 0);
      0004E0 EE               [12] 1897 	mov	a,r6
      0004E1 70 AD            [24] 1898 	jnz	00113$
                                   1899 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:299: len = NETSTACK_RADIO.pending_packet();
      0004E3 90 A6 69         [24] 1900 	mov	dptr,#(_cc2530_rf_driver + 0x000e)
      0004E6 E4               [12] 1901 	clr	a
      0004E7 93               [24] 1902 	movc	a,@a+dptr
      0004E8 FE               [12] 1903 	mov	r6,a
      0004E9 A3               [24] 1904 	inc	dptr
      0004EA E4               [12] 1905 	clr	a
      0004EB 93               [24] 1906 	movc	a,@a+dptr
      0004EC FF               [12] 1907 	mov	r7,a
      0004ED C0 07            [24] 1908 	push	ar7
      0004EF C0 06            [24] 1909 	push	ar6
      0004F1 8E 82            [24] 1910 	mov	dpl,r6
      0004F3 8F 83            [24] 1911 	mov	dph,r7
      0004F5 12 00 71         [24] 1912 	lcall	__sdcc_call_dptr
      0004F8 85 82 08         [24] 1913 	mov	_len,dpl
      0004FB 85 83 09         [24] 1914 	mov	(_len + 1),dph
      0004FE D0 06            [24] 1915 	pop	ar6
      000500 D0 07            [24] 1916 	pop	ar7
                                   1917 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:300: if(len) {
      000502 E5 08            [12] 1918 	mov	a,_len
      000504 45 09            [12] 1919 	orl	a,(_len + 1)
      000506 60 88            [24] 1920 	jz	00113$
                                   1921 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:301: packetbuf_clear();
      000508 12 36 BF         [24] 1922 	lcall	_packetbuf_clear
                                   1923 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:302: len = NETSTACK_RADIO.read(packetbuf_dataptr(), PACKETBUF_SIZE);
      00050B 90 A6 63         [24] 1924 	mov	dptr,#(_cc2530_rf_driver + 0x0008)
      00050E E4               [12] 1925 	clr	a
      00050F 93               [24] 1926 	movc	a,@a+dptr
      000510 FE               [12] 1927 	mov	r6,a
      000511 A3               [24] 1928 	inc	dptr
      000512 E4               [12] 1929 	clr	a
      000513 93               [24] 1930 	movc	a,@a+dptr
      000514 FF               [12] 1931 	mov	r7,a
      000515 C0 07            [24] 1932 	push	ar7
      000517 C0 06            [24] 1933 	push	ar6
      000519 12 3A 4B         [24] 1934 	lcall	_packetbuf_dataptr
      00051C AB 82            [24] 1935 	mov	r3,dpl
      00051E AC 83            [24] 1936 	mov	r4,dph
      000520 AD F0            [24] 1937 	mov	r5,b
      000522 D0 06            [24] 1938 	pop	ar6
      000524 D0 07            [24] 1939 	pop	ar7
      000526 C0 07            [24] 1940 	push	ar7
      000528 C0 06            [24] 1941 	push	ar6
      00052A 74 80            [12] 1942 	mov	a,#0x80
      00052C C0 E0            [24] 1943 	push	acc
      00052E E4               [12] 1944 	clr	a
      00052F C0 E0            [24] 1945 	push	acc
      000531 12 05 36         [24] 1946 	lcall	00172$
      000534 80 0B            [24] 1947 	sjmp	00173$
      000536                       1948 00172$:
      000536 C0 06            [24] 1949 	push	ar6
      000538 C0 07            [24] 1950 	push	ar7
      00053A 8B 82            [24] 1951 	mov	dpl,r3
      00053C 8C 83            [24] 1952 	mov	dph,r4
      00053E 8D F0            [24] 1953 	mov	b,r5
      000540 22               [24] 1954 	ret
      000541                       1955 00173$:
      000541 85 82 08         [24] 1956 	mov	_len,dpl
      000544 85 83 09         [24] 1957 	mov	(_len + 1),dph
      000547 15 81            [12] 1958 	dec	sp
      000549 15 81            [12] 1959 	dec	sp
      00054B D0 06            [24] 1960 	pop	ar6
      00054D D0 07            [24] 1961 	pop	ar7
                                   1962 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:303: if(len > 0) {
      00054F E5 08            [12] 1963 	mov	a,_len
      000551 45 09            [12] 1964 	orl	a,(_len + 1)
      000553 70 03            [24] 1965 	jnz	00174$
      000555 02 04 90         [24] 1966 	ljmp	00113$
      000558                       1967 00174$:
                                   1968 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:304: packetbuf_set_datalen(len);
      000558 85 08 82         [24] 1969 	mov	dpl,_len
      00055B 85 09 83         [24] 1970 	mov	dph,(_len + 1)
      00055E 12 3A 3F         [24] 1971 	lcall	_packetbuf_set_datalen
                                   1972 ;	/opt/contiki/platform/cc2530dk/./contiki-main.c:305: NETSTACK_RDC.input();
      000561 90 A6 A2         [24] 1973 	mov	dptr,#(_nullrdc_driver + 0x0009)
      000564 E4               [12] 1974 	clr	a
      000565 93               [24] 1975 	movc	a,@a+dptr
      000566 FE               [12] 1976 	mov	r6,a
      000567 A3               [24] 1977 	inc	dptr
      000568 E4               [12] 1978 	clr	a
      000569 93               [24] 1979 	movc	a,@a+dptr
      00056A FF               [12] 1980 	mov	r7,a
      00056B C0 07            [24] 1981 	push	ar7
      00056D C0 06            [24] 1982 	push	ar6
      00056F 8E 82            [24] 1983 	mov	dpl,r6
      000571 8F 83            [24] 1984 	mov	dph,r7
      000573 12 00 71         [24] 1985 	lcall	__sdcc_call_dptr
      000576 D0 06            [24] 1986 	pop	ar6
      000578 D0 07            [24] 1987 	pop	ar7
      00057A 02 04 90         [24] 1988 	ljmp	00113$
                                   1989 	.area CSEG    (CODE)
                                   1990 	.area CONST   (CODE)
      00A584                       1991 ___str_0:
      00A584 43 6F 6E 74 69 6B 69  1992 	.ascii "Contiki-3.x-1610-g566b251"
             2D 33 2E 78 2D 31 36
             31 30 2D 67 35 36 36
             62 32 35 31
      00A59D 0A                    1993 	.db 0x0A
      00A59E 00                    1994 	.db 0x00
      00A59F                       1995 ___str_1:
      00A59F 54 49 20 53 6D 61 72  1996 	.ascii "TI SmartRF05 EB"
             74 52 46 30 35 20 45
             42
      00A5AE 0A                    1997 	.db 0x0A
      00A5AF 00                    1998 	.db 0x00
      00A5B0                       1999 ___str_2:
      00A5B0 63 63 32 35 33 30     2000 	.ascii "cc2530"
      00A5B6 00                    2001 	.db 0x00
      00A5B7                       2002 ___str_3:
      00A5B7 63 63 32 35 33 31     2003 	.ascii "cc2531"
      00A5BD 00                    2004 	.db 0x00
      00A5BE                       2005 ___str_4:
      00A5BE 63 63 32 35 33 33     2006 	.ascii "cc2533"
      00A5C4 00                    2007 	.db 0x00
      00A5C5                       2008 ___str_5:
      00A5C5 63 63 32 35 34 30     2009 	.ascii "cc2540"
      00A5CB 00                    2010 	.db 0x00
      00A5CC                       2011 ___str_6:
      00A5CC 2D 46 32 35 36 2C 20  2012 	.ascii "-F256, "
      00A5D3 00                    2013 	.db 0x00
      00A5D4                       2014 ___str_7:
      00A5D4 4B 42 20 53 52 41 4D  2015 	.ascii "KB SRAM"
      00A5DB 0A                    2016 	.db 0x0A
      00A5DC 00                    2017 	.db 0x00
                                   2018 	.area XINIT   (CODE)
                                   2019 	.area CABS    (ABS,CODE)
