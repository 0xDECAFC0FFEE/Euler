primes :: [Integer] -> [Integer]
primes [] = []
primes (headPrime:listOfPrimes) = headPrime:(primes [x | x <- listOfPrimes, x `mod` headPrime /= 0])

main = print $ primes [2..10000]