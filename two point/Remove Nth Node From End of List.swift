/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
       guard let node = head, n > 0 else {
            return nil
        }
        var listNode = node
        var slowNode = node
        var fastIndex = 0
        var slowIndex = 0

        while listNode.next != nil {
            if fastIndex >= n {
                slowIndex += 1
                slowNode = slowNode.next!
            }
            fastIndex += 1
            listNode = listNode.next!
        }
        if n == fastIndex + 1 {
            return slowNode.next
        }
        slowNode.next = slowNode.next?.next
        return node
    }
}