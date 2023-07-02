duplicate :: [a] -> [a]
duplicate xs = concat (listOfLists xs)

listOfLists :: [a] -> [[a]]
listOfLists xs = [[x, y] | (x, y) <- zip xs xs]