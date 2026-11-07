% ARTI 303 - Lab 7, Task 3
% Add X to the end of a list.
% Predicate: add_at_the_end(X, List, Result).

% Empty list: the new list contains only X.
add_at_the_end(X, [], [X]).

% Keep the head and recursively add X to the end of the tail.
add_at_the_end(X, [Head|Tail], [Head|ResultTail]) :-
    add_at_the_end(X, Tail, ResultTail).

% Example queries:
% ?- add_at_the_end(4, [1,2,3], Result).
% Result = [1,2,3,4].
%
% ?- add_at_the_end(apple, [milk,bread], Result).
% Result = [milk,bread,apple].
