const COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"];

export function decodedValue(colors: string[]): number {
  const n1 = COLORS.indexOf(colors[0]);
  const n2 = COLORS.indexOf(colors[1]);
  return n1 * 10 + n2;
}
