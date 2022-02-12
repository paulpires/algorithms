// https://leetcode.com/problems/remove-duplicates-from-sorted-array/
// [1,1,2]
class RemoveDuplicatesFromSortedArray
{
    func removeDuplicates(_ nums: inout [Int]) -> Int
    {
        guard nums.isEmpty == false else { return 0 }
        var resultTail: (index: Int, val: Int) = (0, nums.first!)
        for n in nums
        {
            if resultTail.val != n
            {
                nums[resultTail.index + 1] = n
                resultTail = (resultTail.index + 1, n)
            }
        }
        return resultTail.index + 1
    }
    
    // MARK: - alternative
    func removeDuplicates2(_ nums: inout [Int]) -> Int
    {
        var count = 0
        for (i,n) in nums[1..<nums.count].enumerated()
        {
            if n == nums[i]
            {
                count += 1
            }
            else
            {
                nums[i+1-count] = n
            }
        }
        return nums.count - count
    }
}
