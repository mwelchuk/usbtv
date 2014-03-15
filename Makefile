default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD)

clean:
	rm -Rf *.o *.ko Module.symvers .usbtv* .built-in.o.cmd modules.order .tmp_versions usbtv.mod.c


