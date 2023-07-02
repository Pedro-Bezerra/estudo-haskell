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