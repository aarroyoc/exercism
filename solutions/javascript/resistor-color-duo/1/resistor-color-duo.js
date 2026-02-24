//
// This is only a SKELETON file for the 'Resistor Color Duo' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

const COLORS = [
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white"
];

export const decodedValue = (colors) => {
  const [fst, snd] = colors;
  return getColorCode(fst) * 10 + getColorCode(snd);
};

function getColorCode(color) {
  return COLORS.indexOf(color);
}
