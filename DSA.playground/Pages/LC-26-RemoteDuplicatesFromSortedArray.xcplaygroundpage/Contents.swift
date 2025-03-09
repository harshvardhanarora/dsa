//
//  LC-26-RemoteDuplicatesFromSortedArray
//
//  Created by Harshvardhan Arora on 09/03/2025.
//
//  https://leetcode.com/problems/remove-duplicates-from-sorted-array
//

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var count = 1
    var output: [Int] = []
    for (index, num) in nums.enumerated() {
        if index > 0 {
            if num != nums[index - 1] {
                output.append(num)
                count += 1
            }
        } else {
            output.append(num)
        }
    }

    nums = output
    return count
}
