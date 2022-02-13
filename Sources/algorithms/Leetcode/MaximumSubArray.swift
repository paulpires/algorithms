// https://leetcode.com/problems/maximum-subarray/

class MaximumSubArray
{
    func maxSubArray(_ nums: [Int]) -> Int
    {
        var best = nums[0]
        var current = 0
        for n in nums
        {
            current = current < 0 ? n : current + n
            best = max(best, current)
        }
        return best
    }
    
    // MARK: - alternative

    func maxSubArray2(_ nums: [Int]) -> Int
    {
        var best = nums[0], current = nums[0]
        guard nums.count > 1 else { return best }
        for n in nums[1..<nums.count]
        {
            current = max(current+n, n)
            best = max(best, current)
        }
        return best
    }
}
