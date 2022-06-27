%include "io.inc"

section .data
ans:DB "The area is %.3f",10,0 ;
scan: "%f",0
pi:DD 3.142
section .bss
radius:RESD 1

section .text
global CMAIN
CMAIN:
    mov ebp,esp; for correct debugging
    push ebp
    mov ebp,esp
    push radius
    push scan
    call scanf
    add esp,8
    sub esp,8 ;set pointer to push  next value
    mov eax,radius
    mov ebx,pi
    
    
    fld dword[eax]; this is for multiplying the radius pi*r^2 / push eax to stack
    fld dword[eax] ;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    fmul ;multiply top 2 real numbers
    fld dword[ebx] ;push ebx to stack
    fmul ;multiply top 2 values
    fst qword[esp] ;store real number
    push ans 
    call printf
    
    NEWLINE
    mov esp,ebp
    pop ebp
    ret
    xor eax, eax
    ret