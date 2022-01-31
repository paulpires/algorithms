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
