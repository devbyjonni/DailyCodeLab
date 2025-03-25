import Foundation

func runDateTimeDemo() {
    print("\n🕒 Date & Time Demo")

    let now = Date()
    print("Now (raw): \(now)")

    // Default date formatter (English, full date + short time)
    let defaultFormatter = DateFormatter()
    defaultFormatter.dateStyle = .full
    defaultFormatter.timeStyle = .short
    print("Formatted (default): \(defaultFormatter.string(from: now))")

    // Swedish locale 🇸🇪
    let swedishFormatter = DateFormatter()
    swedishFormatter.locale = Locale(identifier: "sv-SE")
    swedishFormatter.dateStyle = .full
    swedishFormatter.timeStyle = .short
    print("Formatted (sv-SE): \(swedishFormatter.string(from: now))")

    // US format 🇺🇸 (with 12-hour clock)
    let usFormatter = DateFormatter()
    usFormatter.locale = Locale(identifier: "en-US")
    usFormatter.dateFormat = "EEEE, MMM d, yyyy h:mm a"
    print("Formatted (en-US custom): \(usFormatter.string(from: now))")

    // Add/subtract days
    if let threeDaysLater = Calendar.current.date(byAdding: .day, value: 3, to: now) {
        print("In 3 days: \(defaultFormatter.string(from: threeDaysLater))")
    }

    if let yesterday = Calendar.current.date(byAdding: .day, value: -1, to: now) {
        print("Yesterday: \(defaultFormatter.string(from: yesterday))")
    }

    // Custom input (string → date → formatted string)
    let inputString = "2025-12-24 15:00"
    let inputFormatter = DateFormatter()
    inputFormatter.dateFormat = "yyyy-MM-dd HH:mm"

    if let parsedDate = inputFormatter.date(from: inputString) {
        print("Parsed custom string → \(defaultFormatter.string(from: parsedDate))")
    }

    // Weekday name (like "Tuesday")
    let weekdayFormatter = DateFormatter()
    weekdayFormatter.dateFormat = "EEEE"
    print("Today is: \(weekdayFormatter.string(from: now))")

    // Start of the day
    let startOfToday = Calendar.current.startOfDay(for: now)
    print("Start of today: \(defaultFormatter.string(from: startOfToday))")

    // ISO8601 string
    let isoFormatter = ISO8601DateFormatter()
    print("ISO8601: \(isoFormatter.string(from: now))")

    // Date from specific components
    let calendar = Calendar.current
    let _ = calendar.date(
        from: DateComponents(year: 2025, month: 12, day: 24, hour: 15, minute: 30))

    // Date from string (custom format)
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd HH:mm"
    let _ = formatter.date(from: "2025-12-24 15:30")

    // Date from Unix timestamp
    let timestamp: TimeInterval = 1_711_800_000  // seconds since Jan 1, 1970
    let _ = Date(timeIntervalSince1970: timestamp)

    // Date from ISO8601 string
    let iso8601DateFormatter = ISO8601DateFormatter()
    let _ = iso8601DateFormatter.date(from: "2025-03-26T14:30:00Z")

    // “Relative” dates
    // tomorrow
    let _ = Calendar.current.date(byAdding: .day, value: 1, to: Date())
    // oneHourAgo
    let _ = Calendar.current.date(byAdding: .hour, value: -1, to: Date())
}
