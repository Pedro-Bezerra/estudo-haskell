insert :: Ord a => a -> [a] -> [a]                     
insert x [] = [x]                                      
insert x (y:ys) | x < y     = x:y:ys
                | otherwise = y:(insert x ys)

isort :: Ord a => [a] -> [a]
isort [] = []
isort (x:xs) = insert x (isort xs)

isort' :: Ord a => [a] -> [a]
isort' [] = []
isort' (x:xs) = inserir x (isort xs)

inserir x [] = [x]
inserir x xs = takeWhile (<=x) xs ++ [x] ++ dropWhile (<=x) xs