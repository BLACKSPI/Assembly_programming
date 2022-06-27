%include "io.inc"
section .data
message: dd "%3d",0
section .text
global CMAIN
CMAIN:
    push ebp
    mov ebp, esp
    
    mov ebx,1
    mov eax, DWORD ebx
    mov ecx, DWORD 10
    
    L1:
    mov eax,DWORD ebx
    push ebx
    push ecx
    push eax
    push message
    call printf
    dec ecx ; update counter
    add esp,8
    pop ecx
    add ebx,2
    loopnz L1
    
    mov esp, ebp
    pop ebp
ret
    xor eax, eax
    ret