export class Robot {
  static USED_NAMES = new Set();
  #name;
  #nums = "0123456789";
  #chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  constructor() {
    this.reset();
  }

  reset() {
    this.#name = this.#generateName();
  }

  get name() {
    return this.#name;
  }

  #generateName() {
    while(true) {
      const a1 = randomChoose(this.#chars);
      const a2 = randomChoose(this.#chars);
      
      const n1 = randomChoose(this.#nums);
      const n2 = randomChoose(this.#nums);
      const n3 = randomChoose(this.#nums);
  
      const generatedName = a1 + a2 + n1 + n2 + n3;
      if (!Robot.USED_NAMES.has(generatedName)) {
        Robot.USED_NAMES.add(generatedName);
        return generatedName;
      }
    }
  }

  static releaseNames() {
    Robot.USED_NAMES.clear();
  }
}

function randomChoose(list) {
  const n = Math.floor(Math.random() * list.length);
  return list[n];
}