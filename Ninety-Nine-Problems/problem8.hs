compress a [] = []
compress a [x] = [x]
compress a (x:xs) = if x == head xs then x:compress a (drop (diffElement a xs) xs) else x:compress (a+1) xs

diffElement :: Eq a => Int -> [a] -> Int
diffElement a [] = a
diffElement a [x] = a
diffElement a (x:xs) = if x == head xs then diffElement (a+1) xs else a+1

compressGuilherme :: Eq a => [a] -> [a]
compressGuilherme [x] = [x]
compressGuilherme (x : xs)
    | x == head xs = compressGuilherme xs
    | otherwise = x : compressGuilherme xs

{- COMPRESS DA SOLUÇÃO
compress :: (Eq a) => [a] -> [a]
compress list = compress_acc list []
          where compress_acc [] acc = acc
                compress_acc [x] acc = (acc ++ [x])
                compress_acc (x:xs) acc
                  | x == (head xs)  = compress_acc xs acc
                  | otherwise       = compress_acc xs (acc ++ [x]) -}