
data Arvore a = Folha a | No (Arvore a) (Arvore a) deriving Show
{-
Defina a função balancear :: [a] -> Arvore a que converte uma lista não vazia 
em uma árvore balanceada. Dica: primeiro defina uma função que divide uma lista 
em duas metades cujos tamanhos diferem em no máximo 1.
-}

dividirLista l = splitAt (length l `div` 2) l

balancear :: [a] -> Arvore a
balancear [x] = Folha x
balancear l = No (balancear esq) (balancear dir)
    where
        (esq, dir) = dividirLista l
