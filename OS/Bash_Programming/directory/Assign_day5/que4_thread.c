#include<pthread.h>
#include<unistd.h>
#include<stdio.h>

void* func1(void *t)
{
	int x = (int *)t;
	x++;
	pthread_exit(&x);
	return NULL;
}

int main()
{
	pthread_t tid1,tid2;
	int t = 10;
	int *res;
	pthread_create(&tid1,NULL,func1,&t);
	pthread_create(&tid2,NULL,func1,&t);

	pthread_join(&tid1,(void **)&res);
	pthread_join(&tid2,(void **)&res);
	printf("Result= %d\n",*res);
	return 0;
}
