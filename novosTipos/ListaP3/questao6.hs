



-- Resolver essa questão usando a concatenação '++'
data Expr = Val Int | Add Expr Expr

folde :: (Int -> a) -> (a -> a -> a) -> Expr -> a
folde f _ (Val int) = f int
folde f g (Add exp1 exp2) = g (folde f g exp1) (folde f g exp2)

eval (Val int) = int
eval (Add expr1 expr2) = eval expr1 + eval expr2

eval' = folde id (+)

size (Val int) = 1
size (Add expr1 expr2) = size expr1 + size expr2

size' = folde (const 1) (+)

