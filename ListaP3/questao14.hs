dic_10 :: [Int] -> [(Int, String)]
dic_10 [] = [] 
dic_10 (x:xs)  
    | x >= 0 && x < 10 = (x, extenso x) : dic_10 xs
    | otherwise = error "Número indisponível"

extenso x = case x of
                0 -> "zero"
                1 -> "um"
                2 -> "dois"
                3 -> "tres"
                4 -> "quatro"
                5 -> "cinco"
                6 -> "seis"
                7 -> "sete"
                8 -> "oito"
                9 -> "nove"