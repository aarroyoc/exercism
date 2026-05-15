export class GameOfLife {
  #matrix;
  #size;
  
  constructor(initialMatrix) {
    this.#matrix = initialMatrix;
    this.#size = initialMatrix.length;
  }

  get(x, y) {
    if(this.#matrix[y] !== undefined) {
      return this.#matrix[y][x];
    } else {
      return undefined;
    }
  }

  tick() {
    const updatedMatrix = [];
    for(let y = 0; y<this.#size; y++) {
      updatedMatrix.push([]);
      for(let x = 0; x<this.#size; x++) {
        const neighbors = [
          this.get(x-1, y-1),
          this.get(x, y-1),
          this.get(x+1, y-1),
          this.get(x-1, y),
          this.get(x+1, y),
          this.get(x-1, y+1),
          this.get(x, y+1),
          this.get(x+1, y+1),
        ].filter(c => c !== undefined);
        const alive = neighbors.reduce((a, b) => a + b);
        
        if(this.get(x, y) === 1) {
          if(alive === 2 || alive === 3) {
            updatedMatrix[y].push(1);
          } else {
            updatedMatrix[y].push(0);
          }
        } else {
          if (alive === 3) {
            updatedMatrix[y].push(1);
          } else {
            updatedMatrix[y].push(0);
          }
        }
        
      }
    }
    this.#matrix = updatedMatrix;
  }

  state() {
    return this.#matrix;
  }
}
