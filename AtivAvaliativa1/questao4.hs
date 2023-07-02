meuSplit [] _ = []
meuSplit xs char = takeWhile (/=char) xs : meuSplit pedaco char
    where
        pedaco 
            | dropWhile (/=char) xs /= [] = tail (dropWhile (/=char) xs)
            | otherwise = dropWhile (/=char) xs
