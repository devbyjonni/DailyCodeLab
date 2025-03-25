using System;

public class TreeNode
{
    public int Value;
    public TreeNode? Left;
    public TreeNode? Right;

    public TreeNode(int value)
    {
        Value = value;
        Left = null;
        Right = null;
    }
}


public static class TreeDemo
{
    public static TreeNode Insert(TreeNode? root, int value)
    {
        if (root == null)
            return new TreeNode(value);
        if (value < root.Value)
            root.Left = Insert(root.Left, value);
        else
            root.Right = Insert(root.Right, value);
        return root;
    }

    public static void InOrderTraversal(TreeNode? node)
    {
        if (node == null) return;
        InOrderTraversal(node.Left);
        Console.Write(node.Value + " ");
        InOrderTraversal(node.Right);
    }

    public static bool Find(TreeNode? root, int value)
    {
        if (root == null) return false;
        if (value == root.Value) return true;
        else if (value < root.Value) return Find(root.Left, value);
        else return Find(root.Right, value);
    }


    public static void RunTreeDemo()
    {
        Console.WriteLine("\n🌳 Tree Demo");
        int[] values = { 5, 3, 7, 2, 4, 6, 8 };
        TreeNode? root = null;
        foreach (var v in values)
            root = Insert(root, v);

        Console.Write("In-order Traversal: ");
        InOrderTraversal(root);
        Console.WriteLine();

        int search = 6;
        Console.WriteLine($"Contains {search}? {Find(root, search)}");

        search = 10;
        Console.WriteLine($"Contains {search}? {Find(root, search)}");

    }
}
