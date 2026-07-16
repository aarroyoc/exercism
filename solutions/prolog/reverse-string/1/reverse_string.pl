string_reverse(S, Reversed) :-
  string_chars(S, Cs),
  reverse(Cs, ReCs),
  string_chars(Reversed, ReCs).
