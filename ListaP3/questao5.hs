ouExclusivo::Bool -> Bool -> Bool
ouExclusivo a b | a == b = False
                | otherwise = True

meuXor :: Bool -> Bool -> Bool
meuXor a b = a /= b

x = ouExclusivo True False
y = ouExclusivo True True
z = ouExclusivo False False
w = ouExclusivo False True