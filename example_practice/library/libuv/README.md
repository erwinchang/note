libuv library
============================


* [Cross-platform asynchronous I/O http://libuv.org/][1]
* [An Introduction to libuv][3]
* [Examples were added to show how the API is used.][4]
* [companycy/libuv-practice][5]
* [libuv package download][9]

How does libuv compare to Boost/ASIO
============
* Boost.Asio is a C++ library that started with a focus on networking, but its asynchronous I/O capabilities have been extended to other resources
* On the other hand, libuv is a C library designed to be the platform layer for node.js.
來源:[How does libuv compare to Boost/ASIO?][2]


libuv-v1.9.0在hiv200上面遇到問題
===================

- build libuv.a 遇到 break strict-aliasing rules，但還是可以產生.a (此時script-aliasing仍有問題)
- 實際使用時還是無法連結(link)，產生(EM: 40)
- 其它參考
 - [Relocations in generic ELF (EM: 40) ][6]
 - [What is the strict aliasing rule?][7]
 - [comp script-aliasing ][8]
- 改用 v0.10.36版本試一下
 - 目前node gk350a (0.10.43-rc1) ,,使用的libuv 是 0.10.36(Stable)
- [openwrt 使用v1.6.1][10]

```

src/unix/linux-inotify.c:185: note: initialized from here
src/unix/linux-inotify.c:185: warning: dereferencing pointer '({anonymous})' does break strict-aliasing rules
src/unix/linux-inotify.c:185: note: initialized from here
src/unix/linux-inotify.c:185: warning: dereferencing pointer '({anonymous})' does break strict-aliasing rules
src/unix/linux-inotify.c:185: note: initialized from here
src/unix/linux-inotify.c:185: warning: dereferencing pointer 'queue.31' does break strict-aliasing rules
src/unix/linux-inotify.c:185: note: initialized from here
src/unix/linux-inotify.c:187: warning: dereferencing pointer 'queue.31' does break strict-aliasing rules
src/unix/linux-inotify.c:187: note: initialized from here
src/unix/linux-inotify.c:186: warning: dereferencing pointer 'queue.31' does break strict-aliasing rules
src/unix/linux-inotify.c:186: note: initialized from here
  CC     src/unix/libuv_la-linux-syscalls.lo
  CC     src/unix/libuv_la-proctitle.lo
In file included from src/unix/proctitle.c:22:
src/unix/internal.h: In function 'uv__req_init':
src/unix/internal.h:310: warning: dereferencing type-punned pointer will break strict-aliasing rules
  CCLD   libuv.la
make[2]: Leaving directory `/opt/DOCKER-erwin-build-hiv200/workspace/github/note/example_practice/library/libuv/v1.9.0/build_dir/hiv200/libuv-1.9.0'
make[1]: Leaving directory `/opt/DOCKER-erwin-build-hiv200/workspace/github/note/example_practice/library/libuv/v1.9.0'

```

```

[hiv200](master-0629f4f)10h48m root@92c48df6ab70:[t01_helloworld]$ make
gcc -c -g -O2 -Wall -I/opt/DOCKER-erwin-build-hiv200/workspace/github/note/example_practice/library/libuv/v1.9.0/build_dir/hiv200/libuv-1.9.0/include main.c -o main.o
gcc -g -O2 -Wall -I/opt/DOCKER-erwin-build-hiv200/workspace/github/note/example_practice/library/libuv/v1.9.0/build_dir/hiv200/libuv-1.9.0/include -o t01-main    main.o   /opt/DOCKER-er
win-build-hiv200/workspace/github/note/example_practice/library/libuv/v1.9.0/build_dir/hiv200/libuv-1.9.0/.libs/libuv.a -lrt -ldl -lm -lpthread
/usr/bin/ld: /opt/DOCKER-erwin-build-hiv200/workspace/github/note/example_practice/library/libuv/v1.9.0/build_dir/hiv200/libuv-1.9.0/.libs/libuv.a(libuv_la-uv-common.o): Relocations in 
generic ELF (EM: 40)

```

[1]:https://github.com/libuv/libuv
[2]:http://stackoverflow.com/questions/11423426/how-does-libuv-compare-to-boost-asio
[3]:https://nikhilm.github.io/uvbook/
[4]:https://github.com/thlorenz/libuv-dox
[5]:https://github.com/companycy/libuv-practice/blob/master/server.c
[6]:http://blog.csdn.net/dulin201004/article/details/7884658
[7]:http://stackoverflow.com/questions/98650/what-is-the-strict-aliasing-rule
[8]:http://binlust.blogspot.tw/2006/01/comp-script-aliasing.html
[9]:http://dist.libuv.org/dist/
[10]:https://github.com/openwrt/packages/blob/master/libs/libuv/Makefile
