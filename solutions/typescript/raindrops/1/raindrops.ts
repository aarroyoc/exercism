export function convert(n: number): string {
  let text = "";
  if (n % 3 === 0) {
    text += "Pling";
  }
  if (n % 5 === 0) {
    text += "Plang";
  }
  if (n % 7 === 0) {
    text += "Plong";
  }
  if (text.length === 0) {
    text += n;
  }
  return text;
}
