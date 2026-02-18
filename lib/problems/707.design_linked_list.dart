class MyLinkedList {

  Node? head;  
  int size = 0; 

  MyLinkedList() {
     head = Node();
  }
  
  int get(int index) {
    if(index < 0 || index >= size) {
        return -1; 
    }

    var current = head; 

    for(int i =0; i<index; i++){
        current = current?.next; 
    }

    return current?.value ?? -1 ; 
  }
  
  void addAtHead(int val) {
       addAtIndex(0, val);
  }
  
  void addAtTail(int val) {
        addAtIndex(size, val);
  }
  
  void addAtIndex(int index, int val) {
    
    if(index < 0 || index > size) return; 

    size++;

    if(index == 0){
        head = Node()
        ..next = head
        ..value = val; 
        return;
    }
    var current = head; 

    for(int i = 0; i<index-1; i++) {
        current = current?.next; 
     }

    var oldNext = current?.next; 
     current?.next = Node()
     ..value = val
     ..next = oldNext; 
  }
  

  void deleteAtIndex(int index) {
    if(index < 0 || index >= size) return; 
    size--; 

    if(index == 0) {
        head = head?.next; 
        return; 
    }

    var current = head; 

    for(int i = 0; i<index-1; i++) {
        current = current?.next; 
     }
     current?.next = current.next?.next; 
    
  }
}


class Node {
    Node? next;
    int value = 0;
}



void main(List<String> args) {
   MyLinkedList myLinkedList = MyLinkedList();

   
   myLinkedList.addAtIndex(0,10);


   print(myLinkedList.get(0)); 
}