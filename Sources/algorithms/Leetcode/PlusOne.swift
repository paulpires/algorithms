// https://leetcode.com/problems/plus-one/

import Foundation

class PlusOne
{
    func plusOne(_ digits: [Int]) -> [Int]
    {
        var result = digits
        var incrementByOne = false
        for i in stride(from: result.count-1, through: 0, by: -1)
        {
            if result[i] == 9
            {
                result[i] = 0
                incrementByOne = true
            }
            else
            {
                result[i] += 1
                incrementByOne = false
                break
            }
        }
        if incrementByOne
        {
            result.insert(1, at: 0)
        }
        return result
    }
}
