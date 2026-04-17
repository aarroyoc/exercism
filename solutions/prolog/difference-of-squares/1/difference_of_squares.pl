range(0, []).
range(N, [N|Xs]) :-
  N > 0,
  N0 is N - 1,
  range(N0, Xs).

square_of_sum(N, Result) :-
  range(N, Ns),
  sum_list(Ns, Sum),
  Result is Sum * Sum.

sum_of_squares(N, Result) :-
  range(N, Ns),
  maplist(square, Ns, Squares),
  sum_list(Squares, Result).

square(N, X) :- X is N * N. 

difference(N, Result) :-
  square_of_sum(N, X1),
  sum_of_squares(N, X2),
  Result is X1 - X2.
