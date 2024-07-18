
{- Funzione acronimo: data una lista di stringhe, fornire la lista che
contiene le iniziali di ciascuna delle stringhe -}
acronimo :: [String] -> String
acronimo = map head

-- Funzione lunghezze : data una lista di liste, fornire la lista delle lunghezze delle liste
lunghezze :: [[a]] -> [Int]
lunghezze = map length

-- Funzione main per testare
main :: IO ()
main = do
    putStrLn "Test della funzione acronimo:"
    print $ acronimo ["Commissione","Paritetica","Docenti","Studenti"]
    
    putStrLn "\nTest della funzione lunghezze:"
    print $ lunghezze [[1,4,3],[7,5,6],[],[3,42]]