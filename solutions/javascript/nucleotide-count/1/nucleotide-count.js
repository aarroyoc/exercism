export function countNucleotides(strand) {
  const regex = /^[GATC]*$/g;
  if (strand.match(regex) === null) {
    throw new Error("Invalid nucleotide in strand");
  }
  const nucleotides = {A: 0, C: 0, G: 0, T: 0};
  for(const n of strand) {
    nucleotides[n]++;
  }
  return `${nucleotides.A} ${nucleotides.C} ${nucleotides.G} ${nucleotides.T}`;
}
