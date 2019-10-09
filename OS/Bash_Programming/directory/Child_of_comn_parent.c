#include <sys/types.h>
#include <sys/wait.h>
#include<stdio.h>
#include <unistd.h>

int main()
{
	pid_t p;
	int status=0;
	
	printf("\n Parent %d started\n",getpid());
	for(int i=0;i<5;i++)
	{
		p=fork();
		if(p==0)
		{
			
			printf("\nChild %d created with pid= %d\n",i+1,getpid());
			
			exit(0);
		}
	}
	
	
	waitpid(p,&status,0);
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
	return 0;
}
