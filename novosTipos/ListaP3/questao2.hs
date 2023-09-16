data Arvore a = Folha a | No (Arvore a) a (Arvore a)
-- data Ordering = LT | EQ | GT

existe :: Ord a => a -> Arvore a -> Bool
existe x (Folha y) = x == y
existe x (No esq y dir)
    | x == y    = True
    | x < y     = existe x esq
    | otherwise = existe x dir

-- compare :: Ord a => a -> a -> Ordering
existe' :: Ord a => a -> Arvore a -> Bool
existe' x (Folha y)
    | compare x y == LT = False
    | compare x y == GT = False
    | otherwise = True
existe' x (No esq y dir) = existe x (Folha y) || existe x esq || existe x dir
