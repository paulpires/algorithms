// https://leetcode.com/problems/convert-sorted-list-to-binary-search-tree
class SortedLinkedListToBST
{
    // MARK: Solution 1
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
    
    // MARK: Solution 2
    private func solution2(_ head: ListNode?) -> TreeNode?
    {
        // todo:
        // using 2 pointers searching ahead
        return nil
    }
}
