//
//  LC-21-MergeTwoSortedLists
//
//  Created by Harshvardhan Arora on 09/03/2025.
//
//  https://leetcode.com/problems/merge-two-sorted-lists/
//

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    if list1 == nil && list2 == nil {
        return nil
    }

    var outputHead: ListNode?
    var currentNode = outputHead
    var l1Head = list1
    var l2Head = list2

    while(l1Head != nil || l2Head != nil) {
        if l1Head == nil {
            if currentNode == nil {
                currentNode = ListNode(l2Head!.value)
                outputHead = currentNode
            } else {
                currentNode!.next = ListNode(l2Head!.value)
                currentNode = currentNode!.next
            }

            l2Head = l2Head!.next
            continue
        }

        if l2Head == nil {
            if currentNode == nil {
                currentNode = ListNode(l1Head!.value)
                outputHead = currentNode
            } else {
                currentNode!.next = ListNode(l1Head!.value)
                currentNode = currentNode!.next
            }
            l1Head = l1Head!.next
            continue
        }

        if l1Head!.value <= l2Head!.value {
            if currentNode == nil {
                currentNode = ListNode(l1Head!.value)
                outputHead = currentNode
            } else {
                currentNode!.next = ListNode(l1Head!.value)
                currentNode = currentNode!.next
            }

            l1Head = l1Head!.next
            continue
        } else {
            if currentNode == nil {
                currentNode = ListNode(l2Head!.value)
                outputHead = currentNode
            } else {
                currentNode!.next = ListNode(l2Head!.value)
                currentNode = currentNode!.next
            }

            l2Head = l2Head!.next
            continue
        }
    }

    return outputHead
}

