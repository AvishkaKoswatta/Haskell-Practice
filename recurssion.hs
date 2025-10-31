-- Decide if all logical values in a list are true with recurssion
alltrue :: [Bool] -> Bool
alltrue [] = True
alltrue (x:xs) = x && alltrue xs

-- Concatenate a list of lists
concats :: [[a]]->[a]
concats []=[]
concats (x:xs)= x ++ concat xs


merge Ord a=> [a]->[a]->[a]
merge [] ys=ys
merge xs []=xs
merge (x:xs) (y:ys) | x<=y = x ++ merge xs (y:ys)
                    | otherwise y ++ merge (x:xs) ys



