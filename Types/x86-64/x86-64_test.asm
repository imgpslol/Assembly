global _start

section .text
_start:
    xor rdi, rdi
    mov rax, 60
    syscall
