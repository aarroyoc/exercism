export function score(x: number, y: number): number {
  const dist = Math.sqrt(x * x + y * y);
  if (dist > 10) {
    return 0;
  } else if (dist > 5) {
    return 1;
  } else if (dist > 1) {
    return 5;
  } else {
    return 10;
  }
}
