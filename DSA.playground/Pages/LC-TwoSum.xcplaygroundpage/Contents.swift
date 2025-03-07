// https://leetcode.com/problems/two-sum/description/

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var output: [Int] = []

    var numsDict = [Int: [Int]]()
    for (index, num) in nums.enumerated() {
        var arr = numsDict[num] ?? []
        arr.append(index)
        numsDict[num] = arr
    }

    print(numsDict)

    for key in numsDict.keys {
        let firstElementIndex = numsDict[key]!.first!
        let diff = target - key

        if diff == key {
            if let arr = numsDict[key], arr.count >= 2 {
                output = [arr[0], arr[1]]
                break
            }
        } else if let secondElementIndex = numsDict[diff]?.first {
            output.append(firstElementIndex)
            output.append(secondElementIndex)
            break
        }
    }

    return output
}

let input = [3, 2, 4]

print(twoSum(input, 6))
