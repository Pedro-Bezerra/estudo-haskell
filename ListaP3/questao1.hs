numIguais::Int -> Int -> Int -> Int
numIguais a b c | (a == b && b == c) = 3
                | (a == b || b == c || a == c) = 2
                | otherwise = 0

x = numIguais 1 2 3
y = numIguais 1 1 2
z = numIguais 1 1 1