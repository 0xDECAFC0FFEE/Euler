import Data.List

mode :: [Int] -> [Int] -> Maybe Int
mode [] indexes = elemIndex (maximum indexes) indexes
mode array indexes = mode (tail array) ((take (head array) indexes) ++ (((indexes !! (head array))+1) : (drop (head array) indexes)))

main = do
    print $ mode [1,4,6,2,4,6,4,5,6,3,5,7,2,5,4,6,3,5,3,5,6,7,2,3,3] (take (maximum [1,4,6,2,4,6,4,5,6,3,5,7,2,5,4,6,3,5,3,25,6,7,2]+1) (repeat 0))