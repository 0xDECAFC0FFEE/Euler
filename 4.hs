isPallendrome :: Int -> Bool
isPallendrome number
	| stringNum' == reverse stringNum' = True
	| otherwise = False
	where
		stringNum' = show number

loop1 :: Int -> Int -> Int
loop1 num1 maxNum
	| num1 < 800 = maxNum
	| newMax > maxNum = loop1 (num1-1) newMax
	| otherwise = loop1 (num1-1) maxNum
	where
		newMax = loop2 num1 num1 maxNum

loop2 :: Int -> Int -> Int -> Int
loop2 num1 num2 maxNum
	| num2 < 800 = maxNum
	| (isPallendrome (num1*num2)) && (maxNum < num1 * num2) = loop2 num1 (num2-1) (num1*num2)
	| otherwise = loop2 num1 (num2-1) maxNum

main = print $ loop1 999 0