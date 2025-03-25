def linear_search(array, target):
    for item in array:
        if item == target:
            return True
    return False


def bubble_sort(array):
    n = len(array)
    for i in range(n):
        for j in range(n - i - 1):
            if array[j] > array[j + 1]:
                array[j], array[j + 1] = array[j + 1], array[j]


def run_search_sort_demo():
    print("\n🔍 Linear Search Demo")
    values = [3, 8, 1, 4, 9]
    print("Values:", values)
    print("Searching for 4:", linear_search(values, 4))  # True
    print("Searching for 10:", linear_search(values, 10))  # False

    print("\n🌀 Bubble Sort Demo")
    unsorted = [5, 2, 9, 1, 7]
    print("Before sort:", unsorted)
    bubble_sort(unsorted)
    print("After sort: ", unsorted)
