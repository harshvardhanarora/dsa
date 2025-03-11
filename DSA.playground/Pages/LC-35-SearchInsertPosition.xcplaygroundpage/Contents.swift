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

func searchInsert_2(_ nums: [Int], _ target: Int) -> Int {
        if target <= nums[0] {
            return 0
        } else if target == nums[nums.count - 1] {
            return nums.count - 1
        } else if target > nums[nums.count - 1] {
            return nums.count
        }

        let size = nums.count
        var greaterThanIndex = 0
        var lessThanIndex = nums.count - 1

        while(lessThanIndex - greaterThanIndex > 1) {
            let index = greaterThanIndex + (lessThanIndex - greaterThanIndex + 1) / 2
            if nums[index] == target {
                return index
            } else if nums[index] > target {
                lessThanIndex = index
            } else {
                greaterThanIndex = index
            }
        }

        return lessThanIndex
    }

let nums = [1, 4, 6, 8]
let target = 9

print(searchInsert_1(nums, target) == 4)
