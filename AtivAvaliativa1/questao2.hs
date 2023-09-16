{-
2) (4,0) Implemente uma função que recebe dois argumentos, o primeiro é uma outra
função e o segundo é uma lista. Sua função deve produzir uma nova lista que é o
resultado da aplicação da função recebida como parâmetro a cada elemento da lista.
Implemente a função usando duas técnicas diferentes: recursão e compreensão de
listas.
-}

meuMap :: (a -> b) -> [a] -> [b]
meuMap funcao [] = []
meuMap funcao (x:xs) = funcao x : meuMap funcao xs

meuMap' :: (a -> b) -> [a] -> [b]
meuMap' funcao xs = [funcao x | x <- xs]

-- Exercício da playlist de Fernando Castor
meuMap'' :: (a1 -> [a2] -> [a2]) -> [a1] -> [a2]
meuMap'' funcao [] = []
meuMap'' funcao (x:xs) = foldr funcao [] [x] ++ meuMap'' funcao xs