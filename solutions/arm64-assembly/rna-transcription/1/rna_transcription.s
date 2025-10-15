.text
.globl to_rna

// x0 - buffer
// x1 - dna
to_rna:
        ldrb w2, [x1], 0x1
        cbz w2, exit
        cmp w2, 'G'
        beq set_c
        cmp w2, 'C'
        beq set_g
        cmp w2, 'T'
        beq set_a
        cmp w2, 'A'
        beq set_u
        b invalid

set_c:
       mov w2, 'C'
       strb w2, [x0], 0x1
       b to_rna

set_g:
       mov w2, 'G'
       strb w2, [x0], 0x1
       b to_rna

set_a:
       mov w2, 'A'
       strb w2, [x0], 0x1
       b to_rna

set_u:
       mov w2, 'U'
       strb w2, [x0], 0x1
       b to_rna

invalid:
       ret

exit:
        mov w2, #0
        strb w2, [x0]
        ret
