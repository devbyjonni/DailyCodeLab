import Foundation

struct Queue<T> {
    private var elements: [T] = []

    mutating func enqueue(_ item: T) {
        elements.append(item)
    }

    mutating func dequeue() -> T? {
        return elements.isEmpty ? nil : elements.removeFirst()
    }

    func peek() -> T? {
        return elements.first
    }

    func isEmpty() -> Bool {
        return elements.isEmpty
    }

    func printQueue() {
        print(elements)
    }
}

func runQueueDemo() {
    print("\n🚶‍♂️ Queue Demo")
    var queue = Queue<Int>()
    queue.enqueue(1)
    queue.enqueue(2)
    queue.enqueue(3)
    queue.printQueue()
    print("Dequeued:", queue.dequeue() ?? -1)
    print("Peek:", queue.peek() ?? -1)
    queue.printQueue()
}
