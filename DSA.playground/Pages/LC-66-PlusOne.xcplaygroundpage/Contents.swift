//
//  LC-66-PlusOne
//
//  Created by Harshvardhan Arora on 04/04/2025.
//
//  https://leetcode.com/problems/plus-one/description/
//

func plusOne_1(_ digits: [Int]) -> [Int] {
    var output = digits
    var i = digits.count - 1
    var carry = 0
    while(i >= 0) {
        let newNum = digits[i] + carry + (i == digits.count - 1 ? 1 : 0)
        output[i] = newNum > 9 ? newNum - 10 : newNum
        carry = newNum > 9 ? newNum - 9 : 0
        i -= 1
    }

    if carry == 1 {
        output.insert(1, at: 0)
    }

    return output
}

func plusOne_2(_ digits: [Int]) -> [Int] {
        var digits = digits

        var i = digits.count - 1
        while(i >= 0) {
            guard digits[i] == 9 else {
                digits[i] += 1
                return digits
            }

            digits[i] = 0
            i -= 1
        }

        digits.insert(1, at: 0)

        return digits
    }

let input = [9, 9, 9]
print(plusOne_2(input))
