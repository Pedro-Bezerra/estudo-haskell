unfold p h t x | p x = []
               | otherwise = h x : unfold p h t (t x)

mapUnfold f = unfold (== []) (f . head) tail
-- primeiro elemento: caso de parada
-- segundo elemento: a unção aplicada a cada item da lista
-- terceiro elemento: como prosseguir
iterateUnfold f = unfold (const False) id f