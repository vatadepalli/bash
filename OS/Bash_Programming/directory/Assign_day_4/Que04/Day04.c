#include<stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main()
{
	pid_t p1,p2,p3,p4,p5;
	int status[5]={0,0,0,0,0};

	p1 = fork();
	if(p1<0)
	{
		return -1;
	}
	if(p1==0)			//Child 1
	{
		sleep(5);
		printf("Child 1----->pid: %d , ppid: %d\n",getpid(),getppid());
		execlp("gcc","gcc","-c","Add.c","-o","add",NULL);
	}
	else
	{				//Parent

		p2 = fork();
		if(p2<0)
		{
			return -1;
		}
		if(p2==0)			//Child 2
		{
			sleep(10);
			printf("Child 2----->pid: %d , ppid: %d\n",getpid(),getppid());
			execlp("gcc","gcc","-c","Sub.c","-o","sub",NULL);
		}
		else
		{				//Parent
						

			p3 = fork();
			if(p3<0)
			{
				return -1;
			}
			if(p3==0)			//Child 3
			{
				sleep(15);
				printf("Child 3----->pid: %d , ppid: %d\n",getpid(),getppid());
				execlp("gcc","gcc","-c","Multi.c","-o","multi",NULL);
			}
			else
			{				//Parent
			
				p4 = fork();
				if(p4<0)
				{
					return -1;
				}
				if(p4==0)			//Child 4
				{
					sleep(20);
					printf("Child 4----->pid: %d , ppid: %d\n",getpid(),getppid());
					execlp("gcc","gcc","-c","Divide.c","-o","divide",NULL);
				}
				else
				{				//Parent
					
					p5 = fork();
					if(p5<0)
					{
						return -1;
					}
					if(p5==0)			//Child 5
					{
						sleep(25);
						printf("Child 5----->pid: %d , ppid: %d\n",getpid(),getppid());
					execlp("gcc","gcc","add","sub","multi","divide","Main.c","-o","Calc",NULL);
					}
					else
					{				//Parent
						
					}
				}
			}

		}
		
		printf("Parent Doing its work...\n");
		//execlp("firefox","firefox",NULL);		//Cannot call here
		waitpid(p1,&status[0],0);			//Wait for child 1
		if(WIFEXITED(status[0]))
		{
			printf("\nChild 1 Exited Successfully with status= %d\n",WEXITSTATUS(status[0]));
		}
		else if(WIFSIGNALED(status[0]))
		{
			printf("\nChild 1 Exited Abnormally with signal= %d\n",WTERMSIG(status[0]));
		}

		waitpid(p2,&status[1],0);			//wait for child 2
		if(WIFEXITED(status[1]))
		{
			printf("\nChild 2 Exited Successfully with status= %d\n",WEXITSTATUS(status[1]));
		}
		else if(WIFSIGNALED(status[1]))
		{
			printf("\nChild 2 Exited Abnormally with signal= %d\n",WTERMSIG(status[1]));
		}

		waitpid(p3,&status[2],0);			//wait for child 3
		if(WIFEXITED(status[2]))
		{
			printf("\nChild 3 Exited Successfully with status= %d\n",WEXITSTATUS(status[2]));
		}
		else if(WIFSIGNALED(status[2]))
		{
			printf("\nChild 3 Exited Abnormally with signal= %d\n",WTERMSIG(status[2]));
		}

		waitpid(p4,&status[3],0);			//wait for child 4
		if(WIFEXITED(status[3]))
		{
			printf("\nChild 4 Exited Successfully with status= %d\n",WEXITSTATUS(status[3]));
		}
		else if(WIFSIGNALED(status[3]))
		{
			printf("\nChild 4 Exited Abnormally with signal= %d\n",WTERMSIG(status[3]));
		}

		waitpid(p5,&status[4],0);			//wait for child 5
		if(WIFEXITED(status[4]))
		{
			printf("\nChild 5 Exited Successfully with status= %d\n",WEXITSTATUS(status[4]));
		}
		else if(WIFSIGNALED(status[4]))
		{
			printf("\nChild 5 Exited Abnormally with signal= %d\n",WTERMSIG(status[4]));
		}
		execlp("/home/dac/Documents/Ak19/OS/Bash_Programming/directory/Assign_day_4/Que04/Calc","Calc",NULL);

	}
	
	return 0;
}
