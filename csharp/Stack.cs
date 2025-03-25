using System;
using System.Collections.Generic;

public class MyStack<T>
{
    private List<T> list = new List<T>();

    public void Push(T item) => list.Add(item);
    public T Pop()
    {
        if (list.Count == 0) return default;
        var item = list[^1];
        list.RemoveAt(list.Count - 1);
        return item;
    }

    public T Peek() => list.Count > 0 ? list[^1] : default;
    public void Print() => Console.WriteLine(string.Join(", ", list));
}

public static class StackDemo
{
    public static void RunStackDemo()
    {
        Console.WriteLine("🔁 Stack Demo");
        var stack = new MyStack<int>();
        stack.Push(1);
        stack.Push(2);
        stack.Push(3);
        stack.Print();
        Console.WriteLine("Popped: " + stack.Pop());
        Console.WriteLine("Peek: " + stack.Peek());
        stack.Print();
    }
}
