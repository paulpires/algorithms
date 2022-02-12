@testable import algorithms

extension Array where Element == Int
{
    func linkedList() -> ListNode
    {
        let head = ListNode(self.first!)
        var prev = head
        for val in self[1..<count]
        {
            let node = ListNode(val)
            prev.next = node
            prev = node
        }
        return head
    }
}
