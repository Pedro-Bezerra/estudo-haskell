multiplicarSoma :: Num a => Int -> a -> a
multiplicarSoma x y = sum (x `replicate` y)
teste = multiplicarSoma 3 (-3)