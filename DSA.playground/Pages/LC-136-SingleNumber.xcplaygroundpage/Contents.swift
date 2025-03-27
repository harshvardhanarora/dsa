//
//  LC-136-SingleNumber
//
//  Created by Harshvardhan Arora on 27/03/2025.
//
//  https://leetcode.com/problems/single-number/description/
//

func singleNumber(_ nums: [Int]) -> Int {
    var dict: [Int: Int] = [:]

    for num in nums {
        if let value = dict[num] {
            dict[num] = value + 1
        } else {
            dict[num] = 1
        }
    }

    for (key, value) in dict {
        if value == 1 {
            return key
        }
    }

    return 0
}

let test = [1, 2, 2]
print(singleNumber(test))
