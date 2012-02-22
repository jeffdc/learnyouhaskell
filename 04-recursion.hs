import Control.Exception (assert)

-- recursive minimum element of a list function - Haskell already provides minimum
minnie :: (Ord a) => [a] -> a
minnie [] = error "enough of this mickey mouse horse shit"
minnie [x] = x
minnie (x:xs) = min x (minnie xs)

-- some tests
test = assert (minnie([2,5,8,4,2,5,0])==1)