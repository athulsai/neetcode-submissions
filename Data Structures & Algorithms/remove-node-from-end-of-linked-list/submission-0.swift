/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var dummy = ListNode(0)
        dummy.next = head
        var fast: ListNode? = dummy
        var slow: ListNode? = dummy

        for i in 0...n {
            fast = fast?.next
        }

        while fast != nil {
            fast = fast?.next
            slow = slow?.next
        }

        slow?.next = slow?.next?.next
        return dummy.next
    }
}
