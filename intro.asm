%include "io.inc"
section .data
ans:DB "the sum is --> %d",10,0
section .text
global CMAIN             ; can also use global _main to represent CMAIN
CMAIN:
    mov eax,35         ; move 35 to eax
    mov ebx,25         ; move 25 to ebx
    add eax,ebx         ; add the contents
    push eax             ; store results to stack
    push ans            ; push variable to stack
    call printf         ; display top content 
    NEWLINE             ;newline
    xor eax, eax         ; reset registers
    ret                 ; end of main procedure
    
     
    ;eax --> accumulator register
    ;ebx --> base register
    ;edx --> data register
    ;ecx --> counter register