package main
import "fmt"

func main() {
    var n int
    fmt.Println("Digite um numero:")
    fmt.Scanf("%d", &n)
    for i:=2; i<n; i++ {
        if (n%i == 0){
            fmt.Printf("Nao eh primo")
            break
        } else if (n%i != 0) && (i+1 == n){
            fmt.Printf("Eh primo")
        }
    }
}