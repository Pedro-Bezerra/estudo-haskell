somar 0 = 0
somar x | x > 0 = x + somar (x-1)
        | otherwise = error "A função somar não aceita valores negativos"