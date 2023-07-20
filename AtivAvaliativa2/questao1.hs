filtraFunc [] = []
filtraFunc (x:xs) = if length (snd x) >= 2 then fst x : filtraFunc xs else filtraFunc xs
