data Btree a = Tip a | Bin (Btree a) (Btree a) deriving (Show, Ord, Eq)

mirror (Tip a) = Tip a
mirror (Bin esq dir) = Bin (mirror dir) (mirror esq)
{--mirror (Bin (Tip 1) (Bin (Tip 6) (Tip 5)))
= Bin (Bin (Tip 5) (Tip 6)) (Tip 1)--}