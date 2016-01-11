largestFactor :: Int -> Int -> Int
largestFactor a n
	| n == 1 = error "no factors u done goofed"
	| ((a `mod` n == 0) && ((factors n n) == [n, 1])) = n
	| otherwise = largestFactor a (n-1)

factors :: Int -> Int -> [Int]
factors a b
	| b == 1 = [1]
	| a `mod` b == 0 = b : factors a (b-1)
	| otherwise = factors a (b-1)

main = print $ largestFactor 600851475143 775146