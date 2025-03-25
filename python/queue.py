class MyQueue:
    def __init__(self):
        self.queue = []

    def enqueue(self, item):
        self.queue.append(item)

    def dequeue(self):
        return self.queue.pop(0) if self.queue else None

    def peek(self):
        return self.queue[0] if self.queue else None

    def is_empty(self):
        return len(self.queue) == 0

    def print_queue(self):
        print(self.queue)


def run_queue_demo():
    print("\n🚶‍♂️ Queue Demo")
    queue = MyQueue()
    queue.enqueue(1)
    queue.enqueue(2)
    queue.enqueue(3)
    queue.print_queue()
    print("Dequeued:", queue.dequeue())
    print("Peek:", queue.peek())
    queue.print_queue()
