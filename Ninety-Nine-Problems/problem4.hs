myLength :: [a] -> Int
myLength [] = 0
myLength (_:as) = 1 + myLength as

value = myLength ["Oi", "L", "Ç", "sabor"]