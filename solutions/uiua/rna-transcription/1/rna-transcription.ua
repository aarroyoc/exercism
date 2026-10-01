# Convert a DNA strand to its RNA complement
# RNA ? DNA
Origin ← "GCTA"
Dest   ← "CGAU"
ToRna  ← ˜⊏ Dest ⊗Origin 
