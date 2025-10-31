
pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

-- returns the list of all perfect numbers up to a given limit
perfects :: Int->[Int]
perfects n=[x|x<-[1..n] , n `mod` x == 0]


-- sum of scalar product/dot productof two lists
scalerp :: [Int] -> [Int] -> Int
scalerp xs ys = sum[x*y|(x,y)<-zip xs ys ]


