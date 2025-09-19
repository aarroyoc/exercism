section .text
global leap_year
leap_year:
    mov r9, rdi
    mov rax, rdi
    xor rdx, rdx
    mov r8, 4
    div r8
    cmp rdx, 0
    jne leap_year_exit_no

    mov r8, 100
    xor rdx, rdx
    mov rax, r9
    div r8
    cmp rdx, 0
    jne leap_year_exit_yes

    mov r8, 400
    xor rdx, rdx
    mov rax, r9
    div r8
    cmp rdx, 0
    jne leap_year_exit_no
    
leap_year_exit_yes:
    mov rax, 1
    ret 
leap_year_exit_no:
    mov rax, 0
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
