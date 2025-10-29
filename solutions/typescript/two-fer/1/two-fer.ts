export function twoFer(name?: string): string {
  if (typeof name !== "undefined") {
    return `One for ${name}, one for me.`;
  }
   return "One for you, one for me.";
}
