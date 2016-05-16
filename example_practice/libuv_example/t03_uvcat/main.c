#include <assert.h>
#include <stdio.h>
#include <unistd.h>
#include <uv.h>

uv_fs_t open_req;
uv_fs_t read_req;
uv_fs_t write_req;

static char buffer[1024];

static uv_buf_t iov;

void on_read(uv_fs_t *req);

void on_write(uv_fs_t *req){
	if(req->result < 0){
		fprintf(stderr, "Write error: %s\n", uv_strerror(req->result));

	}
	else{
		uv_fs_read(uv_default_loop(), &read_req, open_req.result, &iov, 1, -1, on_read);
	}	
}

//int uv_fs_close(uv_loop_t* loop, uv_fs_t* req, uv_file file, uv_fs_cb cb)
void on_read(uv_fs_t *req){

	if(req->result < 0){
		fprintf(stderr, "Read error: %s\n", uv_strerror(req->result));

	}
	else if(req->result == 0){
		uv_fs_t close_req;
        // synchronous
        uv_fs_close(uv_default_loop(), &close_req, open_req.result, NULL);		

	}
	else if(req->result > 0){
        iov.len = req->result;
        uv_fs_write(uv_default_loop(), &write_req, 1, &iov, 1, -1, on_write);
	}
}

//UV_EXTERN int uv_fs_read(uv_loop_t* loop, uv_fs_t* req, uv_file file,
//    void* buf, size_t length, int64_t offset, uv_fs_cb cb);

//read 的回调函数中 result 如果是 0, 则读取文件时遇到了文件尾(EOF), -1 则代表出现了错误, 而正整数则是表示成功读取的字节数
void on_open(uv_fs_t *req){

	assert(req == &open_req);

	if( req->result >=0 ){
		iov = uv_buf_init(buffer, sizeof(buffer));
		uv_fs_read(uv_default_loop(),&read_req, req->result,
			&iov, 1, -1, on_read);

	}else{
		fprintf(stderr,"error opening file: %s\n", uv_strerror((int)req->result));
	}

}

//UV_EXTERN int uv_fs_open(uv_loop_t* loop, uv_fs_t* req, const char* path,int flags, int mode, uv_fs_cb cb);
int main(int artc, char **argv){

	uv_fs_open(uv_default_loop(), &open_req, argv[1], O_RDONLY, 0, on_open);
	uv_run(uv_default_loop(), UV_RUN_DEFAULT);

    uv_fs_req_cleanup(&open_req);
    uv_fs_req_cleanup(&read_req);
    uv_fs_req_cleanup(&write_req);	
}