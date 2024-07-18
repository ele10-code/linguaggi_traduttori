{- 
Scrivere una funzione elemento che, dati una lista xs e
un intero n, fornisce l’elemento n della lista (partendo da
1) (senza usare !!)
-}

elemento :: [a] -> Int -> a
elemento [] _ = error "Lista vuota" -- Gestisce il caso di una lista vuota
elemento (x:xs) n
    | n < 1     = error "L'indice deve essere maggiore di 0" -- Controlla se n è valido
    | n == 1    = x -- Caso base: restituisce il primo elemento della lista
    | otherwise = elemento xs (n - 1) -- Caso ricorsivo: passa al prossimo elemento



{- 
Questa funzione è definita per una lista di qualsiasi tipo a (indicato dal tipo [a] -> Int -> a nella firma della funzione),
 il che significa che può essere usata con una lista di interi, caratteri, ecc.

Nel caso base (n == 1), restituiamo semplicemente il primo elemento della lista (x), 
perché se n è 1, vogliamo l'elemento attualmente esaminato.

Nel caso ricorsivo (otherwise), chiamiamo ricorsivamente la funzione elemento con il resto della lista (xs) e n - 1. 
Questo perché abbiamo eliminato un elemento dalla nostra "ricerca", quindi dobbiamo anche ridurre il nostro indice di 1.

Ci sono anche due casi di errore gestiti per migliorare la robustezza della funzione: se la lista è vuota ([]) o se n è inferiore a 1, 
la funzione segnala un errore. Questi controlli prevengono l'accesso a elementi non validi e aiutano a mantenere il comportamento della funzione chiaro e prevedibile.

-}


{- usando gli operatori : e ++ -}

elemento' :: [a] -> Int -> a
elemento' xs n = head [x | (x, index) <- zip xs [1..], index == n]

{-  La funzione zip combina la lista xs con una lista di indici [1..] per creare una lista di tuple, dove ogni tupla contiene un elemento di xs e il suo indice. 
La list comprehension [x | (x, index) <- zip xs [1..], index == n] filtra questa lista di tuple, selezionando solo gli elementi che hanno l'indice n. 
L'uso di head è necessario per estrarre l'elemento dalla lista risultante, che avrà solo un elemento (o nessuno, se n è fuori dai limiti della lista, causando un errore a runtime).-}
