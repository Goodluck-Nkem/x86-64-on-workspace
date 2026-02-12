#include <stdio.h>
#include <sys/time.h>
#include <time.h>
#include <stdlib.h>

void secret() {
    system("/bin/sh");
}

int main(){
	char buf[64] = "AAAA1111BBBB2222CCCC3333DDDD4444EEEE5555FFFF6666GGGG7777H8H8H8";
	puts(" Enter Name:");
	gets(buf);
	printf("Goodbye, %s\n", buf);
	if(!time(0)) secret();
	return 0;
}
