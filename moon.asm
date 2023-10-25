//Standard imports
#import "./syslabels.asm"
#import "upstart.asm"

.label SCREEN_BUFFER_0 = $1e00

    BASICStub(0,"Entry")

        Entry:
        jmp L_1104

    * = $105C
    L_105c:
        lda #$00
        sta $0a
        lda #$13
        jsr $ffd2
        lda #$1e
        jsr $ffd2
        lda #$11
    L_106c:
        jsr $ffd2
        inc $0a
        ldx $0a
        cpx #$13
        bne L_106c
        inc $1D39
        lda $1D39
     //   inc L_1d35 + $4
      //  lda L_1d35 + $4
        cmp #$01
        beq L_1089
        cmp #$02
        beq L_10ad
        cmp #$03
        beq L_10cf
    L_1089:
        lda #$00
        sta $0a
    L_108d:
        lda #$48
        jsr $ffd2
        lda #$4d
        jsr $ffd2
        jsr $ffd2
        inc $0a
        lda $0a
        cmp #$06
        bne L_108d
        lda #$48
        jsr $ffd2
        lda #$4d
        jsr $ffd2
        rts 


    L_10ad:
        lda #$00
        sta $0a
    L_10b1:
        lda #$4d
        jsr $ffd2
        jsr $ffd2
        lda #$48
        jsr $ffd2
        inc $0a
        lda $0a
        cmp #$06
        bne L_10b1
        lda #$4d
        jsr $ffd2
        jsr $ffd2
        rts 


    L_10cf:
        lda #$00
        sta $0a
    L_10d3:
        lda #$4d
        jsr $ffd2
        lda #$48
        jsr $ffd2
        lda #$4d
        jsr $ffd2
        inc $0a
        lda $0a
        cmp #$06
        bne L_10d3
        lda #$4d
        jsr $ffd2
        lda #$48
        jsr $ffd2
        rts 



        .byte $00,$8d,$39,$1d,$60,$f0,$f0,$02,$0f,$f0,$f0,$f0,$f0,$ea,$ea

    L_1104:
        jsr L_1400
        jsr L_1770

    L_110a:
        jsr L_1400
        jsr L_122c
    L_1110:
        jsr $ffe4
        cmp #$43
        bne L_111a
        jmp L_112d
    L_111a:
        cmp #$5a
        bne L_1124
        jmp L_1176
        jsr $1440
    L_1124:
        jsr L_128d
        jsr L_125d
        jmp L_14d0
    L_112d:
        lda $07
        ldx #$16
        jsr L_1208
        tax 
        lda #$0a
        sta SCREEN_BUFFER_0 + $a4,x
      //  ldy L_1d72 + $f
        ldy $1D81
        lda #$00
        sta SCREEN_BUFFER_0 + $198,y
        lda #$c0
        sta SCREEN_BUFFER_0 + $199,y
        jsr L_1920
        inc $1D81
        //inc L_1d72 + $f
    L_114d:
        inx 
        inc $0e
        lda $0e
        cmp #$16
        bne L_114d
        lda #$00
        sta $0e
        lda #$00
        sta SCREEN_BUFFER_0 + $a4,x
        dec $07
        lda $07
        cmp #$00
        bne L_1173
        lda #$00
        //sta L_1d72 + $f
        sta $1D81
        lda #$05
        sta $07
        jmp L_12c6
    L_1173:
        jmp L_1b50
    L_1176:
        lda #$2c
        sta $04
        lda #$00
        sta $01
        jsr L_125d
        jsr L_125d
        jsr L_125d
        jsr L_125d
        jsr L_125d
        nop 
        nop 
        nop 
        lda #$16
        sta $01
        lda #$00
        sta $04
        lda #$00
        sta $c6
        lda #$40
        sta $0631
        jmp L_1110
    L_11a4:
        nop 
        jsr L_1520
        jsr L_1a90
        jsr L_1970
        jsr L_165f + $1
        jsr L_1ac0
        lda #$00
        ldx $02
        dex 
        sta SCREEN_BUFFER_0 + $b0,x
        inx 
        lda #$03
        sta SCREEN_BUFFER_0 + $b0,x
        inc $02
        lda $02
        cmp #$16
        bcc L_11ce
        lda #$00
        sta $02
    L_11ce:
        lda $03
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        rts 


    L_11d8:
        lda $03
        cmp #$15
        beq L_11ec
        lda $03
        cmp #$01
        bne L_11f5
        lda #$15
        sta $03
        lda #$20
        sta $08
    L_11ec:
        lda $a2
        sta $08
        cmp #$10
        bcs L_1207
        nop 
    L_11f5:
        dec $03
        lda #$09
        ldx $03
        sta SCREEN_BUFFER_0 + $18c,x
        lda #$00
        inx 
        sta SCREEN_BUFFER_0 + $18c,x
        nop 
        nop 
        nop 
    L_1207:
        rts 


    L_1208:
        sta $10
        nop 
        nop 
        stx $11
        lda #$00
        sta $12
    L_1212:
        lda $13
        clc 
        adc $10
        sta $13
        inc $12
        lda $12
        cmp $11
        bcc L_1212
        lda $13
        sta $14
        lda #$00
        sta $13
        lda $14
        rts 


    L_122c:
        lda #$00
        sta $02
        jsr L_12d8
        sta $09
        sta $0a
        sta $0b
        sta $0c
        sta $0d
        lda #$16
        sta $01
        lda #$15
        sta $03
        lda #$0a
        jsr L_13eb
        lda #$08
        sta VICCRF
        lda #$ff
        sta VICCR5
        lda #$00
        sta $04
        lda #$05
        sta $07
        rts 


    L_125d:
        inc $0c
        lda $0c
        cmp #$64
        bne L_125d
        inc $0d
        lda $0d
        cmp $40
        bne L_1270
        jmp L_1277
    L_1270:
        lda #$00
        sta $0c
        jmp L_125d
    L_1277:
        lda #$00
        sta $0c
        sta $0d
        jsr L_12a5
        jsr L_105c
        jsr L_12ff
        jsr L_11a4
        jsr L_11d8
        rts 


    L_128d:
        lda #$00
        sta SCREEN_BUFFER_0 + $c5
        sta SCREEN_BUFFER_0 + $c5
        nop 
        ldx $03
        dex 
        lda SCREEN_BUFFER_0 + $18c,x
        cmp #$12
        beq L_12a2
        nop 
        rts 


    L_12a2:
        jmp L_1700
    L_12a5:
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        lda #$07
        ldx $02
        sta vColorRam + $b0,x
        lda #$07
        ldx $03
        sta vColorRam + $18b,x
        lda #$00
        sta SCREEN_BUFFER_0 + $ba
        sta VICCRC
        sta SCREEN_BUFFER_0 + $ba
        rts 


    L_12c6:
        lda #$04
        sta SCREEN_BUFFER_0 + $ba
        lda #$02
        sta vColorRam + $ba
        nop 
        nop 
        sta vColorRam + $ba
        jmp L_1110
    L_12d8:
       // sta L_1d35 + $1
        sta $1D36
        sta $1D37
        sta $1D36
        sta $1D37
        sta $1D38
        sta $1D39

       // sta L_1d35 + $2
      //  sta L_1d35 + $1
      //  sta L_1d35 + $2
      //  sta L_1d35 + $3
      //  sta L_1d35 + $4
        lda #$0b
        //sta L_1d3a
        sta $1D3A
        lda #$14
        sta $1d3b
        lda #$12
        sta $1D3C
       // sta L_1d3c
        lda #$15
         sta $1D3D
        rts 


    L_12ff:
        clc 
    //    rol L_1c5b
        rol $1C5B
        bcc L_134d
        rol $1C5B
       // rol L_1c5b
       // dec L_1d3a
        dec $1d3a
        dec $1d3b
        dec $1d3c
        dec $1d3d

        //dec L_1d3c
        //dec L_1d3c + $1
        lda $1d3a
        cmp #$00
        beq L_1348
        lda $1d3b
        cmp #$00
        beq L_1340
        lda $1d3c
        cmp #$00
        beq L_1338
        lda $1d3d
        cmp #$00
        bne L_134d
        lda #$16
        sta $1d3d
        jmp L_134d
    L_1338:
        lda #$16
        sta $1d3c
        jmp L_134d
    L_1340:
        lda #$16
        sta $1d3b
        jmp L_134d
    L_1348:
        lda #$16
      //  sta L_1d3a
        sta $1d3a
    L_134d:
        lda #$0b
      //  ldx L_1d3a
        ldx $1d3a
        sta SCREEN_BUFFER_0 + $dc,x
        inx 
        lda #$00
        sta SCREEN_BUFFER_0 + $dc,x
        lda #$0b
        ldx $1d3b
        sta SCREEN_BUFFER_0 + $108,x
        inx 
        lda #$00
        sta SCREEN_BUFFER_0 + $108,x
        lda #$0b
       // ldx L_1d3c
        ldx $1d3c
        sta SCREEN_BUFFER_0 + $134,x
        inx 
        lda #$00
        sta SCREEN_BUFFER_0 + $134,x
        lda #$0b
        //ldx L_1d3c + $1
        ldx $1d3d
        sta SCREEN_BUFFER_0 + $14a,x
        inx 
        lda #$00
        sta SCREEN_BUFFER_0 + $14a,x
        lda #$00
        sta SCREEN_BUFFER_0 + $dd
        sta SCREEN_BUFFER_0 + $f2
        sta SCREEN_BUFFER_0 + $109
        sta SCREEN_BUFFER_0 + $11e
        sta SCREEN_BUFFER_0 + $135
        sta SCREEN_BUFFER_0 + $14a
        sta SCREEN_BUFFER_0 + $14b
        sta SCREEN_BUFFER_0 + $160
        clc 
       // rol L_1c63
        rol $1C63
        bcc L_13c6
       // rol L_1c63
        rol $1C63
       // dec L_1d3c + $2
        dec $1d3e
        dec $1d40
        //lda L_1d3c + $2
        lda $1d3e
        cmp #$00
        bne L_13ba
        lda #$16
       // sta L_1d3c + $2
        sta $1d3e
    L_13ba:
        lda $1d40
        cmp #$00
        bne L_13c6
        lda #$16
        sta $1d40
    L_13c6:
        lda #$0c
      //  ldx L_1d3c + $2
        ldx  $1d3e
        sta SCREEN_BUFFER_0 + $98,x
        lda #$00
        inx 
        sta SCREEN_BUFFER_0 + $98,x
        lda #$0c
        ldx $1d40
        sta SCREEN_BUFFER_0 + $6e,x
        lda #$00
        inx 
        sta SCREEN_BUFFER_0 + $6e,x
        lda #$00
        sta SCREEN_BUFFER_0 + $99
        sta SCREEN_BUFFER_0 + $6f
        rts 


    L_13eb:
        sta VICCRE
        lda #$05
        sta  $1d3e
        //sta L_1d3c + $2
        lda #$08
        sta $1d40
        lda #$03
        sta $1d41
        jmp L_16ea
    L_1400:
        ldx #$00
    L_1402:
        lda #$00
        sta SCREEN_BUFFER_0 + $00,x
        lda #$01
        sta vColorRam + $00,x
        inx 
        bne L_1402
    L_140f:
        lda #$00
        sta SCREEN_BUFFER_0 + $100,x
        lda #$01
        sta vColorRam + $100,x
        inx 
        bne L_140f
        lda #$00
        tax 
    L_141f:
       // sta L_1d42 + $5,x
        sta $1D47, x
        inx 
        txa 
        cmp #$09
        beq L_142d
        lda #$00
        jmp L_141f
    L_142d:
        rts 



        .byte $02,$02

    L_1430:
        sei 
        lda #$50
        sta $0314
        lda #$14
        sta $0315
        cli 
        lda #$00
        //sta L_1d62 + $e
        sta $1D70
        sta $1D50
      //  sta L_1d42 + $e
        lda #$14
         sta $1D80
      //  sta L_1d72 + $e
        rts 


        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        inc $1D50
       //inc L_1d42 + $e
        //lda L_1d42 + $e
        lda $1D50
        cmp #$0a
        beq L_145d
        jmp $eabf
    L_145d:
        lda #$00
        sta $1D50
        inc $1D70
        lda $1D70
        //sta L_1d42 + $e
        //inc L_1d62 + $e
        //lda L_1d62 + $e
        cmp #$31
        bne L_1474
        lda #$00
        sta $1D70
        jmp $eabf
    L_1474:
        ldx $1D70
        lda L_1480,x
        sta VICCRB
        jmp $eabf

    L_1480:
         .byte $9f,$b7,$9f,$b7,$c3,$b7,$c3,$cf,$c3
        .byte $d1,$cf,$c3,$b7,$bf,$b3,$c3,$bf,$b3,$9f,$b7,$9f,$c3,$bf,$00,$9f
        .byte $b7,$9f,$b7,$c3,$b7,$c3,$cf,$c3,$d1,$cf,$c3,$b7,$bf,$b3,$c3,$bf
        .byte $b3,$9f,$b7,$9f,$b3,$b7
        .fill $16, $0
        .byte $02,$31,$00,$00,$00,$00,$00,$54,$00,$00,$00

    L_14d0:
        ldx #$00
    L_14d2:
        lda $1D47,x
       // lda L_1d42 + $5,x
        cmp #$0a
        bcc L_14ec
    L_14d9:
        sec 
        sbc #$0a
        sta $1D47,x
        inc $1D48,x
        lda $1D47,x
       // sta L_1d42 + $5,x
       // inc L_1d42 + $6,x
       // lda L_1d42 + $5,x
        cmp #$0a
        bcc L_14ec
        jmp L_14d9
    L_14ec:
        inx 
        txa 
        cmp #$07
        bne L_14d2
        ldx #$00
        ldy #$06
    L_14f6:
        lda $1D47,x
        clc 
        adc #$b0
        sta SCREEN_BUFFER_0 + $01,y
        dey 
        inx 
        txa 
        cmp #$07
    L_1504:
        bne L_14f6
        jmp L_1110

        .byte $f0,$0f,$02,$26,$f0,$02,$0f,$02,$0f,$f0,$f0,$0f,$0f,$f0,$f0,$0b
        .byte $0f,$e2,$f0,$0f,$0f,$f0,$f0

    L_1520:
        ldx $01
        lda #$0e
        sta SCREEN_BUFFER_0 + $169,x
        inx 
        lda #$0f
        sta SCREEN_BUFFER_0 + $169,x
        inx 
        lda #$10
        sta SCREEN_BUFFER_0 + $169,x
        txa 
        clc 
        adc #$14
        tax 
        lda #$11
        sta SCREEN_BUFFER_0 + $169,x
        inx 
        lda #$12
        sta SCREEN_BUFFER_0 + $169,x
        inx 
        lda #$13
        sta SCREEN_BUFFER_0 + $169,x
        ldx $04
        lda #$00
        sta SCREEN_BUFFER_0 + $169,x
        inx 
        sta SCREEN_BUFFER_0 + $169,x
        inx 
        sta SCREEN_BUFFER_0 + $169,x
        lda #$05
        ldx $01
        sta vColorRam + $169,x
        inx 
        sta vColorRam + $169,x
        inx 
        sta vColorRam + $169,x
        txa 
        clc 
        adc #$14
        tax 
        lda #$05
        sta vColorRam + $169,x
        inx 
        sta vColorRam + $169,x
        inx 
        sta vColorRam + $169,x
        lda $01
        cmp #$00
        beq L_1597
        lda SCREEN_BUFFER_0 + $1ad
        cmp #$08
        bne L_158b
        lda #$14
        sta SCREEN_BUFFER_0 + $197
    L_158b:
        lda SCREEN_BUFFER_0 + $1ab
        cmp #$08
        bne L_1597
        lda #$15
        sta SCREEN_BUFFER_0 + $195
    L_1597:
        nop 
        //lda L_1d35 + $4
        lda $1D39
        cmp #$01
        beq L_15a7
        cmp #$02
        beq L_1617
        cmp #$03
        beq L_15df
    L_15a7:
        lda #$16
        sta SCREEN_BUFFER_0 + $18c
        sta SCREEN_BUFFER_0 + $18f
        sta SCREEN_BUFFER_0 + $192
        sta SCREEN_BUFFER_0 + $198
        sta SCREEN_BUFFER_0 + $19b
        sta SCREEN_BUFFER_0 + $19e
        lda #$00
        sta SCREEN_BUFFER_0 + $18d
        sta SCREEN_BUFFER_0 + $18e
        sta SCREEN_BUFFER_0 + $190
        sta SCREEN_BUFFER_0 + $191
        sta SCREEN_BUFFER_0 + $193
        sta SCREEN_BUFFER_0 + $194
        sta SCREEN_BUFFER_0 + $199
        sta SCREEN_BUFFER_0 + $19a
        sta SCREEN_BUFFER_0 + $19c
        sta SCREEN_BUFFER_0 + $19d
        nop 
        nop 
        nop 
        rts 


    L_15df:
        lda #$16
        sta SCREEN_BUFFER_0 + $18d
        sta SCREEN_BUFFER_0 + $190
        sta SCREEN_BUFFER_0 + $193
        sta SCREEN_BUFFER_0 + $199
        sta SCREEN_BUFFER_0 + $19c
        sta SCREEN_BUFFER_0 + $19f
        lda #$00
        sta SCREEN_BUFFER_0 + $18c
        sta SCREEN_BUFFER_0 + $18e
        sta SCREEN_BUFFER_0 + $18f
        sta SCREEN_BUFFER_0 + $191
        sta SCREEN_BUFFER_0 + $192
        sta SCREEN_BUFFER_0 + $194
        sta SCREEN_BUFFER_0 + $198
        sta SCREEN_BUFFER_0 + $19a
        sta SCREEN_BUFFER_0 + $19b
        sta SCREEN_BUFFER_0 + $19d
        jmp L_164f
        nop 
    L_1617:
        lda #$16
        sta SCREEN_BUFFER_0 + $18e
        sta SCREEN_BUFFER_0 + $191
        sta SCREEN_BUFFER_0 + $194
        sta SCREEN_BUFFER_0 + $19a
        sta SCREEN_BUFFER_0 + $19d
        lda #$00
        sta SCREEN_BUFFER_0 + $18c
        sta SCREEN_BUFFER_0 + $18d
        sta SCREEN_BUFFER_0 + $18f
        sta SCREEN_BUFFER_0 + $190
        sta SCREEN_BUFFER_0 + $192
        sta SCREEN_BUFFER_0 + $193
        sta SCREEN_BUFFER_0 + $198
        sta SCREEN_BUFFER_0 + $199
        sta SCREEN_BUFFER_0 + $19b
        sta SCREEN_BUFFER_0 + $19c
    L_1648:
        sta SCREEN_BUFFER_0 + $19e
        sta SCREEN_BUFFER_0 + $19f
        rts 


    L_164f:
        lda #$00
        sta $1D39
      //  sta L_1d35 + $4
        rts 



        .byte $0f,$f0,$f0,$0f,$0b,$f0,$f0,$0e,$0f,$f8

    L_165f:
        .byte $f0,$ad,$4b
        .byte $1d,$c9,$01,$90,$11,$ad,$4a,$1d,$c9,$05,$90,$05,$a9,$20,$85,$40
        .byte $60

    L_1673:
        lda #$2a
        sta $40
        rts 


    L_1678:
        lda $1D4A
        //lda L_1d42 + $8
        cmp #$05
        bcc L_1684
        lda #$35
        sta $40
        rts 


    L_1684:
        lda #$40
        sta $40
        rts 



    L_1689:
         .byte $02,$f0,$a9,$32
        .byte $8d,$70,$1d,$a9,$c3,$a2,$12,$20,$c6,$16,$20,$c6,$16,$a2,$04,$20
        .byte $c6,$16,$a2,$12,$20,$c6,$16,$a9,$cb,$20,$c6,$16,$a9,$c9,$a2,$04
        .byte $20,$c6,$16,$a2,$12,$20,$c6,$16,$a9,$c3,$20,$c6,$16,$a9,$bf,$a2
        .byte $04,$20,$c6,$16,$a9,$c3,$a2,$12,$ea

    L_16c6:
        sta VICCRA
        stx $1D54
        //stx L_1d52 + $2
        ldy #$00
        sty VICCRB
        sty $a2
    L_16d3:
        ldy $a2
        //cpy L_1d52 + $
        cpy $1D54
        bne L_16d3
        ldy #$00
        sty $c6
        sty VICCRA
        sty $a2
    L_16e3:
        ldy $a2
        cpy #$04
        bne L_16e3
        rts 


    L_16ea:
        lda #$26
        sta SCREEN_BUFFER_0 + $0c
        sta SCREEN_BUFFER_0 + $0d
        sta SCREEN_BUFFER_0 + $0e
        lda #$00
        sta $1D54
       // sta L_1d52 + $2
        jmp L_1a80
        sta $1D56
      //  sta L_1d52 + $4
    L_1700:
        ldx $1d41
        dex 
        txa 
        cmp #$00
        bne L_1744
        lda #$00
        sta $c6
        nop 
        jsr L_1689 + $2
        nop 
        lda #$02
        sta SCREEN_BUFFER_0 + $cc
        lda #$01
        sta SCREEN_BUFFER_0 + $cd
        lda #$17
        sta SCREEN_BUFFER_0 + $ce
        lda #$22
        sta SCREEN_BUFFER_0 + $d0
        lda #$23
        sta SCREEN_BUFFER_0 + $d1
        lda #$24
        sta SCREEN_BUFFER_0 + $d2
        lda #$25
        sta SCREEN_BUFFER_0 + $d3
        lda #$00
        sta VICCRB
    L_173a:
        lda $c6
        nop 
        cmp #$00
        beq L_173a
        jmp L_110a
    L_1744:
        sta $1d41
        lda #$00
        sta SCREEN_BUFFER_0 + $0c,x
        lda #$80
        sta VICCRD
        lda #$00
        sta $a1
        sta $a2
    L_1757:
        lda $a2
        cmp #$40
        bne L_1757
        nop 
    L_175e:
        nop 
        lda #$00
        sta VICCRD
        rts 



        .byte $0f,$60,$f0,$f0,$f0,$0f,$0f,$f0,$f0,$0f,$0f

    L_1770:
        lda #$ff
        sta VICCR5
        lda #$6e
        sta VICCRF
        lda #$8d
        sta SCREEN_BUFFER_0 + $19
        sta SCREEN_BUFFER_0 + $1b
        sta SCREEN_BUFFER_0 + $2f
        sta SCREEN_BUFFER_0 + $30
        sta SCREEN_BUFFER_0 + $31
        sta SCREEN_BUFFER_0 + $45
        sta SCREEN_BUFFER_0 + $47
        sta SCREEN_BUFFER_0 + $5b
        sta SCREEN_BUFFER_0 + $5d
        lda #$8f
        ldx #$00
    L_179b:
        sta SCREEN_BUFFER_0 + $1d,x
        sta SCREEN_BUFFER_0 + $1e,x
        sta SCREEN_BUFFER_0 + $1f,x
        sta SCREEN_BUFFER_0 + $33,x
        sta SCREEN_BUFFER_0 + $35,x
        sta SCREEN_BUFFER_0 + $49,x
        sta SCREEN_BUFFER_0 + $4b,x
        sta SCREEN_BUFFER_0 + $5f,x
        sta SCREEN_BUFFER_0 + $60,x
        sta SCREEN_BUFFER_0 + $61,x
        cpx #$04
        beq L_17c2
        ldx #$04
        jmp L_179b
    L_17c2:
        lda #$8e
        sta SCREEN_BUFFER_0 + $25
        sta SCREEN_BUFFER_0 + $28
        sta SCREEN_BUFFER_0 + $3b
        sta SCREEN_BUFFER_0 + $3c
        sta SCREEN_BUFFER_0 + $3e
        sta SCREEN_BUFFER_0 + $51
        sta SCREEN_BUFFER_0 + $53
        sta SCREEN_BUFFER_0 + $54
        sta SCREEN_BUFFER_0 + $67
        sta SCREEN_BUFFER_0 + $6a
        lda #$90
        sta SCREEN_BUFFER_0 + $85
        sta SCREEN_BUFFER_0 + $86
        sta SCREEN_BUFFER_0 + $9b
        sta SCREEN_BUFFER_0 + $9d
        sta SCREEN_BUFFER_0 + $b1
        sta SCREEN_BUFFER_0 + $b2
        sta SCREEN_BUFFER_0 + $c7
        lda #$81
        sta SCREEN_BUFFER_0 + $8a
        sta SCREEN_BUFFER_0 + $9f
        sta SCREEN_BUFFER_0 + $a1
        sta SCREEN_BUFFER_0 + $b5
        sta SCREEN_BUFFER_0 + $b6
        sta SCREEN_BUFFER_0 + $b7
        sta SCREEN_BUFFER_0 + $cb
        sta SCREEN_BUFFER_0 + $cd
        lda #$94
        sta SCREEN_BUFFER_0 + $8c
        sta SCREEN_BUFFER_0 + $8d
        sta SCREEN_BUFFER_0 + $8e
        sta SCREEN_BUFFER_0 + $a3
        sta SCREEN_BUFFER_0 + $b9
        sta SCREEN_BUFFER_0 + $cf
        lda #$92
        sta SCREEN_BUFFER_0 + $8f
        sta SCREEN_BUFFER_0 + $90
        sta SCREEN_BUFFER_0 + $a5
        sta SCREEN_BUFFER_0 + $a7
        sta SCREEN_BUFFER_0 + $bb
        sta SCREEN_BUFFER_0 + $bc
        sta SCREEN_BUFFER_0 + $d1
        sta SCREEN_BUFFER_0 + $d3
        lda #$8f
        sta SCREEN_BUFFER_0 + $93
        sta SCREEN_BUFFER_0 + $94
        sta SCREEN_BUFFER_0 + $95
        sta SCREEN_BUFFER_0 + $a9
        sta SCREEN_BUFFER_0 + $ab
        sta SCREEN_BUFFER_0 + $bf
        sta SCREEN_BUFFER_0 + $c1
        sta SCREEN_BUFFER_0 + $d5
        sta SCREEN_BUFFER_0 + $d6
        sta SCREEN_BUFFER_0 + $d7
        lda #$8c
        sta SCREEN_BUFFER_0 + $97
        sta SCREEN_BUFFER_0 + $ad
        sta SCREEN_BUFFER_0 + $c3
        sta SCREEN_BUFFER_0 + $d9
        sta SCREEN_BUFFER_0 + $da
        sta SCREEN_BUFFER_0 + $db
        ldx #$0e
        stx SCREEN_BUFFER_0 + $fb
        inx 
        stx SCREEN_BUFFER_0 + $fc
        inx 
        stx SCREEN_BUFFER_0 + $fd
        inx 
        stx SCREEN_BUFFER_0 + $111
        inx 
        stx SCREEN_BUFFER_0 + $112
        inx 
        stx SCREEN_BUFFER_0 + $113
        lda #$82
        sta SCREEN_BUFFER_0 + $138
        lda #$99
        sta SCREEN_BUFFER_0 + $139
        ldx #$05
        stx SCREEN_BUFFER_0 + $13b
        inx 
        stx SCREEN_BUFFER_0 + $13c
        inx 
        stx SCREEN_BUFFER_0 + $13d
        lda #$92
        sta SCREEN_BUFFER_0 + $13f
        lda #$89
        sta SCREEN_BUFFER_0 + $140
        lda #$84
        sta SCREEN_BUFFER_0 + $141
        lda #$8c
        sta SCREEN_BUFFER_0 + $142
        lda #$85
        sta SCREEN_BUFFER_0 + $143
        lda #$92
        sta SCREEN_BUFFER_0 + $144
        lda #$83
        sta SCREEN_BUFFER_0 + $164
        lda #$bd
        sta SCREEN_BUFFER_0 + $165
        lda #$86
        sta SCREEN_BUFFER_0 + $166
        lda #$89
        sta SCREEN_BUFFER_0 + $167
        lda #$92
        sta SCREEN_BUFFER_0 + $168
        lda #$85
        sta SCREEN_BUFFER_0 + $169
        lda #$9a
        sta SCREEN_BUFFER_0 + $16b
        lda #$bd
        sta SCREEN_BUFFER_0 + $16c
        lda #$8a
        sta SCREEN_BUFFER_0 + $16d
        lda #$95
        sta SCREEN_BUFFER_0 + $16e
        lda #$8d
        sta SCREEN_BUFFER_0 + $16f
        lda #$90
        sta SCREEN_BUFFER_0 + $170
        lda #$00
        sta $c6
        nop 
        nop 
        nop 
        nop 
        nop 
    L_1908:
        lda $c6
        nop 
        cmp #$00
        beq L_1908
        rts 



        .byte $02,$55,$69,$98,$02,$21,$d6,$2e,$0f,$0f,$f0,$f0,$02,$02,$f0,$f0

    L_1920:
        ldy L_1d52 + $2
        lda SCREEN_BUFFER_0 + $108,y
        cmp #$0a
        bne L_193f
        lda #$05
        clc 
        adc L_1d42 + $7
        sta L_1d42 + $7
        lda #$04
        sta SCREEN_BUFFER_0 + $fc
        lda #$00
        sta L_1d52 + $2
        beq L_1961
    L_193f:
        ldy $02
        dey 
        lda SCREEN_BUFFER_0 + $b0,y
        cmp #$0a
        bne L_195b
        lda #$96
        clc 
        adc L_1d42 + $5
        sta L_1d42 + $5
        lda #$04
        sta SCREEN_BUFFER_0 + $ba
        lda #$00
        sta $02
    L_195b:
        lda #$80
        sta VICCRC
        rts 


    L_1961:
        lda #$04
        sta SCREEN_BUFFER_0 + $fc
        jmp L_193f

        .byte $f0,$02,$02,$f2,$f0,$0f,$0f

    L_1970:
        lda L_1d52 + $2
        cmp #$00
        bne L_197d
        lda $a2
        cmp #$f0
        bcc L_19a5
    L_197d:
        ldx L_1d52 + $2
        lda #$00
        sta SCREEN_BUFFER_0 + $f2,x
        inc L_1d52 + $2
        inc L_1d52 + $2
        ldx L_1d52 + $2
        cpx #$16
        bne L_1997
        lda #$00
        sta L_1d52 + $2
    L_1997:
        ldx L_1d52 + $2
        lda #$03
        sta SCREEN_BUFFER_0 + $f2,x
        sta vColorRam + $f2,x
        jmp L_19ab
    L_19a5:
        lda #$00
        sta VICCRA
        rts 


    L_19ab:
        lda #$80
        sta VICCRA
    L_19b0:
        rts 



        .byte $02,$b1,$b7,$5d,$29,$68,$b2,$0f,$02,$f0,$f0,$0f,$0f

    L_19be:
        beq L_19b0

        .byte $8f,$0a,$ee,$f2,$00,$07,$d4,$f1,$f0,$f0,$0f,$0f,$f0,$f0,$0f,$0f

    L_19d0:
        lda L_1d52 + $3
        cmp #$00
        bne L_1a34
        lda L_1d52 + $4
    L_19da:
        cmp #$00
        bne L_19ee
        lda VICCR4
        cmp #$03
        bcc L_19e6
        rts 


    L_19e6:
        ror $a2
        nop 
        bcs L_1a31
        rol $a2
        nop 
    L_19ee:
        lda #$00
        ldx L_1d52 + $4
        sta SCREEN_BUFFER_0 + $c5,x
        lda #$15
        clc 
        adc L_1d52 + $4
        sta L_1d52 + $4
        ldx L_1d52 + $4
        cpx #$d2
        beq L_1a11
        lda #$03
        sta SCREEN_BUFFER_0 + $c5,x
        lda #$01
        sta vColorRam + $c5,x
        rts 


    L_1a11:
        lda SCREEN_BUFFER_0 + $197
        cmp #$00
        bne L_1a28
        lda #$04
        sta SCREEN_BUFFER_0 + $197
        lda #$02
        sta vColorRam + $197
        lda #$00
        sta L_1d52 + $4
        rts 


    L_1a28:
        lda #$00
        sta L_1d52 + $4
        jsr L_1700
        rts 


    L_1a31:
        rol $a2
        nop 
    L_1a34:
        lda #$00
        ldx L_1d52 + $3
        sta SCREEN_BUFFER_0 + $c6,x
        lda #$17
        clc 
        adc L_1d52 + $3
        sta L_1d52 + $3
        ldx L_1d52 + $3
        cpx #$cf
        beq L_1a57
        lda #$03
        sta SCREEN_BUFFER_0 + $c6,x
        lda #$01
        sta vColorRam + $c6,x
        rts 


    L_1a57:
        lda SCREEN_BUFFER_0 + $195
        cmp #$00
        bne L_1a6e
        lda #$04
        sta SCREEN_BUFFER_0 + $195
        lda #$02
        sta vColorRam + $195
        lda #$00
        sta L_1d52 + $3
        rts 


    L_1a6e:
        lda #$00
    L_1a70:
        sta L_1d52 + $3
        jsr L_1700
        rts 



        .byte $fe,$0f,$0f,$f0,$f0,$0f,$0f,$f0,$f0

    L_1a80:
        lda #$00
        sta L_1d52 + $3
        sta L_1d52 + $4
        jmp L_1430
        lda #$30
        sta $0314
    L_1a90:
        lda L_1d42 + $9
        cmp #$00
        beq L_1a9a
        jmp L_19d0
    L_1a9a:
        lda L_1d42 + $8
        cmp #$03
        bcc L_1aa4
        jmp L_19d0
    L_1aa4:
        rts 



        .byte $6d,$57,$1d,$8d,$57,$1d,$ad,$57,$1d,$c9,$03,$ad,$57,$1d,$c9,$03
        .byte $0f,$d4,$b1,$0f,$0f,$f0,$f0,$0f,$0f,$ea,$ea

    L_1ac0:
        lda L_1d72 + $e
        cmp #$14
        bne L_1ade
        ldx $a9
        lda $8b
    L_1acb:
        dex 
        bpl L_1ad0
        ldx $a9
    L_1ad0:
        dec $8b
        bne L_1acb
        eor VICCR4
        sta $8b
        cmp #$10
        bcc L_1ade
        rts 


    L_1ade:
        ldx L_1d72 + $e
        cpx #$01
        bne L_1aeb
        lda #$14
        sta L_1d72 + $e
        rts 


    L_1aeb:
        dex 
        lda #$19
        sta SCREEN_BUFFER_0 + $1a2,x
        dex 
        lda #$18
        sta SCREEN_BUFFER_0 + $1a2,x
        nop 
        lda #$00
        sta SCREEN_BUFFER_0 + $18c,x
        inx 
        sta SCREEN_BUFFER_0 + $18c,x
        stx L_1d72 + $e
        nop 
        ldx L_1d72 + $e
        lda SCREEN_BUFFER_0 + $176,x
        cmp #$00
        bne L_1b17
        lda SCREEN_BUFFER_0 + $175,x
        cmp #$00
        bne L_1b17
        rts 


    L_1b17:
        lda SCREEN_BUFFER_0 + $160,x
        cmp #$00
        bne L_1b33
        lda SCREEN_BUFFER_0 + $15f,x
        cmp #$00
        bne L_1b33
        jmp L_1b2a
        rts 


        rts 


    L_1b2a:
        lda #$14
        sta L_1d72 + $e
        jsr L_1700
        rts 


    L_1b33:
        lda #$0d
        adc L_1d42 + $5
        sta L_1d42 + $5
        rts 



        .byte $f0,$08,$e8,$e0,$06,$d0,$f4,$4c,$2d,$11,$a9,$15,$85,$03,$a9,$19
        .byte $6d,$47,$1d,$ea

    L_1b50:
        lda SCREEN_BUFFER_0 + $199,x
        cmp #$09
        beq L_1b5f
        inx 
        cpx #$06
        bne L_1b50
        jmp L_112d
    L_1b5f:
        lda #$15
        sta $03
        lda #$0c
        adc L_1d42 + $5
        sta L_1d42 + $5
        jmp L_112d

        .byte $02,$02

    L_1b70:
        sbc $b8,x
        sta ($bf,x)
        pla 

        .byte $02,$72,$f2,$0f,$0f,$f0,$f0,$0f,$0f

    L_1b7e:
        beq L_1b70
        dec $93
        ora $90c7,y
        sbc ($ca),y
        and ($70,x)
        beq L_1b9a

        .byte $0f

    L_1b8c:
        beq L_1b7e

        .byte $0f,$0f

    L_1b90:
        rol $fa63,x
        dec $aeb5,x
        tya 

        .byte $97,$0f,$0f

    L_1b9a:
        beq L_1b8c

        .byte $0f,$0f

    L_1b9e:
        beq L_1b90
        ldy $d3ed
    L_1ba3:
        cld 

        .byte $07,$68,$30,$55,$f0,$f0,$0f,$0f

    L_1bac:
        beq L_1b9e

        .byte $0f,$0f,$1c,$19,$3f,$07,$e2,$b4,$e8,$fa,$0f,$0f

    L_1bba:
        beq L_1bac

        .byte $0f,$0f,$f0,$f0,$55,$d5,$31,$bd,$31,$0b,$10,$f2,$f0,$f0,$0f,$0f
        .byte $f0,$f0,$0f,$0f

    L_1bd0:
        asl 

        .byte $9f,$f1,$b4,$0f,$0f,$f0,$e0,$0f,$0f

    L_1bda:
        sed 
        beq L_1bec

        .byte $0f

    L_1bde:
        beq L_1bd0

        .byte $0f,$9d,$78,$f0,$23,$a2,$39,$d3,$f0,$f0,$0f,$0f

    L_1bec:
        beq L_1bde

        .byte $0f,$0f

    L_1bf0:
        eor $8b,x

        .byte $73,$8c,$36,$9f,$b2,$f8,$0f,$0f,$f0,$f0,$0f,$0f,$f0,$f0,$00,$00
        .byte $00,$00

    L_1c00: 

         //.import binary "Moo - Chars.bin"
        .byte $00,$00,$00,$00,$80,$c0,$a0,$90,$f8,$84,$82,$81,$e0,$90
        .byte $90,$e0,$90,$88,$88,$f0,$18,$3c,$7e,$ab,$d5,$7e,$3c,$18,$92,$54
        .byte $38,$ee,$38,$54,$92,$00,$00,$4a,$a8,$aa,$aa,$4a,$00,$ff,$00

    L_1c31:
        ldy $aa
        ldx $46a8

        .byte $00,$ff,$00,$40,$60,$50,$40,$48,$00,$f8,$41,$80,$00,$00,$00,$00
        .byte $00,$00,$00,$18,$3c,$3e,$7e,$7e,$7f,$7f,$20,$20,$20,$20,$20,$20
        .byte $20,$20,$00,$00,$00

    L_1c5b:
        jsr.a $0000

        .byte $00,$00,$00,$00,$00

    L_1c63:
        jsr.a $0000

        .byte $00,$00,$4b,$b4,$00,$00,$00,$00,$00,$00,$00,$00,$07,$0f,$1f,$3f
        .byte $7f,$7f,$10,$10,$ff,$ff,$ff,$c7,$ff,$c7,$00,$00,$c0,$a0,$90,$88
        .byte $84,$fe,$7f,$75,$64,$44,$0e,$1f,$0e,$04,$ff,$ff,$ff,$7e,$00,$00
        .byte $00,$00,$fe,$ae,$26,$22,$70,$f8,$70,$20,$fe,$ae,$76,$fa,$70,$20
        .byte $34,$4a,$7f,$75,$6e,$5f,$0e,$04,$34,$4a,$00,$00,$00,$00,$00,$00
        .byte $34,$4a,$c0,$a0,$90,$88,$84,$84,$88,$f0,$00

    L_1cc1:
        cpy #$40
        rti 
        jsr $0810

        .byte $07,$00,$03,$02,$02,$04,$08,$10,$e0,$3c,$42,$02,$02,$30,$40,$7e
        .byte $00,$3c,$42,$02,$1c,$02,$42,$3c,$00,$04,$0c,$14,$24,$7e,$04,$04
        .byte $00,$7e,$40,$78,$04,$02,$44,$38,$00,$1c,$20,$40,$7c,$42,$42,$3c
        .byte $00,$7e,$42,$04,$08,$10,$10,$10,$00,$3c,$42,$42,$3c,$42,$42,$3c
        .byte $00,$3c,$42,$42,$3e,$02,$04

    L_1d0e:
        sec 

        .byte $00,$84,$84,$84,$84,$84,$84

    L_1d16:
        sty $f3
        asl $09

        .byte $52,$50,$50,$50,$49,$86,$44,$48,$50,$60,$60,$50,$49,$45,$02,$04
        .byte $08,$10,$20,$00,$80,$80,$3c,$46,$97,$81,$ff

    L_1d35:
        .byte $42,$00,$00,$00,$00

    L_1d3a:
        ora #$12

    L_1d3c:
         .byte $10,$13,$03
        .byte $f9,$00,$00

    L_1d42:
        .byte $ff,$ff,$ff,$ff,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        
    L_1d52:
        .byte $ff,$ff,$ff,$ff,$00,$00,$00,$00,$ff,$ff,$ff,$ff,$00,$00,$00,$00

    L_1d62:
        .byte $ff,$ff,$ff,$ff,$00,$00,$00,$00,$ff,$ff,$ff,$ff,$00,$00,$00,$00

    L_1d72:
        .byte $ff,$ff,$ff,$ff,$00,$00,$00,$00,$ff,$ff,$ff,$ff,$00,$00,$00,$00
        .byte $ff,$ff,$ff,$ff,$00,$00,$00,$00,$ff,$ff,$ff,$ff,$00,$00,$00,$00
        .byte $ff,$ff,$ff,$ff,$00,$00,$00,$00,$ff,$ff,$ff,$ff,$00,$00,$00,$00
        .byte $ff,$ff,$ff,$ff,$00,$00,$00,$00,$ff,$ff,$ff,$ff,$00,$00,$00,$00
        .byte $ff,$ff,$ff,$ff,$00,$00,$00,$00,$ff,$ff,$ff,$ff,$00,$00,$00,$00
        .byte $ff,$ff,$ff,$ff,$00,$00,$00,$00,$ff,$ff,$ff,$ff,$00,$00,$00,$00
        .byte $ff,$ff,$ff,$ff,$00,$00,$00,$00,$ff,$ff,$ff,$ff,$00,$00,$00,$00
        .byte $ff,$ff,$ff,$ff,$00,$00,$00,$00,$ff,$ff,$ff,$ff,$00,$00,$00,$00
        .byte $ff,$ff,$ff,$ff,$00,$00,$00,$00,$ff,$ff,$ff,$ff

    * = * "Screen"
        .byte 0, 0


     * = * "Screen"
    //     .fill $19, $0
    //     .byte $8d,$00,$8d,$00,$8f,$8f,$8f,$00,$8f,$8f,$8f,$00,$8e,$00,$00,$8e
    //     .byte $00,$00,$00,$00,$00,$00,$8d,$8d,$8d,$00,$8f,$00,$8f,$00,$8f,$00
    //     .byte $8f,$00,$8e,$8e,$00,$8e,$00,$00,$00,$00,$00,$00,$8d,$00,$8d,$00
    //     .byte $8f,$00,$8f,$00,$8f,$00,$8f,$00,$8e,$00,$8e,$8e,$00,$00,$00,$00
    //     .byte $00,$00,$8d,$00,$8d,$00,$8f,$8f,$8f,$00,$8f,$8f,$8f,$00,$8e,$00
    //     .byte $00,$8e
    //     .fill $1a, $0
    //     .byte $90,$90,$00,$00,$00,$81,$00,$94,$94,$94,$92,$92,$00,$00,$8f,$8f
    //     .byte $8f,$00,$8c,$00,$00,$00,$90,$00

    // L_1e9d:
    //     bcc L_1e9f
    // L_1e9f:
    //     sta ($00,x)
    //     sta ($00,x)
    //     sty $00,x

    //     .byte $92,$00,$92,$00,$8f,$00,$8f,$00,$8c,$00,$00,$00,$90,$90,$00,$00
    //     .byte $81,$81,$81,$00,$94,$00,$92,$92,$00,$00,$8f,$00,$8f,$00,$8c,$00
    //     .byte $00,$00,$90,$00,$00,$00,$81,$00,$81,$00,$94,$00,$92,$00,$92,$00
    //     .byte $8f,$8f,$8f,$00,$8c,$8c,$8c
    //     .fill $1f, $0
    //     .byte $0e,$0f,$10
    //     .fill $13, $0
    //     .byte $11,$12,$13
    //     .fill $24, $0
    //     .byte $82,$99,$00,$05,$06,$07,$00,$92,$89,$84,$8c,$85,$92
    //     .fill $1f, $0
    //     .byte $83,$bd,$86,$89,$92,$85,$00,$9a,$bd,$8a,$95,$8d,$90,$00
