{-listaNumIguais :: [Int] -> [Int] -> [Int]
listaNumIguais (x:xs) (y:ys) = [l | l <- x : xs, x == y]-}

import Data.List (intersect, sort)


intersection :: [Int] -> [Int] -> [Int]
intersection xs ys = intersect xs ys

listaNumIguais :: Ord a => [a] -> [a] -> [a]
listaNumIguais xs ys = fazerIntersecao (sort xs) (sort ys)
  where
    fazerIntersecao :: (Ord a, Eq a) => [a] -> [a] -> [a]
    fazerIntersecao [] _ = []
    fazerIntersecao _ [] = []
    fazerIntersecao (x:xs) (y:ys)
      | x == y = x : fazerIntersecao xs ys
      | x < y = fazerIntersecao xs (y:ys)
      | otherwise = fazerIntersecao (x:xs) ys

intersect' [] = const []
intersect' xs = filter (`elem` xs)

intersect'' [] _ = []
intersect'' _ [] = []
intersect'' xs ys = filter (`elem` xs) ys

intersect''' xs ys = [x | x <- xs, x `elem` ys]