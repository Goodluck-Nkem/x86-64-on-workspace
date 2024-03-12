.global main

.bss

.data

.p2align 4
.section .data.age
age:
    .quad 30

.text

.p2align 4
.section .data.msghello
msghello:
    .asciz "Hello World from Storm!"

.p2align 4
.section .text.main
main:
#	push %rbp 					# align stack
    leaq msghello(%rip), %rdi
	movb $'Y', (%rdi) 
    call puts
    xor %rax, %rax
#	pop %rbp					# restore stack pointer

.intel_syntax noprefix
	lea rdi, [rip + msghello] 	# load message
	mov BYTE PTR [rdi], 'H'
	call puts 
	xor rax, rax
    ret

.section .note.GNU-stack
