-- 1117
import Text.Printf (printf)

main :: IO ()
main = do
    nota1 <- readLn :: IO Double
    if nota1 > 0 && nota1 <= 10 then do
        pegarNota2 nota1
    else do
        putStrLn "nota invalida"
        main

pegarNota2 :: Double -> IO ()
pegarNota2 nota1 = do
    nota2 <- readLn :: IO Double
    if nota2 > 0 && nota2 <= 10 then do
        let media = (nota1 + nota2) / 2
        printf "media = %.2f" media
        putStrLn ""
    else do
        putStrLn "nota invalida"
        pegarNota2 nota1