import Debug.Trace

primes :: [Int] -> [Int]
primes [] = []
primes (headPrime:listOfPrimes) = headPrime:(primes [x | x<- listOfPrimes, x `mod` headPrime /= 0])

numberOfPrimes :: [Int] -> (Int, Int)
numberOfPrimes arrayOfPrimes = ((length currentArraySum), (sum currentArraySum))
    where
        currentArraySum = sumFromList 0 arrayOfPrimes
        sumFromList :: Int -> [Int] -> [Int]
        sumFromList currentSum (firstPrime:primesList)
            | (currentSum + firstPrime) > 1000000 = []
            | otherwise = firstPrime : sumFromList (currentSum+firstPrime) primesList

primeLength :: [Int] -> Int
primeLength primesList
    | (sum primesList) < 1000000 = (length primesList)
    | otherwise = (primeLoop primesList 1) 
    where
        primeLoop :: [Int] -> Int -> Int
        primeLoop primesList currentLength
            | sum (take currentLength primesList) < 1000000 = (primeLoop primesList currentLength+1)
            | otherwise = currentLength

loop :: [Int] -> Int -> Int
loop [] maxLength = maxLength 
loop primesList maxLength
    | lengthUnder1000000 > maxLength = loop (tail primesList) lengthUnder1000000
    | otherwise = loop (tail primesList) maxLength
    where
        lengthUnder1000000 = primeLength primesList

main = print $ primeLength listOfPrimes
    where
        listOfPrimes = take 1000200 [100,100..]--primes [2.. 1000000]