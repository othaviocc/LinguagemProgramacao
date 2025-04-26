%include "io.inc"

section .text
global CMAIN
CMAIN:
    MOV ECX, [num1]     ; número de ímpares a imprimir
    MOV EAX, 1          ; primeiro número ímpar
    CMP ECX, 0
    JLE FIM             ; se for 0 ou negativo, pula

LOOP_IMP:
    PRINT_UDEC 4, EAX
    PRINT_CHAR " "
    ADD EAX, 2          ; próximo ímpar
    LOOP LOOP_IMP

FIM:
    MOV EAX, 0
    RET

section .data
num1 DD 5  ; Quantidade de números ímpares a imprimir
