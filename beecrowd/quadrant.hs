-- 1115
main :: IO ()
main = do
    ponto <- readInts
    let quadrant | head ponto > 0 && last ponto > 0 = do
                    putStrLn "primeiro"
                    main
                 | head ponto < 0 && last ponto > 0 = do
                    putStrLn "segundo"
                    main
                 | head ponto < 0 && last ponto < 0 = do
                    putStrLn "terceiro"
                    main
                 | head ponto > 0 && last ponto < 0 = do
                    putStrLn "quarto"
                    main
                 | otherwise = do
                    return ()
    quadrant

readInts :: IO [Int]
readInts = fmap (map read . words) getLine
