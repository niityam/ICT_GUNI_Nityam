#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
void main(){
	int fd;
	fd = open("invoice.txt", O_RDWR);
	if(fd<0){
		printf("%d, File Don't Exists\n", fd);
		fd = open("ICT_GUNI.txt", O_CREAT | O_RDWR);
		printf("%d, File Now Created \n", fd);
	}
	else{
		printf("%d, File Exists \n", fd);
	}
}

