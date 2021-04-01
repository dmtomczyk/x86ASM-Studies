#!/bin/bash

# HOW-TO:
#   1. Execute this file via bash: (./executinator.sh)
#   2. Pass in the path to the .asm file to compile/run

# NOTES / PRE-REQs:
#   1. +x privelege.
#   2. invoke INSIDE the same directory as the .asm file.
#   3. DO NOT INPUT THE FILE EXTENSION IN STEP 2.

# 1. Prompt user for input.
echo -n "Enter the filename without the extension: "

# 2. Gather user's input into $filename
read filename

# 3. Create bin directory if it doesn't exist yet.
mkdir -p ./bin/

# 4. Execute nasm to generate output (.o) See README.md for more info on nasm
nasm -f elf32 $filename.asm -o ./bin/$filename.o

# 5. Execute GNU ld to generate executable. See README.md for more info on nasm
ld -m elf_i386 ./bin/$filename.o -o ./bin/$filename

# 6. Execute the output of the above steps.
./bin/$filename