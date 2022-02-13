// https://leetcode.com/problems/length-of-last-word/

class LengthOfLastWord
{
    func lengthOfLastWord(_ s: String) -> Int
    {
        let sArr = Array(s)
        var answer = 0
        for i in stride(from: sArr.count-1, through: 0, by: -1)
        {
            if sArr[i] == " " && answer > 0
            {
                break
            }
            answer = sArr[i] == " " ? answer : answer + 1
        }
        return answer
    }
}
