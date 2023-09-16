import Control.Monad

putStr' :: String -> IO ()
putStr' str = sequence_ [putChar c | c <- str]