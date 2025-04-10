//
//  LC-88-MargeSortedArray
//
//  Created by Harshvardhan Arora on 10/04/2025.
//
//  https://leetcode.com/problems/merge-sorted-array/description/
//

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = m - 1
    var j = n - 1
    var k = m + n - 1

    while j >= 0 {
        if i >= 0 && nums1[i] > nums2[j] {
            nums1[k] = nums1[i]
            i -= 1
        } else {
            nums1[k] = nums2[j]
            j -= 1
        }
        k -= 1
    }
}

var nums1 = [1, 2, 3, 0, 0, 0]
let m = 3
let nums2 = [2, 5, 6]
let n = 3

merge(&nums1, m, nums2, n)
print(nums1)
