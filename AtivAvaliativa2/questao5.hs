novoMap :: [b -> b] -> [b] -> [b]
novoMap fs xs = map (aplicaFuncao fs) xs

aplicaFuncao :: [t -> t] -> t -> t
aplicaFuncao [] x = x
aplicaFuncao (f:fs) x = aplicaFuncao fs (f x)