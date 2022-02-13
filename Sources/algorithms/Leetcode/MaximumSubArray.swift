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
}
