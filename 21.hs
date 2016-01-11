sumOfFactors :: Int -> Int -> Int -> Int
sumOfFactors a b currentSum
    | a <= b = currentSum
    | (a `mod` b == 0) = sumOfFactors a (b+1) (b+currentSum)
    | otherwise = sumOfFactors a (b+1) currentSum

isAmicable :: Int -> Bool
isAmicable number = if number == (sumOfFactors factorSum 1 0) && factorSum /= number then True else False
    where
        factorSum = (sumOfFactors number 1 0)
        
main = do
    print $  [x | x<- [1..10000], isAmicable x]