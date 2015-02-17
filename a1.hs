-- Are all the components of the boolean list 'bs' True ?
and = \bs ->    null bs || (head bs && and (tail bs))

-- Are any components of the boolean list 'bs' True?
or = \bs -> not (null bs) && ((head bs) || or (tail bs))

-- Is the numberic list ns sorted in ascending order?
issorted = \ns -> (null (ns)||null (tail ns)) || 
                   ((head ns <= head (tail ns) && issorted(tail ns)) || False)

--return the list of numbers from 
--the number 'lo' up to the number 'hi',inclusive
range = \lo -> \hi ->    if lo > hi then
                             []
                         else
                            lo:range (lo+1) hi

-- return the list of 'n' copies of item 'x' 
-- (assuming n is non-negative integer)
copies = \n -> \x ->    if n > 0 then
                            x:copies (n-1) x
                        else
                            []