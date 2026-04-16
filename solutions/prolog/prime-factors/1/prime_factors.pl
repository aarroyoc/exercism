factors(N, Fs) :- factors(N, 2, Fs).

factors(1, _, []).
factors(N, F, [F|Fs]) :-
  0 is N mod F,
  NewN is N div F,
  factors(NewN, F, Fs).
factors(N, F, Fs) :-
  \+ 0 is N mod F,
  NewF is F + 1,
  factors(N, NewF, Fs).
  
  
