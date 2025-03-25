func runFunctionalDemo() {
    print("\n🧪 Functional Demo")
    let nums = [1, 2, 3, 4, 5]
    let mapped = nums.map { $0 * 2 }
    let filtered = nums.filter { $0 % 2 == 0 }
    let reduced = nums.reduce(0, +)

    print("Map:", mapped)
    print("Filter:", filtered)
    print("Reduce:", reduced)
}
