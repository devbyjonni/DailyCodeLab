using System;

public static class SearchSort
{
    public static bool LinearSearch(int[] array, int target)
    {
        foreach (int item in array)
        {
            if (item == target) return true;
        }
        return false;
    }

    public static void BubbleSort(int[] array)
    {
        int n = array.Length;
        for (int i = 0; i < n; i++)
        {
            for (int j = 0; j < n - i - 1; j++)
            {
                if (array[j] > array[j + 1])
                {
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
    }

    public static void RunSearchSortDemo()
    {
        Console.WriteLine("\n🔍 Linear Search Demo");
        int[] values = { 3, 8, 1, 4, 9 };
        Console.WriteLine("Values: " + string.Join(", ", values));
        Console.WriteLine("Searching for 4: " + LinearSearch(values, 4));
        Console.WriteLine("Searching for 10: " + LinearSearch(values, 10));

        Console.WriteLine("\n🌀 Bubble Sort Demo");
        int[] unsorted = { 5, 2, 9, 1, 7 };
        Console.WriteLine("Before sort: " + string.Join(", ", unsorted));
        BubbleSort(unsorted);
        Console.WriteLine("After sort:  " + string.Join(", ", unsorted));
    }
}
