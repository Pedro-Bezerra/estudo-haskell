-- 1050
main :: IO ()
main = do
    ddd <- readLn :: IO Int
    let city = case ddd of
                    11 -> "Sao Paulo"
                    19 -> "Campinas"
                    21 -> "Rio de Janeiro"
                    27 -> "Vitoria"
                    31 -> "Belo Horizonte"
                    32 -> "Juiz de Fora" 
                    61 -> "Brasilia"
                    71 -> "Salvador"
                    _  -> "DDD nao cadastrado"
    putStrLn city

