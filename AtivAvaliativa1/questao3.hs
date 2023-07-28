{-
3) (2,5) Implemente uma função que recebe uma string, uma posição inicial, uma
posição final e retorne uma sub-string que inicia na posição inicial informada e vai
atá a posição final informada (inclusivo).
-}

substring :: [a] -> Int -> Int -> [a]
substring lista inicio fim
    | inicio == 0 = take (fim+1) lista
    | inicio /= 0 = drop inicio novaLista
        where
            novaLista = take (fim+1) tirarFinais
            tirarFinais = reverse (drop (length lista - (fim+1)) (reverse lista))

substring' :: [a] -> Int -> Int -> [a]
substring' lista inicio fim
    | inicio == 0 = take (fim+1) lista
    | inicio /= 0 = let novaLista = take (fim+1) tirarFinais
                        tirarFinais = reverse (drop (length lista - (fim+1)) (reverse lista))
                    in drop inicio novaLista