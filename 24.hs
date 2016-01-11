import Data.Char

arrayTreeLimbNum :: Int -> Int -> [(Int,Int)]
arrayTreeLimbNum permutationNum numberOfDigits = arrayTreeLimbNumLoop (permutationNum-1) numberOfDigits
    where
        arrayTreeLimbNumLoop currentTotalLimbNum 0 = []
        arrayTreeLimbNumLoop currentTotalLimbNum factorialNum = (factorialNum, limbNum) : arrayTreeLimbNumLoop (currentTotalLimbNum - (limbNum*(factorial (factorialNum-1)))) (factorialNum-1) where
            maxLimbNum = currentTotalLimbNum `div` (factorial (factorialNum-1))
            limbNum = if maxLimbNum > (factorialNum-1) then (factorialNum-1) else maxLimbNum

factorial :: Int -> Int
factorial 0 = 1
factorial num = num * factorial (num - 1)

numFromTreeIndex :: [(Int,Int)] -> Int -> String
numFromTreeIndex index numberOfDigits = numFromTreeLoop index [0..(numberOfDigits-1)] 
    where
        numFromTreeLoop :: [(Int,Int)] -> [Int] -> String
        numFromTreeLoop [] _ =  []
        numFromTreeLoop index totalListOfLimbs = (intToDigit currentDigit) : (numFromTreeLoop (tail index) [ a | a <- totalListOfLimbs, not (a == currentDigit)]) where
            currentDigit = totalListOfLimbs !! (snd (head index)) 

main = print $ numFromTreeIndex (arrayTreeLimbNum 1000000 10) 10