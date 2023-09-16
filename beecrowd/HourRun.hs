
main :: IO ()
main = do
    valores <- readInts
    let qtdPlacas = head valores * last valores
    let dez = ceiling (fromIntegral qtdPlacas * 0.1)
    let vinte = ceiling (fromIntegral qtdPlacas * 0.2)
    let trinta = ceiling (fromIntegral qtdPlacas * 0.3)
    let quarenta = ceiling (fromIntegral qtdPlacas * 0.4)
    let cinq = ceiling (fromIntegral qtdPlacas * 0.5)
    let sess = ceiling (fromIntegral qtdPlacas * 0.6)
    let set = ceiling (fromIntegral qtdPlacas * 0.7)
    let oit = ceiling (fromIntegral qtdPlacas * 0.8)
    let nov = ceiling (fromIntegral qtdPlacas * 0.9)
    putStrLn $ unwords [show dez, show vinte, show trinta, show quarenta, show cinq, 
                    show sess, show set, show oit, show nov]


readInts :: IO [Int]
readInts = fmap (map read . words) getLine
