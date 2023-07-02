import Data.Char (isDigit)
descomprima [] = []
descomprima ('!':xs) = replicate (read numero::Int) y ++ descomprima ys
                            where
                                numero = takeWhile isDigit xs
                                (y:ys) = drop (length numero) xs
descomprima (x:xs) = x : descomprima xs

descomprima' [] = []
descomprima' (x:xs) 
            | x == '!' = let numero = takeWhile isDigit xs
                             (y:ys) = dropWhile isDigit xs
                         in replicate (read numero::Int) y ++ descomprima' ys
            | otherwise = x : descomprima' xs
