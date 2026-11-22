export const reverseString = (str) => {
  let rev = "";
  for(let i = str.length - 1;i >= 0;i--) {
    rev += str.charAt(i);
  }
  return rev;
};
