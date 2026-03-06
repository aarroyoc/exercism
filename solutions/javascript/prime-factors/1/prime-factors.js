//
// This is only a SKELETON file for the 'Prime Factors' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const primeFactors = (n) => {
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
};
