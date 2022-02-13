// https://leetcode.com/problems/search-insert-position/

class SearchInsertPosition
{
    func searchInsert(_ nums: [Int], _ target: Int) -> Int
    {
        guard !nums.isEmpty else
        {
            return 0
        }
        return searchInsert(nums, target, nums.count / 2)
    }
    
    private func searchInsert(_ nums: [Int], _ target: Int, _ mid: Int) -> Int
    {
        guard nums.count > 1 else
        {
            return target <= nums.first! ? mid : mid + 1
        }
        if nums[mid] == target
        {
            return mid
        }
        if target < nums[mid]
        {
            let subArr = Array(nums[0..<mid])
            return searchInsert(subArr, target, subArr.count / 2)
        }
        let subArr = Array(nums[mid+1..<nums.count])
        return searchInsert(subArr, target, subArr.count / 2) + mid + 1
    }
}
