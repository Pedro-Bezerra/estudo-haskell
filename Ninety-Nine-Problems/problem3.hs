elementAt :: [a] -> Int -> a
elementAt as x = as !! (x-1)
value = elementAt ['a', 'p', 'l', 'w', '~'] 5
newValue = elementAt "aprender" 6