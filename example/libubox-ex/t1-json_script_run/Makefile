include $(GIT_SRC_DIR)/scripts/tools.mk

I_ROOT  := $(GIT_SRC_DIR)/package/rootfs
BIN_DIR	:= $(GIT_BUILD_DIR)/rootfs/root
BIN 	:= $(BIN_DIR)/json-script-ex

INCLUDE += -I$(I_ROOT)/usr/local/include/libubox
INCLUDE += -I$(I_ROOT)/include/json-c
INCLUDE += -I$(I_ROOT)/include

LIBS	:= -L$(GIT_BUILD_DIR)/rootfs/usr/local/lib -lubox -ljson_script -lblobmsg_json -ljson-c
LIBS	+= -L$(GIT_BUILD_DIR)/rootfs/lib -ljson-c

all:
	echo "$(GIT_BUILD_DIR)"
	@if [ -d $(GIT_BUILD_DIR)/rootfs  ];then			\
		make build;										\
	fi

build: json_script-ex.o
	@echo ""
	@echo "  test  compile ..."
	@echo "========================================"
	$(CC) $(CFLAGS) -o $(BIN) json_script-ex.o $(LIBS)
	cp -f  json_script-example.json $(BIN_DIR)
	@echo ""
	@echo "compile finish--> $(BIN)"
	@echo ""


json_script-ex.o: json_script-ex.c
	$(CC) $(CC_OPTS) $(INCLUDE) -o $@ $<

clean:
	rm -f *.o
	rm -f $(BIN)
