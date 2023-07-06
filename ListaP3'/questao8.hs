import Distribution.Simple.Utils (xargs)
-- Alternativa a
somaLista :: [Int] -> Int
somaLista [] = 0
somaLista (x:xs) = x + somaLista xs

-- Alternativa b
qtdElementos :: [a] -> Int
qtdElementos xs = percorrerLista xs 0

percorrerLista [] num = num
percorrerLista (x:xs) num = percorrerLista xs (num + 1)

-- Alternativa c
ultimo :: [a] -> a
ultimo [] = error "Uma lista vazia não tem um último elemento"
ultimo [x] = x
ultimo (x:xs) = ultimo xs
 