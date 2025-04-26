/*Escreva um programa que converta temperaturas de Fahrenheit para Celsus, seguindo
a equação 𝐶 = (𝐹−32)×5 / 9*/
#include <stdio.h>

int main()
{
    int fahrenheit, celsus ;
    scanf("%d", &fahrenheit);
    celsus = ((fahrenheit - 32)*5) / 9;
    printf("%d", celsus);
    return 0;
}