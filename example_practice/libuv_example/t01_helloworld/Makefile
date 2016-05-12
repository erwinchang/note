
FILES	:=$(subst ./, , $(foreach dir,.,$(wildcard $(dir)/*.c)) )
OBJS	:=$(subst .c,.o, $(FILES) )
BIN		:=t01-main-$(PKG_TARGET)
LIBUV_V	:= v0.10.36


include $(PKG_TOP_DIR)/scripts/common.mk