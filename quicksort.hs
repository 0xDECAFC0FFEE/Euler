-- pass in a length and a comparer function. the comparer compares 2 orderable thingies.
quicksort :: (Eq a) => [a] -> (a -> a -> Bool) -> [a]
quicksort [] _ = []
quicksort list comparer = (quicksort [a | a <- list, comparer a (head list)] comparer) ++ [a| a <- list, a == (head list)] ++ (quicksort [a | a <- list, (not (comparer a (head list))), not (a == (head list))] comparer)



-- comparer is used to pass into quicksort function. 
comparer :: (Ord a) => a -> a -> Bool
comparer a b = if a < b then True else False

main = print $ (quicksort [12,3,12,12,23,545,675,23,76,234,65,234,43,365,124] comparer)