% The size of the list
size([],0).
size([_|T],S):- size(T,S1), S is S1 + 1.

% The head of the list
head_of([H|_], H).

% The tail of the list
tail_of([_|T],T).

% Check if the value is here or not
is_here([X|_],X).
is_here([_|T],X):- is_here(T,X).

% Min value in the list
mn([Min], Min).
mn([H1,H2|T], Min):- H1 > H2, mn([H2|T], Min).
mn([H1,H2|T], Min):- H1 < H2, mn([H1| T], Min).

% Max value in the list
mx([Max], Max).
mx([H1,H2|T],Max):- H1 > H2, mx([H1|T],Max).
mx([H1,H2|T],Max):- H1 < H2, mx([H2|T], Max).

% Last element on the list
last_element([H], X):- X = H.
last_element([_|T], X):- last_element(T, X).

% Summation of the list
sum([X], X).
sum([H|T], S):- sum(T, S1), S is S1 + H.

% Reverse a list
reverse_list(X, Y):- reverse_list(X, [], Y).
reverse_list([A|X], B, Y):- reverse_list(X, [A|B], Y).
reverse_list([], Y, Y).

% Print list
print_list([]).
print_list([A|B]):- write(A), write(' '), print_list(B).

% Merge two lists
merge_list([], A, A).
merge_list([H|T], A, B):- merge_list(T, A, C), B = [H|C].
