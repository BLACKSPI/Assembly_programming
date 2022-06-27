%include "io.inc"
section .data
output: DB "[%d] and [%d]",0
arr: DD 1000,2000,3000,4000,6000
section .text
global CMAIN
CMAIN:
    ;write your code here
    push ebp 
    mov ebp,esp
    mov eax,[arr+0]
    mov ebx,[arr+16]
    push ebx
    push eax
    push output
    call printf
    add esp,8
    mov esp,ebp
    pop ebp
    ret
    xor eax, eax
    ret
    
    ;NOTE: We can also access index register