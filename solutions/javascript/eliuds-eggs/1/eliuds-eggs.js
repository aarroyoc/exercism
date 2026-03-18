//
// This is only a SKELETON file for the 'Eliud's Eggs' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const eggCount = (displayValue) => {
  let number = 0;

  while (displayValue > 1) {
    const digit = displayValue & 1;
    displayValue = displayValue >> 1;
    number += digit;
  }
  number += displayValue;
  return number;
};
