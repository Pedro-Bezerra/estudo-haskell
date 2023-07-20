mergeSort :: Ord a => [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs | tamanho >= 1 = merge (mergeSort comeco) (mergeSort fim)
                where
                    tamanho = length xs `div` 2
                    comeco = take tamanho xs
                    fim = drop tamanho xs
                        

merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) | x <= y = x : merge xs (y:ys)
                    | otherwise = y : merge (x:xs) ys

-- [2, 4, 0, 1, 3]

metades [] = ([], [])
metades l = let meio = length l `div` 2
            in splitAt meio l

meuMergeSort [] = []
meuMergeSort [x] = [x]
meuMergeSort l = let (esq,dir) = metades l
               in merge (meuMergeSort esq) (meuMergeSort dir)