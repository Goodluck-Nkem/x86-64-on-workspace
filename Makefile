native:
	gcc -g main.s -o x64.hello
	./x64.hello

qemu:
	x86_64-linux-gnu-gcc-13 -g main.s -o x64.hello
	qemu-x86_64 ./x64.hello

clean:
	rm -f x64.hello
