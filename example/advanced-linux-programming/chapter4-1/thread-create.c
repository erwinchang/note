#include <pthread.h>
#include <stdio.h>

void* print_xs(void* unused){
    while(1)
        fputc('x',stderr);

    return NULL;
}


