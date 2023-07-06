(@) :: (Eq a,Num a) => a -> a -> a
(@) _ 0 = 1
(@) base 1 = base
(@) base expoente = base * (@) base (expoente-1)