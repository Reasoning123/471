/*
      CS471 - Programming Languages
        Assignment #<n3> due: <9,23,2014>
        Author: <Cardenuto>, <Alexander> (<acarden1@binghamton.edu>)
        Date: <9,22,2014>
 */

/* 
 * You should submit only one file named
 *           hw3.pl
 * to Blackboard
 * 
 */
/* Purpose:
 * to practice writing relations in Prolog

   This assignment is not intended to be hard, however many will need
   time to absorb how easy it really is. One problem requires only one line,
   most require only two lines and none require more than 3 lines.
 */

/*1: Read 3.1.3 Example 3: Successor from "Learn Prolog Now!"

http://cs.union.edu/~striegnk/learn-prolog-now/html/node27.html#subsec.l3.ex3

    Define a predicate convertToDecimal(Succ, Decimal), which converts the
    succ representation for numbers to decimal representation.
i.e.
  ?- convertToDecimal(succ(succ(succ(succ(succ(0))))),N).
  N = 5.
  ?- convertToDecimal(S,4).
  S = succ(succ(succ(succ(0)))) .

*/
/*
http://stackoverflow.com/questions/15031057/prolog-converting-succ-representation-into-decimal
*/
numbers(0).
numbers(succ(X)) :- numbers(X).
convertToDecimal(0,0).  
convertToDecimal(succ(S), Y) :- convertToDecimal(S, A), Y is A + 1.
/*2: Define a predicate add(Succ1, Succ2, SUMSucc), which adds two
     numbers in succ notations and the result is in succ notation.  
     DO NOT convert succ notation to decimal.  You may assume
     only succ notation is used by the query.
     ie.
     ?- add(succ(succ(succ(succ(succ(0))))), succ(succ(0)), Sum).
     Sum = succ(succ(succ(succ(succ(succ(succ(0))))))).

     ?- add(succ(succ(0)), succ(succ(succ(0))), Sum).
     Sum = succ(succ(succ(succ(succ(0))))).

     ?- add(succ(succ(0)), OP, succ(succ(succ(0)))).
     OP = succ(0)
     
  */
/*
Prolog and Natural-Language Analysis
 By Fernando C. N. Pereira, Stuart M. Shieber
*/

add(0,Y,Y).
add(succ(X),Y,succ(Z)) :- add(X,Y,Z).

/* 3: Using solution from problem 2 define minus(Succ1, Succ2, Diff).
      You may assume the Succ1 is larger than Succ2.
      ie. 
      ?- minus(succ(succ(succ(succ(succ(0))))), succ(succ(0)), Diff).
      Diff = succ(succ(succ(0))).
      
*/
minus(X,0,0). 
minus(X,succ(Y),succ(Z)) :- minus(X,Y,Z).
/*4: Define a predicate sameLen(Lst1, Lst2), such that it succeeds if lists
     Lst1 and Lst2 have the same length.  Use a recursive definition.  DO NOT USE
     the built in predicate  "length". e.g.
          ?- sameLen([1,2,3],[1,2]).
          No
          ?- sameLen([1,2,3],[a,b,c]).
         Yes
  */
sameLen([],[]).
sameLen([X],[Y]).
sameLen([A|Lst1],[B|Lst2]) :- sameLen(Lst1,Lst2).
/* 5: point(X,Y) is the structure which represents a point.  Write a fact
     "origin" which succeeds if both X and Y are zero.
    e.g. 
      ?- origin(P).
    succeeds if P is a point with x = 0 and
 */

origin(0,0).

/* 6: The ternary relation "collinear(p1,p2,p3)", is true if and only if
      p1, p2, and p3 lie on a straight line.  One definition is as follows:
      collinear(point(x1,y1), point(x2,y2), point(x3, y3))
        if and only if
             (x1-x2)(y2-y3) equals (y1-y2)(x2-x3)

      ?- collinear(point(1,1), point(2,2),point(3,3)).
      true.

      ?- collinear(point(1,0), point(2,0),point(3,0)).
      true.

      ?- collinear(point(1,0), point(2,0),point(3,3)).
      false.
*/
/*
could not get it to work with point(X,Y) so changed it to current state
*/
collinear(X1,Y1,X2,Y2,X3,Y3) :-A is (X1 - X2) * (Y2 -Y3), B is (X2 - X3) * (Y1 -Y2),B = A.


/* 7: Define the "prefix" predicate so that "prefix(X,Y)" says that 
      X is a list that is a prefix of Y.  That is, each element of X 
      unifies with the corresponding element of Y, but Y may contain 
      additional elements after that.  Check that your predicate works 
      when X is uninstantiated: given a query like "prefix(X,[1,2,3]), it 
      should find all the prefixes of the list [1,2,3] (after each result
      use ";" instead of return)."
      e.g.
       ?- prefix(X,[a,b,c]).
       X = [] ;
       X = [a] ;
       X = [a, b] ;
       X = [a, b, c] ;
       No
*/
/*
I am able to print out the list just not as aesthetically pleasing as that. The lists are all on one line and I cannot get rid of the space
*/
/*
http://www.swi-prolog.org/pldoc/man?section=termrw
*/
prefix(X,[]). 
prefix(X,[A|Lst]) :- write(X),prefix(X|A,Lst).
 
/* 8: Define a predicate hasSubseq(L,S), such that it succeeds if the list L 
      contains the list S as a sub-sequence of equivalent items. 
      Use a recursive definition.
      e.g. 
      ?-hasSubseq([a,g,b,d],[g,b]). 
      true .
      ?- hasSubseq([a,g,b,d],[g,d]). 
      true .
      ?- hasSubseq([a,g,b,d],[b,g]).
      false.
      
      (This can be done with 3 clauses.)
      
   */
hasSubSeq([],[]).
hasSubSeq([A|L],[B|S]) :- A == B, hasSubSeq(L,S).
hasSubSeq([A|L],[B|S]) :- hasSubSeq(L,[B|S]).

/* 10: init(Lst, InitOfLst) succeeds if InitOfLst is the same as Lst except the
     last element of Lst is missing. i.e.
     ?- init([a,b,c,d,e],Init).
     Init= [a, b, c, d]
     Yes
 */
/*
I could not get the empty space out of the beginning of the list without causing major erros
*/
init([],InitLst|A) :-  write(B|InitLst).
init([A|Lst],InitLst) :- init(Lst,InitLst|A).
/* 11: Convert the "gcd" program given in exercise 3, lab 1.
      Here is a recursive mathematical definition of gcd:

      gcd of A B
         is A if B = 0
         is gcd B (mod A B)



       e.g.
       ?- gcd(120,222, GCD).
       GCD = 6 ;
       false.

       ?- gcd(120,0, GCD).
       GCD = 120 .

       ?- gcd(120,60, GCD).
       GCD = 120 .

*/
/*
http://cs.union.edu/~striegnk/learn-prolog-now/html/node39.html
*/
gcd(A,0,C) :- C = A.
gcd(A,B,C) :- D is mod(A,B), gcd(B,D,C).

/* 12 Using the definition of Ackermanns functions as defined homework 1 (problem 6),
      write a Prolog predicate ack(M, N, A).  Note 'A' will unify with the 
      Ackermann  
*/

/* 
	will not run the program needs mroe memory in order to correctly run.
*/
ack(0,N,A) :- A is N + 1.
ack(M,0,A) :- B is M - 1, ack(B,1,A).
ack(M,N,A) :- B = M - 1, C = N -1, ack(B,ack(M,C,A),A).










