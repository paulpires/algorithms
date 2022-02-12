// https://leetcode.com/problems/remove-duplicates-from-sorted-array/
// [1,1,2]
class RemoveDuplicatesFromSortedArray
{
    func removeDuplicates(_ nums: inout [Int]) -> Int
    {
        guard nums.isEmpty == false else { return 0 }
        var resultTail: (index: Int, val: Int) = (0, nums.first!)
        for (_,n) in nums.enumerated()
        {
            if resultTail.val != n
            {
                nums[resultTail.index + 1] = n
                resultTail = (resultTail.index + 1, n)
            }
        }
        return resultTail.index + 1
    }
}
