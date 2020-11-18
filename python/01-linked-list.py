#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Node(object):
    def __init__(self, value):
        self.value =  value
        self.next = None

class LinkedList(object):
    def __init__(self, head = Node):
        self.head = head

    def append(self, new_element):
        current = self.head
        if self.head:
            while current.next:
                current = current.next
            current.next = new_element
        else:
            self.head = new_element
    def remove(self, remove_element):
        current = self.head
        if self.head:
            if current.value == remove_element:
                self.head = current.next
            else:
                while current.next:
                    if current.next == remove_element:
                        if current.next.next != None:
                            current.next = current.next.next
                        else:
                            current.next = None
                        return True
                    current = current.next
                return False
        else:
            return False

    def fineByValue(self, search_value):
        current = self.head
        count = 1
        if self.head:
            if current.value == search_value:
                return [True , count]
            else:
                while current.next:
                    if current.value == search_value:
                        return [True , count+1]
                    current =  current.next
                    count =+ 1
                return False
        else:
            return False
