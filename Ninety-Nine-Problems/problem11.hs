data Elementos a b = Multiple a b | Single b deriving Show

encodeModified [] = []
encodeModified (x:xs) = if qtdIguais == 1 then Single x : encodeModified xs else Multiple qtdIguais x : encodeModified pedaco
    where
        qtdIguais = length (takeWhile (==x) xs) + 1
        pedaco = drop (qtdIguais - 1) xs