
func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
    var arr1 = [Int]()
    var arr2 = [Int]()

    getLeafs(root1, &arr1)
    getLeafs(root2, &arr2)

    return arr1 == arr2
}

private func getLeafs(_ root: TreeNode?, _ arr: inout [Int]) {
    guard let node = root else { return }

    getLeafs(node.left, &arr)

    if node.left == nil && node.right == nil { arr.append(node.val) }

    getLeafs(node.right, &arr)
}

