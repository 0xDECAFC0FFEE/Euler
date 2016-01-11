sumOfDigits :: Integer -> [Integer]
sumOfDigits 0 = []
sumOfDigits x = (x `mod` 10) : (sumOfDigits (x `div` 10))

main = do
    print $ sum (sumOfDigits (2^1000))