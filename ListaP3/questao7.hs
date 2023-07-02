somaInclusiva :: Int -> Int -> Int
somaInclusiva x y |  x < y = sum [x..y]
                  | otherwise = sum [y..x]

somaExclusiva :: Int -> Int -> Int
somaExclusiva x y | x == y = 0
                  | otherwise = somaInclusiva x y - x - y