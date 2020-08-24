#!/usr/bin/swift

class Node {
    var value: Int
    var next : Node?

    init(value : Int){
        self.value = value
    }
}


class LinkedList {
    var head: Node?

    init(head : Node?){
        self.head = head
    }
    func append(_ node: Node) {
        guard head != nil else {
            head = node
            return
        }

        var current = head
        while let _ = current?.next {
            current = current?.next
        }
        current?.next = node
    }

    func getNode(atPosition position: Int) -> Node? {
        var current = head
        var temp = position
        while temp > 1 {
            temp = temp - 1
            current = current?.next
        }
        return current
    }
    
    // Insert a new node at the given position.
    // Assume the first position is "1".
    // Inserting at position 3 means between
    // the 2nd and 3rd nodes.
    func insertNode(_ node: Node, at position: Int) {
        var current = head
        // let temp = node
        print("Hello")
        while let _ = current?.next {
            current = current?.next
        }
        current?.next = node
        print(node.value)
        
        
    }
    
    // Delete the first node with a given value.
    func deleteNode(withValue value: Int) {
        print(value)
    }
}


let n1 = Node(value: 1)
let n2 = Node(value: 2)
let n3 = Node(value: 3)
let n4 = Node(value: 4)

let ll = LinkedList(head: n1)
ll.append(n2)
ll.append(n3)

print(ll.head!.next!.next!.value)
print( ll.getNode(atPosition: 3)!.value )


// Test insert
ll.insertNode(n4, at: 3)
print(ll.getNode(atPosition: 3)!.value) // Should print 4 now


// Test delete(withValue:)
print("*******************")

ll.deleteNode(withValue: 1)
// print(ll.getNode(atPosition: 1)!.value) // Should print 2 now
// print(ll.getNode(atPosition: 2)!.value) // Should print 4 now
// print(ll.getNode(atPosition: 3)!.value) // Should print 3
