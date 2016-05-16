
FILES	:=$(subst ./, , $(foreach dir,.,$(wildcard $(dir)/*.c)) )
OBJS	:=$(subst .c,.o, $(FILES) )
BIN		:=t05-main-$(PKG_TARGET)

include $(PKG_TOP_DIR)/scripts/common.mk
