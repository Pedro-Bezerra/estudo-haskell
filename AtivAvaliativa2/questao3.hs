primos a b = [ x | x <- lista, length (divisores x) == 2]
    where
        lista | a < b = [a..b]
              | otherwise = [b..a]

divisores n = [ x | x <- [1..n], n `mod` x == 0]