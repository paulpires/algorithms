// https://leetcode.com/problems/valid-parentheses/
class ValidParentheses
{
    func isValid(_ s: String) -> Bool
    {
        let parentheses: [String.Element: String.Element] = [
            "(": ")",
            "[": "]",
            "{": "}"
        ]
        guard !s.isEmpty && s.count % 2 == 0 else
        {
            return false
        }
        let stack = Stack<String.Element>()
        for char in Array(s)
        {
            if stack.isEmpty || parentheses[char] != nil
            {
                stack.push(char)
            }
            else if parentheses[stack.peak()!] == char
            {
                stack.pop()
            }
            else
            {
                return false
            }
        }
        return stack.isEmpty
    }
}
