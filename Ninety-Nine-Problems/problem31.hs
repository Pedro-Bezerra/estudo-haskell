isPrime x = divisores x == 2

divisores y = length [x | x <- [1..y], y `mod` x == 0]