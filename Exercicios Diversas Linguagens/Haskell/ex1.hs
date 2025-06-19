potencia :: Int -> Int -> Int
potencia _ 0 = 1
potencia x n = x * potencia x (n - 1)

main :: IO ()
main = do
    putStrLn "Digite a base:"
    xStr <- getLine
    putStrLn "Digite o expoente:"
    nStr <- getLine
    let x = read xStr :: Int
        n = read nStr :: Int
    putStrLn ("Resultado: " ++ show (potencia x n))
