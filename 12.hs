numberOfDivisors :: Int -> Int
numberOfDivisors num = 2* (length [x | x <- [1.. ceiling (sqrt (fromIntegral  num))], num `mod` x == 0])

triangleNumberLoop :: Int -> Int -> [Int]
triangleNumberLoop currentSum currentNum
    | (numberOfDivisors currentSum) < 500 = currentSum:triangleNumberLoop (currentSum+currentNum) (currentNum+1)
    | otherwise = currentSum:[]

main = print $ triangleNumberLoop 0 1