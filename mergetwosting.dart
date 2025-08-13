import 'dart:collection';
import 'dart:io';
void main(){
//example 1
ListNode? list1=createLinkedList([12,34,25,89]..sort());
ListNode? list2=createLinkedList([2,6,2,4,6,]..sort());

ListNode? merged=Mergetwosting(list1, list2);
print("Merged List:");
printLinkedList(merged);

//example 2


}
class ListNode {
int val;
ListNode? next;
ListNode(this.val,[this.next]);
}

ListNode? Mergetwosting(ListNode? list1, ListNode? list2){
  ListNode dummy=ListNode(0);
  ListNode current=dummy;
while(list1!=null && list2!=null){
  if(list1.val<=list2.val){
    current.next=list1;
    list1=list1.next;

  }else{
    current.next=list2;
    list2=list2.next;

  }
  current=current.next!;
}
//attach remaining nodes
current.next=(list1!=null)? list1:list2;
return dummy.next;
}

//create linked list from array
ListNode? createLinkedList(List<int> value){
  if(value.isEmpty)return null;
  ListNode head=ListNode(value[0]);
  ListNode current=head;
  for(int i=1;i<value.length;i++){
    current.next=ListNode(value[i]);
    current=current.next!;

  }
  return head;
}

//print linked list in array format
void printLinkedList(ListNode? head){
  List<int> value=[];
  while(head!=null){
    value.add(head.val);
    head=head.next;

  }
  print(value);
}