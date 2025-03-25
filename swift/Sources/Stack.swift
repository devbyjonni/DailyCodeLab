import Foundation

class MyStack {
    private var stack: [Int] = []

    func push(_ item: Int) {
        stack.append(item)
    }

    func pop() -> Int? {
        return stack.popLast()
    }

    func peek() -> Int? {
        return stack.last
    }

    func printStack() {
        print(stack)
    }
}

func runStackDemo() {
    print("🔁 Stack Demo")
    let stack = MyStack()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.printStack()
    print("Popped:", stack.pop() ?? -1)
    print("Peek:", stack.peek() ?? -1)
    stack.printStack()
}
