
PKT_NAME		:= libuv-1.9.0
PWD_DIR			:= $(shell pwd)
STAGE_PATH		:= $(PWD_DIR)/build_dir/$(PKG_TARGET)
PKT_DIR			:= $(STAGE_PATH)/$(PKT_NAME)



ifeq ($(PKG_CROSS_COMPILE),arm-hisiv200-linux-)
export ARCH=arm
export CC=$(PKG_CROSS_COMPILE)gcc
export AR=$(PKG_CROSS_COMPILE)ar
export LD=$(PKG_CROSS_COMPILE)gcc
export CCLD=$(PKG_CROSS_COMPILE)gcc
export CXX=$(PKG_CROSS_COMPILE)g++
export NM=$(PKG_CROSS_COMPILE)nm
export OBJDUMP =$(PKG_CROSS_COMPILE)objdump
export RANLIB =$(PKG_CROSS_COMPILE)ranlib
export CFLAGS += -march=armv7-a -mcpu=cortex-a9
export CXXFLAGS += -march=armv7-a -mcpu=cortex-a9
#TOOLCHAIN_RUNTIME_LIB:=armv7a_soft
#TOOLCHAIN_RUNTIME_LIB_C:=lib.uClibc.tgz
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
	@echo "--------- task build --------------"
#	pushd $(PKT_DIR);sh autogen.sh;./configure --host=arm-linux-gnueabi -prefix=/opt/arm-hisiv200-linux;popd
#	pushd $(PKT_DIR);sh autogen.sh;./configure --disable-shared --enable-static --host=arm-linux-gnueabi -prefix=/opt/arm-hisiv200-linux;popd	
#	pushd $(PKT_DIR);sh autogen.sh;./configure --enable-shared --enable-static --host=arm-linux-gnueabi -prefix=/opt/arm-hisiv200-linux;popd	
	pushd $(PKT_DIR);sh autogen.sh;./configure --enable-shared --enable-static --host=arm-none-linux-gnueabi -prefix=/opt/arm-hisiv200-linux;popd	
	make -C$(PKT_DIR)
#	cp $(PKT_DIR)/.libs/libuv.a $(STAGE_PATH)
#
build_ubuntu:
	@echo "--------- task build $(PKG_TARGET)--------------"
	pushd $(PKT_DIR);sh autogen.sh;./configure --enable-shared --enable-static
	make -C$(PKT_DIR)


clean:
	-rm -rf $(STAGE_PATH)
