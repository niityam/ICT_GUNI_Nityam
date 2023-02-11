#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
int main()
{
    pid_t ret_value;
    int x;
    scanf("%d", &x);
    for (int i = 0; i < x; i++)
    {
         if(fork() == 0){
            printf("[Son] PID %d From [Parent] PID %d \n", getpid(), getppid());
            exit(0);	
         }
    }
}
