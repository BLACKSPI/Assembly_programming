%include "io.inc"
section .data
nums:DD 8,7,6,5,3,9
ans: DB "the sum is %d",10

section .text
global CMAIN
CMAIN:
    ;write your code here
    push ebp
    mov ebp,esp
    mov ecx,6 ;array size
    sub esi,esi ;set sum to 0
    sub eax,eax ;set sum to 0
    Top:
    add eax,[nums + esi]
    add esi,4 ;offset index by 4
    loop Top
    push eax
    push ans
    call printf
    NEWLINE
    mov esp,ebp
    pop ebp
    ret
    xor eax, eax
    ret