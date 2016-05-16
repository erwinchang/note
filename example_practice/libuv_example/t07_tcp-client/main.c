#include <stdio.h>
#include <assert.h>
#include <uv.h>

#define DEFAULT_PORT 7000
#define DEFAULT_BACKLOG 128


void after_write(uv_write_t *req, int status)
{
    printf("after_write\n");
    assert(!status);
}

void on_connect(uv_connect_t *req, int status)
{
	/*
    printf("on_connect\n");
    assert(!status);

    char *req_message = "POST /signup HTTP/1.1\n"
                        "User-Agent: HTTPTool/1.0\n"
                        "Content-Type: application/x-www-form-urlencoded\n"
                        "Content-Length: 95\n"
                        "\n"
                        "{\n"
                        "    \"cmd\": \"signup\",\n"
                        "    \"email\": \"jj@jj.com\",\n"
                        "   \"nickname\": \"jj\",\n"
                        "   \"password\": \"jj\",\n"
                        "}\n"
                        "\n";
    uv_buf_t bufs[] = {
        { .len  = strlen(req_message), .base = req_message }
    };
    int bufs_len = sizeof(bufs)/sizeof(uv_buf_t);

    uv_stream_t *tcp = req->handle;
    uv_write_t write_req;
    uv_write(&write_req, tcp, bufs, bufs_len, after_write);
    */
}

int main(int argc, char const *argv[])
{
    uv_tcp_t socket;
    assert(!uv_tcp_init(uv_default_loop(), &socket));

    struct sockaddr_in dest;
    assert(!uv_ip4_addr("127.0.0.1", DEFAULT_PORT, &dest));

    uv_connect_t connect;
    assert(!uv_tcp_connect(&connect, &socket, (struct sockaddr *) &dest, on_connect));
    uv_run(uv_default_loop(), UV_RUN_ONCE);
    return 0;
}
