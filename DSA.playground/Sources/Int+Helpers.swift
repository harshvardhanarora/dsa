//
//  Int+Helpers.swift
//
//  Created by Harshvardhan Arora on 07/03/2025.
//

extension Int {
    public var reversed: Int {
        var reversedNumber = 0
        var number = self
        
        while number != 0 {
            let remainder = number % 10
            reversedNumber = reversedNumber * 10 + remainder
            number /= 10
        }

        return reversedNumber
    }
}
