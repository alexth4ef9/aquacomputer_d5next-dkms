obj-m := aquacomputer_d5next.o

all:
	make -C /lib/modules/$(KERNEL_VERSION)/build/ M=$(PWD) modules
clean:
	make -C /lib/modules/$(KERNEL_VERSION)/build M=$(PWD) clean
