using System;
using System.Collections.Generic;
using System.Linq;

public static class Functional
{
    public static void runFunctionalDemo()
    {
        Console.WriteLine("\n🧪 Functional Demo");
        var nums = new List<int> { 1, 2, 3, 4, 5 };
        var mapped = nums.Select(x => x * 2).ToList();
        var filtered = nums.Where(x => x % 2 == 0).ToList();
        var reduced = nums.Aggregate((acc, x) => acc + x);

        Console.WriteLine("Map: " + string.Join(", ", mapped));
        Console.WriteLine("Filter: " + string.Join(", ", filtered));
        Console.WriteLine("Reduce: " + reduced);
    }
}
