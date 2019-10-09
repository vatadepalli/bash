#include <sys/types.h>
#include <sys/wait.h>
#include <stdio.h>
#include <unistd.h>

int main()
{
	pid_t pid = 0;
	int i,j=0;
	int status=0;
	for( i=0;i<5;i++)
	{
		if(pid == 0)
		{
			j++;
			pid = fork();
		}
		
	}
	
	sleep(j);
	
	if(pid<0)
	{
		printf("Fork Failed!\n");
		return -1;
	}
	
	if(pid==0)
	{
		j++;
	}
	
	waitpid(pid,&status,0);
	
	printf("\nProcess: %d ------> pid: %d -- ppid: %d \n",j,getpid(),getppid());
}
