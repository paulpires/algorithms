// https://leetcode.com/problems/plus-one/

import Foundation

class PlusOne
{
    func plusOne(_ digits: [Int]) -> [Int]
    {
        var result = digits
        for i in stride(from: result.count-1, through: 0, by: -1)
        {
            if result[i] < 9
            {
                result[i] += 1
                return result
            }
            result[i] = 0
        }
        result.insert(1, at: 0)
        return result
    }
}
