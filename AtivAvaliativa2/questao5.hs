novoMap fs xs = map (aplicaFuncao fs) xs

aplicaFuncao [] x = x
aplicaFuncao (f:fs) x = aplicaFuncao fs (f x)