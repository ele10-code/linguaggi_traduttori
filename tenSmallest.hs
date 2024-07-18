import Prelude 

tenSmallest :: Ord a => [a] -> [a]
tenSmallest xs = take 10 (sort xs)
