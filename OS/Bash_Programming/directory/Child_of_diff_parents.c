#include <sys/types.h>
#include <sys/wait.h>
#include <stdio.h>
#include <unistd.h>

int main()
{
	pid_t p1,p2,p3,p4;
	pid_t parent = getpid();
	
	int c=0;
	printf("Parent Process\n",getpid());
	p1=fork();
	
	if(p1<0)
	{
		return -1;
	}
	
	if(p1==0)
	{
		printf("Process 2 with pid: %d CREATED\n",getpid());
		p2 = fork();
		if(p2==0)
		{
			printf("Process 3 with pid: %d CREATED\n",getpid());	
			p3=fork();
			if(p3==0)
			{
				printf("Process 4 with pid: %d CREATED\n",getpid());	
				p4=fork();
				if(p4==0)
				{
					printf("Process 5 with pid: %d CREATED\n",getpid());
				}
			}
		}
		else{
			printf("");
		}
		
	}
	else{
		printf("");
	}
	
	return 0;
}
