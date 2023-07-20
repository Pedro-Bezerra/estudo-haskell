-- Alternativa a)
condTail xs = if null xs then [] else tail xs

-- Alternativa b)
guardsTail xs | null xs = []
              | otherwise = tail xs

-- Alternativa c)
padraoTail [] = []
padraoTail xs = tail xs