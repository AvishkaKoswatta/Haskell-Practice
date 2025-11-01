-- filter elements
filters :: Int -> [Int] -> [Int]
filters x xs = [y|y<-xs, x>y  ]

-- filter elements in odd index
f :: [Int] -> [Int]
f lst = [x|(x,i)<-zip lst [1..], even i]


-- reverse a list
rev :: [Int] -> [Int]
rev []=[]
rev (l:ls) = rev ls ++ [l] 

-- sum of odd numbers in a list
f :: [Int] -> Int
f arr = sum[x|x<-arr, odd x]


-- Count the number of elements in an array without using count, size or length 
len :: [a] -> Int
len [] = 0
len (_:lst) = 1 + len lst 

-- convert negatives to positive in a list
f :: [Int] -> [Int]
f [] = []
f (x:xs)
  | x < 0     = (-x) : f xs   -- make negative number positive
  | otherwise = x : f xs      -- keep positive as is
