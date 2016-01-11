fibonacci :: Integer -> Integer -> [Integer] -> [Integer]
fibonacci firstNum secondNum count
    | (firstNum+secondNum) > 10^(1000-1) = (firstNum+secondNum) : count
    | otherwise = (fibonacci secondNum (firstNum+secondNum) ((firstNum+secondNum) : count))

main = print $ length (fibonacci 1 1 []) +2

{-
fibonacci :: Integer -> Integer -> [Integer] -> [Integer]
fibonacci firstNum secondNum count
    | (firstNum+secondNum) > 10^(1000-1) = (firstNum+secondNum) : count
    | otherwise = (fibonacci secondNum (firstNum+secondNum) ((firstNum+secondNum) : count))
-}