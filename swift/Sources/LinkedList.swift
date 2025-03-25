import Foundation

// Node class to represent each element in the linked list
class Node<T> {
    var value: T  // The data stored in this node
    var next: Node? = nil  // A reference to the next node in the list

    init(_ value: T) {
        self.value = value  // Set the value
    }
}

// LinkedList class to manage the nodes
class LinkedList<T: Equatable> {
    private var head: Node<T>? = nil  // Reference to the first node in the list

    // Adds a new value to the end of the list
    func append(_ value: T) {
        let newNode = Node(value)  // Create a new node with the value

        // If the list is empty, set the new node as the head
        if head == nil {
            head = newNode  // The new node is now the head
            return  // Done
        }

        // Otherwise, loop through until we reach the last node
        var current = head  // Start at the head
        while current?.next != nil {  // Loop through the list
            current = current?.next  // Move to the next node
        }

        // Attach the new node to the last node
        current?.next = newNode  // Set the next node to the new node
    }

    // Prints the entire list, one value at a time
    func printList() {
        var current = head  // Start at the head
        while let node = current {  // Loop through the list
            print("\(node.value) → ", terminator: "")  // Print the value
            current = node.next  // Move to the next node
        }
        print("nil")  // End of list
    }

    // Add a new node at the front of the list
    func prepend(_ value: T) {
        let newNode = Node(value)
        newNode.next = head  // The new node points to the current head
        head = newNode  // The new node is now the head
    }

    // Remove the first node that matches the value
    func delete(_ value: T) {
        // If the list is empty
        guard head != nil else { return }  // Nothing to delete

        // If the head is the value to delete
        if head?.value == value {
            head = head?.next  // Move the head to the next node
            return  // Done
        }

        var current = head
        while current?.next != nil {  // Loop through the list
            if current?.next?.value == value {  // If the next node is the value
                current?.next = current?.next?.next  // Skip over the next node
                return  // Done
            }
            current = current?.next  // Move to the next node
        }
    }

    // Check if the list contains a certain value
    func contains(_ value: T) -> Bool {
        var current = head  // Start at the head
        while current != nil {  // Loop through the list
            if current?.value == value {  // If the value is found
                return true  // Value was found
            }
            current = current?.next  // Move to the next node
        }
        return false  // Value was not found
    }

}

// Function to run the linked list demo
func runLinkedListDemo() {
    print("\n🔗 Linked List Demo")

    let list = LinkedList<Int>()
    list.append(1)
    list.append(2)
    list.append(3)
    list.printList()

    print("Prepend 0")
    list.prepend(0)
    list.printList()

    print("Delete 2")
    list.delete(2)
    list.printList()

    print("Contains 3?", list.contains(3))
    print("Contains 9?", list.contains(9))
}
