// https://leetcode.com/problems/remove-element/
class RemoveElement
{
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int
    {
        var free = -1 // index at which you may replace a value
        var count = 0
        for (i,n) in nums.enumerated()
        {
            if n == val
            {
                if free == -1
                {
                    free = i
                }
                count += 1
            }
            else if free != -1
            {
                nums[free] = n
                free += 1
            }
        }
        return nums.count - count
    }
    
    // MARK: - alternative
    func removeElement2(_ nums: inout [Int], _ val: Int) -> Int
    {
        var tail = 0 // tail index of the sub-array answer
        for n in nums
        {
            if n != val
            {
                nums[tail] = n
                tail += 1
            }
        }
        return tail
    }
}
