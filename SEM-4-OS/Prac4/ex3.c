#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>

int main() {
    pid_t pid;

    pid = fork();

    if (pid == 0) {
        // child process
        printf("Child process with PID: %d and PPID: %d\n", getpid(), getppid());
        sleep(10);
        printf("Child process is terminated\n");
    } else if (pid > 0) {
        // parent process
        printf("Parent process with PID: %d and PPID: %d\n", getpid(), getppid());
        sleep(5);
        printf("Parent process is terminated\n");
    } else {
        // fork failed
        perror("fork");
        exit(1);
    }

    return 0;
}
