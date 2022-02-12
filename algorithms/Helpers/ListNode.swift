// Definition for singly-linked list.
class ListNode
{
    var val: Int
    var next: ListNode?
    
    convenience public init()
    {
        self.init(0, nil)
    }
    convenience public init(_ val: Int)
    {
        self.init(val, nil)
    }
    public init(_ val: Int, _ next: ListNode?)
    {
        self.val = val
        self.next = next
    }
}
extension ListNode: CustomStringConvertible
{
    var description: String
    {
        var result = "\(val)"
        var next = next
        while next != nil
        {
            result += "->\(next!.val)"
            next = next!.next
        }
        return result
    }
}
extension ListNode: Equatable
{
    static func == (lhs: ListNode, rhs: ListNode) -> Bool
    {
        guard lhs.val == rhs.val else
        {
            return false
        }
        if lhs.next != nil || rhs.next != nil
        {
            return lhs.next == rhs.next
        }
        return true
    }
}
