// https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/
// E.g.:
// [-10, -3, 0, 5, 9]
// becomes:
// [0, -10, 5, nil, -3, nil, 9]

class SortedArrayToBST
{
    func solution(_ nums: [Int]) -> TreeNode?
    {
        return nums.count == 0 ? nil : binarySearchTree(nums: nums, low: 0, high: nums.count - 1)
    }
    
    private func binarySearchTree(nums: [Int], low: Int, high: Int) -> TreeNode?
    {
        if low > high
        {
            return nil // done
        }
        let mid = (low + high) / 2
        let node = TreeNode(nums[mid])
        node.left = binarySearchTree(nums: nums, low: low, high: mid - 1)
        node.right = binarySearchTree(nums: nums, low: mid + 1, high: high)
        return node
    }
}
