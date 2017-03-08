#include <signal.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

#define USB_UART "/dev/ttyUSB2"
int uart_fd;

int uart_init(void){
    int fd;
    struct termios oldtio,newtio;

    //fd = open((const char *)USB_UART, O_RDWR | O_NOCTTY | O_NDELAY );
    fd = open((const char *)USB_UART, O_RDWR );
    if( fd < 0 ){
        printf("uart device: %s open fail\n",USB_UART);
        return -1;
    }

    if(tcgetattr(fd, &oldtio) != 0 ){
        printf("uart device: %s tcgetattr fail\n",USB_UART);
        return -1;
    }

    tcgetattr(fd,&oldtio);

    bzero(&newtio,sizeof(newtio));
    newtio.c_cflag = B2400 | CS8 | CLOCAL | CREAD;
    newtio.c_iflag = IGNPAR;

    // set input mode (non-canonical)
    newtio.c_oflag = 0;
    newtio.c_cc[VTIME] = 0;
    newtio.c_cc[VMIN] = 1;

    tcflush(fd,TCIFLUSH);
    if(tcsetattr(fd, TCSANOW, &newtio) != 0 ){
        printf("uart device: %s tcsetattr fail\n",USB_UART);
        return -1;
    }

    return fd;
}

void test_uart(void){
    int i;
    char ch[1];
    int ret;

    uart_fd = uart_init();
    if( uart_fd < 0) return;

    i=0;
    while(1){
        ret = read(uart_fd,&ch,sizeof(ch));
        if(ret > 0)
            printf("[%d]:%x, size:%d\n",i++,ch[0],ret);
        sleep(0.5);
    }
}

void chandler(int s){
    printf("Caught signal %d\n",s);

    if (uart_fd > 0){
        close(uart_fd);
        printf("close fd\n");
    }

    exit(1);
}

int main(int argc,char** argv){
    struct sigaction sigIntHandler;

    sigIntHandler.sa_handler = chandler;
    sigemptyset(&sigIntHandler.sa_mask);
    sigIntHandler.sa_flags = 0;
    sigaction(SIGINT, &sigIntHandler, NULL);

    printf("test-1 uart\n");
    uart_fd=-1;

    test_uart();
    return 0;
}
