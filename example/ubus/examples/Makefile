
# CROSS : toolchain path
# ROOTFS_DIR : rootfs


CC 		:= $(CROSS)-gcc

INC 	:= -I$(ROOTFS_DIR)/include
INC 	+= -I$(ROOTFS_DIR)/usr/local/include
CFLAGS  := `-march=armv7-a -mfloat-abi=softfp -mfpu=neon-vfpv4 -mno-unaligned-access -fno-aggressive-loop-optimizations -Wall -Werror --std=gnu99`
DEF 	:= -DUBUS_UNIX_SOCKET=\"/var/run/ubus.sock\"
DEF 	+= -DUBUS_MAX_MSGLEN=1048576

LIB		:= -L$(ROOTFS_DIR)/usr/local/lib -lubox -lubus -lblobmsg_json -L$(ROOTFS_DIR)/lib -ljson-c -lm


all:server.o count.o client.o
	$(CC) -o server server.o count.o -lm $(LIB)
	$(CC) -o client client.o count.o -lm $(LIB)

clean:
	rm -f server.o count.o server client.o client

.c.o:
	$(CC) $(DEF) $(CFLAGS) $(INC) -o $@ -c $<
