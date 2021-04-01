; OVERVIEW: Illustrate the results of a jump operation.

; DETAILS: The output of program's execution (echo $?) is 42 because the control enters skip: and exits, so ebx never assigned the value of 13.

global _start

section .text
_start:
    mov ecx, 99     ; set ecx to 99
    mov ebx, 42     ; set ebx to 42
    mov eax, 1      ; sys_exit system_call
    cmp ecx, 100    ; compare ecx to 100
    jl skip         ; jump if less than
    mov ebx, 13     ; exit status is 13
skip:
    int 0x80