//
//  LC-01-TwoSum
//
//  Created by Harshvardhan Arora on 07/03/2025.
//
// https://leetcode.com/problems/two-sum/description/
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var numsDict = [Int: Int]()

    for (index, num) in nums.enumerated() {
        if let secondIndex = numsDict[target - num] {
            return [index, secondIndex]
        } else {
            numsDict[num] = index
        }
    }

    return []
}

let input = [3, 2, 4]
print(twoSum(input, 6))
