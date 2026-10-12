.data
message:
    .asciiz "Hello, World!\n"

.text
.globl main

main:
    # Print string
    li $v0, 4
    la $a0, message
    syscall

    # Exit
    li $v0, 10
    syscall