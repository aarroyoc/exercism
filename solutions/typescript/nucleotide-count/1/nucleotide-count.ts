type CountResult = {
  A: number,
  C: number,
  G: number,
  T: number,
}

export function nucleotideCounts(strand: string): CountResult {
  const regex = /^[GATC]*$/g;
  if (strand.match(regex) === null) {
    throw new Error("Invalid nucleotide in strand");
  }
  const nucleotides = new Map<string, number>();
  for(const n of strand) {
    const previous = nucleotides.get(n);
    if(previous !== undefined) {
      nucleotides.set(n, previous + 1);
    } else {
      nucleotides.set(n, 1);
    }
  }
  return {
    A: nucleotides.get("A") ?? 0,
    C: nucleotides.get("C") ?? 0,
    G: nucleotides.get("G") ?? 0,
    T: nucleotides.get("T") ?? 0,
  };
}