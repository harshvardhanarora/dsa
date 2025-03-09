//
//  LC-09-PalindromeNumber
//
//  Created by Harshvardhan Arora on 07/03/2025.
//
//  https://leetcode.com/problems/palindrome-number/
//

func isPalindrome_1(_ x: Int) -> Bool {
    guard x >= 0 else {
        return false
    }

    let string = String(x)
    let length = string.count
    var start = 0, end = length - 1
    while(start <= end) {
        if string[start] == string[end] {
            start += 1
            end -= 1
        } else {
            return false
        }
    }
    
    return true
}

// Most efficient way
func isPalindrome_2(_ x: Int) -> Bool {
    guard x >= 0 else {
        return false
    }

    return x == x.reversed
}

func isPalindrome_3(_ x: Int) -> Bool {
    return String(x) == String(String(x).reversed())
}

let input = 34543
print(isPalindrome_2(input))
