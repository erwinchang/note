
FILES	:=$(subst ./, , $(foreach dir,.,$(wildcard $(dir)/*.c)) )
OBJS	:=$(subst .c,.o, $(FILES) )
BIN		:=t06-main-$(PKG_TARGET)


all: $(OBJS)
	$(CC) $(CFLAGS) -o $(BIN) $(OBJS)

include $(PKG_TOP_DIR)/scripts/common.mk
