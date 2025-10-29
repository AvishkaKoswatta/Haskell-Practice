-- safetail.hs
-- tail :: [a] -> [a] gives tail elemnts but for empty list give an error. 

-- if else
safetail :: [a]->[a]
safetail xs=if null xs then [] else tail xs

-- guarded
safetail :: [a]->[a]
safetail xs=
    | null xs = []
    | otherwise = tail xs

-- pattern matching
safetail :: [a]->[a]
safetail []=[]
safetail (_:xs)=tail xs

-- Possible definitions for logical OR (||) using pattern matching

(||) :: bool->bool->bool
True  || True  = True
True  || False = True
False || True  = True
False || False = False

(||) :: bool->bool->bool
False || False = False
_ || _ = True

(||) :: bool->bool->bool
True || _ = True -- _ mean we do not care
False || b = b -- b mean we care and result is also b

-- define using conditional rather pattern
-- True  && True  = True
-- _     && _     = False
(&&) :: bool->bool->bool
a && b =if a then b else false 

-- True  && b = b
-- False && _ = False
(&&) :: bool->bool->bool
a && b =if a then b else false 


pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

