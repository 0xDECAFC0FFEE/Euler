import Data.List 

sumOfFactors :: Int -> Int
sumOfFactors num = if (last firstListHalf) == (head secondListHalf) then sum (tail firstListHalf) + (sum (tail secondListHalf)) else sum (tail firstListHalf) + sum secondListHalf
    where 
        secondListHalf = reverse [multiple | multiple <- [1.. sqrtOfNum], num `mod` multiple == 0]
        sqrtOfNum = (floor (sqrt (fromIntegral num)))
        firstListHalf = reverse (map (\elem -> (num `div` elem)) secondListHalf)

isAbundant :: Int -> Bool
isAbundant num = if sumOfFactors num > num then True else False

removeDuplicates :: [Int] -> [Int]
removeDuplicates listOfNumbers = removeDuplicatesLoop 0 (sort listOfNumbers)
    where 
        removeDuplicatesLoop _ [] = []
        removeDuplicatesLoop lastNumber listOfNumbers = if lastNumber == (head listOfNumbers) then removeDuplicatesLoop lastNumber (tail listOfNumbers) else (head listOfNumbers) : removeDuplicatesLoop (head listOfNumbers) (tail listOfNumbers)

main = print $ ((largestNumber+1) * largestNumber `div` 2) - (sum (removeDuplicates listOfSumsOfAbundantNumbers))
--main = print $ removeDuplicates $ listOfSumsOfAbundantNumbers
    where
        largestNumber = 28125
        listOfAbundantNumbers = [x | x <- [1..largestNumber], isAbundant x]
        listOfSumsOfAbundantNumbers = [c | a <- listOfAbundantNumbers, b <- listOfAbundantNumbers, let c = a + b, c <= largestNumber]