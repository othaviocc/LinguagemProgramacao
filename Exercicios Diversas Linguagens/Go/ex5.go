package main
import "fmt"
import "strings"
import "bufio"
import "os"

func contador(frase, palavra string) int{
    frase = strings.ToUpper(frase)
    palavra = strings.ToUpper(palavra)

    count := 0
    for i := 0; i <= len(frase)-len(palavra); i++{
        if frase[i:i+len(palavra)] == palavra{
            count++
        }
    }
    return count
}

func main(){
    reader := bufio.NewReader(os.Stdin)

    fmt.Println("Digite a palavra:")
    palavra, _ := reader.ReadString('\n')
    palavra = strings.TrimSpace(palavra)

    fmt.Println("Digite a frase:")
    frase, _ := reader.ReadString('\n')
    frase = strings.TrimSpace(frase)

    resultado := contador(frase, palavra)
    fmt.Printf("A palavra %s ocorre %d vezes na frase.", palavra, resultado)
}