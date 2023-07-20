media3 :: Fractional a => a -> a -> a -> a
media3 x y z = (x+y+z)/3

maior :: (Ord a, Num b) => a -> a -> b
maior x y | x > y = 1
          | otherwise = 0
maiorQueMedia :: (Num a, Ord b, Fractional b) => b -> b -> b -> a
maiorQueMedia x y z = maior x m + y `maior` m + maior z m
                        where 
                            m = media3 x y z

media :: (Eq a, Fractional a) => a -> a -> a -> a
media a b c = (a + b + c)/3

compare' :: (Eq a, Fractional a) => a -> a -> a -> Int
compare' a b c = length (filter (\x -> x == media a b c) [a,b,c])
teste = maiorQueMedia 9 6 3
teste' = compare' 9 6 3