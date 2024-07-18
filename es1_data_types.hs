-- Scrivere una funzione isPositive che restituisce True
-- se tutti gli elementi della lista sono positivi
{- isPositive :: [Int] -> Bool
isPositive xs = all (> 0) xs -}

{- 
isPositive :: [Int] -> Bool
isPositive [] = True -- Caso base: una lista vuota è considerata avere tutti elementi positivi
isPositive (x:xs) = if x > 0 then isPositive xs else False

-}

{- 
Spiegazione:

Caso base: isPositive [] = True. Se la lista è vuota, 
restituiamo True perché non ci sono elementi che invalidano la nostra condizione 
(puoi considerare una lista vuota come contenente solo elementi positivi per definizione).

Caso ricorsivo: isPositive (x:xs) = if x > 0 then isPositive xs else False. 
Questo caso gestisce una lista non vuota dividendo la lista in testa (x) e coda (xs). 
Usiamo un'istruzione if then else per controllare se la testa x è un numero positivo:

Se x è maggiore di 0, procediamo a controllare il resto della lista (xs) ricorsivamente.
Se x non è maggiore di 0 (cioè è zero o negativo), restituiamo False perché abbiamo trovato un elemento 
che non soddisfa la condizione di essere positivo.
-}


{- usando head, tail e if then-else -}
isPositive :: [Int] -> Bool
isPositive [] = True -- Caso base: una lista vuota è considerata come contenente tutti elementi positivi
isPositive xs = if head xs > 0 then isPositive (tail xs) else False


