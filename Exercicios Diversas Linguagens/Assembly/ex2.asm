%include "io.inc"

section .text
global CMAIN

CMAIN:
    MOV EAX, [num1]     ; número pra verificar
    CMP EAX, 2
    JL NPRIMO        ; menor que 2 não é primo

    MOV EBX, 2         
    MOV ECX, EAX
    SUB ECX, 1          ; testar divisores EAX - 1

LOOP:
    MOV EDX, 0
    MOV ESI, EAX
    DIV EBX             
    CMP EDX, 0
    JE NPRIMO        ; se resto == 0, não é primo
    INC EBX
    CMP EBX, EAX
    JL LOOP

PRIMO:
    PRINT_STRING "eh primo"
    JMP fim

NPRIMO:
    PRINT_STRING "Não primo"

fim:
    MOV EAX, 0
    RET

section .data
num1 DD 7  ; Número para teste