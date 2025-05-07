package main
import "fmt"

func main() {
    var x, n, resposta int
    fmt.Println("Digite o x:")
    fmt.Scanf("%d", &x)
    fmt.Println("Digite o n:")
    fmt.Scanf("%d", &n)
    resposta = x
    for i := 1; i < n; i++{
        resposta = resposta * x
    }
    fmt.Println("Resposta de x**n:", resposta)    
}