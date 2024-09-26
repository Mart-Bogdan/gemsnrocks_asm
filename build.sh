mkdir -p build

nasm -f elf64 -gdwarf -o build/util.o src/util.asm
nasm -f elf64 -gdwarf -o build/draw.o src/draw.asm
nasm -f elf64 -gdwarf -o build/main.o src/main.asm

ld -o build/gems build/util.o build/draw.o build/main.o
