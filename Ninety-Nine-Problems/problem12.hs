data Elementos a b = Multiple a b | Single b deriving Show


decodeModified xs = foldr ((++) . pegaElementos) [] xs

pegaElementos (Multiple a b) = replicate a b
pegaElementos (Single b) = [b]