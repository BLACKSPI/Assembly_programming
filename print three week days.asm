%include "io.inc"
section .data
msg1 :DB "Monday",10,0
msg2 :DB "Tuesday",10,0
msg3 :DB "Wednesday",10,0
section .text
global CMAIN
CMAIN:
    ;write your code here
    push ebp
    mov ebp,esp
    push msg3
    call printf
    call proc2 ;call another method
    mov esp,ebp
    pop ebp
    ret
    
    proc2:
    push ebp
    mov ebp,esp
    call proc3
    push msg1
    call printf
    mov esp,ebp
    pop ebp
    ret
   
    
    proc3:
    push ebp
    mov ebp,esp
    push msg2
    call printf
    mov esp,ebp
    pop ebp
    ret
    xor eax, eax
    ret