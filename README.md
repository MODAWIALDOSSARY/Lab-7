# Lab 7 – Lists

**Course:** ARTI 303 – Programming for AI  
**Tool:** SWI-Prolog

## Tasks

1. **Shopping Program** (`task1_shopping_program.pl`)
   - Starts with a basket of five items.
   - Displays the items recursively.
   - Provides a menu to display items, add an item, or exit.

2. **Delete Every Occurrence** (`task2_delete_every_occurrence.pl`)
   - Defines `deleteElement(X, List, Result)`.
   - Removes every occurrence of `X` from the list.

3. **Add at the End** (`task3_add_at_the_end.pl`)
   - Defines `add_at_the_end(X, List, Result)`.
   - Adds an item to the end of a list using recursion.

## Running the files

Load a file in SWI-Prolog, for example:

```prolog
?- [task2_delete_every_occurrence].
?- deleteElement(1, [1,2,1,3,1], Result).
```

Other example queries:

```prolog
?- add_at_the_end(4, [1,2,3], Result).
?- shopping.
```
