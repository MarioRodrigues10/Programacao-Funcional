insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y:ys) | x < y = x:y:ys
				| x > y = y:insert x ys 

iSort::  Ord a => [a] -> [a] 
iSort [] = []
iSort (x:xs) = insert x (iSort xs)
