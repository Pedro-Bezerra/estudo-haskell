data Arvore a = Folha a | No (Arvore a) a (Arvore a) deriving Show

--existe :: Eq a => a -> Arvore a -> Bool
--existe x (Folha y) = x == y
--existe x (No esq y dir) = x == y || existe x esq || existe x dir

serializar :: Arvore a -> [a]
serializar (Folha x) = [x]
serializar (No e x d) = serializar e ++ [x] ++ serializar d

existe :: Ord a => a -> Arvore a -> Bool
existe x (Folha y) = x == y
existe x (No esq y dir)
    | x == y    = otherwise --True
    | x < y     = existe x esq
    | otherwise = existe x dir

contar :: Arvore a -> Int
contar (Folha _) = 1
contar (No esq _ dir) = contar esq + contar dir + 1

instance Eq a => Eq (Arvore a) where
    (==) :: Eq a => Arvore a -> Arvore a -> Bool
    (Folha x) == (Folha y) = x == y
    (No esq x dir) == (No esq' y dir') = x == y && esq == esq' && dir == dir'
    _ == _ = False
    
instance (Ord a) => Ord (Arvore a) where
    (<) :: Arvore a -> Arvore a -> Bool
    Folha _ < (No _ _ _) = True
    (No esq1 _ dir1) < (No esq2 _ dir2) = contar esq1 + contar dir1 < contar esq2 + contar dir2
    _ < _ = False

    (>) :: Arvore a -> Arvore a -> Bool
    Folha _ > (No _ _ _) = False
    (No esq1 _ dir1) > (No esq2 _ dir2) = contar esq1 + contar dir1 > contar esq2 + contar dir2
    _ > _ = False
    
    (<=) :: Arvore a -> Arvore a -> Bool
    Folha _ <= (No _ _ _) = True
    (No esq1 _ dir1) <= (No esq2 _ dir2) = contar esq1 + contar dir1 <= contar esq2 + contar dir2
    _ <= _ = False

    (>=) :: Arvore a -> Arvore a -> Bool
    Folha _ >= (No _ _ _) = True
    (No esq1 _ dir1) >= (No esq2 _ dir2) = contar esq1 + contar dir1 >= contar esq2 + contar dir2
    _ >= _ = False
