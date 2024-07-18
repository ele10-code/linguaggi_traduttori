
-- Definizione della funzione quadlist
{- Funzione quadlist : data una lista, produce una lista della stessa
lunghezza che contiene i quadrati dei valori della lista originaria
• Es:
> quadlist [1,3,2]
[1,9,4] -}
quadlist :: Num a => [a] -> [a]
quadlist = map (\x -> x * x)

-- Funzione main per testare
main :: IO ()
main = do
    putStrLn "Test della funzione quadlist:"
    print $ quadlist [1,3,2]
    print $ quadlist [2,4,6,8]
    print $ quadlist [-1,0,1]

