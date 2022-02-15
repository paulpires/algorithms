// https://leetcode.com/problems/add-binary/

struct AddBinary
{
    func addBinary(_ a: String, _ b: String) -> String
    {
        let a = Array(a)
        let b = Array(b)
        var result = ""
        var carry = false
        var counter = 1
        while a.count - counter >= 0 || b.count - counter >= 0
        {
            let a = a.count-counter >= 0 ? a[a.count - counter] : "0"
            let b = b.count-counter >= 0 ? b[b.count - counter] : "0"
            if a == b
            {
                result = carry ? "1\(result)" : "0\(result)"
                carry = a == "1" && b == "1"
            }
            else
            {
                result = carry ? "0\(result)" : "1\(result)"
            }
            counter += 1
        }
        result = carry ? "1\(result)" : result
        return result
    }
}
