#!/bin/sh
printf "%s" '.global _start
.intel_syntax noprefix

exit:
  mov rdi, 0
  mov rax, 60
  syscall

_start:
  mov rax, 1
  mov rdi, 1
  lea rsi, [hello_world]
  mov rdx, 14
  syscall
  jmp exit

hello_world:
  .asciz "Hello, World!\n"
' >main.s
