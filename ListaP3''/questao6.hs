-- Alternativa a
meuAll _ [] = True
meuAll f (x:xs) = if f x then meuAll f xs else False

-- Alternativa b
meuAny _ [] = False
meuAny f (x:xs) | f x = True
                | otherwise = meuAny f xs

-- Alternativa c
meuTakeWhile _ [] = []
meuTakeWhile f (x:xs) | f x = x : meuTakeWhile f xs
                      | otherwise = []

-- Alternativa d
meuDropWhile _ [] = []
meuDropWhile f (x:xs) | f x = meuDropWhile f xs
                      | otherwise = x:xs