> mys8 c (l:ls)
> 	| [] == ls = c l
> 	| otherwise 	= mys8 (\x -> c (3 - x)) ls




> sq [] = []
> sq (x:xs) = (x*x):sq xs

> data Point a = Pt a a deriving (Show, Eq)
> isOrigin (Pt a b) 
>	|a == 0 && b == 0 = True
>	|otherwise = False

> isOriginL (Pt a b) = (\a b -> if ( a == 0 && b == 0) then True else False)

 factors x = filter (mod x [0..x]) [0..x] 


> iterateC :: (a -> a) -> a -> [a]
> iterateC f x:xs = iterateInfData
>     where
>     iterateInfData = x:[ f n | n <- iterateInfData]
