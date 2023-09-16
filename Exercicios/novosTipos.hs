data Nat = Zero | Suc Nat deriving Show

subtrair :: Nat -> Nat -> Maybe Nat

subtratir Zero Zero = Just Zero
subtrair Zero m = Nothing
subtrair n Zero = Just n
subtrair (Suc n) (Suc m) = subtrair n m

