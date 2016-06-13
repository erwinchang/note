#include <stdio.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/socket.h>
#include <net/if.h>
#include <string.h>
#include <arpa/inet.h>
#include <stdlib.h>

//http://blog.csdn.net/wfwfunway/article/details/5737416
//http://fred-zone.blogspot.tw/2008/01/netdevice.html

void print_if_flag(int fd,char * if_name){
	struct ifreq ifr;

	bzero(&ifr, sizeof(ifr));
	strcpy(ifr.ifr_name, if_name);

	ioctl(fd, SIOCGIFFLAGS, &ifr);
 /*
     ifr_flags 的各項旗標和說明：
         IFF_UP              裝置正在運作
         IFF_BROADCAST       有效的廣播位址
         IFF_DEBUG           Debug 標誌
         IFF_LOOPBACK        這是 Loopback 裝置
         IFF_POINTOPOINT     這是點到點的網路裝置介面
         IFF_RUNNING         資源已分配
         IFF_NOARP           無arp協議，沒有設置第二層目的地址
         IFF_PROMISC         介面為雜湊(promiscuous)模式
         IFF_NOTRAILERS      避免使用 trailer
         IFF_ALLMULTI        接收所有群組廣播(multicast)封包資料
         IFF_MASTER          主負載平衡群(bundle)
         IFF_SLAVE           從負載平衡群(bundle)
         IFF_MULTICAST       支持群組廣播(multicast)
         IFF_PORTSEL         可以通過 ifmap 選擇 media 類型
         IFF_AUTOMEDIA       自動選擇 media
         IFF_DYNAMIC         裝置介面關閉時丟棄地址
 */
	printf("IFF_UP           :%d\n",(ifr.ifr_flags & IFF_UP) ? 1: 0);
	printf("IFF_BROADCAST    :%d\n",(ifr.ifr_flags & IFF_BROADCAST) ? 1: 0);
	printf("IFF_DEBUG        :%d\n",(ifr.ifr_flags & IFF_DEBUG) ? 1: 0);
	printf("IFF_LOOPBACK     :%d\n",(ifr.ifr_flags & IFF_LOOPBACK) ? 1: 0);
	printf("IFF_POINTOPOINT  :%d\n",(ifr.ifr_flags & IFF_POINTOPOINT) ? 1: 0);
	printf("IFF_RUNNING      :%d\n",(ifr.ifr_flags & IFF_RUNNING) ? 1: 0);
	printf("IFF_NOARP        :%d\n",(ifr.ifr_flags & IFF_NOARP) ? 1: 0);
	printf("IFF_PROMISC      :%d\n",(ifr.ifr_flags & IFF_PROMISC) ? 1: 0);
	printf("IFF_NOTRAILERS   :%d\n",(ifr.ifr_flags & IFF_NOTRAILERS) ? 1: 0);
	printf("IFF_ALLMULTI     :%d\n",(ifr.ifr_flags & IFF_ALLMULTI) ? 1: 0);
	printf("IFF_MASTER       :%d\n",(ifr.ifr_flags & IFF_MASTER) ? 1: 0);
	printf("IFF_SLAVE        :%d\n",(ifr.ifr_flags & IFF_SLAVE) ? 1: 0);
	printf("IFF_PORTSEL      :%d\n",(ifr.ifr_flags & IFF_PORTSEL) ? 1: 0);
	printf("IFF_AUTOMEDIA    :%d\n",(ifr.ifr_flags & IFF_AUTOMEDIA) ? 1: 0);
	printf("IFF_DYNAMIC      :%d\n",(ifr.ifr_flags & IFF_DYNAMIC) ? 1: 0);
}

int print_interface_info(char *if_name)
{
	int sockfd;
	if((sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0)
	{
		perror("Socket error");
		return -1;
	}	// 创建用来检查网络接口的套接字

	printf("%s:\n", if_name);
	print_if_flag(sockfd,if_name);
	close(sockfd);
	return 0;
}


int main(int argc, char **argv)
{
	if(argc == 2) print_interface_info(argv[1]);
	return 0;
}