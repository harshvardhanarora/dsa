//
//  ListNode.swift
//
//  Created by Harshvardhan Arora on 09/03/2025.
//

public class ListNode {
    public var value: Int
    public var next: ListNode?

    public init(_ value: Int, next: ListNode? = nil) {
        self.value = value
        self.next = next
    }
}
