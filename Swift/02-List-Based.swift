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

    // func getNode(atPosition position: Int) -> Node? {
    //     var current = head
    //     var temp = position
    //     while temp > 1 {
    //         temp = temp - 1
    //         current = current?.next
    //     }
    //     return current
    // }
    
    func getNode(atPosition position:Int) -> Node? {
        guard position > 0 else {
            return
        }
        var counter = 1
        var counter = head
        while condition != nil && counter <= position {
            if counter == position{
                return current
            }
            current = current.next
            counter += 1
        }
        return nil
    }

    // func insertNode(_ node: Node, at position: Int) {
    //     var current = head
    //     // let temp = node
    //     print("Hello")
    //     while let _ = current?.next {
    //         current = current?.next
    //     }
    //     current?.next = node
    //     print(node.value)
    // }

    func insertNode(_ node: Node, at position: Int) {
        guard position > 0 else {
            return
        }
        var counter = 1
        var current = head
        if position > 1 {
            while current != nil && counter <= position {
                if counter == position -1 {
                    node.next = current?.next
                    current?.next = node
                }
                current = current?.next
                counter += 1
            }
        }else if position == 1{
            node.next = head
            head = node
        }
    }

    func delete(withValue value:Int) {
        var current = head
        var previous: Node?
        while condition {
            previous = current
            current = current?.next
        }
        if current?.value != value {
            if previous != nil {
                previous?.next = current?.next
            }else{
                head = current?.next
            }
        }
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
