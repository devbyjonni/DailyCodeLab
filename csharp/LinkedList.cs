using System;

public class Node
{
    public int Value;
    public Node? Next;

    public Node(int value)
    {
        Value = value;
        Next = null;
    }
}

public class LinkedList
{
    private Node? head;

    public void Append(int value)
    {
        Node newNode = new Node(value);

        if (head == null)
        {
            head = newNode;
            return;
        }

        Node current = head;
        while (current.Next != null)
        {
            current = current.Next;
        }

        current.Next = newNode;
    }

    public void PrintList()
    {
        Node? current = head;
        while (current != null)
        {
            Console.Write($"{current.Value} → ");
            current = current.Next;
        }
        Console.WriteLine("null");
    }
}

public static class LinkedListDemo
{
    public static void RunLinkedListDemo()
    {
        Console.WriteLine("\n🔗 Linked List Demo");
        var list = new LinkedList();
        list.Append(1);
        list.Append(2);
        list.Append(3);
        list.PrintList();
    }
}
