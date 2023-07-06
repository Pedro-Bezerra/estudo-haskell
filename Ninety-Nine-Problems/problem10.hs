encode :: [String] -> [(Int, Char)]
encode (x:xs) = map (\ x -> (length x, head x)) (x:xs)