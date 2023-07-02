rev [] = []
rev (a:as) = rev as ++ [a]

iter 0 f = id
iter n f = iter (n-1) f . f

double x = x*2
