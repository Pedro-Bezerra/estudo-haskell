totient y | y == 1 = 1
          | otherwise = length [x | x <- [1..y], coprime x y]

coprime x y | myGcd x y == 1 = True
            | otherwise = False

myGcd x y | x < 0 = myGcd (abs x) y
          | y < 0 = myGcd x (abs y) 
          | x > y = myGcd (x - y) y
          | y > x = myGcd x (y - x)
          | otherwise = x
