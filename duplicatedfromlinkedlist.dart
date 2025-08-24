import 'addbinary.dart';
import 'mergetwosting.dart';

void main() {
  // Create nodes
  var node5 = ListNode(3);
  var node4 = ListNode(3, node5);
  var node3 = ListNode(2, node4);
  var node2 = ListNode(1, node3);
  var node1 = ListNode(1, node2);

  // Head points to node1
  ListNode? head = node1;

  // Run solution
  var solution = Solution();
  var result = solution.deleteDuplicates(head);

  // Print the linked list
print(result); // expected output: 1 -> 2 -> 3
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    ListNode? current = head;   // start from head

    while (current != null && current.next != null) {
      if (current.val == current.next!.val) {
        // Duplicate found → skip the next node
        current.next = current.next!.next;
      } else {
        // Move to next node
        current = current.next;
      }
    }

    return head; // return updated list
  }
}

