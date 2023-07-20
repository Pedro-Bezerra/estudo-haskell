

foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' f neutro [] = neutro
foldr' f neutro (x:xs) = f x (foldr' f neutro xs)


foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' f v [] = v
foldl' f v (x:xs) = foldl' f (f v x) xs

map'            :: (a -> b) -> [a] -> [b]
map' f []       = []
map' f (x:xs)   = foldr (\y ys -> (f y):ys) [] xs

filter' p = foldr (\x xs -> if p x then x : xs else xs) []
--filter' p xs = foldr (\x xs -> if p x then x : xs else xs) [] xs