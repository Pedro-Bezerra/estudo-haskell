elemIndex :: Int -> [a] -> a
elemIndex x xs = head(drop (x-1) xs)