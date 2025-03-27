//
//  LC-58-LengthOfLastWord
//
//  Created by Harshvardhan Arora on 27/03/2025.
//
//  https://leetcode.com/problems/length-of-last-word/description/
//

func lengthOfLastWord(_ s: String) -> Int {
    var length = 0
    var reset = false

    for c in s {
        if c == " " {
            reset = true
        } else {
            if reset {
                reset = false
                length = 1
            } else {
                length += 1
            }
        }
    }

    return length
}

let test = "Test this is Hello World "
print(lengthOfLastWord(test))
