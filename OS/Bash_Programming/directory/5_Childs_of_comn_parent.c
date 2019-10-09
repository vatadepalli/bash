#include <sys/types.h>
#include <sys/wait.h>
#include<stdio.h>
#include <unistd.h>

int main()
{
	pid_t p1,p2,p3,p4,p5;
	int status=0;
	
	p1=fork();
	if(p1 == 0)
	{
		printf("\nChild 1 ------> PID: %d\n",getpid());
		sleep(10);
		printf("\nChild 1 Exiting...\n");
	}
	else{
		p2 = fork();
		if(p2 == 0)
		{
			waitpid(p1,&status,0);
			printf("\nChild 2 ------> PID: %d\n",getpid());
			sleep(10);
			printf("\nChild 2 Exiting...\n");
		}
		else{
			p3 = fork();
			if(p3 == 0)
			{
				printf("\nChild 3 ------> PID: %d\n",getpid());
				sleep(10);
				printf("\nChild 3 Exiting...\n");
			}
			else{
				p4 = fork();
				if(p4 == 0)
				{
					printf("\nChild 4 ------> PID: %d\n",getpid());
					sleep(10);
					printf("\nChild 4 Exiting...\n");
				}
				else{
					p5 = fork();
					if(p5 == 0)
					{
						printf("\nChild 5 ------> PID: %d\n",getpid());
						sleep(10);
						printf("\nChild 5 Exiting...\n");
					}
					else
					{
						waitpid(p5,&status,0);
						printf("Parent waiting to exit ---> childs\n");
						if(WIFEXITED(status)) 
						{
							printf("\nChilds terminated normally with status: %d\n",WEXITSTATUS(status));
						}
						
						else if(WIFSIGNALED(status))
						{
							printf("\nChilds terminated by signal with signal: %d\n",WTERMSIG(status));
						}
						
						
						printf("Parent %d Exiting...\n",getpid());
					}
				}
			}
		}	
	}
	
	return 0;
}
