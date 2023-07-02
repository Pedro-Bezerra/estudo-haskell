isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = and [x == y | (x, y) <- zip (firstPart xs) (reverse (lastPart xs))]
a = 5 `div` 2

firstPart [] = error "Empty list"
firstPart xs = take (length xs `div` 2) xs

lastPart [] = error "Empty list"
lastPart xs
            | odd (length xs) = drop ((length xs `div` 2) + 1) xs
            | even (length xs) = drop (length xs `div` 2) xs


isPalindromeSimple xs = xs == reverse xs
