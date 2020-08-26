"""
Simple  linked  list
"""

class Element(object):
    def __init__(self, value):
        self.value = value
        self.next = None

class LinkedList(object):
    def __init__( self, head=None ):
        self.head = head
    
    def append(self, new_element):
        current = self.head
        if self.head:
            while current.next:
                current = current.next
            current.next = new_element
        else:
            self.head = new_element 
    def get_position(self, position):
        current = self.head
        temp = position
        while temp >1:
            temp -= 1
            current = current.next
        return current
    
    def insert(self, new_element, position):
        """Insert a new node at the given position.
        Assume the first position is "1".
        Inserting at position 3 means between
        the 2nd and 3rd elements."""
        current = self.head
        if current == None:
            return
        while current is not None:
            if current.value == position:
                new_element.next = current.next
                current.next = new_element
                return
        raise Exception("Node not found")
    # Check later
    def delete(self, value):
        current = self.head
        if current == None:
            return
        else:
            if current.value == value:
                self.head = current.next
                current = None
                return
            while current is not None:
                if current.value == value:
                    # self.head = current.next
                    # current = None
                    break
                prev = current
                current = current.next
            prev.next = current.next
            current = None

    def listPrint(self):
        current = self.head
        while current is not None:
            print(current.value)
            current = current.next

# Test cases
# Set up some Elements
e1 = Element(1)
e2 = Element(2)
e3 = Element(3)
e4 = Element(4)

# Start setting up a LinkedList
ll = LinkedList(e1)
ll.append(e2)
ll.append(e3)

# Test get_position
# Should print 3
# print (ll.head.next.next.value)
# print (ll.get_position(3).value)


# Test delete
ll.insert(e4,1)
ll.delete(2)

ll.listPrint()

"""
Double  linked  list
"""

class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
        self.previus = None
