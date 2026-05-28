export const toRna = (strand) => {
  return Array.from(strand)
              .map(complement)
              .join("");
};

const complement = (x) => {
  switch(x) {
    case 'G': return 'C';
    case 'C': return 'G';
    case 'T': return 'A';
    case 'A': return 'U';
    default:
      throw new Error("invalid strannd component")
  }
} 