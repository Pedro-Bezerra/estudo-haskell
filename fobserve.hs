--import Debug.Observe

--remUltimo (a:b) = observe "a" a : observe "rem_ultimo" remUltimo b
import Data.List
import System.IO


a = \x -> (\y -> x * 2 + y)

posicoes :: Eq a => a -> [a] -> [Int]
posicoes x xs = [i | (z, i) <- zip xs [0 ..], x == z]

teste x = [x | z <- [0..10], z < 6]

ixi [] _ = []
ixi (f:fs) x | f x = ixi fs x
             | otherwise = show f : ixi fs x

funciona = show 10 ++ ":" ++ show 43 ++ ":" ++ show 10

dependentes [] = []
dependentes (x:xs) = snd x ++ dependentes xs

acao :: IO (Char,Char)
acao = do x <- getChar
          getChar
          y <- getChar
          return (x,y)

putStr' :: String -> IO ()
putStr' [] = return ()
putStr' (x:xs) = do putChar x
                    putStr' xs

main :: IO ()
main = do hSetBuffering stdout NoBuffering
          putStrLn "Escreva uma palavra: "
          palavra <- obterLinhaSecreta
          putStrLn "Tente adivinhar: "
          jogar palavra 0 []

obterChar:: IO Char
obterChar = do hSetEcho stdin False
               x <- getChar
               hSetEcho stdin True
               return x

obterLinhaSecreta :: IO String
obterLinhaSecreta = do x <- obterChar
                       if x == '\n' then
                           do putChar x
                              return []
                       else
                           do putChar '-'
                              xs <- obterLinhaSecreta
                              return (x:xs)

jogar :: String -> Int -> String -> IO ()
jogar _ 6  _ = putStrLn "Fim de jogo! Você perdeu!"
jogar palavra  qtdTentativa  ts = do putStr "? "
                                     tentativa <- getChar
                                     putStrLn ""
                                     putStrLn (encontrar palavra (ts ++ [tentativa]))
                                     jogar palavra (qtdTentativa + 1) (ts ++ [tentativa])

encontrar :: String -> String -> String
encontrar _ [] = []
encontrar xs (a:as) = if x == a then a : encontrar xs as else '-' : encontrar xs as


preencher [] _ ys = ys
preencher (x:xs) a ys = if x == a then preencher xs a (a:ys) else preencher xs a ('-':ys)


b = do
    getLine