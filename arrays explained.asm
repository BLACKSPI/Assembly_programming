%include "io.inc"
section .data
nums: DD 8,3,6,9,5,7
output: DB "[%d]",10
section .text
global CMAIN
CMAIN:
    ;write your code here
    push ebp
    mov ebp,esp
    mov eax,6 ; array size (are six numbers)
    mov ebx,nums ;ebx points to first value
    mov ecx,0 ; counter
    Top:
    push ebx
    push eax
    push ecx
    push dword[ebx]
    push output
    call printf
    add esp,8
    pop ecx 
    pop eax
    pop ebx
    add ecx,1
    add ebx,4
    cmp ecx,eax
    jne Top
    mov esp,ebp
    pop ebp
    ret
    xor eax, eax
    ret