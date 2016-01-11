intLength :: Int -> Int
intLength n = ceiling $ logBase 10 (fromIntegral n)

main = print $ intLength 11