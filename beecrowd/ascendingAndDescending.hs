-- 1113
import Data.List (nub)

ordem :: IO ()
ordem = do
    valores <- readInts
    let action | head valores < last valores = do
                    putStrLn "Crescente"
                    ordem
               | head valores > last valores = do
                    putStrLn "Decrescente"
                    ordem
               | head valores == last valores = do
                    putStrLn ""
                    return ()
    action

readInts :: IO [Int]
readInts = fmap (map read . words) getLine
teste :: IO ()
teste = do
    x <- readLn 
    putStrLn ("O dobro do número digitado é " ++ show (x * 2))

a = putChar '-'
b = nub "aaaaaaaaaaaabbcccccccm"