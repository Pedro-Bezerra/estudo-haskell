diffElement :: Eq a => Int -> [a] -> Int
diffElement a [] = a
diffElement a [x] = a+1
diffElement a (x:xs) = if x == head xs then diffElement (a+1) xs else a+1

pack :: Eq a => [a] -> [a] -> [[a]]
pack [] xs = []
pack [x] xs = [xs]
pack list xs = take (diffElement 0 list) list : pack (drop (diffElement 0 list) list) xs