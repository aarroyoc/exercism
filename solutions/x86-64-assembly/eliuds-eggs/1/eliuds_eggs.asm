section .text
global egg_count
egg_count:
    ; Provide your implementation here
    ; The function has type signature int egg_count(int number)
    ; The return value and the argument are of type int, which is a 32-bit signed integer
    xor rax, rax
loop:
    cmp rdi, 0
    je exit
    mov r8, rdi
    and r8, 1
    add rax, r8
    shr rdi, 1
    jmp loop
exit:
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
