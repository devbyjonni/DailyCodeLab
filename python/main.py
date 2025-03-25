import functional
from stack import MyStack


def run_stack_demo():
    print("🔁 Stack Demo")
    stack = MyStack()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.print_stack()
    print("Popped:", stack.pop())
    print("Peek:", stack.peek())
    stack.print_stack()


if __name__ == "__main__":
    run_stack_demo()
    print("\n🧪 Functional Demo")
    functional.runFunctionalDemo()
