include $(GIT_SRC_DIR)/scripts/tools.mk

I_ROOT  := $(GIT_SRC_DIR)/package/rootfs
BIN_DIR	:= $(GIT_BUILD_DIR)/rootfs/root
BIN 	:= $(BIN_DIR)/json-t1

INCLUDE += -I$(I_ROOT)/include/json-c
#INCLUDE += -I$(I_ROOT)/include

LIBS	+= -L$(GIT_BUILD_DIR)/rootfs/lib -ljson-c

all:
	echo "$(GIT_BUILD_DIR)"
	@if [ -d $(GIT_BUILD_DIR)/rootfs  ];then			\
		make build;										\
	fi

build: main.o
	@echo ""
	@echo "  test  compile ..."
	@echo "========================================"
	$(CC) $(CFLAGS) -o $(BIN) main.o $(LIBS)
	cp -f t1.json $(BIN_DIR)
	@echo ""
	@echo "compile finish--> $(BIN)"
	@echo ""


main.o: main.c
	$(CC) $(CC_OPTS) $(INCLUDE) -o $@ $<

clean:
	rm -f *.o
	rm -f $(BIN)
