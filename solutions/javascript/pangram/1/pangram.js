//
// This is only a SKELETON file for the 'Pangram' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

const alphabet = "abcdefghijklmnopqrstuvwxyz";

export const isPangram = (str) => {
  const lowerStr = str.toLowerCase();
  for(const x of alphabet) {
    if (!lowerStr.includes(x)) {
      return false;
    }
  }
  return true;
};
