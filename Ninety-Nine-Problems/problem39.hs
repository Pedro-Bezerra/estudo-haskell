primesR x y = [ z | z <- lista, isPrime z]
        where
            lista | x < y = [x..y]
                  | y < x = [y..x]

isPrime x = divisores x == 2

divisores y = length [x | x <- [1..y], y `mod` x == 0]