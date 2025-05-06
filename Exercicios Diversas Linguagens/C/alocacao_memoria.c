#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Produto {
    char nome[30];  // Nome do produto
    int codigo;     // Código do produto
    double preco;   // Preço do produto
} Produto;

typedef struct node {
    Produto produto;
    struct node* next;
} Node;

Node* criarNode(Produto produto) {
    Node* novo = (Node*)malloc(sizeof(Node));
    if (novo == NULL) {
        printf("Erro de alocação de memória.\n");
        exit(1);
    }
    novo->produto = produto;
    novo->next = NULL;
    return novo;
}

void adicionarProduto(Node** head) {
    Produto prod;
    printf("Digite o nome do produto: ");
    fgets(prod.nome, sizeof(prod.nome), stdin);
    prod.nome[strcspn(prod.nome, "\n")] = 0;  

    printf("Digite o código do produto: ");
    scanf("%d", &prod.codigo);

    printf("Digite o preço do produto: ");
    scanf("%lf", &prod.preco);
    getchar(); 

    Node* novo = criarNode(prod);
    if (*head == NULL) {
        *head = novo;
    } else {
        Node* temp = *head;
        while (temp->next != NULL) {
            temp = temp->next;
        }
        temp->next = novo;
    }

    printf("Produto adicionado com sucesso!\n");
}

void exibirProdutos(Node* head) {
    if (head == NULL) {
        printf("Lista de produtos vazia.\n");
        return;
    }

    Node* temp = head;
    while (temp != NULL) {
        printf("\nNome: %s\n", temp->produto.nome);
        printf("Código: %d\n", temp->produto.codigo);
        printf("Preço: R$ %.2f\n", temp->produto.preco);
        temp = temp->next;
    }
}

void buscarProdutoPorNome(Node* head) {
    if (head == NULL) {
        printf("Lista de produtos vazia.\n");
        return;
    }

    char nomeBusca[30];
    printf("Digite o nome do produto para busca: ");
    fgets(nomeBusca, sizeof(nomeBusca), stdin);
    nomeBusca[strcspn(nomeBusca, "\n")] = 0;  // Remove \n

    Node* temp = head;
    while (temp != NULL) {
        if (strcmp(temp->produto.nome, nomeBusca) == 0) {
            printf("\nProduto encontrado:\n");
            printf("Nome: %s\n", temp->produto.nome);
            printf("Código: %d\n", temp->produto.codigo);
            printf("Preço: R$ %.2f\n", temp->produto.preco);
            return;
        }
        temp = temp->next;
    }

    printf("Produto não encontrado.\n");
}

void liberarLista(Node* head) {
    Node* temp;
    while (head != NULL) {
        temp = head;
        head = head->next;
        free(temp);
    }
}

int main() {
    Node* lista = NULL;
    int opcao;

    do {
        printf("\n=== Menu ===\n");
        printf("1. Adicionar produto\n");
        printf("2. Exibir todos os produtos\n");
        printf("3. Buscar produto por nome\n");
        printf("4. Sair\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);
        getchar();  

        switch (opcao) {
            case 1:
                adicionarProduto(&lista);
                break;
            case 2:
                exibirProdutos(lista);
                break;
            case 3:
                buscarProdutoPorNome(lista);
                break;
            case 4:
                liberarLista(lista);
                printf("Memória liberada. Encerrando o programa.\n");
                break;
            default:
                printf("Opção inválida. Tente novamente.\n");
        }
    } while (opcao != 4);

    return 0;
}
