goldbach a | odd a || a <= 2 = error "Número inválido"
           | otherwise = head [(x, y) | x <- listaPrimos, y <- listaPrimos, x + y == a ] 
                where
                    listaPrimos = [ z | z <- [2..a], isPrime z]


isPrime x = divisores x == 2

divisores y = length [x | x <- [1..y], y `mod` x == 0]