
-- recursive minimum element of a list function - Haskell already provides minimum
minnie :: (Ord a) => [a] -> a
minnie [] = error "enough of this mickey mouse horse shit"
minnie [x] = x
minnie (x:xs) = min x (minnie xs)

-- quicksort implementation, apparently hackneyed in haskell indoctrination
quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
    let smallerSorted = quicksort [a | a <- xs, a <= x]  
        biggerSorted = quicksort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted


-- super simple stupid assert-like behavior
check :: Bool -> [Char]
check False = "Fail"
check _ 	= "Ok"

-- some tests
main = do
	print (check (1 /= minnie([2,5,8,4,2,5,0])))
	print (check (0 == minnie([2,5,8,4,2,5,0])))

	print (check ([1] == quicksort[1]))
	print (check ([-4,0,1,2,3,3,4,5,5,22,34,99,234,345] == quicksort[3,1,99,34,345,234,22,4,5,5,0,-4,2,3]))