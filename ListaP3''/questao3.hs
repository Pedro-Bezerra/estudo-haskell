repete 0 = []
repete n = [n | z <- [1..n]] : repete (n-1)

repete' 0 = []
repete' n = [n | z <- [1..n]] ++ repete' (n-1)