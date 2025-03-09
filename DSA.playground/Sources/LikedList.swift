//
//  LinkedList.swift
//
//  Created by Harshvardhan Arora on 09/03/2025.
//

public class LinkedList {
    public var value: Int
    public var next: LinkedList?

    public init(_ value: Int, next: LinkedList? = nil) {
        self.value = value
        self.next = next
    }
}
