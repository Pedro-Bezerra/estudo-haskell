meuMap :: (a -> b) -> [a] -> [b]
meuMap funcao [] = []
meuMap funcao (x:xs) = funcao x : meuMap funcao xs

meuMap' :: (a -> b) -> [a] -> [b]
meuMap' funcao xs = [funcao x | x <- xs]

-- Exercício da playlist de Fernando Castor
meuMap'' funcao [] = []
meuMap'' funcao (x:xs) = foldr funcao [] [x] ++ meuMap'' funcao xs