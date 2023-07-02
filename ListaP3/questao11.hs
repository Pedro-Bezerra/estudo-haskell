seq6 :: (Eq t, Floating a, Num t) => t -> a
seq6 n = if n == 1 then sqrt(6) else sqrt(6 + seq6(n-1))