palindromo [] = True
palindromo [x] = True
palindromo xs = xs == reverse xs