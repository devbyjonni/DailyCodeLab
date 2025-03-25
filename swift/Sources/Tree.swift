import Foundation

// A class to represent a single node in the binary tree
class TreeNode<T: Comparable> {
    var value: T  // The actual value of the node
    var left: TreeNode?  // Optional reference to the left child
    var right: TreeNode?  // Optional reference to the right child

    init(_ value: T) {
        self.value = value
    }
}

// A function to insert a new value into the tree
func insert<T: Comparable>(_ root: TreeNode<T>?, _ value: T) -> TreeNode<T> {
    // If the tree is empty, we create a new root node
    guard let root = root else {
        return TreeNode(value)
    }

    // If the new value is less, insert it into the left subtree
    if value < root.value {
        root.left = insert(root.left, value)
    }
    // Otherwise, insert into the right subtree
    else {
        root.right = insert(root.right, value)
    }

    return root  // Return the root so we can re-assign it up the chain
}

// Recursively traverse the tree in-order (left ➝ root ➝ right)
func inOrderTraversal<T>(_ node: TreeNode<T>?) {
    guard let node = node else { return }  // Stop if the node is nil

    inOrderTraversal(node.left)  // 1. Go left
    print(node.value, terminator: " ")  // 2. Print current node
    inOrderTraversal(node.right)  // 3. Go right
}

func find<T: Comparable>(_ root: TreeNode<T>?, _ value: T) -> Bool {
    // If the tree is empty, the value is not found
    guard let root = root else { return false }
    // If the value is found, return true
    if value == root.value {
        return true
    } else if value < root.value {  // Otherwise, search left or right
        return find(root.left, value)
    } else {
        return find(root.right, value)  // Search right
    }
}

// A function to run the full tree demo
func runTreeDemo() {
    print("\n🌳 Tree Demo")

    let values = [5, 3, 7, 2, 4, 6, 8]  // These values will form a balanced tree
    var root: TreeNode<Int>? = nil  // Our starting root node (nil to begin with)

    // Insert each value into the tree
    for v in values {
        root = insert(root, v)
    }

    // Print the tree in in-order traversal
    print("In-order Traversal:", terminator: " ")
    inOrderTraversal(root)

    // Test the find function
    print("Contains 6?", find(root, 6))  // Should be true
    print("Contains 10?", find(root, 10))  // Should be false
}

/*
What does this code actually do?
Input:

We insert values in this order:
[5, 3, 7, 2, 4, 6, 8]

Tree structure after insert:

       5
     /   \
    3     7
   / \   / \
  2  4  6   8

Output:

When we run inOrderTraversal, it prints:
2 3 4 5 6 7 8
Which is the values in sorted order — that’s the magic of a Binary Search Tree!

TreeNode	Represents one node with value + children
insert()	Places a new value into the correct position
inOrderTraversal()	Recursively prints values in sorted order
runTreeDemo()	Builds the tree and runs the traversal demo
*/
