fatorial 0 = 1
fatorial x | x > 0 = x * fatorial (x-1)
           | otherwise = error "Não há fatorial de números negativos"