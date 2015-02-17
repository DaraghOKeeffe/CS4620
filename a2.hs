-- The list formed by calling each function in list 'fs' on item 'x'
applyAll = \fs -> \x -> foldr(\f -> \z -> f x:z) [] fs
      
--The list formed by those components of list 'xs' which do not satisfy 
--predicate 'p'
remove = \p -> \xs -> foldr(\f -> \z -> if p f then z else f:z) [] xs
--remove (\n -> n<0) (3:-2:-5:7:4:-1:[])

--The number of times that item 'x' occurs in list 'xs'
count = \x ->foldr(\f -> \z -> if f == x then z+1 else z) 0
--count 5 (5:4:5:4:[])

--Does the Boolean list 'bs' contain an odd number of True components
xor = foldr(\f -> \z -> (f||z) && not(f&&z)) False
-- xor (False:True:False:[])

--The list formed by joining lists 'xs' and 'ys', in that order
append = \xs -> \ys -> foldr(\f -> \z -> f:z) ys xs
--append (5:8:3:[]) (4:7:[])