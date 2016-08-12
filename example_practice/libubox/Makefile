export ROOTFS_DIR=$(DK_MOUNT_PATH)/workspace/commom-library-hiv200

all:
	echo "make {hiv200,ubuntu}"


hiv200:
	echo "ROOTFS_DIR:$(ROOTFS_DIR)"
	make build TYPE=hiv200


build:
	rm -rf build_dir
	mkdir build_dir
	cd build_dir && cmake -DCMAKE_TOOLCHAIN_FILE=../cmake_install.$(TYPE) ../examples
	cd build_dir && make VERBOSE=1

clean:
	rm -rf build_dir
