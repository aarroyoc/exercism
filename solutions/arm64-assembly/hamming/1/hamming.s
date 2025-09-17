.equ UNEQUAL_LENGTHS, -1

.text
.globl distance

// x0 - strand1
// x1 - strand2
distance:
        mov x9, #0
distance_loop:
        ldrb w10, [x0], #0x01
        ldrb w11, [x1], #0x01
        cmp w10, wzr
        beq end_of_str
        cmp w11, wzr
        beq distance_exit_error
        cmp w10, w11
        cinc x9, x9, ne
        b distance_loop
distance_exit:
        mov x0, x9
        ret
end_of_str:
        cmp w10, w11
        beq distance_exit
distance_exit_error:
        mov x0, #-1
        ret
