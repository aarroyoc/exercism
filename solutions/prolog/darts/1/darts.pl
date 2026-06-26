score(X, Y, Score) :-
  D is X*X + Y*Y,
  ( D > 100 ->
    Score = 0
  ; D > 25 ->
    Score = 1
  ; D > 1 ->
    Score = 5
  ; Score = 10).
