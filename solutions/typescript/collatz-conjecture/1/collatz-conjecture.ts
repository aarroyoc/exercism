export function steps(count: number): number {
  if (count < 1 || !Number.isInteger(count)) {
    throw new Error("Only positive integers are allowed");
  }
  let st = 0;
  while (count > 1) {
    st++;
    if (count % 2 === 0) {
      count /= 2;
    } else {
      count *= 3;
      count++;
    }
  }
  return st;
}
