%include "io.inc"
section .data
msg: DB"%d",10,0
section .text
global CMAIN
CMAIN:
    ;write your code here
    push ebp
    mov ebp, esp
    mov ebx,101b
    SHR ebx,1
    push ebx
    push msg
    call printf
    NEWLINE
    mov esp, ebp
    pop ebp
    ret
    xor eax, eax
    ret