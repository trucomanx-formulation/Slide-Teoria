//gcc -g -O0 test1.c

#include <stdio.h>

int main(int argc, char** argv)
{
	int B=2, C=3;
	int A,r;
	
	r=B-C;
	if(r==0)
	{
		A=0;
	}
	A=3;

	printf("%d",A);

	return 0;
}
