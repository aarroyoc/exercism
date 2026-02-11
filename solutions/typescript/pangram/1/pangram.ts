const alphabet = "abcdefghijklmnopqrstuvwxyz";

export const isPangram = (str: string): boolean => {       
  const lowerStr = str.toLowerCase();         
  for(const x of alphabet) {     
    if (!lowerStr.includes(x)) {    
      return false;
    }        
  }        
  return true;         
};