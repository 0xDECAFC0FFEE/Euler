primes :: [Integer] -> [Integer]
primes [] = []
primes (headPrime:listOfPrimes) = headPrime:(primes [x | x<- listOfPrimes, x `mod` headPrime /= 0])

intToIntArray :: Int -> [Int]
intToIntArray 0 = []
intToIntArray n = intToIntArray (n `div` 10) ++ [n `mod` 10]

incrementList :: [Int] -> [Int]
incrementList num
    | lastNum == 9 = incrementList (init num) ++ [0]
    | otherwise = (init num) ++ [lastNum+1]
        where 
            lastNum = last num

treeify 

main = print $ intToIntArray 50
-- each number will be written as a list