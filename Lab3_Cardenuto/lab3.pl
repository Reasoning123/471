/*
#      CS471 - Programming Languages
#        Lab #3
#        Author:Cardenuto,Alexander (acarden1@binghamton.edu)
#        Date: 09/18/2014
# 


# http://www.purplemath.com/modules/fcns.htm
# 1A)A) relation - connection between sets of elements
#    B) function - a relation between a set of inputs and a set of outputs
#  B) Every function is a relation 
#  C) Not every relation is a function. a relation is not a function when 2 ekements in the 	domain connect to the same element in the range.


#4)A)	
#	loves(aBoy,mia) :  atoms:aBoy,mia /functor: loves /arity: 2
#	boxer(Butch) :  variable: Butch/functor:boxer/arity:1
#	and(big(X),kahuna(X)) : variable:X,big(X),kahuna(X)/functor:and,big,kahuna/arity:and is 2 big and kahuna is 1
#	hide(X,big(big(aBoy))) : vatom:aBoy,Variable:X,functor:hide(arity 2),big(arity 1)

#  B) 	likes(sam,Food) :- //rule want to describe the type of indian food that sam likes
#	    indian(Food), //predicate
#	    mild(Food). //predicate
#	likes(sam,Food) :- //rule describes the type of italian food that sam likes. 
#	     italian(Food). //predicate
#	indian(curry). 	    //clause 
#	indian(tandoori).   //clause
#	mild(tandoori).     //clause
#	italian(pizza).     //clause

#Part 2:
*/
second(triple(A,B,C),Y) :- B = Y.

secondF(triple(A,B,C),Y).



mother(mary, ann).
mother(mary, joe).
mother(sue, marY).  
mother(sue,mary).

father(mike, ann).
father(mike, joe).
father(tom,mary).

grandparent(sue, ann). 

male(joe).
male(mike).
male(tom).

female(mary).
female(ann).
female(sue).
female(marY).

parent(P,C) :- mother(P,C). 
parent(P,C) :- father(P,C).

daughter(P,C) :- female(C), mother(P,C).
daughter(P,C) :- female(C), father(P,C).



last([X],X).
last([_|Xs],Y):-last(Xs,Y).
/*
#6)
 #3 < 6 .
	#prediction -  true
#?- X = 100 , 5 < X.
	#prediction - X = 100, true
#?- A = 5 , B =10 , A < B.
	#prediction - A = 5, B = 10, true
#?- L = [1,2,3,5], [H|T] = L, [A,B|Z]=L.
	#prediction - L = [1,2,3,5], H = 1, L = [2,3,5], A = 1, B = 2, Z = [3,5]
#?- L = [3] , [H|T] = L.
	#prediction - L = [3], H = 3, L = []
#?- L = [3] , [X] = L.
	#prediction - L = [3], X = [3]
#?- L = [1,2,3,5], [H|T] = L, [A,B|Z]=L, T = [B|Z].
	#prediction - L = [1,2,3,5] , H = 1, T = [2,3,5], A = 1, B = 2, Z = [3,5], T = [2,3,5]
*/
isOrdered([]).
isOrdered([X]).
isOrdered([A,B|C]) :- A < B, isOrdered([B|C]).

/*
#7
#?- X = 9 , S is X + 100.
	#test -X = 9,S = 109.

#?- A = 5 , B =10 , S is A*2 + B*2.
	#test -A = 5,B = 10,S = 30.

#?- A = 5 , B =10 , 30 is A*2 + 2*B.
	#test -A = 5,B = 10.
*/
pyth(X,Y,Z) :- Z is (X * X) + (Y * Y).

triple((A,B,C),Sum) :- Sum is A + B + C.
/*
#9)  ?- S is X + 100, X = 9.
	#test -ERROR: is/2: Arguments are not sufficiently instantiated

# ?-  L = [1,2,3,5], [H|T] = L, Lst = [T].
	#test - L = [1, 2, 3, 5],H = 1,T = [2, 3, 5],Lst = [[2, 3, 5]].

#http://kenno.wordpress.com/2007/02/04/sum-of-elements-in-list-in-prolog/
*/
sumOfLst([], 0).
sumOfLst([A|B],S) :- sumOfLst(B,Sum),S is A + Sum.


