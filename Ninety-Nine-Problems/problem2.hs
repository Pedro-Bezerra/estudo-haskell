lastButOne::[a] -> a
lastButOne as = as !! (length as - 2)
value = lastButOne [0.3, 1.9, 2.2, 8.4]
newValue = lastButOne ['k', '0', 'm', '{', '}']