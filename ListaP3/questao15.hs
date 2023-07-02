del_posicao :: [Int] -> Int -> [Int]
del_posicao lista posicao = take posicao lista ++ drop (posicao+1) lista


