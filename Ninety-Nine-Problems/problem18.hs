slice :: [a] -> Int -> Int -> [a]
slice xs a b = drop (a-1) (takeB xs b)

takeB :: [a] -> Int -> [a]
takeB xs b = take b xs