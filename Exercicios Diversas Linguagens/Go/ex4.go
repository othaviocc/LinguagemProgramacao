package main
import "fmt"

func main() {
    var fahrenheit, resposta float64
    fmt.Println("Digite o valor em fahrenheit:")
    fmt.Scanf("%f", &fahrenheit)
    
    resposta = ((fahrenheit - 32) * 5) / 9.0
    fmt.Println("Resposta em celcius:", resposta)
}