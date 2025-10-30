; Everything that comes after a semicolon (;) is a comment

; Assembler-time constants may be defined using 'equ'
MINUTES_IN_OVEN equ 40
section .text

; You should implement functions in the .text section
    ; first argument is passed in rdi
    ; second argument is passed in rsi
    ; return value is placed in rax

; the global directive makes a function visible to the test files
global expected_minutes_in_oven
expected_minutes_in_oven:
    mov rax, MINUTES_IN_OVEN
    ret

global remaining_minutes_in_oven
remaining_minutes_in_oven:
    mov rax, MINUTES_IN_OVEN
    sub rax, rdi
    ret

global preparation_time_in_minutes
preparation_time_in_minutes:
    mov rax, rdi
    imul rax, 2
    ret

global elapsed_time_in_minutes
elapsed_time_in_minutes:
    mov rax, rdi
    imul rax, 2
    add rax, rsi
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
