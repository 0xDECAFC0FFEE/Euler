import Data.Char

sumOfDigits :: Int -> Int
sumOfDigits n = sum (map (\c -> ((ord c-ord '0')^5)) (show n))

loopNum :: Int -> [Int]
loopNum 3 = []
loopNum num = if num == (sumOfDigits num) then (num : loopNum (num-1)) else loopNum (num-1)

main = print $ sum $ loopNum 1000000