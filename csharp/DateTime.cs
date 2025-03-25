using System;
using System.Globalization;

public static class DateTimeDemo
{
    public static void RunDateTimeDemo()
    {
        Console.WriteLine("\n🕒 Date & Time Demo");

        // Current datetime
        DateTime now = DateTime.Now;
        Console.WriteLine("Now (raw): " + now);

        // Default format
        Console.WriteLine("Formatted (default): " + now.ToString("F"));

        // Swedish locale 🇸🇪
        var swedish = new CultureInfo("sv-SE");
        Console.WriteLine("Formatted (sv-SE): " + now.ToString("f", swedish));

        // US format 🇺🇸
        var us = new CultureInfo("en-US");
        Console.WriteLine("Formatted (en-US custom): " + now.ToString("dddd, MMM d, yyyy h:mm tt", us));

        // Add/subtract days
        Console.WriteLine("In 3 days: " + now.AddDays(3).ToString("F"));
        Console.WriteLine("Yesterday: " + now.AddDays(-1).ToString("F"));

        // Parse from custom string
        string input = "2025-12-24 15:30";
        if (DateTime.TryParseExact(input, "yyyy-MM-dd HH:mm", CultureInfo.InvariantCulture, DateTimeStyles.None, out DateTime parsed))
        {
            Console.WriteLine("Parsed custom string: " + parsed.ToString("F"));
        }

        // Weekday name
        Console.WriteLine("Today is: " + now.ToString("dddd"));

        // Start of day
        DateTime startOfToday = now.Date;
        Console.WriteLine("Start of today: " + startOfToday.ToString("F"));

        // ISO 8601
        Console.WriteLine("ISO8601: " + now.ToString("o"));

        // From timestamp
        DateTime fromUnix = DateTimeOffset.FromUnixTimeSeconds(1711800000).DateTime;
        Console.WriteLine("From Unix timestamp: " + fromUnix.ToString("F"));

        // From components
        DateTime fromComponents = new DateTime(2025, 12, 24, 15, 30, 0);
        Console.WriteLine("From components: " + fromComponents.ToString("F"));
    }
}
