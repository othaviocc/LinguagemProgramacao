package main
import "fmt"

func main() {
    var n int
    fmt.Println("Digite o valor:")
    fmt.Scanf("%d", &n)

    for i := 0; i <= n; i++ {
        if i%2 == 0 {
        } else {
            fmt.Println(i)
        }
    }
}