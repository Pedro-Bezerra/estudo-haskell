menor x y = if x <= y then x else y
a =  menor 4 3 + 6

{--Comentando
---muito
---gostaram
---olha isso
--}

--Criando a nossa própria função 'last'
ultimo [] = 0
ultimo [x] = x
ultimo xs = head (reverse xs)
u = ultimo [1,2,3,4,5]
ultimo' [] = 0
ultimo' [x] = x
ultimo' xs = xs !! (length xs - 1)
u2 = ultimo' [1,2,3,4,5]

--Criando a nossa própria função 'init'
removerU xs = reverse (tail (reverse xs))
ru = removerU [1,2,3,4,5]
removerU' xs = reverse(drop 1 (reverse xs))
ru2 = removerU' [1,2,3,4,5]