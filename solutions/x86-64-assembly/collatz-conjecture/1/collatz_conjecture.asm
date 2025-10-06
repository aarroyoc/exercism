section .text
global steps
steps:
    mov r8, rdi
    cmp r8d, 0
    jle exit_invalid
    mov r9, 0
loop:
    cmp r8, 1
    je exit
    inc r9
    test r8, 0x1
    je even
odd:
    mov rax, r8
    mov r10, 3
    mul r10
    mov r8, rax
    inc r8
    jmp loop
even:
    shrd r8, r8, 1
    jmp loop
exit:
    mov rax, r9
    ret

exit_invalid:
    mov rax, -1
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
