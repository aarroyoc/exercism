export const prime = (n) => {
  if(n === 0) {
    throw new Error("there is no zeroth prime");
  }
  let current = 1;
  let prime = 2;
  while(current < n) {
    prime++;
    if (isPrime(prime)) {
      current++;
    }
  }
  return prime;
};

function isPrime(n) {
  for(let i = 2; i<=Math.ceil(Math.sqrt(n)); i++) {
    if (n % i === 0) {
      return false;
    }
  }
  return true;
}