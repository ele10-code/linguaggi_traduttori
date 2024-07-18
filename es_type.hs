-- fac :: (Num a, Enum a) => a -> a
fac :: Integer -> Integer
fac n = product [1..n]

-- Aggiungi questa funzione main
main :: IO ()
main = do
    putStrLn "Calcolo del fattoriale"
    putStrLn "Inserisci un numero:"
    input <- getLine
    let numero = read input :: Integer
    putStrLn $ "Il fattoriale di " ++ show numero ++ " è " ++ show (fac numero)