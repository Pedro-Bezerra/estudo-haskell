dropEvery xs a = concat (listOfLists xs a)

listOfLists [] a = []
listOfLists xs a = take (a - 1) xs : listOfLists (drop a xs) a