--mode2 :: Int -> Int -> Int
mode2 :: (Ord t, Num t) => t -> t -> t
mode2 x y = if x >= y then mode2 (x-y) y else x

