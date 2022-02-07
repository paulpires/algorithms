// https://leetcode.com/problems/longest-common-prefix/

class LongestCommonPrefix
{
    func longestCommonPrefix(_ strs: [String]) -> String
    {
        var longestPrefix = strs.first ?? ""
        for s in strs
        {
            let prefix = Array(longestPrefix)
            let s_arr = Array(s)
            longestPrefix = ""
            for (i, char) in prefix.enumerated()
            {
                guard i < s_arr.count && char == s_arr[i] else
                {
                    break
                }
                longestPrefix += String(char)
            }
        }
        return longestPrefix
    }
}
