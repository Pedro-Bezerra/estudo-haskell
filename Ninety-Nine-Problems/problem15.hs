repli [x] a = replicate a x
repli (x:xs) a = replicate a x ++ repli xs a
