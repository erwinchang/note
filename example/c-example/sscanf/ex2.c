#include <stdio.h>

int main(){
    char uri_str[64], streamurl[64];

    sscanf("rtsp://10.0.0.141:554/media?profile=h264","%*[^:]:%*2[/]%[^/]/%[a-zA-Z0-9\/+=%&_\.~?\-]",uri_str,streamurl);
    printf("%s %s\n",uri_str,streamurl);
    return 1;
}
