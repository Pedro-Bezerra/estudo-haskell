prefixos :: [a] -> [[a]]
prefixos [] = error "Lista vazia"
prefixos [x] = [[x]]
prefixos l = reverse $ pega 1 l []


pega n lista retorno = if n == length lista then lista_retorno else pega (n+1) lista lista_retorno
    where
        lista_retorno = take n lista : retorno