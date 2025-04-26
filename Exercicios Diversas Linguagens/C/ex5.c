/*Dados dois strings (um contendo uma frase e outro contendo uma palavra), determine
o número de vezes que a palavra ocorre na frase.*/

#include <stdio.h>
#include <string.h>

int main() {
    char frase[35];
    char palavra[5];
    int i, j, len_frase, len_palavra, encontrou;
    int count = 0;
    
    printf("Frase:\n");
    gets(frase);  
    printf("Palavra:\n");
    gets(palavra);

    len_frase = strlen(frase);
    len_palavra = strlen(palavra);

    for (i = 0; i <= len_frase - len_palavra; i++) {
        encontrou = 1;
        for (j = 0; j < len_palavra; j++) {
            if (frase[i + j] != palavra[j]) {
                encontrou = 0;
                break;
            }
        }
        if (encontrou == 1) {
            count++;
        }
    }

    printf("Temos que a palavra '%s' ocorre %d vezes na frase.\n", palavra, count);
    return 0;
}
