h = head [1,2,3,4,5]
t = tail [1,2,3,4,5]
exclamacao = [1,2,3,4,5] !! 3
exclamacao2 = (!!) [1,2,3,4,5] 3
tk = take 2 [1,2,3,4,5]
drp = drop 2 [1,2,3,4,5]
lgth = length [1,2,3,4,5]
conc = [1,2,3] ++ [4,5]
conc2 = (++) [1,2,3] [4,5]
r = reverse [1,2,3,4,5]
f = filter even [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
s = splitAt 3 [0, 1, 3, 4, 5, 5]
i = init [0, 3, 4, 1, 3]
a = all odd (filter even [0, 1, 4, 2,3, 7, 5, 9, 0])

--Visualizar as informações do tipo ':t [função]' -> ':t length'