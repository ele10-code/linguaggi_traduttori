-- La funzione logBase b x calcola il logaritmo in base b di x
import Prelude hiding (logBase)
logBase :: Double -> Double -> Double
logBase b x = log x/ log b
  

-- funzione log2 che calcola il logaritmo in base 2 di un numero
log2 :: Double -> Double
log2 = logBase 2
