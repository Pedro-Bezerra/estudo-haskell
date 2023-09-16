
{-
Defina uma ação somador :: IO () que lê uma dada quantidade de inteiros do teclado, 
um por linha, e exiba sua soma. Por exemplo:
> somador
Quantos números? 5
1
2
3
4
5
O total é 15
Dica: Defina uma função auxiliar que recebe o total atual e quantos números ainda 
precisam ser lidos.
-}

somador :: IO ()
somador = do
    putStr "Quantos números? "
    qtdInput <- readLn :: IO Int
    resultado <- funcAux qtdInput 0
    putStrLn ("O total é " ++ show resultado)

funcAux :: Int -> Int -> IO Int
funcAux 0 resultado = return resultado
funcAux x valor = do
    entrada <- readLn :: IO Int
    funcAux (x - 1) (valor + entrada)



