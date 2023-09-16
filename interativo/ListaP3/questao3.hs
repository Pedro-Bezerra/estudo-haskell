somador :: IO ()
somador = do 
             putStr("Quantos numeros? ")
             numTimes <- getLine
             nums <- sequence $ replicate (read numTimes :: Int) getLine
             let solve = sum $ map (\x -> read x :: Int) nums 
             putStr("O total é ")
             print solve
             return ()

