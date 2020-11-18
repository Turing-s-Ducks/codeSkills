#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Node(object):
    def __init__(self, value):
        self.value =  value
        self.nodes = None

class Tree(object):
    def __init__(self, node):
        self.head = node
    
    def shift(self, value):
        current = self.head
        if self.head:
            while(current.nodes):
                if current.nodes:
                    if len(current.nodes) < 2:
                        current.nodes.push(value)
                    else:
                        current = current.nodes[1]
        else: 
            self.head = value
