#include<stdio.h>

void Divide(int a,int b){
	if(b!=0){
		printf("Division of %d & %d is %d\n",a,b,a/b);
	}
	else{
		printf("Not Divisible by %d\n",b);
	}
}
