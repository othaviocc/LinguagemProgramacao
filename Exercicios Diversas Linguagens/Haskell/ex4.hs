fahrenheitToCelsius :: Float -> Float
fahrenheitToCelsius f = (f - 32) * 5 / 9

main :: IO ()
main = do
    putStrLn "temperatura em Fahrenheit:"
    fStr <- getLine
    let f = read fStr :: Float
        c = fahrenheitToCelsius f
    putStrLn ("Temp Celsius: " ++ show c)
