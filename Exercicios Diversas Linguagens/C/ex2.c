/*Dado um inteiro positivo n, verificar se n é primo*/

#include <stdio.h>

int main()
{
    int numero, i;
    scanf("%d", &numero);
    for (i = 2; i < numero; i++){
        if (numero%i == 0){
            printf("Nao eh primo\n");
            break;
        }
        if (numero%i != 0 && i+1 == numero){
            printf("Eh primo\n");
        }
    }
    return 0;
}