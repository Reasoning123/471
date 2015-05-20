CS471-Programming Languages
Alexander Cardenuto <acarden1>
haskell2

> module Haskell2F14SOL
>    where

1) 

> thuer [] = []
> thuer (0:list) = 1 : thue list
> thuer (1:list) = 0 : thuer list
> thue list = list ++ thuer list

 thueSeq = [thue n | n <- list]


2) 

> thueSeqM = [0] : [list ++ map (\i -> if i == 1 then 0 else 1) list | list <- thueSeqM]

3) 

> factors x = [list | list  <- [1..x], x `mod` list == 0]

4) 

> composeList [x] = x
> coomposeList (x:y) = x . composeList y
> composeHOF = (\list -> foldl1 (.) list)

5) 

> f1 = (+ 1)
> f2 = (> (0))
> s8 = map f1 . filter f2


6)

> g1 func x = func x 
> g2 func list = (\x -> map (\elem -> func x elem) list)

7)
f = \xs -> [ x * (x `mod` 5) | x <- xs, x > 5 ] 
a)



b)

Takes and makes a list of elements using only numbers larger tan 5. with the expression (x * (mod x 5) and adds them to the end of the list

 frnpx 0 list
	| x > 5 : list ++ [(x * (mod x 5))], frnpx x+1 list 
 frnp = frnpx 0 list 

c) 

