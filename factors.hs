-- finds prime factors with repeats
factors :: Int -> [Int]
factors number = 1 : (factorLoop number 2)
    where 
        factorLoop a b
            | a <= 1 = []
            | (a `mod` b == 0) = b : (factorLoop (a `div` b) b)
            | otherwise = factorLoop a (b+1)

-- all multiples without list comprehension
factors2 :: Int -> [Int]
factors2 number = if (last firstListHalf) == (head secondListHalf) then 1 : (firstListHalf ++ (tail secondListHalf))++[number] else 1 : (firstListHalf ++ secondListHalf) ++[number]
    where
        factorLoop2 a b
            | a < (b*b) = []
            | (a `mod` b == 0) = b : (factorLoop2 a (b+1))
            | otherwise = factorLoop2 a (b+1)
        firstListHalf = factorLoop2 number 2
        secondListHalf = reverse (map (\elem -> (number `div` elem)) firstListHalf)

-- all multiples with list comprehension max time = root n average time = root n
factors3 :: Int -> [Int]
factors3 num = if (last firstListHalf) == (head secondListHalf) then firstListHalf ++ (tail secondListHalf) else firstListHalf ++ secondListHalf
    where 
        firstListHalf = [multiple | multiple <- [1.. sqrtOfNum], num `mod` multiple == 0]
        sqrtOfNum = (floor (sqrt (fromIntegral num)))
        secondListHalf = reverse (map (\elem -> (num `div` elem)) firstListHalf)

main = do
    print $ factors3 8208