-- 1065
main :: IO ()
main = do
    a <- getInt
    b <- getInt
    c <- getInt
    d <- getInt
    e <- getInt
    let xs = [x | x <- [a, b, c, d, e], even x]
    putStrLn ((show $ length xs) ++ " valores pares")
    
getInt :: IO Int
getInt = do
    x <- getLine
    return (read x :: Int)

{-
main :: IO ()
main = do
    a <- readLn
    b <- readLn
    c <- readLn
    d <- readLn
    e <- readLn
    let xs = [x | x <- [a, b, c, d, e], even x]
    putStrLn ((show $ length xs) ++ " valores pares")
-}