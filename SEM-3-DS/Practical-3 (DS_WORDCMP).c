#include <stdio.h>
int main(void) {
	char s[6], s1[6], save[1000][6][6];
	int times;
	scanf("%d",&times);
	
	for(int i=0,j=0; i<times; i++, j++){
	    scanf("%s",s);
	    scanf("%s",s1);
	    
	    for(int k=0; k<6; k++){
	        if(s[k] == s1[k]){
	            save[i][j][k]='Y';
	        }
	        else{
	            save[i][j][k]='N';
	        }
	    }
	}
	for(int i=0; i<times; i++){
	    printf("%s \n",save[i][i]);
	}
	return 0;
}
