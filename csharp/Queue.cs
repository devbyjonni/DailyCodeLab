using System;
using System.Collections.Generic;

public class MyQueue<T>
{
    private List<T> list = new List<T>();

    public void Enqueue(T item) => list.Add(item);

    public T? Dequeue()
    {
        if (list.Count == 0) return default;
        var item = list[0];
        list.RemoveAt(0);
        return item;
    }

    public T? Peek() => list.Count > 0 ? list[0] : default;

    public void Print()
    {
        Console.WriteLine(string.Join(", ", list));
    }
}

public static class QueueDemo
{
    public static void RunQueueDemo()
    {
        Console.WriteLine("\n🚶‍♂️ Queue Demo");
        var queue = new MyQueue<int>();
        queue.Enqueue(1);
        queue.Enqueue(2);
        queue.Enqueue(3);
        queue.Print();
        Console.WriteLine("Dequeued: " + queue.Dequeue());
        Console.WriteLine("Peek: " + queue.Peek());
        queue.Print();
    }
}
