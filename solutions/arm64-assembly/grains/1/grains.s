.text
.globl square
.globl total

square:
    cmp x0, xzr
    ble exit_error
    mov x1, #1
    mov x2, #1
loop_square:
    cmp x0, x1
    beq exit_square
    add x1, x1, #1
    lsl x2, x2, #1
    b loop_square

exit_error:
    mov x0, #0
    ret

exit_square:
    mov x0, x2
    ret

total:
    mov x1, #1
    mov x2, #1
    mov x0, #1
loop_total:
    cmp x1, #64
    beq exit_total
    add x1, x1, #1
    lsl x2, x2, #1
    add x0, x0, x2
    b loop_total
exit_total:
    ret
