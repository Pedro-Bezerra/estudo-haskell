import Text.XHtml (base, abbr)
media3 :: Fractional a => a -> a -> a -> a
media3 x y z = (x+y+z)/3

maior :: (Ord a, Num b) => a -> a -> b
maior x y | x > y = 1
          | otherwise = 0
maiorQueMedia :: (Num a, Ord b, Fractional b) => b -> b -> b -> a
maiorQueMedia x y z = maior x m + y `maior` m + maior z m
                        where 
                            m = media3 x y z


teste = maiorQueMedia 9 6 3