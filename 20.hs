import Data.Char

recursiveLoop :: Integer -> Integer
recursiveLoop 0 = 1
recursiveLoop currentNum = currentNum * (recursiveLoop (currentNum - 1 ))

main = print $ sum $ map (\x -> ((ord x)- (ord '0'))) $ show $ recursiveLoop 100