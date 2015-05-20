CS471-Programming Languages
Alexander Cardenuto <acarden1>
Last Lab

Part B:

> hLen :: (Num u, Eq t) => ([t] -> u) -> [t] -> u 
> hLen = (\f x -> if x == [] then 0 else 1 + (f (tail x)))
> myLength ls = if ls == [] then 0 else 1 + myLength (tail ls)

1)
a) hLen is not recursive. It does not call itself but a function given as a parameter.
b) hLen is a higher order function because it takes a function as a parameter. 
c) 
	a) 12
	b) 6

hLen is able to utilize sum and head but that is it. 

[2pts]What is the value of 
hLen myLength [4,5,6] ?

2) 3

3) The relationship between hLen and myLength is that it both calls tail of the list. 


Part C: 

> factorial :: Integral a => a -> a
> factorial n = if n ==0 then 1 else n * (factorial (n - 1))

1)
type of hFact is hFact :: (Integer -> Integer) -> Integer -> Integer

> hFact = (\fact x -> if x == 1 then 1 else x * (fact(x-1)))

2) hFact (^2) 4  is 36

3) the value of hFact factorial 5 is 120. It is the same as factorial of 5.

Part D:

1) 
type: factorial' :: Integer -> Integer

> factorial' = hFact factorial'

2) 
a) type is fix :: (t -> t) -> t

> fix f = f (fix f )

b) The difference between the two is that the first specifies the associativity of the the function whereas the second does not. 



3) 
factorial 6  is 720
hFact factorial 6 is 720 
factorial' 6 is 720 
fix hFact 6 is 720 




