-- Scrivere una funzione inverti che, data una lista, fornisce la lista invertita
{- import Debug.Trace

-- soluzione con ò'operatore di concatenazione di liste ++
inverti :: [a] -> [a]
inverti [] = []
inverti (x:xs) = inverti xs ++ [x]

-- soluzione con head e tail
inverti' :: [a] -> [a]
inverti' [] = []
inverti' lista = inverti' (tail lista) ++ [head lista]

-} 

-- Debug.Trace
import Debug.Trace

-- Soluzione con l'operatore di concatenazione di liste ++
inverti :: Show a => [a] -> [a]
inverti [] = []
inverti (x:xs) = trace ("inverti: aggiungo " ++ show x ++ " a " ++ show (inverti xs)) $ inverti xs ++ [x]

-- Soluzione con head e tail
inverti' :: Show a => [a] -> [a]
inverti' [] = []
inverti' lista = trace ("inverti': aggiungo " ++ show (head lista) ++ " a " ++ show (inverti' (tail lista))) $ inverti' (tail lista) ++ [head lista]
