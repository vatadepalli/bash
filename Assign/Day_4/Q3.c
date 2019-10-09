#include <sys/types.h>
#include <sys/wait.h>
#include <stdio.h>
#include <unistd.h>

int main(int argc, char const *argv[])
{
	pid_t pid[5];
	int status[5];
	int c=0;
	int i=0;
	for ( i = 0; i < 5; ++i)
	{
		pid[i] = fork();
		if (pid[i] < 0)
		{
			printf("\nChild %d Not Created\n",i+1 );
			return -1;
		}
		if (pid[i]==0)
		{
			printf("\nChild %d with PID = %d\n", i+1, getpid());
			sleep(10);
			break; 
		}
		else{
			printf("\nParent PID: %d Doing its work %d\n", getpid(),i+1);
			c++;
			sleep(10);
		}
		
	}
	
	//for(;i<5;i++){
		switch(i)
		{
			case 0:
				if(pid[i]==0)
					execlp("firefox","firefox",NULL);
				break;
			case 1:
				if(pid[i]==0)
					execlp("gedit","gedit",NULL);
				break;
			case 2:
				if(pid[i]==0)
					execlp("firefox","firefox",NULL);
				break;
			case 3:
				if(pid[i]==0)
					execlp("gedit","gedit",NULL);
				break;
			case 4:
				if(pid[i]==0)
					execlp("firefox","firefox",NULL);
			default:
				printf("Invalid!\n");
				break;
		}
		break;
	//}
	
	if (c == 5)
	{
		for (int i = 0; i < 5; ++i)
		{

			status[i]=0;
			printf("\nParent with PID: %d is waiting for Child %d\n",getpid(),i+1);
			waitpid(pid[i],&status[i],0);
			printf("Child %d Exited...\n",i+1);
			if(WIFEXITED(status[i]))
			{
				printf("\nChild %d terminated normally with status: %d\n",i+1,WEXITSTATUS(status[i]));
			}
			
			else if(WIFSIGNALED(status[i]))
			{
				printf("\nChild %d terminated by signal with signal: %d\n",i+1,WTERMSIG(status[i]));
			}

		}
		printf("\nParent with pid: %d Exiting...\n",getpid());
	}
	

	return 0;
}
