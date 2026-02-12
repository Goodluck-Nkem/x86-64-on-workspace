#include <stdio.h>
#include <sys/time.h>
#include <time.h>
#include <stdlib.h>

void secret() {
    system("/bin/sh");
}

int main()
{
	char buf[64];
	puts("Enter Name:");
	gets(buf);
	printf("Goodbye, %s\n", buf);
	if(0 == time(0))secret();
	return 0;
}

