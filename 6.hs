squareOfSums :: [Int] -> Int
squareOfSums array = sumOfArray * sumOfArray
    where 
        sumOfArray = (sum array)

sumOfSquares :: [Int] -> Int
sumOfSquares array = sum (map (\x -> x*x) array)

main = print $ squareOfSums [1..100] - sumOfSquares [1..100]