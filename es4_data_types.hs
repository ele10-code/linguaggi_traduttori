-- Scrivere la funzione gravità che, data una massa m1, una distanza d e una massa m2
-- calcola la forza gravitazionale
gravity :: Double -> Double -> Double -> Double
gravity m1 d m2 = g * (m1 * m2) / (d ^ 2)
  where g = 6.674 * 10**(-11)
{- 
Spiegazione:

La funzione gravity prende tre argomenti di tipo Double: m1 (la prima massa), d (la distanza tra le due masse), e m2 (la seconda massa). 
Restituisce un valore Double che rappresenta la forza gravitazionale tra le due masse.
All'interno della funzione, g è definito (utilizzando where) come la costante gravitazionale universale, 

La formula calcola la forza gravitazionale come g * (m1 * m2) / (d ^ 2), seguendo direttamente la legge di gravitazione universale.

-}