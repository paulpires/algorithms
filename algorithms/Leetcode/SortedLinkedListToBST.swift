// https://leetcode.com/problems/convert-sorted-list-to-binary-search-tree
class SortedLinkedListToBST
{
    // MARK: - Solution 1
    // Could be more efficient
    func solution1(_ head: ListNode?) -> TreeNode?
    {
        guard let head = head else
        {
            return nil
        }
        var arr = [ListNode]()
        var next: ListNode? = head
        while let node = next
        {
            arr.append(node)
            next = node.next
        }
        return bst(arr: arr)
    }
    
    private func bst(arr: [ListNode]) -> TreeNode?
    {
        guard arr.isEmpty == false else
        {
            return nil
        }
        let mid = arr.count / 2
        let node = TreeNode(arr[mid].val)
        node.left = bst(arr: Array(arr[0..<mid]))
        node.right = bst(arr: Array(arr[mid+1..<arr.count]))
        return node
    }
    
    // MARK: - Solution 2
    func solution2(_ head: ListNode?) -> TreeNode?
    {
        return head == nil ? nil : bst(head: head, tail: nil)
    }
    
    private func bst(head: ListNode?, tail: ListNode?) -> TreeNode?
    {
        var slow = head
        var fast = head
        if head?.val == tail?.val
        {
            return nil
            // nil because it's already in the tree!
            // (it's the root of the current sub-tree)
        }
        while fast?.val != tail?.val && fast?.next?.val != tail?.val
        {
            slow = slow?.next
            fast = fast?.next?.next
        }
        let node = TreeNode(slow!.val)
        node.left = bst(head: head, tail: slow)
        node.right = bst(head: slow!.next, tail: tail)
        return node
    }
}
