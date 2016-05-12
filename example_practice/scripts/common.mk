
UV_PATH	:= $(PKG_TOP_DIR)/library/libuv/v1.9.0/build_dir/$(PKG_TARGET)/libuv-1.9.0
UV_LIB	:= $(UV_PATH)/.libs/libuv.a
CFLAGS	:= -g -O2 -Wall -I$(UV_PATH)/include

CC		:= $(TARGET_CROSS)gcc
LD      := $(TARGET_CROSS)gcc


LIBS=-lrt -ldl -lm -lpthread

$(BIN): $(UV_LIB) $(OBJS)
	$(CC) $(CFLAGS) -o $(BIN) $(OBJS) $(UV_LIB) $(LIBS)

$(UV_LIB):
		pushd $(PKG_TOP_DIR)//library/libuv/v1.9.0;make;popd

.c.o:
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm -f $(BIN) $(OBJS)

.PHONY: all clean
