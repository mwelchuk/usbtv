ifneq ($(KERNELRELEASE),)
	# kbuild part of makefile
	obj-m  := usbtv.o
else
	# normal makefile
	KDIR ?= /lib/modules/`uname -r`/build

default:
	$(MAKE) -C $(KDIR) M=$$PWD

clean:
	rm -Rf *.o Module.symvers  .usbtv* .built-in.o.cmd modules.order .tmp_versions usbtv.ko usbtv.mod.c


endif
