import Language.Haskell.TH.PprLib (int)
somar :: Num int => [int] -> int
somar [] = 0
somar [a] = a
somar (x:xs) = x + somar xs