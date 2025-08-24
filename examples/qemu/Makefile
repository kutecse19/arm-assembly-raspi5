CROSS    ?= aarch64-linux-gnu
AS       := $(CROSS)-as
LD       := $(CROSS)-ld
OBJCOPY  := $(CROSS)-objcopy

all: kernel.bin

boot.o: boot.S
	$(AS) -march=armv8-a -o $@ $<

kernel.elf: boot.o linker.ld
	$(LD) -T linker.ld -o $@ boot.o

kernel.bin: kernel.elf
	$(OBJCOPY) -O binary $< $@

run: kernel.bin
	qemu-system-aarch64 -M virt -cpu cortex-a53 -nographic -kernel kernel.bin

clean:
	rm -f *.o *.elf *.bin
