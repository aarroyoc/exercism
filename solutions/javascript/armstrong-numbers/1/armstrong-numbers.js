export const isArmstrongNumber = (n) => {
  const bigN = BigInt(n);
  const ds = digits(bigN);
  let armstrong = 0n;
  for(const x of ds) {
    armstrong += x ** BigInt(ds.length);
  }
  return armstrong === bigN;
};

function digits(n) {
  const ds = [];
  while(n > 9) {
    ds.push(n % 10n);
    n = n / 10n;
  }
  ds.push(n);
  return ds;
}