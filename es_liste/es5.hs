{- Funzione vocali : data una stringa (lista di Char), tenere solo le
vocali minuscole: -}
vocali :: [Char] -> [Char]
vocali = filter (\ x -> x `elem ` ['a','e','i','o','u'])

main::IO ()
main = do
  putStrLn "Test della funzione vocali:"
  print $ vocali "ciao"
  print $ vocali "CIao"
