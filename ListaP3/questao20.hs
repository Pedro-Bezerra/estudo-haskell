comprime [] = []
comprime (x:xs) = if tamanho > 2 then "!" ++ show (tamanho+1) ++ [x] ++ comprime (drop tamanho xs) else [x] ++ comprime xs
    where
        repeticao = takeWhile (==x) xs
        tamanho = length repeticao 

contar :: String -> Int -> Int
contar [] num = num
contar [a] num = num
contar xs num = if head xs == xs !! 1 then contar (drop 1 xs) (num+1) else 
                                                                    contar (drop 1 xs) 1
