leap(X) :-
  0 is X mod 4,
  (
    N is X mod 100,
    N \= 0
  ; 0 is X mod 400
  ).
