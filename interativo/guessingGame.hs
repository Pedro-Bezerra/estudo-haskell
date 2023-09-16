{-# LANGUAGE MultiWayIf #-}

import System.IO (hSetEcho, stdin)

guessingGame :: IO()
guessingGame = do
    secretNumber <- getSecretNumber
    play secretNumber

getSecretNumber :: IO Int
getSecretNumber = do
    putStrLn "Jugador 1, escoja un número: "
    hSetEcho stdin False
    secretNumber <- getInt
    hSetEcho stdin True
    return secretNumber

getInt :: IO Int
getInt = do
    valor <- getLine
    return (read valor :: Int)

play :: Int -> IO ()
play secretNumber = do
    putStrLn "Jugador 2, intente adivinar el número: "
    try <- getInt
    if | try == secretNumber -> putStrLn "Felicitaciones! Lo adivinaste!"
       | try < secretNumber -> do
            putStrLn "Un poco más!"
            play secretNumber
       | try > secretNumber -> do
            putStrLn "Un poco menos!"
            play secretNumber

