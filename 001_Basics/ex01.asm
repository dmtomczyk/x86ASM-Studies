
; this defines the entry point for our program
global _start

_start:
	mov eax, 1		; move the value 1 into the register called 'eax'
	mov ebx, 42		; move the value 42 into the register called 'ebx'
	sub ebx, 29		; subtract 29 from the value stored in the 'ebx' register
	int 0x80		; interrupt. 0x80 is specifically the system interrupt value to signal end of application lifecycle.
	
