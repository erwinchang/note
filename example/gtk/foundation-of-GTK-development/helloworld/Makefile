

all:
	gcc -Wall -g helloworld.c -o helloworld `pkg-config --cflags gtk+-2.0` `pkg-config --libs gtk+-2.0`
	gcc -Wall -g helloworld2.c -o helloworld2 `pkg-config --cflags gtk+-2.0` `pkg-config --libs gtk+-2.0`

clean:
	rm helloworld helloworld2
