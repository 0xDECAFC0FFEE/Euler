numberOfItemsInSequence :: Integer -> Integer -> Integer
numberOfItemsInSequence currentNumber currentNumberOfItems
    | currentNumber < 2 = currentNumberOfItems+1
    | currentNumber `mod` 2 == 0 = numberOfItemsInSequence (currentNumber `div` 2) (currentNumberOfItems+1)
    | otherwise = numberOfItemsInSequence (currentNumber*3+1) (currentNumberOfItems+1)

largestNumberLoop :: Integer -> Integer -> Integer -> Integer
largestNumberLoop currentNumber largestNumber numberAtIndex
    | currentNumber < 800000 = numberAtIndex
--    | currentNumber < 1 = largestNumber
    | largestNumber < currentNumberSequenceItems = largestNumberLoop (currentNumber-1) currentNumberSequenceItems currentNumber
    | otherwise = largestNumberLoop (currentNumber-1) largestNumber numberAtIndex
    where
        currentNumberSequenceItems = numberOfItemsInSequence currentNumber 0 

main = print $ largestNumberLoop 1000000 0 0