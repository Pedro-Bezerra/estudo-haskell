repete 0 = []
repete n = [n | z <- [1..n]] : repete (n-1)

repete' 0 = []
repete' n = [n | z <- [1..n]] ++ repete' (n-1)

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

length' xs = foldr (\_ n -> 1 + n) 0 xs 

length'' xs = foldl (\n _ -> 1 + n) 0 xs 

cons (x:xs) = xs ++ [x]
--reverse' xs = foldr cons [] xs

meuFoldr f b [] = b
meuFoldr f b (x:xs) = f x (meuFoldr f b xs) 

meuFoldl f b [] = b
meuFoldl f b (x:xs) = f (meuFoldl f b xs) x

reverse' :: [a] -> [a]
reverse' = foldl (\xs x -> x : xs) []

soma :: Int -> Int -> Int
soma a b | a <= b = if a == b then a else a + soma (a+1) b
         | a > b = b + soma (b+1) a

somaAux a b | a < b = soma (a+1) (b-1)
            | a > b = soma (b+1) (a-1)
            | otherwise = 0

multiplos :: Integral a => a -> a -> a -> [a]
multiplos a b c = [x | x <- lista, x `mod` c == 0]
                    where
                        lista | a < b = [a..b]
                              | otherwise = [b..a]

mod2 a b = if a < b then a else mod2 (a - b) b