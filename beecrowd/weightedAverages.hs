-- 1079
import Text.Printf (printf)

main :: IO ()
main = do
    quantidade <- readLn :: IO Int 
    mostrar quantidade


mostrar  :: Int -> IO ()
mostrar 0 = return ()
mostrar x = do 
    pesos <- readDoubles
    let media = ((head pesos * 2) + ((pesos !! 1) * 3) + ((pesos !! 2) * 5)) / 10
    printf "%.1f" media
    putStrLn ""
    mostrar (x - 1)
    
readDoubles :: IO [Double]
readDoubles = fmap (map read . words) getLine

