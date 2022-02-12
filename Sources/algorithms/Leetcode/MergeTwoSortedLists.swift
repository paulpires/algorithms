// https://leetcode.com/problems/merge-two-sorted-lists
class MergeTwoSortedLists
{
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode?
    {
        guard let list1 = list1 else { return list2 }
        guard let list2 = list2 else { return list1 }
        
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
        guard let list1 = list1 else { return list2 }
        guard let list2 = list2 else { return list1 }
        var mergedList = ListNode()
        let head = mergedList
        var _l1: ListNode? = list1
        var _l2: ListNode? = list2
        while let l1 = _l1, let l2 = _l2
        {
            if l1.val < l2.val
            {
                mergedList.next = l1
                _l1 = l1.next
            }
            else
            {
                mergedList.next = l2
                _l2 = l2.next
            }
            
            if let next = mergedList.next
            {
                mergedList = next
            }
        }
        mergedList.next = _l1 ?? _l2
        return head.next
    }
}
