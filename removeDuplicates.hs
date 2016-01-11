removeDuplicates :: [Int] -> [Int]
removeDuplicates listOfNumbers = removeDuplicatesLoop 0 listOfNumbers
    where 
        removeDuplicatesLoop _ [] = []
        removeDuplicatesLoop lastNumber listOfNumbers = if lastNumber == (head listOfNumbers) then removeDuplicatesLoop lastNumber (tail listOfNumbers) else (head listOfNumbers) : removeDuplicatesLoop (head listOfNumbers) (tail listOfNumbers)

main = print $ removeDuplicates [1,2,2,3]