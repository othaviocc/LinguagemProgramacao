/*Dado um inteiro x, determine 𝑥!*/

#include <stdio.h>

int main()
{
    int numero, fatorial, i;
    scanf("%d", &numero);
    for (i = numero; i > 0; i--){
        if (i == numero){
            fatorial = numero;
        }
        else{
            fatorial = fatorial * i;
        }
    }
    printf("%d", fatorial);
    return 0;
}