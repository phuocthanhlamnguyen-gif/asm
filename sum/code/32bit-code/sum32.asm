;;32-bit version of sum.asm
;;Check the 32-bit, it's nearly the same?
section .data
    num1 dd 0x64
    num2 dd 0x32
    msg db "The sum is correct!", 0ah
    msg_size equ $ - msg

section .text
global _start

_start:
    mov eax, [num1]
    mov ebx, [num2]
    add eax, ebx

.compare:
    cmp eax, 150
    je .correctsum
    jmp .exit

.correctsum:
    mov eax, 4 ;;4 in 32-bit Linux syscall is to write (aka. sys_write)
    mov ebx, 1 ;;It's kind of the same as 64-bit (1: stdout , 0: stdin) , it's just ththe regs that's different
    mov ecx, msg ;; It's just the regs that's different here
    mov edx, msg_size ;;It's also just the regs that different
    int 0x80 ;;syscall in 32bit
    jmp .exit

.exit:
    mov eax, 1 ;;1 in 32-bit Linux syscall is to exit (aka. sys_exit)
    mov ebx, 0 ;;It's a success?
    int 0x80
