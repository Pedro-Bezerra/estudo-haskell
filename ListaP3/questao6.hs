--a = 5 + (2 - 1)
--b = 5 + $ 2 - 1
raizDelta :: Floating a => a -> a -> a -> a
raizDelta a b c = sqrt(b*b - 4*a*c)


xLinhaMenos :: Floating a => a -> a -> a -> a
xLinhaMenos a b c = ((-b) - raizDelta a b c) / 2*a

xLinhaMais :: Floating a => a -> a -> a -> a
xLinhaMais a b c = ((-b) - raizDelta a b c) / 2*a