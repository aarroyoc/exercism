.text
.globl square_of_sum
.globl sum_of_squares
.globl difference_of_squares

square_of_sum:
        stp fp, lr, [sp, #-0x10]!
        mov fp, sp
        
        mov x1, #0 // number we are processing
        mov x2, #0 // sum
loop_square_of_sum:
        cmp x0, x1
        beq exit_square_of_sum
        add x1, x1, #1
        add x2, x2, x1
        b loop_square_of_sum
exit_square_of_sum:
        mul x0, x2, x2

        ldp fp, lr, [sp], #0x10
        ret

sum_of_squares:
        stp fp, lr, [sp, #-0x10]!
        mov fp, sp

        mov x1, #0
        mov x2, #0 //sum
loop_sum_of_squares:
        cmp x0, x1
        beq exit_sum_of_squares
        add x1, x1, #1
        mul x3, x1, x1
        add x2, x2, x3
        b loop_sum_of_squares
exit_sum_of_squares:
        mov x0, x2

        ldp fp, lr, [sp], #0x10
        ret

difference_of_squares:
        stp fp, lr, [sp, #-0x10]!
        mov fp, sp
        
        mov x19, x0
        bl square_of_sum
        mov x20, x0 // result of square_of_sum
        mov x0, x19
        bl sum_of_squares
        mov x21, x0 // result of sum_of_squares
        sub x0, x20, x21

        ldp fp, lr, [sp], #0x10
        ret
