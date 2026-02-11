//
// This is only a SKELETON file for the 'Collatz Conjecture' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const steps = (initialNumber) => {
  if (initialNumber < 1) {
    throw new Error("Only positive integers are allowed");
  }
  let n = initialNumber;
  let steps = 0;
  while (n != 1) {
    if (n % 2 == 0) {
      n /= 2;
    } else {
      n = (n * 3) + 1;
    }
    steps++;
  }
  return steps;
};
