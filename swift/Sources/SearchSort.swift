import Foundation

// LINEAR SEARCH
// Go through the array one item at a time and return true if we find the target
func linearSearch<T: Equatable>(_ array: [T], _ target: T) -> Bool {
    for item in array {
        if item == target {
            return true  // We found it!
        }
    }
    return false  // We reached the end without finding it
}

// BUBBLE SORT
// Repeatedly compare and swap adjacent items if they’re out of order
func bubbleSort(_ array: inout [Int]) {
    let n = array.count
    guard n > 1 else { return }

    // Outer loop: number of passes through the array
    for i in 0..<n {  // How many passes we make
        // Inner loop: compare each pair of items
        for j in 0..<n - i - 1 {  // Compare side-by-side values
            if array[j] > array[j + 1] {
                // Swap them if they’re out of order
                let temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
        }
    }
}

func runSearchSortDemo() {
    print("\n🔍 Linear Search Demo")
    let values = [3, 8, 1, 4, 9]
    let target = 4
    print("Values:", values)
    print("Searching for \(target):", linearSearch(values, target))  // true
    print("Searching for 10:", linearSearch(values, 10))  // false

    print("\n🌀 Bubble Sort Demo")
    var unsorted = [5, 2, 9, 1, 7]
    print("Before sort:", unsorted)
    bubbleSort(&unsorted)
    print("After sort: ", unsorted)
}
