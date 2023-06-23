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

func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    guard let root = root else { return nil }
    if root.val != val,
       root.val > val {
        return searchBST(root.left, val)
    } else if root.val != val,
              root.val < val {
        return searchBST(root.right, val)

    }
    return root
}
