{-  Funzione corte : data una lista di stringhe, fornire la lista delle
sole stringhe che hanno meno di 4 caratteri -}
corte :: [String] -> [String]
corte  = filter (\x -> length x < 4)

main::IO()
main = do
    putStrLn "Test della funzione corte:"
    print $ corte ["she","love","you","yeah!"]