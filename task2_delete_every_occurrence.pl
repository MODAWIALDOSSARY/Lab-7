% ARTI 303 - Lab 7, Task 2
% Remove every occurrence of X from a list.
% Predicate: deleteElement(X, List, Result).

% Base case: deleting from an empty list gives an empty list.
deleteElement(_, [], []).

% If the head is the element to delete, skip it.
deleteElement(X, [Head|Tail], Result) :-
    X == Head,
    deleteElement(X, Tail, Result).

% Otherwise, keep the head and continue with the tail.
deleteElement(X, [Head|Tail], [Head|ResultTail]) :-
    X \== Head,
    deleteElement(X, Tail, ResultTail).

% Example queries:
% ?- deleteElement(1, [1,2,1,3,1], Result).
% Result = [2,3].
%
% ?- deleteElement(3, [1,2,3,4], Result).
% Result = [1,2,4].
