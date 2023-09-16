primeFactors y = [x | x <- [1..y], isPrime x && y `mod` x == 0]

isPrime x = divisores x == 2

divisores y = length [x | x <- [1..y], y `mod` x == 0]
