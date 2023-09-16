myGcd x y | x < 0 = myGcd (abs x) y
          | y < 0 = myGcd x (abs y) 
          | x > y = myGcd (x - y) y
          | y > x = myGcd x (y - x)
          | otherwise = x

          