//
//  LC-83-RemoteDuplicatesFromSortedList
//
//  Created by Harshvardhan Arora on 10/04/2025.
//
//  https://leetcode.com/problems/remove-duplicates-from-sorted-list/description/
//

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    guard var current = head else { return head }
    guard var next = current.next else { return head }

    while(current != nil && next != nil) {
        if current.val == next.val {
            current.next = next.next
        } else {
            current = next
        }
        guard let newNext = current.next else { return head }
        next = newNext
    }

    return head
}
