//
// The first program
// 01.07.2024 www.satyria.de
//
.section .init    // Ensure the linker places this at the beginning of the kernel image
.globl _start     // Generates a global label
_start:           // The label _start (entry address)

b main            // Branch to "main"

.section .text    // Instruction to the linker that code is coming

main:             // Create the label "main"
   mov sp, #0x80000 // Create a stack of 512KB (524288 bytes)
MainLoop:         // Infinite loop 
   b MainLoop

