inserir_posicao_x :: [Int] -> Int -> Int -> [Int]
inserir_posicao_x l pos elem = take pos l ++ [elem] ++ drop pos l