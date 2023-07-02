myLast::[a] -> a
myLast [a] = a
myLast as = head(reverse as)
value = myLast ['a', 'b', 'c', 'z']
newValue = myLast [9, 4, 0, 1, 2]

lastElement :: [a] -> a
lastElement [] = error "Empty list"
lastElement [a] = a
lastElement (_:as) = lastElement as

valor = lastElement [0, 4, 1, 9, 4]