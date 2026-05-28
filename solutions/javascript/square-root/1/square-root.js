export const squareRoot = (n) => {
  // heron's method
  // loop until integer precision is fixed

  // first estimation is N / 2
  let x = n / 2;
  let next = (x + n/x)/2;
  while (Math.floor(x) !== Math.floor(next)) {
    x = next;
    next = (x + n/x)/2;
  }
  return Math.floor(x);
};
