rna_transcription(Dna, Rna) :-
  string_chars(Dna, DnaCs),
  maplist(rna_complement, DnaCs, RnaCs),
  string_chars(Rna, RnaCs).

rna_complement('G', 'C').
rna_complement('C', 'G').
rna_complement('T', 'A').
rna_complement('A', 'U').