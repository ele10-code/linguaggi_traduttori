main :: IO ()
main = do
  print $ foldr (-) 0 [1,2,3]  -- Risultato di foldr
  print $ foldl (-) 0 [1,2,3]  -- Risultato di foldl
