// stack.js

export { runStackDemo };
    
class Stack {
  constructor() {
    this.items = [];
  }

  push(item) {
    this.items.push(item);
  }

  pop() {
    if (this.isEmpty()) {
      return 'Stack is empty!';
    }
    return this.items.pop();
  }

  peek() {
    if (this.isEmpty()) {
      return 'Stack is empty!';
    }
    return this.items[this.items.length - 1];
  }

  isEmpty() {
    return this.items.length === 0;
  }

  size() {
    return this.items.length;
  }

  print() {
    console.log(this.items.join(' -> '));
  }
}

// --- Run demo ---
function runStackDemo() {
  const stack = new Stack();

  stack.push('🍎');
  stack.push('🍌');
  stack.push('🍇');

  stack.print();                 // 🍎 -> 🍌 -> 🍇
  console.log(stack.pop());      // 🍇
  console.log(stack.peek());     // 🍌
  console.log(stack.size());     // 2
  console.log(stack.isEmpty());  // false
}

runStackDemo();