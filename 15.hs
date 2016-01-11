import Data.Array

createArray :: Int -> Int -> Int -> Int -> [Int] -> [Int]
createArray maxX maxY x y array
    | (x == maxX && y == maxY) = ((head array) + (array !! maxX)):array
    | (x > maxX) = createArray maxX maxY 0 (y+1) array
    | (x == 0) = createArray maxX maxY (x+1) y (1:array)
    | (y == 0) = createArray maxX maxY (x+1) y (1:array)
    | otherwise = createArray maxX maxY (x+1) y (((head array) + (array !! maxX)):array)

main = print $ head $ createArray 1000 1000 0 0 []