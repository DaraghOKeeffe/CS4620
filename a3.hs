--Takes a function 'f' and an item 'x', and returns the infinite list
iterate = \f -> \x -> x : iterate f (f x)
--take 5 (iterate (\n -> n+3) 1)

--the list of all positive powers of the number 'n'
--powers = \n -> n : n*n : n*n*n : n*n*n*n
powers = \n -> n : iterate (\x -> x * n) (n*n)
----take 7 (powers 2)	

--The infinite list which has, as its nth item, a list composed of 'n' copies
--of the numer 'n', for n = 1,2,3,...
reps = map (\n -> copies n n) (from 1)

--The infinte list which has, as its nth item, a list formed by the nth row of
--Pascal's triangle, for n=1,2,3,...
--Pascal's triangle is an infinite triangular pattern of integers, where each
--exterior number is 1, and each interior number is the sum of the two numbers

--pascal = 


-- HELPER FUNCTIONS 
-- return the list of 'n' copies of item 'x' 
-- (assuming n is non-negative integer)
copies = \n -> \x ->    if n > 0 then
                            x:copies (n-1) x
                        else
                            []


