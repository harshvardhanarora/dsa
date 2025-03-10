//
//  LC-27-RemoveElement
//
//  Created by Harshvardhan Arora on 10/03/2025.
//
//  https://leetcode.com/problems/remove-element/
//

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    if nums.count == 0 {
        return 0
    } else if nums.count == 1 {
        if nums[0] == val {
            nums[0] = val
            return 0
        } else {
            return 1
        }
    }

    var replaceIndex = nums.count - 1
    var k = 0
    for i in 0..<nums.count {
        if nums[i] == val {
            while(nums[replaceIndex] == val && replaceIndex > i) {
                replaceIndex -= 1
            }
            if replaceIndex > i {
                nums[i] = nums[replaceIndex]
                nums[replaceIndex] = val
                k += 1
            }
        } else {
            k += 1
        }
    }
    return k
}
