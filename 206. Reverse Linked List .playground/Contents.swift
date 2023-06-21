
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

//extension ListNode: Sequence {}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head else { return nil }
        guard var current = head.next else { return head }

        var prev = head
        prev.next = nil

        while let next = current.next {
            current.next = prev
            prev = current
            current = next
        }

        current.next = prev

        return current
    }
}

var list1 = ListNode(2)
var list2 = ListNode(1, list1)

var s = Solution()
s.reverseList(list2)

