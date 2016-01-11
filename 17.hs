import Data.Char

-- counts digits below 100
fndx :: Int -> Int
fndx x
    | x == 0 = 0 -- common small number cases
    | x == 9 = 4
    | x == 8 = 5
    | x == 7 = 5
    | x == 6 = 3
    | x == 5 = 4
    | x == 4 = 4
    | x == 3 = 5
    | x == 2 = 3
    | x == 1 = 3
    | (x > 79 && x < 90) = (fndx (x `mod` 10))+6 -- if the number is in 80's
    | (x > 49 && x < 60) = (fndx (x `mod` 10))+5 -- if the number is in 50's
    | (x > 39 && x < 50) = (fndx (x `mod` 10))+5 -- if the number is in 40's
    | (x > 29 && x < 40) = (fndx (x `mod` 10))+6 -- if the number is in 30's
    | (x > 19 && x < 30) = (fndx (x `mod` 10))+6 -- if the number is in 20's
    | (x > 19 && x < 100) = (fndx (x `mod` 10)) + (fndx (x `div` 10))+2 -- for rest of numbers with "ty's"
    | x == 19 = 8 -- if it's a special "teen" number
    | x == 18 = 8
    | x == 15 = 7
    | x == 13 = 8
    | x == 12 = 6
    | x == 11 = 6
    | x == 10 = 3
    | x > 10 && x < 20 = (fndx (x `mod` 10))+4 -- case for other teen's
    | otherwise = error $ show x

getIntSizeRecurse :: Int -> Int
getIntSizeRecurse x -- counts number of each digit raw without hundreds
    | x == 0 = 0
    | x < 100 = fndx x
    | otherwise = fndx (digitToInt (head stringX)) + getIntSizeRecurse (read (tail stringX))
        where
            stringX = show x

getIntSizeWithHundred :: Int -> Int
getIntSizeWithHundred x -- includes "hundred and" word in wordcount
    | x > 99 = if (x `mod` 100 == 0) then 7 + (getIntSizeRecurse x) else 7 + (getIntSizeRecurse x)+3
    | otherwise = (getIntSizeRecurse x)

recursiveFunctionList :: Int -> Int -> [Int]
recursiveFunctionList x minX
    | x == 1000 = 11:(recursiveFunctionList (x-1) minX)
    | x == minX = []
    | otherwise = getIntSizeWithHundred x : recursiveFunctionList (x-1) minX

main = print $ sum (recursiveFunctionList 1000 0)