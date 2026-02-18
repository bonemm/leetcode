class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? middleNode(ListNode? head) {
    var fast = head;
    var slow = head;

    while (fast?.next != null && fast?.next != null) {
      fast = fast?.next?.next;
      slow = slow?.next;
    }

    return slow;
  }
}
