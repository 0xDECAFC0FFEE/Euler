loop1 :: Int -> [(Int, Int, Int)]
loop1 index
    | index > 999 = []
    | otherwise = (loop2 index 1) ++ (loop1 (index+1))

loop2 :: Int -> Int -> [(Int, Int, Int)]
loop2 index1 index2
    | index2 > 999 = []
    | (index1 * index1 + index2 * index2 - (1000-index1-index2)*(1000-index1-index2)) == 0 = (index1, index2, (1000-index1-index2)) : loop2 index1 (index2+1)
    | otherwise = loop2 index1 (index2+1)

main = print $ loop1 1