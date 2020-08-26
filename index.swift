#!/usr/bin/swift
class Node {
    var value : Int
    var next : Node?

    init(value : Int) {
        self.value = value
    }
}

class Stack {

    func append(_ node: Node) {
        ll.insertNode(node, at: 1)
    }

    func pop() -> Node? {
        let deleteNode = ll.getNode(atPosition : 1)
        if let value = deleteNode?.value{
            ll.deleteNode(withValue: value)
        }
        return deleteNode
    }
}

class Queue {
    
    var storage: [Int]
    
    init(head: Int) {
        storage = [head]
    }
    
    func enqueue(_ element: Int) {
        storage.append(element)
    }
    
    func peek() -> Int? {
        return storage[0]
    }
    
    func dequeue() -> Int? {
        return storage.remove(at: 0)
    }
}
