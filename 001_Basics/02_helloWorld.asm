global _start

; Inline data into the program that we can reference in the code
section .data

    ; store the string of bytes named 'msg'. 0x0a is the hex value for \n aka new-line character
    msg db "Hello, world!", 0x0a

    ; Store the length of msg into len. 
    ; (Subtract location of start of the string from the location after the string)
    len equ $ - msg

; Code should live in .text sections.
section .text
_start:
    mov eax, 4      ; sys_write system call
    mov ebx, 1      ; stdout file descriptor
    mov ecx, msg    ; bytes to write
    mov edx, len    ; number of bytes to write
    int 0x80        ; perform system call
    mov eax, 1      ; sys_exit system call
    mov ebx, 0      ; exit status is 0
    int 0x80        ; perform system call