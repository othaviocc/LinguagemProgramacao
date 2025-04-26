/*Dado um número inteiro positivo n, imprimir os n primeiros naturais ímpares*/
#include <stdio.h>

int main()
{
    int numero, i;
    scanf("%d", &numero);
    for (i = 1; i <= numero; i++){
        if (i%2 != 0){
            printf("%d", i);
            printf("\n");
        }
    }
    return 0;
}