from functools import reduce


def runFunctionalDemo():
    print("\n🧪 Functional Demo")
    nums = [1, 2, 3, 4, 5]
    mapped = list(map(lambda x: x * 2, nums))
    filtered = list(filter(lambda x: x % 2 == 0, nums))

    reduced = reduce(lambda acc, x: acc + x, nums)

    print("Map:", mapped)
    print("Filter:", filtered)
    print("Reduce:", reduced)
