/* showppid.c */
#include <unistd.h>
#include <stdio.h>

int main(void)
{
    FILE *fp;
    char path[80];

    printf("showpid - t1\n");
    //sleep(30);
    snprintf(path, sizeof(path) - 1, "/tmp/showppid.%d.txt", getpid());
    printf("showpid - t2\n");
    fp = fopen(path, "w+");
    printf("showpid - t3,path:%s\n",path);
    if(fp == 0){
        printf("fp==0, path:%s\n",path);
        return 0;
    }

    printf("showpid - t4\n");
    fprintf(fp, "getppid = %d\n", getppid());
    printf("showpid - t5\n");
    fclose(fp);
    printf("showpid - t5\n");
    while(1){
        printf("showip\n");
        sleep(3);
    }
    return 0;
}
