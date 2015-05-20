/*
CS471  Programming Language
Author: Cardenuto,Alexander (acarden@binghamton.edu)
Lab 4

*/





/*
1) Homoiconic - the structure of a program is similar to its syntax. Its when the programs source code is written as a basic data structure.(http://en.wikipedia.org/wiki/Homoiconicity)
prolog is homoiconic.

Fully Reflective - ability of a program to modify the code and behavior of it at runtime. "(http:en.wikipedia.orgwikiReflection_(computer_programming))"
prolog is not fully reflective but it allows the options for some modification at runtime. 
*/





/*
Define a predicate, listOfTerms(ListOfArgs,Name, ListOfResults),  where each term in the ListOfResults is a term with one argument from the ListOfArgs and the functor name is the Name. 
*/
listOfTerms([],_Name,[]).
listOfTerms([A|Lst],Name,[B|Results]) :- B=.. [Name|A], listOfTerms(Lst, Name, Results).
listOfTerms([A|Lst],Name,[B|Results]) :- A=.. [B], listOfTerms(Lst,Name,Results).





/*
 Define insert( ?Elem, ?Lst, ?LstWithElem) using only the builtin predicate select.  insert succeeds if the only difference between  Lst and LstWithElem is LstWithElem includes Elem.  i.e.
*/
% http://www.swi-prolog.org/pldoc/man?predicate=length/2
insert(Elem,[],[A|LstElem]) :- Elem = A,length([A|LstElem],1).
insert(Elem,[A|Lst],LstElem) :- select(A,LstElem,R),insert(Elem,Lst,R).




/*
[10pts]  A student submitted the following solution for HW 3 exercise 1:

convertToDecimal(A,0). 
convertToDecimal(succ(S), Y) :- numeral(S), Y1 is Y-1, convertToDecimal(S, Y1). 

[8pts] Explain why the following query gives the result it does:
?- convertToDecimal(succ(succ(0)),N). 
[2pts] How would you fix it?

*/
%The Value given is zero because the variable Y never gets changed.Each iteration changes a local variable that get deleted each time predicate is finished. 

% I would fix it by changing it to only give the final answer not step by step and fix it so that Y gets changed. 
convertToDecimal(0,0). 
convertToDecimal(succ(S), Y) :-convertToDecimal(S, A),Y is A+1. 

/*
(10pts) (From Learn Prolog NOW! exercise 3.3)  Binary trees are trees where all internal nodes have exactly two children. The smallest binary trees consist of only one leaf node. We will represent leaf nodes as leaf(Label). For instance, leaf(3) and leaf(7) are leaf nodes, and therefore small binary trees. Given two binary trees B1 and B2 we can combine them into one binary tree using the predicate tree: tree(B1,B2). So, from the leaves leaf(1) and leaf(2) we can build the binary tree tree(leaf(1), leaf(2)). And from the binary trees tree(leaf(1), leaf(2)) and leaf(4) we can build the  * binary tree, tree(tree(leaf(1), leaf(2)), leaf(4)).
Now, define a predicate swap/2, which produces a mirror image of the binary tree that is its first argument. For example:
    ?- swap(tree(tree(leaf(1), leaf(2)), leaf(4)),T).
   T = tree(leaf(4), tree(leaf(2), leaf(1))).
    true

2 clauses

*/
% http://www.linuxquestions.org/questions/programming-9/anyone-know-prolog-need-halp-816336/
swap(leaf(L),R) :- R = leaf(L).
swap(tree(L,R),T) :- swap(L,Ls), swap(R,Rs), T = tree(Rs,Ls).



/*
(10pts) Given a tree, define a predicate equivT(Tree,ETree), that success if Tree and ETree have the same structure and all the corresponding leaves have equivalent values. Use the tree definition from above problem (#9). 
 (2 clauses)
*/
equivT(leaf(X),T).
equivT(tree(L,R),tree(L1,R1)) :- A = equivT(tree(L,Ls),tree(R,Rs)),B = equivT(tree(L,L1s),tree(R1,R1s)), A = B.

/* 
 10pts)Explain the result of the follow query:
..?-  A=B, not(not(A=apple)), B=what.

 A unifies with B. B then unifies with B. The the inside not shows that A cant be proven to be unifed with apple. Then the second not changes the false to a true. 


*/

