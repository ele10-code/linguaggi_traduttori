{- Esercizi

• Scrivere una funzione che, data una lista di
stringhe, fornisce la lista delle loro lunghezze
• > lunghezze [“ciao”,”da”,”me”]

[4,2,2]
• Una funzione che, data una lista di stringhe,
aggiunge a tutte in fondo un punto esclamativo
• > esclama [“ciao”,”da”,”me”]

[“ciao!”,”da!”,”me!”]

• Sfida: cercare di farle facendo codice breve -}
-- 1. Implementa la funzione 'map' usando 'foldr'
myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr (\x acc -> f x : acc) []

-- 2. Crea una funzione che applica una lista di funzioni a un valore
applyFunctions :: [a -> b] -> a -> [b]
applyFunctions fs x = map (\f -> f x) fs

-- 3. Implementa una funzione 'filter' personalizzata usando 'foldr'
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter p = foldr (\x acc -> if p x then x : acc else acc) []

-- 4. Crea una funzione che compone una lista di funzioni
composeFunctions :: [a -> a] -> (a -> a)
composeFunctions = foldr (.) id

-- 5. Implementa 'zipWith' usando 'zip' e 'map'
myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith f xs ys = map (uncurry f) (zip xs ys)

-- Funzione main per testare
main :: IO ()
main = do
    putStrLn "Test myMap:"
    print $ myMap (*2) [1..5]
    
    putStrLn "\nTest applyFunctions:"
    print $ applyFunctions [(+1), (*2), (^2)] 3
    
    putStrLn "\nTest myFilter:"
    print $ myFilter even [1..10]
    
    putStrLn "\nTest composeFunctions:"
    print $ composeFunctions [(+1), (*2), (^2)] 3
    
    putStrLn "\nTest myZipWith:"
    print $ myZipWith (+) [1,2,3] [4,5,6]