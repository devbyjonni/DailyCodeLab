class TreeNode:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None


def insert(root, value):
    if root is None:
        return TreeNode(value)
    if value < root.value:
        root.left = insert(root.left, value)
    else:
        root.right = insert(root.right, value)
    return root


def in_order_traversal(root):
    if root:
        in_order_traversal(root.left)
        print(root.value, end=" ")
        in_order_traversal(root.right)


def find(root, value):
    if root is None:
        return False
    if value == root.value:
        return True
    elif value < root.value:
        return find(root.left, value)
    else:
        return find(root.right, value)


def run_tree_demo():
    print("\n🌳 Tree Demo")
    values = [5, 3, 7, 2, 4, 6, 8]
    root = None
    for v in values:
        root = insert(root, v)

    print("In-order Traversal:", end=" ")
    in_order_traversal(root)
    print()

    search = 6
    print("Contains", search, "?", find(root, search))

    search = 10
    print("Contains", search, "?", find(root, search))
