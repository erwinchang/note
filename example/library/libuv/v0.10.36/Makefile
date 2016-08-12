
PKT_NAME		:= libuv-v0.10.36
PWD_DIR			:= $(shell pwd)
STAGE_PATH		:= $(PWD_DIR)/build_dir/$(PKG_TARGET)
PKT_DIR			:= $(STAGE_PATH)/$(PKT_NAME)



ifeq ($(PKG_CROSS_COMPILE),arm-hisiv200-linux-)
export CC=$(PKG_CROSS_COMPILE)gcc
endif

all:
	-mkdir -p $(STAGE_PATH)
	@echo ""
	@echo "=================================="
	@echo "= STAGE_PATH: $(STAGE_PATH)"
	@echo "= tgz: $(PWD_DIR)/$(PKT_NAME).tar.gz"
	@echo "= PKT_DIR: $(PKT_DIR)"
	@echo "= CROSS_COMPILE:$(CROSS_COMPILE)"
	@echo "==================================="
	@echo ""
	@if [ ! -d $(PKT_DIR) ];then			   							\
		tar -zxvf $(PWD_DIR)/$(PKT_NAME).tar.gz -C $(STAGE_PATH); 		\
	fi
ifeq ($(PKG_TARGET),hiv200)
	make build_hiv200;
endif
ifeq ($(PKG_TARGET),ubuntu)
	make build_ubuntu;
endif



build_hiv200:
	@echo "--------- task build $(PKG_TARGET)--------------"
	make -C$(PKT_DIR) PLATFORM=linux CC=arm-hisiv200-linux-gcc

build_ubuntu:
	@echo "--------- task build $(PKG_TARGET)--------------"
	make -C$(PKT_DIR) PLATFORM=linux

clean:
	-rm -rf $(STAGE_PATH)
