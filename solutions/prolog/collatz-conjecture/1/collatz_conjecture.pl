collatz_steps(1, 0).
collatz_steps(N, Steps) :-
  N > 1,
  0 is N mod 2,
  NewN is N div 2,
  collatz_steps(NewN, S0),
  Steps is S0 + 1.
collatz_steps(N, Steps) :-
  N > 1,
  1 is N mod 2,
  NewN is N * 3 + 1,
  collatz_steps(NewN, S0),
  Steps is S0 + 1.
