export function calculatePrimeFactors(n: number): number[] {
  const factors = [];
  let num = n;
  let factor = 2;
  while(num > 1) {
    if (num % factor == 0) {
      num = Math.floor(num / factor);
      factors.push(factor);
    } else {
      factor++;
    }
  }
  return factors;
}
