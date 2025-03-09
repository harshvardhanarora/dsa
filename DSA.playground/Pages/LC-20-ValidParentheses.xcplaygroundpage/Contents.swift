//
//  LC-20-ValidParentheses
//
//  Created by Harshvardhan Arora on 08/03/2025.
//
//  https://leetcode.com/problems/valid-parentheses/
//

func isValid(_ s: String) -> Bool {
    var storage = [Character]()

    for char in s {
        if char == "(" || char == "{" || char == "[" {
            storage.append(char)
        } else {
            if let pop = storage.popLast() {
                switch pop {
                case "(": if char != ")" { return false }
                case "{": if char != "}" { return false }
                case "[": if char != "]" { return false }
                default: return false
                }
            } else {
                return false
            }
        }
    }

    if storage.isEmpty {
        return true
    } else {
        return false
    }
}

let input = "([])"
print(isValid(input))
