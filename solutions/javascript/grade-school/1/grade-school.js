export class GradeSchool {
  #db = {};
  
  roster() {
    return Object.keys(this.#db)
      .sort((a, b) => {
        if (this.#db[a] > this.#db[b]) {
          return 1;
        } else if (this.#db[a] < this.#db[b]) {
          return -1;
        } else {
          if(a > b) {
            return 1;
          } else {
            return -1;
          }
        }
      });
  }

  add(name, grade) {
    if(this.#db[name] === undefined) {
      this.#db[name] = grade;
      return true;
    } else {
      return false;
    }
  }

  grade(n) {
    return Object.keys(this.#db)
      .filter(name => this.#db[name] === n)
      .sort();
  }
}
