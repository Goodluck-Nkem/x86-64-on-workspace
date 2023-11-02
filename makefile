NAME=test
CLANG_FLAGS = -fuse-ld=lld -pie -Og -g -std=gnu11

asm:
	clang --target=x86_64-pc-linux-gnu -o x64.${NAME} main.s

gcc:
	gcc -std=gnu11 -pie -Og -g ${wildcard ../*.c} -o gcc.${NAME}

clang64:
	clang --target=x86_64-pc-linux-gnu ${CLANG_FLAGS} -o clang64.$(NAME) ${wildcard ../*.c} 

clean:
	rm -f ${wildcard *.${NAME}}
