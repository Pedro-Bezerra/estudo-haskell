fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x-1) + fibonacci (x-2)

fibonacci' x = take x (fibo 0 1)
fibo a b = a:fibo b (a+b)

fib x = map fst (take x (iterate (\(x, y) -> (y, x + y)) (0, 1)))