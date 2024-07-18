
{- Funzione positivi : data una lista di valori numerici, produrre
una lista con i soli valori positivi -}
positivi :: (Num a, Ord a) => [a] -> [a]
positivi = filter (> 0)

main :: IO ()
main=do
    putStrLn "Test della funzione positivi:"
    print $ positivi [1, -2, 3, -4, 5, -6]
    print $ positivi [-1, -2, -3, -4, -5, -6]
    print $ positivi [1, 2, 3, 4, 5, 6]
    print $ positivi [-1, -2, 3, 4, -5, 6]