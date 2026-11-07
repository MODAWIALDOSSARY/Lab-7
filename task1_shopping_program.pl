% ARTI 303 - Lab 7, Task 1
% Shopping program using a list.
% Run: ?- shopping.

shopping :-
    InitialBasket = [milk, bread, eggs, rice, apples],
    shopping_menu(InitialBasket).

shopping_menu(Basket) :-
    nl,
    write('===== SHOPPING MENU ====='), nl,
    write('d - Display all items'), nl,
    write('a - Add an item'), nl,
    write('e - Exit'), nl,
    write('Choose an option (d/a/e): '),
    read(Choice),
    shopping_action(Choice, Basket).

shopping_action(d, Basket) :-
    nl,
    write('Shopping basket:'), nl,
    display_items(Basket),
    shopping_menu(Basket).

shopping_action(a, Basket) :-
    write('Enter the item to add (finish with a period): '),
    read(Item),
    append(Basket, [Item], UpdatedBasket),
    write('Item added.'), nl,
    shopping_menu(UpdatedBasket).

shopping_action(e, _) :-
    write('Goodbye!'), nl.

shopping_action(_, Basket) :-
    write('Invalid option. Please try again.'), nl,
    shopping_menu(Basket).

% Display the list recursively, stopping at the empty list.
display_items([]).
display_items([Head|Tail]) :-
    write('- '), write(Head), nl,
    display_items(Tail).
