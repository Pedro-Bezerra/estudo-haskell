myReverse :: [a] -> [a]
myReverse xs = reversed xs []

reversed [] list = list
reversed (x:xs) list = reversed xs (x:list)
--myReverse as = myReverse (tail as ++ take 1 as)
--value = myReverse [0, 8, 3, 6, 1]