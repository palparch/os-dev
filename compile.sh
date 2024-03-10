#! /usr/bin/bash

nasm bootsec.asm -f bin -o bootsec.bin
qemu-system-x86_64 bootsec.bin
