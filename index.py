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
        temp = 1
        while temp != position:
            temp += 1
            current = current.next
        return current
    
    def insert(self, new_element, position):
        current = self.head
        if not current:
            raise Exception("List is empty")
        if current.value == position:
            current.next = current
            self.head = current
            return
        while current is not None:
            if current.value == position:
                break
            prev = current
            current = current.next
        prev.next = current.next
        current = None
        raise Exception("Node not found")

    # Check later
    def deleteByPosition(self, position):
        current = self.head
        if current == None:
            return
        else:
            temp = 1
            if temp == position:
                self.head = current.next
                current = None
                return
            while current is not None:
                temp += 1
                prev = current
                current = current.next
                if temp == position:
                    break
            prev.next = current.next
            current = None

    def deleteByValue(self, value):
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
ll.insert(e4,2)
ll.deleteByPosition(4)
ll.listPrint()


