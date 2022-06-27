%include "io.inc"
section .bss
age:resd 1
section .data
scan:DB "%d",0
msg1: DB "I am not old to code",10,0
msg2:DB "Anyone can learn something",10,0

section .text
global CMAIN
CMAIN:
push ebp
mov ebp,esp
push age
push scan
call scanf 
add esp,4

jmp Here
mov eax, dword[age]
push eax
push msg1
call printf
NEWLINE
add esp,4
Here:
push msg2
call printf
NEWLINE
mov esp,ebp
pop ebp
ret

    