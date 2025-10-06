.equ INVALID_NUMBER, -1

.text
.globl steps

steps:
        cmp xzr, x0
        bge exit_invalid
        mov x2, #0
loop:
        cmp x0, #1
        beq exit
        add x2, x2, #1
        tbz x0, 0, even
odd:
        mov x3, #3
        mul x0, x0, x3
        add x0, x0, #1
        b loop
even:
        // mov x3, #2
        // udiv x0, x0, x3
        lsr x0, x0, #1
        b loop
exit:
        mov x0, x2
        ret
exit_invalid:
        mov x0, -1
        ret