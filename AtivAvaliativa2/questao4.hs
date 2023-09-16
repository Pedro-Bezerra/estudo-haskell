-- Alternativa a)
condTail :: [a] -> [a]
condTail xs = if null xs then [] else tail xs

-- Alternativa b)
guardsTail :: [a] -> [a]
guardsTail xs | null xs = []
              | otherwise = tail xs

-- Alternativa c)
padraoTail :: [a] -> [a]
padraoTail [] = []
padraoTail xs = tail xs