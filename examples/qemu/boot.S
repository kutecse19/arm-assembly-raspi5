    .global _start
    .text
_start:
    ldr x0, =0x41000000
    mov sp, x0

    ldr x1, =0x09000000

1:
    ldr w2, [x1, #0x18]
    tst w2, #(1 << 5)
    b.ne 1b

    mov w3, #'H'
    str w3, [x1, #0x00]

    mov w3, #'e'
    str w3, [x1, #0x00]

    mov w3, #'l'
    str w3, [x1, #0x00]

    mov w3, #'l'
    str w3, [x1, #0x00]

    mov w3, #'o'
    str w3, [x1, #0x00]
halt:
    wfe
    b   halt
