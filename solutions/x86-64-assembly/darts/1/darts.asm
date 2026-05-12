section .data
    outer_circle dq 100.0
    mid_circle dq 25.0
    inner_circle dq 1.0

section .text
global score
score:
    ; Provide your implementation here
    ; The function has type signature uint8_t score(double x, double y)
    ; The return value is of type uint8_t, which is a 8-bit unsigned integer
    ; Both arguments are of type double, which is a 64-bit floating-point
    ; X position, xmm0
    ; Y position, xmm1
    mulsd xmm0, xmm0
    mulsd xmm1, xmm1
    addsd xmm0, xmm1 ; distance ^ 2, we do not try to do the root
    movsd xmm1, [rel outer_circle]
    ucomisd xmm0, xmm1
    ja score_0
    movsd xmm1, [rel mid_circle]
    ucomisd xmm0, xmm1
    ja score_1
    movsd xmm1, [rel inner_circle]
    ucomisd xmm0, xmm1
    ja score_5
    mov rax, 10
    ret
score_0:
    mov rax, 0
    ret
score_1:
    mov rax, 1
    ret
score_5:
    mov rax, 5
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
