ehPrimo :: Int -> Bool
ehPrimo n
    | n <= 1    = False
    | otherwise = null [x | x <- [2..(n - 1)], n `mod` x == 0]

main :: IO ()
main = do
    putStrLn "Digite:"
    nStr <- getLine
    let n = read nStr :: Int
    if ehPrimo n
        then putStrLn "eh primo."
        else putStrLn "nao eh primo."
