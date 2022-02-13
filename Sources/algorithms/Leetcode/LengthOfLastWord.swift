// https://leetcode.com/problems/length-of-last-word/

class LengthOfLastWord
{
    func lengthOfLastWord(_ s: String) -> Int
    {
        let sArr = Array(s)
        var i = sArr.count-1
        var answer = 0
        while i >= 0 && i < sArr.count
        {
            guard sArr[i] != " " else
            {
                if answer > 0 { break }
                i -= 1
                continue
            }
            i -= 1
            answer += 1
        }
        return answer
    }
}
