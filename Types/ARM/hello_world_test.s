.section .data
message:
    .ascii "Hello, World!\n"
message_len = . - message

.section .text
.global _start

_start:
    @ write(1, message, message_len)
    mov r0, #1
    ldr r1, =message
    ldr r2, =message_len
    mov r7, #4
    svc #0

    @ exit(0)
    mov r0, #0
    mov r7, #1
    svc #0