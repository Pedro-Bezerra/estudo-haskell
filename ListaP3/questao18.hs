import Distribution.Simple.Utils (xargs)
merge :: Ord a =>  [a] -> [a] -> [a]
merge lista1 lista2 = isort lista1 ++ isort lista2

-- Revisar o insertion sort em Haskell

insert :: Ord a => a -> [a] -> [a]                     --[4, 5, 3, 1, 2, 6]
insert x [] = [x]                                      --
insert x (y:ys) | x < y     = x:y:ys
                | otherwise = y:(insert x ys)

isort :: Ord a => [a] -> [a]
isort [] = []
isort (x:xs) = insert x (isort xs)

merge' xs [] = xs
merge' [] ys = ys
merge' (x:xs) (y:ys) = if x < y then x : merge xs (y:ys) else y : merge (x:xs) (y:ys)