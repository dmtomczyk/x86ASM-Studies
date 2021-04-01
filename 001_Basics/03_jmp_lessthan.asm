; OVERVIEW: Illustrate the results of a jump operation.

; DETAILS: The output of program's execution (echo $?) is 42 because the control enters skip: and exits, so ebx never assigned the value of 13.

global _start

section .text
_start:
    mov ecx, 99
    mov ebx, 42
    mov eax, 1
    cmp ecx, 100
    jmp skip
    mov ebx, 13
skip:
    int 0x80