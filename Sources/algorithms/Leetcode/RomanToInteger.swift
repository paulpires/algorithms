//https://leetcode.com/problems/roman-to-integer/

class RomanToInteger
{
    func romanToInt(_ s: String) -> Int
    {
        let vals = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        let chars = Array(s)
        var previousChar = ""
        var result = 0
        for i in stride(from: s.count-1, through: 0, by: -1)
        {
            let char = String(chars[i])
            guard let val = vals[char] else { continue }
            switch (char, previousChar)
            {
            case ("I", "V"), ("I", "X"),
                ("X", "L"), ("X", "C"),
                ("C", "D"), ("C", "M"):
                result -= val
            default:
                result += val
            }
            previousChar = char
        }
        return result
    }
}
