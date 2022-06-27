%include "io.inc"
section .data
ans:DB "The answer is %d",10,0
scan:DB "%d",0
section .bss
x1: RESD 1
x2: RESD 1

section .text

global CMAIN
CMAIN:
    push ebp
    mov ebp,esp
    push x1
    push scan
    call scanf
    add esp,4
    push x2
    push scan
    call scanf
    add esp,4
    
    mov eax, dword[x1]
    mov ebx,dword[x2]
    add eax,ebx
    push eax
    push ans
    call printf
    NEWLINE
    mov esp,ebp
    pop ebp
    
    xor eax, eax
    ret