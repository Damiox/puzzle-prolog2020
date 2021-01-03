%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Puzzler 2020 - Damian Nardelli
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% NOTE: words.pro has been generated in python by reading /usr/share/dict/words
% Reason to do this is because.... I'm not sure how to read a file in Prolog :D
:- consult('words.pro').
:- consult('graph.pro').
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% X and Y are connected if either X->Y or Y->X
connected(X, Y) :- edge(X, Y), !.
connected(X, Y) :- edge(Y, X), !.
%
% there's a path for the given list if all consecutive elements are connected
path([C1,C2]) :- connected(C1, C2), !.
path([C1,C2|T]) :- connected(C1, C2), path([C2|T]).
%
% a solution is defined as each word (set of chars) which need to have a path
solution() :- words(W), atom(W), atom_chars(W, Cs), path(Cs), print(W), nl.
% the following goal is just to print out all solutions
% see https://stackoverflow.com/questions/54245313/how-to-see-all-of-the-answers-in-swi-prolog-without-pressing-spacebar)
solutions() :- bagof(_, solution, _).
