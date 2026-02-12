native:
	gcc -g main.s -o x64.hello
	./x64.hello

qemu:
	x86_64-linux-gnu-gcc-13 -g main.s -o x64.hello
	qemu-x86_64 ./x64.hello

vuln:
	gcc -g -no-pie -std=c99 -fno-stack-protector -z execstack vuln.c -o vuln

clean:
	rm -f x64.hello
