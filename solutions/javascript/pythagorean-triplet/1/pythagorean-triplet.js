export function triplets({ minFactor, maxFactor, sum }) {
  const tpl = [];
  for(let a = 1; a<sum; a++) {
    for(let b = a+1; a+b<sum; b++) {
      let c = sum - b - a;
      if (a**2 + b**2 === c**2) {
        if (minFactor) {
          if (minFactor >= a || minFactor >= b || minFactor >= c) {
            continue;
          }
        }
        if (maxFactor) {
          if (maxFactor <= a || maxFactor <= b || maxFactor <= c) {
            continue;
          }
        }
        tpl.push(new Triplet(a, b, c));
      }
    }
  }
  return tpl;
}

class Triplet {
  constructor(a, b, c) {
    this.a = a;
    this.b = b;
    this.c = c;
  }

  toArray() {
    return [this.a, this.b, this.c];
  }
}
