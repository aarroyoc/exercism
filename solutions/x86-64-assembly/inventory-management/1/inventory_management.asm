WEIGHT_OF_EMPTY_BOX equ 500
TRUCK_HEIGHT equ 300
PAY_PER_BOX equ 5
PAY_PER_TRUCK_TRIP equ 220

section .text

global get_box_weight
get_box_weight:
    movzx r13d, di
    movzx r14d, si
    movzx r15d, dx
    movzx r12d, cx
    imul r13d, r14d
    imul r15d, r12d
    add r13d, r15d
    add r13d, WEIGHT_OF_EMPTY_BOX
    mov eax, r13d
    ret

global max_number_of_boxes
max_number_of_boxes:
    xor rdx, rdx
    mov rax, TRUCK_HEIGHT
    div rdi
    ret

global items_to_be_moved
items_to_be_moved:
    sub edi, esi
    mov eax, edi
    ret

; The six first integer arguments are passed to a function in rdi, rsi, rdx, rcx, r8 and r9.
global calculate_payment
calculate_payment:
    ; truck trips
    mov rax, rdx
    mov r13, PAY_PER_TRUCK_TRIP
    imul rax, r13

    ; boxes delivered
    mov r13, PAY_PER_BOX
    imul rsi, r13
    add rax, rsi

    ; broken boxes
    imul rcx, r8
    sub rax, rcx

    ; upfront payment
    sub rax, rdi

    ; divide by workers
    inc r9
    cqo
    idiv r9
    add rax, rdx
    
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
