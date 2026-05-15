export const parse = (text) => {
  return text
    .replaceAll("-", " ")
    .replaceAll(/[^a-zA-Z ]/g, "")
    .split(" ")
    .map(x => x[0])
    .join("")
    .toUpperCase();
};
