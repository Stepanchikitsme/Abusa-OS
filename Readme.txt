It is the TEST VERSION of kernel, it will be continued.

Build:
sudo apt install nasm
nasm -f elf32 load.asm -o main.o
gcc -m32 -c kernel.c -o kern.o
ld -m elf_i386 -T link.ld -o kernel main.o kern.o
qemu-system-i386 -kernel kernel


Created by
██╗░░░██╗░█████╗░░██████╗░███████╗██╗░░██╗
██║░░░██║██╔══██╗██╔════╝░██╔════╝╚██╗██╔╝
╚██╗░██╔╝██║░░██║██║░░██╗░█████╗░░░╚███╔╝░
░╚████╔╝░██║░░██║██║░░╚██╗██╔══╝░░░██╔██╗░
░░╚██╔╝░░╚█████╔╝╚██████╔╝███████╗██╔╝╚██╗
░░░╚═╝░░░░╚════╝░░╚═════╝░╚══════╝╚═╝░░╚═╝