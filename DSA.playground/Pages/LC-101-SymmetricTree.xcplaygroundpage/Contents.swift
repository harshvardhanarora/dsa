//
//  LC-101-SymmetricTree
//
//  Created by Harshvardhan Arora on 12/04/2025.
//
//  https://leetcode.com/problems/symmetric-tree/description/
//

func isSymmetric_1(_ root: TreeNode?) -> Bool {
    var arr1 = [Int?]()
    var arr2 = [Int?]()
    preorderTraversal(root)
    reversePreorderTraversal(root)

    func preorderTraversal(_ node: TreeNode?) {
        guard let node = node else {
            arr1.append(nil)
            return
        }

        arr1.append(node.val)
        preorderTraversal(node.left)
        preorderTraversal(node.right)
    }

    func reversePreorderTraversal(_ node: TreeNode?) {
        guard let node = node else {
            arr2.append(nil)
            return
        }

        arr2.append(node.val)
        reversePreorderTraversal(node.right)
        reversePreorderTraversal(node.left)
    }

    print(arr1)
    print(arr2)
    return arr1 == arr2
}

func isSymmetric_2(_ root: TreeNode?) -> Bool {
    return isSymmetric(root, root)

    func isSymmetric(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        if left == nil && right == nil { return true }

        return left?.val == right?.val && isSymmetric(left?.left, right?.right) && isSymmetric(left?.right, right?.left)
    }
}
