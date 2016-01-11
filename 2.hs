fibonacci :: Int -> Int -> [Int] -> [Int]
fibonacci a b c
    | a+b < 4000000 = fibonacci b (a+b) (c ++ [(a + b)])
    | otherwise = c
main = print $ sum $ filter (\n -> n`mod` 2 == 0) (fibonacci 0 1 [])