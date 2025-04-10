//
//  LC-94-BinaryTreeInorderTraversal
//
//  Created by Harshvardhan Arora on 10/04/2025.
//
//  https://leetcode.com/problems/binary-tree-inorder-traversal/description/
//

func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var output = [Int]()
    inorderTraverse(root)

    func inorderTraverse(_ node: TreeNode?) {
        guard let node = node else { return }
        inorderTraverse(node.left)
        output.append(node.val)
        inorderTraverse(node.right)
    }

    return output
}
