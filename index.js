// Declaration of node class
var Nodo = /** @class */ (function () {
    function Nodo(value) {
        this.value = value;
        this.next = null;
    }
    return Nodo;
}());
// Declaration of linked List Class
var linkedList = /** @class */ (function () {
    function linkedList(head) {
        this.head = head;
    }
    linkedList.prototype.append = function (new_element) {
        if (this.head == null) {
            this.head = new_element;
        }
        else {
            var current = this.head;
            while (current.next != null) {
                current = current.next;
            }
            current.next = new_element;
        }
    };
    linkedList.prototype.addNode = function () {
    };
    linkedList.prototype.deleteNode = function (value) {
        var current = this.head;
        if (current == null) {
            return;
        }
        if (current.value == value) {
            this.head = current.next;
            current = null;
            return;
        }
        while (current.value != value) {
            if (current.value == value) {
                break;
            }
        }
    };
    linkedList.prototype.listNodes = function () {
        var current = this.head;
        while (current != null) {
            console.log(current);
            current = current.next;
        }
    };
    return linkedList;
}());
var node1 = new Nodo(1);
var node2 = new Nodo(2);
var node3 = new Nodo(3);
console.log(node3.value);
console.log("Noooooo");
var ll = new linkedList(node1);
ll.append(node2);
ll.append(node3);
ll.deleteNode(1);
ll.listNodes();
