-- filter elements
filters :: Int -> [Int] -> [Int]
filters x xs = [y|y<-xs, x>y  ]