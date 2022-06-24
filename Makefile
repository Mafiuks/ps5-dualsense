obj-m += hid-playstation.o

KERNEL_SRC ?= /lib/modules/$(shell uname -r)/build

all:
	$(MAKE) -C $(KERNEL_SRC) V=0 M=$$PWD

install:
	cp hid-playstation.ko /lib/modules/$(shell uname -r)/kernel/drivers/hid/
	depmod -a
	modprobe hid-playstation

clean:
	rm -rf deps.h *.o *.ko *.mod.c *.symvers *.order .*.cmd .tmp_versions
