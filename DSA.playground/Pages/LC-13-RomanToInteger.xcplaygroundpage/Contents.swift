//
//  LC-13-RomanToInteger
//
//  Created by Harshvardhan Arora on 07/03/2025.
//
//  https://leetcode.com/problems/roman-to-integer/
//

func romanToInt(_ s: String) -> Int {
    var output = 0
    var index = 0

    while(index < s.count) {
        let char = s[index]
        if index == s.count - 1 {
            switch char {
            case "I": output += 1
            case "V": output += 5
            case "X": output += 10
            case "L": output += 50
            case "C": output += 100
            case "D": output += 500
            case "M": output += 1000
            default: break
            }
        } else {
            let next = s[index + 1]
            switch (char, next) {
            case ("I", "V"), ("I", "X"): output -= 1
            case ("I", _): output += 1
            case ("V", _): output += 5
            case ("X", "L"), ("X", "C"): output -= 10
            case ("X", _): output += 10
            case ("L", _): output += 50
            case ("C", "D"), ("C", "M"): output -= 100
            case ("C", _): output += 100
            case ("D", _): output += 500
            case ("M", _): output += 1000
            default: break
            }
        }

        index += 1
    }

    return output
}

let input = "XCVIII"
print(romanToInt(input))
