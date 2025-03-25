class MyStack:
    def __init__(self):
        self.stack = []

    def push(self, x):
        self.stack.append(x)

    def pop(self):
        return self.stack.pop() if self.stack else None

    def peek(self):
        return self.stack[-1] if self.stack else None

    def print_stack(self):
        print(self.stack)


def run_stack_demo():
    print("\n🔁 Stack Demo")
    stack = MyStack()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.print_stack()
    print("Popped:", stack.pop())
    print("Peek:", stack.peek())
    stack.print_stack()
