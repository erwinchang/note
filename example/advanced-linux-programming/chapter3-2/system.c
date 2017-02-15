#include <stdlib.h>
#include <stdio.h>


int main()
{
    int return_value;
    return_value = system ("ls -l /");
    printf("ret:%d\n",return_value);
    return return_value;
}
