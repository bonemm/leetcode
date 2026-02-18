class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? deleteMiddle(ListNode? head) {
    var fast = head?.next?.next;
    var slow = head;

    if (head?.next == null) return null;

    while (fast?.next != null && fast?.next != null) {
      fast = fast?.next?.next;
      slow = slow?.next;
    }
    slow?.next = slow.next?.next;
    return head;
  }
}
