class TreeNode
{
    var val: Int
    var left: TreeNode? = nil
    var right: TreeNode? = nil

    convenience init()
    {
        self.init(0, nil, nil)
    }
    convenience init(_ val: Int)
    {
        self.init(val, nil, nil)
    }
    init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?)
    {
        self.val = val
        self.left = left
        self.right = right
    }
    
    func breadthFirstDescription() -> [Int?]
    {
        var result = [Int?]()
        var queue = [TreeNode?]()
        bfs(&queue, self, &result)
        return result
    }
    
    private func bfs(_ queue: inout [TreeNode?], _ root: TreeNode?, _ result: inout [Int?])
    {
        guard let root = root else
        {
            return
        }
        if queue.isEmpty
        {
            queue.append(root)
        }
        while !queue.isEmpty
        {
            var counter = queue.count - 1
            while counter >= 0
            {
                defer { counter -= 1 }
                let element = queue.removeFirst()
                guard let element = element else
                {
                    if !queue.isEmpty { result.append(nil) } // trim last nil if queue.isEmpty
                    continue
                }
                result.append(element.val)
                if element.left == nil && element.right == nil // trimming nils of leaf nodes
                {
                    continue
                }
                if let left = element.left { queue.append(left) } else { queue.append(nil) }
                if let right = element.right { queue.append(right) } else { queue.append(nil) }
            }
        }
    }
}
