section .text
global square_of_sum
square_of_sum:
    ; Provide your implementation here
    ; The function has signature int square_of_sum(int number)
    ; The return value and the argument are of type int, which is a 32-bit signed integer
    mov r8d, 1
    mov r9d, 0
loop_1:
    cmp edi, r8d
    jl exit_loop_1
    add r9d, r8d
    add r8d, 1
    jmp loop_1
exit_loop_1:
    mov eax, r9d
    imul r9d
    ret

global sum_of_squares
sum_of_squares:
    ; Provide your implementation here
    ; The function has signature int sum_of_squares(int number)
    ; The return value and the argument are of type int, which is a 32-bit signed integer
    mov r8d, 1
    mov r9d, 0
loop_2:
    cmp edi, r8d
    jl exit_loop_2
    mov eax, r8d
    imul r8d
    add r9d, eax
    add r8d, 1
    jmp loop_2
exit_loop_2:
    mov eax, r9d
    ret

global difference_of_squares
difference_of_squares:
    ; Provide your implementation here
    ; The function has signature int difference_of_squares(int number)
    ; The return value and the argument are of type int, which is a 32-bit signed integer
    call square_of_sum
    mov r10d, eax
    call sum_of_squares
    sub r10d, eax
    mov eax, r10d
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
