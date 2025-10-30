.text
.globl score

// d0 - F64 x
// d1 - F64 y
score:
        stp fp, lr, [sp, #-0x10]!
        mov fp, sp

        fmul d0, d0, d0
        fmul d1, d1, d1
        fadd d0, d0, d1
        fsqrt d0, d0

        fmov d1, #10.0
        fcmp d0, d1
        bgt zero_points

        fmov d1, #5.0
        fcmp d0, d1
        bgt one_point

        fmov d1, #1.0
        fcmp d0, d1
        bgt five_points

        // otherwise 10 points
        mov w0, #10
exit:
        ldp fp, lr, [sp], #0x10
        ret

zero_points:
        mov w0, #0
        b exit
one_point:
        mov w0, #1
        b exit
five_points:
        mov w0, #5
        b exit
