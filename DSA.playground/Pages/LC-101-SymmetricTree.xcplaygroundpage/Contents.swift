//
//  LC-101-SymmetricTree
//
//  Created by Harshvardhan Arora on 12/04/2025.
//
//  https://leetcode.com/problems/symmetric-tree/description/
//

func isSymmetric(_ root: TreeNode?) -> Bool {
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
