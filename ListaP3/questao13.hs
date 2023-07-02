
maiorLista :: (Num a, Ord a) => [a] -> (a, Int)
maiorLista [] = error "Lista vazia"
maiorLista l = (m, pos m l)
    where 
        m = maximum l


pos :: (Eq t, Num a) => t -> [t] -> a --o valor precisa ser tipo de 'eq' para usar o '=='
pos _ [] = error "Lista vazia"
pos e (x:xs) | x == e = 0             --por que quando coloca 'Int' em cima não funciona?
             | otherwise = 1 + pos e xs
