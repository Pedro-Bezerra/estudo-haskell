-- Alternativa a
e :: [Bool] -> Bool
e [] = True
e (x:xs) | x == False = False
         | otherwise = e xs

-- Alternativa b
concatenar :: [[a]] -> [a]
concatenar [] = []
concatenar (x:xs) = x ++ concatenar xs

-- Alternativa c
replicar :: a -> Int -> [a]
replicar x 1 = [x]
replicar x num = x : replicar x (num - 1)

-- Alternativa d
(#) :: [a] -> Int -> a
(#) (x:xs) 1 = x
(#) (x:xs) num = (#) xs (num-1)

-- Alternativa e
temNaLista :: Eq a => [a] -> a -> Bool
temNaLista [] _ = False
temNaLista (x:xs) a | x == a = True
                    | otherwise = temNaLista xs a