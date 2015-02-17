integers :: [Int]
integers = 0:[x | n <- [1..], x <- [n,-n]]

pytrips :: [(Int, Int, Int)]
pytrips = [(x,y,z) |z <- [1..], y <- [1..z], x <- [1..y], (x^2 + y^2 == z^2) && (gcd x y == 1)] 

runs :: Ord a => [a] -> Int
runs xs = runs' 0 xs

runs' :: (Ord a, Int) => [a] -> Int
runs' sum xs | tail xs == [] = sum + 1
			 | head xs == head (tail xs) = runs' sum (tail xs)
			 | head xs /= head (tail xs) = runs' (sum + 1) (tail xs)