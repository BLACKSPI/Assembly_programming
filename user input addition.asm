%include "io.inc"
section .bss
x : RESD 1
y : RESD 1
section .data
result :DB "the total %d",10,0
scan : DB "%d",0
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    push ebp
    mov ebp,esp
    call get
    mov esp,ebp
    pop ebp
    ret
    
    
    get :
    push ebp
    mov ebp,esp
    
    push x
    push scan
    call scanf
    add esp,4
    
    push y
    push scan
    call scanf
    add esp,4
    
    mov eax,dword[x]
    mov ebx,dword[y]
    call Add
    ret
    
    Add:
    push ebp
    mov ebp,esp
    add eax,ebx
    push eax
    push result
    call printf
    
    NEWLINE
    mov esp,ebp
    pop ebp
    ret
    
    xor eax,eax
    ret