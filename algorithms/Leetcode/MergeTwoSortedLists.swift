
class MergeTwoSortedLists
{
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode?
    {
        guard let list1 = list1 else
        {
            return list2
        }
        guard let list2 = list2 else
        {
            return list1
        }
        
        if list1.val < list2.val
        {
            list1.next = mergeTwoLists(list1.next, list2)
            return list1
        }
        else
        {
            list2.next = mergeTwoLists(list1, list2.next)
            return list2
        }
    }
    
    // MARK: - Iterative
    func mergeTwoLists2(_ list1: ListNode?, _ list2: ListNode?) -> ListNode?
    {
        guard let list1 = list1 else
        {
            return list2
        }
        guard let list2 = list2 else
        {
            return list1
        }
        var current = ListNode()
        let head = current
        var l1: ListNode? = list1
        var l2: ListNode? = list2
        while l1 != nil && l2 != nil
        {
            if let _l1 = l1,
               let _l2 = l2,
               _l1.val < _l2.val
            {
                current.next = _l1
                l1 = _l1.next
            }
            else
            {
                current.next = l2
                l2 = l2?.next
            }
            
            if let next = current.next
            {
                current = next
            }
        }
        current.next = l1 ?? l2
        return head.next
    }
}
