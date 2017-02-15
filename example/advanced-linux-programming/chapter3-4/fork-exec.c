#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int spawn (char* program, char** arg_list)
{
    pid_t   child_pid;
    child_pid = fork();

    if( child_pid != 0){
        //parent
        return child_pid;
    }else{
        //child
        execvp(program,arg_list);
        fprintf(stderr,"an error occurred in execvp\n");
        abort();
    }
}

int main(){
    char* arg_list[] = {
        "ls",
        "-l",
        "/",
        NULL
    };

    spawn("ls",arg_list);
    printf("done with main program\n");
    return 0;
}
