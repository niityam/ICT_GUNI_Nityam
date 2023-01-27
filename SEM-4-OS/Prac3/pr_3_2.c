#include <stdio.h>
#include <unistd.h> 
#include <fcntl.h>

void main(){

	char orderid[50], itemprice[50] ,itemname [50], orderdate[50], deliverydate [50];

	printf("Enter Order ID\n");
	scanf("%s", orderid);

	printf("Enter Order Date\n"); 
	scanf("%s", orderdate);

	printf("Enter Item Name\n"); 
	scanf("%s",itemname);

	printf("Enter Item Price\n"); 
	scanf("%s", itemprice);

	printf("Enter Delivery Date\n"); 
	scanf("%s", deliverydate);

	int fd;
	fd = open("invoice.txt", O_CREAT | O_RDWR); 
	printf("File desc %d", fd);

	if(fd!=-1){

		write(fd, orderdate,sizeof(orderdate)); 
		write(fd, itemname, sizeof(itemname));
		write(fd, orderid, sizeof(orderid)); 
		write(fd, deliverydate, sizeof(deliverydate));
		write(fd, itemprice,sizeof(itemprice));

	}
	close(fd);
}
