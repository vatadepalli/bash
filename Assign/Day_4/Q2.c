#include <sys/types.h>
#include <sys/wait.h>
#include <stdio.h>
#include <unistd.h>

int main()
{
	pid_t p1,p2,p3,p4;
	pid_t parent = getpid();
	int status[4];
	int c=0;
	printf("Parent Process 1 with pid: %d\n",getpid());
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
				else{
					status[3]=0;
					printf("Process 4 waiting for Process 5\n");
					waitpid(p4,&status[3],0);
					printf("Process 5 Exited...\n");
				}
			}
			else{
				status[2]=0;
				printf("Process 3 waiting for Process 4\n");
				waitpid(p3,&status[2],0);
				printf("Process 4 Exited...\n");
			}
		}
		else{
			status[1]=0;
			printf("Process 2 waiting for Process 3\n");
			waitpid(p2,&status[1],0);
			printf("Process 3 Exited...\n");
		}
		
	}
	else{
		status[0]=0;
		printf("Process 1 waiting for Process 2\n");
		waitpid(p1,&status[0],0);
		printf("Process 2 Exited...\n");
		printf("Process 1 Exiting...\n");
	}
	
	return 0;
}
