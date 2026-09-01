export const toRoman = (n) => {
  let roman = "";
  
  function romanChar(q, letters) {
    while(n >= q) {
      n -= q;
      roman += letters;
    }
  }
  
  romanChar(1000, "M");
  romanChar(900, "CM");
  romanChar(500, "D");
  romanChar(400, "CD");
  romanChar(100, "C");
  romanChar(90, "XC");
  romanChar(50, "L");
  romanChar(40, "XL");
  romanChar(10, "X");
  romanChar(9, "IX");
  romanChar(5, "V");
  romanChar(4, "IV");
  romanChar(1, "I");
  
  return roman;
};


