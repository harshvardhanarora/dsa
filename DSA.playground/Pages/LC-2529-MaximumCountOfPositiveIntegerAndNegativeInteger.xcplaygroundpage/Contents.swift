//
//  LC-2529-MaximumCountOfPositiveIntegerAndNegativeInteger
//
//  Created by Harshvardhan Arora on 12/03/2025.
//
//  https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
//

func maximumCount(_ nums: [Int]) -> Int {
    let length = nums.count

    if nums[0] == 0 && nums[length - 1] == 0 {
        return 0
    } else if nums[0] > 0 || nums[length - 1] < 0 {
        return length
    }

    var negLow = 0
    var negHigh = length - 1
    var negCount = 0
    var posLow = 0
    var posHigh = length - 1
    var posCount = 0

    while(negLow < negHigh && nums[0] != 0) {
        let index = negLow + ((negHigh - negLow) / 2)
        if nums[index] < 0 && nums[index + 1] >= 0 {
            negCount = index + 1
            break
        }
        if nums[index] < 0 {
            negLow = index
        } else {
            negHigh = index
        }
    }

    while(posLow < posHigh && nums[length - 1] != 0) {
        let index = posLow + ((posHigh - posLow) / 2)
        if nums[index] <= 0 && nums[index + 1] > 0 {
            posCount = length - index - 1
            break
        }
        if nums[index] <= 0 {
            posLow = index
        } else {
            posHigh = index
        }
    }

    return max(negCount, posCount)
}
