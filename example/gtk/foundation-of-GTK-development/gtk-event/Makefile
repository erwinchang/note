
EXES = $(basename $(wildcard *.c))
CC = cc
CFLAGS = `pkg-config --cflags gtk+-2.0` `pkg-config --libs gtk+-2.0`

all:
	make $(EXES)

clean:
	rm -f $(EXES) *.o

%: %.c
	$(CC) -Wall -g $@.c -o $@ $(CFLAGS)
