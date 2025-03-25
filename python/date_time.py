import locale
from datetime import datetime, timedelta

from babel.dates import format_datetime


def run_date_time_demo():
    print("\n🕒 Date & Time Demo")

    now = datetime.now()
    print("Now (raw):", now)

    # Default format (long date + short time in current locale)
    default_formatted = now.strftime("%A, %B %d, %Y %H:%M")
    print("Formatted (default):", default_formatted)

    # Swedish locale 🇸🇪
    swedish = format_datetime(now, locale="sv_SE")
    print("Formatted (sv-SE):", swedish)

    # US format 🇺🇸 (12-hour clock)
    us_custom = now.strftime("%A, %b %d, %Y %I:%M %p")
    print("Formatted (en-US custom):", us_custom)

    # Add/subtract days
    print("In 3 days:", (now + timedelta(days=3)).strftime("%A, %B %d, %Y %H:%M"))
    print("Yesterday:", (now - timedelta(days=1)).strftime("%A, %B %d, %Y %H:%M"))

    # Custom input string
    input_string = "2025-12-24 15:00"
    parsed_date = datetime.strptime(input_string, "%Y-%m-%d %H:%M")
    print("Parsed custom string →", parsed_date.strftime("%A, %B %d, %Y %H:%M"))

    # Weekday name
    print("Today is:", now.strftime("%A"))

    # Start of today
    start_of_today = now.replace(hour=0, minute=0, second=0, microsecond=0)
    print("Start of today:", start_of_today.strftime("%A, %B %d, %Y %H:%M"))

    # ISO8601 string
    print("ISO8601:", now.isoformat())

    # Date from components
    from_components = datetime(2025, 12, 24, 15, 30)
    print("From components:", from_components.strftime("%c"))

    # From timestamp
    from_timestamp = datetime.fromtimestamp(1711800000)
    print("From timestamp:", from_timestamp.strftime("%c"))

    # From ISO8601 string
    iso_str = "2025-03-26T14:30:00Z"
    from_iso = datetime.strptime(iso_str, "%Y-%m-%dT%H:%M:%SZ")
    print("From ISO8601 string:", from_iso.strftime("%c"))

    # Relative dates
    tomorrow = now + timedelta(days=1)
    one_hour_ago = now - timedelta(hours=1)
    print("Tomorrow:", tomorrow.strftime("%A, %B %d, %Y %H:%M"))
    print("One hour ago:", one_hour_ago.strftime("%A, %B %d, %Y %H:%M"))
