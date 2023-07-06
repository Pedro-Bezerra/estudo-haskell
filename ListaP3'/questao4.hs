
euclides x y | x == y = x
             | x > y = euclides y (x - y)
             | x < y = euclides x (y - x)