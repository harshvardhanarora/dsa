//
//  LC-100-SameTree
//
//  Created by Harshvardhan Arora on 11/04/2025.
//
//  https://leetcode.com/problems/binary-tree-inorder-traversal/description/
//

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    return preorderTraversal(p) == preorderTraversal(q)
}

func preorderTraversal(_ root: TreeNode?) -> [Int?] {
    var output = [Int?]()
    preorderTraversal(root)

    func preorderTraversal(_ node: TreeNode?) {
        guard let node = node else {
            output.append(nil)
            return
        }
        output.append(node.val)
        preorderTraversal(node.left)
        preorderTraversal(node.right)
    }

    return output
}
