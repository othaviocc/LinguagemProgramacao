%include "io.inc"

section .text
global CMAIN
CMAIN:
    MOV ECX, [num1]
    MOV EAX, 1
    LOOP:
        IMUL EAX, ECX
        SUB ECX, 1
        JNZ LOOP
    JMP END

global END
END:
    PRINT_UDEC 4, EAX
    RET
    
section .data
num1 DD 12 ;   fatorial