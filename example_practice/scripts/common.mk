UV_PATH		:= $(PKG_TOP_DIR)/library/libuv/$(LIBUV_V)/build_dir/$(PKG_TARGET)/libuv-$(LIBUV_V)
UV_LIBSO	:= $(UV_PATH)/libuv.so
CFLAGS		:= -g -O2 -Wall -I$(UV_PATH)/include

CC			:= $(PKG_CROSS_COMPILE)gcc

LIBS=-L$(UV_PATH) -lrt -lm -lpthread -luv

$(BIN): $(UV_LIBSO) $(OBJS)
	$(CC) $(CFLAGS) -o $(BIN) $(OBJS) $(LIBS)

.c.o:
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm -f $(BIN) $(OBJS)

$(UV_LIBSO):
		pushd $(PKG_TOP_DIR)//library/libuv/$(LIBUV_V);make;popd	

.PHONY: all clean
