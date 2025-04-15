//
//  LC-104-MaximumDepthOfBinaryTree
//
//  Created by Harshvardhan Arora on 15/04/2025.
//
//  https://leetcode.com/problems/maximum-depth-of-binary-tree/
//

func maxDepth(_ root: TreeNode?) -> Int {
    var maxDepth = 0
    traverse(root, 0)

    func traverse(_ node: TreeNode?, _ depth: Int) {
        guard let node = node else { return }

        if node.left == nil && node.right == nil {
            maxDepth = max(maxDepth, depth + 1)
        }

        traverse(node.left, depth + 1)
        traverse(node.right, depth + 1)
    }

    return maxDepth
}
