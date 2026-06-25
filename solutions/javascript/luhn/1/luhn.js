export const valid = (code) => {
  const noSpacesCode = code.replaceAll(" ", "");
  if (noSpacesCode.length <= 1) {
    return false;
  }
  const numbers = [];
  for (let c of noSpacesCode) {
    const n = parseInt(c);
    if (typeof n === "number") {
      numbers.push(n);
    }
  }
  
  const startIndex = numbers.length % 2;
  for(let i = startIndex; i < numbers.length; i += 2) {
    let x = numbers[i] * 2;
    if (x > 9) {
      x -= 9;
    }
    numbers[i] = x;
  }
  
  const sum = numbers.reduce((a, b) => a + b);
  return sum % 10 === 0;
};
