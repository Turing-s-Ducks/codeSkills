// Declaration of node class

class Nodo {
    value: number
    next: any
    constructor(value) {
        this.value = value;
        this.next = null
    }
}

// Declaration of linked List Class

class linkedList {
    head : any
    constructor(head : Nodo) {
        this.head = head
    }

    append(new_element) {
        if (this.head == null) {
            this.head = new_element
        }else{
            let current = this.head 
            while (current.next != null) {
                current = current.next
            }
            current.next = new_element 
        }
    }

    addNode(){

    }

    deleteNode(value){
        var current = this.head
        if (current == null) {
            return
        }
        if (current.value == value) {
            this.head = current.next
            current = null
            return
        }
        while (current.value != value ) {
            if (current.value == value) {
                break
            }
        }
    }

    listNodes(){
        var current = this.head
        while(current !=  null){
            console.log(current);
            current = current.next
        }
    }

}

let node1 = new Nodo(1);
let node2 = new Nodo(2);
let node3 = new Nodo(3);

console.log(node3.value);
console.log("Noooooo");

let ll = new linkedList(node1)
ll.append(node2)
ll.append(node3)
ll.deleteNode(1)
ll.listNodes()


