//
//  LC-35-SearchInsertPosition
//
//  Created by Harshvardhan Arora on 11/03/2025.
//
//  https://leetcode.com/problems/search-insert-position/
//

func searchInsert_1(_ nums: [Int], _ target: Int) -> Int {
    if target < nums[0] {
        return 0
    }

    for (index, num) in nums.enumerated() {
        if num >= target {
            return index
        }
    }

    return nums.count
}

let nums = [1, 4, 6, 8]
let target = 9

print(searchInsert_1(nums, target) == 4)
