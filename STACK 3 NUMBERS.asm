%include "io.inc"

section .data
ans:DB "%d,%d,%d",10,0
scan:DB "%d",0

section .bss
    N1:RESD 1
    N2:RESD 1
    N3:RESD 1

global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
section .text
   
    push N1
    push scan
    call scanf
    add esp,4
    
    push N2
    push scan
    call scanf
    add esp,4
    
    push N3
    push scan
    call scanf
    add esp,4
    
    mov dword[N1]
    mov dword[N2]
    mov dword[N3]
        
    push ans
    call printf
    NEWLINE
    add esp,4
    ret