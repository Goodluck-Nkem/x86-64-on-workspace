.global main

.bss

.data

.p2align 4
.section .data.age
age:
    .quad 30

.text

.p2align 4
.section .rodata.msghello
msghello:
    .asciz "Hello World Message!"

.p2align 4
.section .text.main
main:
    leaq msghello(%rip), %rdi
    call puts
    ret
    
