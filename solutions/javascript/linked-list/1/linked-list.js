export class LinkedList {

  #firstNode = null;
  #lastNode = null;
  
  push(v) {
    if (this.#lastNode === null) {
      const n = new Node(null, v);
      this.#firstNode = n;
      this.#lastNode = n;
    } else {
      const n = new Node(this.#lastNode, v);
      this.#lastNode.next = n;
      this.#lastNode = n;
    }
  }

  pop() {
    if(this.#lastNode !== null) {
      const value = this.#lastNode.value;
      this.#lastNode = this.#lastNode.previous;
      if (this.#lastNode === null) {
        this.#firstNode = null;
      } else {
        this.#lastNode.next = null;
      }
      return value;
    }
  }

  shift() {
    if(this.#firstNode !== null) {
      const value = this.#firstNode.value;
      this.#firstNode = this.#firstNode.next;
      if(this.#firstNode === null) {
        this.#lastNode = null;
      } else {
        this.#firstNode.previous = null;
      }
      return value;
    }
  }

  unshift(v) {
    if(this.#firstNode === null) {
      const n = new Node(null, v);
      this.#firstNode = n;
      this.#lastNode = n;
    } else {
      const n = new Node(null, v);
      n.next = this.#firstNode;
      this.#firstNode = n;
    }
  }

  delete(v) {
    let n = this.#firstNode;
    while(n !== null) {
      if (n.value === v) {
        const previous = n.previous;
        const next = n.next;
        if (previous === null && next === null) {
          this.#firstNode = null;
          this.#lastNode = null;
          return;
        }
        
        if (previous === null) {
          this.#firstNode = next;
          this.#firstNode.previous = null;
        } else {
          previous.next = next;
        }

        if (next === null) {
          this.#lastNode = previous;
          this.#lastNode.next = null
        } else {
          next.previous = previous;
        }
        
        return;
      } else {
        n = n.next;
      }
    }
  }

  count() {
    let c = 0;
    let n = this.#firstNode;
    while(n !== null) {
      c++;
      n = n.next;
    }
    return c;
  }
}

class Node {
  constructor(previous, value) {
    this.previous = previous;
    this.value = value;
    this.next = null;
  }
}
