impares :: Int -> [Int]
impares n = take n [x | x <- [1,3..]]

main :: IO ()
main = do
    putStrLn "Digite:"
    nStr <- getLine
    let n = read nStr :: Int
    putStrLn "números ímpares anteriores:"
    print (impares n)
