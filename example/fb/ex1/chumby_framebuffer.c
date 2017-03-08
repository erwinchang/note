#include <stdio.h>
#include <stdlib.h>

#define FRAMESIZE 320*240*2
char * framebuffer;

void set_screen(FILE * frame);
void set_colour(FILE * frame, char colour[]);
void draw_pixel(int x, int y, char * colour);
char * rgb_to_byte(int red, int green, int blue);


int main() {
	printf("INFO: Started screen test \n");
	
	// open the framebuffer to read/write
	FILE * frame = fopen("../../dev/fb0", "r+b");
	
	// make an array size of the framebuffer
	framebuffer = malloc(sizeof(char)*(FRAMESIZE));
	
	if (frame == NULL) {
		printf("ERR: Could not access framebuffer \n");
	}
	else {
		printf("INFO: Created framebuffer \n");
	}
	
	/**
	fread(framebuffer, 1, FRAMESIZE, frame);
	int i;
	for (i=0; i<FRAMESIZE; i++) {
		printf("%x \n", framebuffer[i]);
	}**/
	
	// set background to white
	char * colour = rgb_to_byte(0, 0, 0);
	set_colour(frame, colour);
	
	// draw line of red
	int i;
	for (i=20; i<220; i++) {
		draw_pixel(160, i, rgb_to_byte(120, 0, 0));
		draw_pixel(161, i, rgb_to_byte(120, 0, 0));
	}
	// draw line of cyan
	int j;
	for (j=20; j<220; j++) {
		draw_pixel(165, j, rgb_to_byte(0, 120, 120));
		draw_pixel(162, j, rgb_to_byte(0, 120, 120));
	}
	
	// write array to framebuffer
	set_screen(frame);
	
	fclose(frame);
}

// writes array to the framebuffer
void set_screen(FILE * frame) {
	rewind(frame);
	fwrite(framebuffer, 1, FRAMESIZE, frame);
}

// sets the entire frame buffer to colour
void set_colour(char colour[]) {
	int i;
	for (i=0; i<(320*240*2); i=i+2) {
		framebuffer[i] = colour[0];
		int j = i;
		j++;
		framebuffer[j] = colour[1];
	}
}

// converts rgb to byte 
char * rgb_to_byte(int red, int green, int blue) {
	short int colour16 = (short)(((blue&0xf8)<<8) + 
	    ((red&0xfc)<<3) + ((green&0xf8)>>3));

	char * arr = malloc(sizeof(char)*2);
	arr[0] = ((colour16 >> 8) & 0xff);
	arr[1] = ((colour16 >> 0) & 0xff);
	
	return arr;
}

// sets a single pixel to colour
void draw_pixel(int x, int y, char * colour) {
	int pos = (((320*y)+x)*2);
	framebuffer[pos] = colour[0];
	framebuffer[pos+1] = colour[1];
}