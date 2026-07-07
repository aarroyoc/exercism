hamming_distance(Str1, Str2, Dist) :-
   string_chars(Str1, Chars1),
   string_chars(Str2, Chars2),
   maplist(difference, Chars1, Chars2, Diff),
   sum_list(Diff, Dist).

difference(X, X, 0) :- !.
difference(_, _, 1).
