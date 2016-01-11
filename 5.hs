lcmMultiSet :: [Int] -> Int -> Int
lcmMultiSet array num
	| length array == 0 = num
	| otherwise = lcmMultiSet (tail array) (lcm (head array) num) 

main = print $ lcmMultiSet [1..20] 1

