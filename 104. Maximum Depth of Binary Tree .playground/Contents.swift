
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    var depth = 0
    var counter = 0

    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        var left = maxDepth(root.left)
        var right = maxDepth(root.right)

        if left == nil {
            return 1 + right
        } else if right == nil {
            return 1 + left
        }

        return max(left, right) + 1
    }
}

let tree1 = TreeNode(7, nil, nil)
let tree2 = TreeNode(15, nil, nil)
let tree3 = TreeNode(20, tree2, tree1)
let tree4 = TreeNode(9, nil, nil)
let tree = TreeNode(3, tree4, tree3)
