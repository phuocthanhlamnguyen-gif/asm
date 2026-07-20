;;32-bit version of hello.asm

section .data

msg db "hello world!", 0ah
msg_size equ $ - msg

section .text
global _start

_start:
;; - Print variable - 
mov eax, 4
mov ebx, 1
mov ecx, msg
mov edx, msg_size
int 0x80

;;Clear the variables
xor ecx, ecx
;; - Exit -
mov eax, 1
mov ebx, 0
int 0x80
;;Joke of the day: What call does a Linux programmer only takes, a system call
