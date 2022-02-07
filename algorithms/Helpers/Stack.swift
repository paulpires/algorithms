class Stack<T>
{
    private var arr = [T]()
    
    func push(_ val: T)
    {
        return arr.append(val)
    }
    @discardableResult
    func pop() -> T?
    {
        guard arr.isEmpty == false else
        {
            return nil
        }
        return arr.removeLast()
    }
    func peak() -> T?
    {
        return arr.last
    }
    var isEmpty: Bool
    {
        return arr.isEmpty
    }
}
