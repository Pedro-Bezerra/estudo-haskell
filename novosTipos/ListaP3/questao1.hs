data Nat = Zero | Suc Nat deriving Show

mult :: Nat -> Nat -> Nat
mult Zero _ = Zero
mult _ Zero = Zero
mult (Suc Zero) n = n
mult m (Suc Zero) = m
mult (Suc m) (Suc n) = somar (Suc m) (mult (Suc m) n)


somar :: Nat -> Nat -> Nat
somar Zero n = n
somar m Zero = m
somar (Suc m) n = Suc (somar m n)

nat2int :: Nat -> Int
nat2int Zero = 0
nat2int (Suc n) = 1 + nat2int n

int2nat :: Int -> Nat
int2nat 0 = Zero
int2nat n = Suc (int2nat (n-1))