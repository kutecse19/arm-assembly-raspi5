#!/bin/bash

aarch64-none-elf-as first.S -o first.o
aarch64-none-elf-ld --no-undefined first.o -o first.elf
aarch64-none-elf-objcopy first.elf -O binary kernel_2712.img

