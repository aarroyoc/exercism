const WINK = 1;
const DOUBLE_BLINK = 2;
const CLOSE_EYES = 4;
const JUMP = 8;
const REVERSE = 16;

export function commands(n: number): string[] {
  const output = [];
  if(WINK & n) {
    output.push("wink");
  }
  if(DOUBLE_BLINK & n) {
    output.push("double blink");
  }
  if(CLOSE_EYES & n) {
    output.push("close your eyes");
  }
  if(JUMP & n) {
    output.push("jump");
  }
  if(REVERSE & n) {
    return output.reverse();
  } else {
    return output;
  }
}
