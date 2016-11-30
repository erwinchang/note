
CHK					:= $(shell basename $(CROSS))

ifeq (arm-hisiv200-linux,$(CHK))
export SFLAG               := -march=armv7-a -mcpu=cortex-a9
CMAKEFILE			:= cmake_install.hiv200
endif

ifeq (arm-hisiv300-linux,$(CHK))
export SFLAG               := -march=armv7-a -mfloat-abi=softfp -mfpu=neon-vfpv4 -mno-unaligned-access -fno-aggressive-loop-optimizations
CMAKEFILE			:= cmake_install.hiv300
endif

all:
ifeq (,$(ROOTFS_DIR))
	echo "env error"
	exit 1
endif
	rm -rf build_dir
	mkdir build_dir
	cd build_dir && cmake -DCMAKE_TOOLCHAIN_FILE=../$(CMAKEFILE) ../examples
	cd build_dir && make VERBOSE=1

clean:
	rm -rf build_dir
