%include "io.inc"
section .bss
X: RESD 1
section .data
msg:DB "%10d",0
scan:DB"%d",0

section .text
global CMAIN
CMAIN:
    ;write your code here
    push ebp
    mov ebp, esp
    push X
    push scan
    call scanf
    push dword[X]
    mov ebx,1
    mov ecx,dword ebx
    mov ecx, dword[X]
    
    L1:
    mov eax,dword ebx
    push ebx
    push ecx
    push eax
    push msg
    call printf
    dec ecx
    add esp,8
    pop ecx
    add ebx,2
    loopnz L1
    NEWLINE
    
    mov esp, ebp
    pop ebp
    ret
    
    xor eax, eax
    ret