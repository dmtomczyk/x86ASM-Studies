# x86ASM-Studies
My studies of writing x86 assembly code.

## Steps to generate an executable from an asm file
1. `nasm -f elf32 fileName.asm -o fileName.o`
    * The elf32 flag tells nasm to build a 32bit elf **object** file
    * elf = executable and linking format (used by linux)

2. `ld -m elf_i386 fileName.o -o fileName`
    * This is GNU's Linker, called 'ld'.
        * ld combines a number of object and archive files, relocates their data and ties up symbol references. Usually the last step in compiling a program is to run ld.
    * Basically
        * Build executable from the **object** file
        * The elf_i386 flag specifies that it is an x86 program

## Helpful documentation
1. https://docs.microsoft.com/en-us/windows-hardware/drivers/debugger/x64-architecture
    * Lists the various registers available for 64, 32, 16, and 8 bit operations.
2. https://softwareengineering.stackexchange.com/questions/379683/registers-and-stacks-in-nasm
    * Answer goes into detail about registers, conventions, etc.
3. https://en.wikipedia.org/wiki/X86#32-bit
    * Visual representation of the registers.


## Various Notes

### Instructions Examples
0. `mov, add, sub, mul, div, int`
1. `mov eax, 123` (Mov/Assign 123 to register eax)
2. `add eax, 321` (Add 321 to eax register's value)
3. `sub eax, 100` (Subtract 100 from eax register)
4. `mul ebx` (Multiply register into eax)
    - NOTE: Different than others. Multiplication is always applied to the `eax` register, so in this case, `mul ebx` would result in (eax * ebx).
5. `div ebx` (Divide register into eax)
    - NOTE: Different than others. Division is also always applied to the `eax` register, so in this case, `div ebx` would result in (eax / ebx).
6. `int` (Interrupt)

### Debugging
1. `echo $?`
    - output the exit status of the last command

### The 32-bit Registers
General Purpose Registers
1. eax
    - Accumulator
2. ebx
    - Base Index (for use w/ arrays)
3. ecx
    - Counter (for use with loops and strings)
4. edx
    - Extend the precision of the accumulator (e.g. combine 32-bit EAX and EDX for 64-bit integer operations in 32-bit code)
5. esi
    - Source index for string operations.
6. edi
    - Destination index for string operations.
7. ebp
    - Stack base pointer for holding the address of the current stack frame.
8. esp
    - Stack pointer for top address of the stack.
9. r8d
10. r9d
11. r10d
12. r11d
13. r13d
14. r14d
15. r15d