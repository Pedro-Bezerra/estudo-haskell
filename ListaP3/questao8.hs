{-acumular :: Int -> Int
acumular a = a + a

intervalo :: Int -> Int -> [Int]
intervalo a b | a > b = [a..b]
              | otherwise = [b..a]

multiplos :: Int -> Int -> Int -> Int
multiplos a b c = if intervalo a b  `rem` c == 0 then acumular 1 else 0-}

multiplos :: Integral a => a -> a -> a -> [a]
multiplos a b c = [n | n <- limite, n `mod` c == 0]
    where                            
        limite = if a < b then [a..b] else [b..a]
