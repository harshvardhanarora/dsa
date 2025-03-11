//
//  LC-28-FindTheIndexOfTheFirstOccurenceInAString
//
//  Created by Harshvardhan Arora on 11/03/2025.
//
//  https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/
//

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.count >= haystack.count {
        return needle == haystack ? 0 : -1
    } else {
        var index = 0
        let haystackCount = haystack.count
        let needleCount = needle.count

        while(index <= haystackCount - needleCount) {
            let startIndex = haystack.index(haystack.startIndex, offsetBy: index)
            let endIndex = haystack.index(startIndex, offsetBy: needleCount - 1)
            let subString = String(haystack[startIndex...endIndex])

            if subString == needle {
                return index
            }

            index += 1
        }

        return -1
    }
}

let haystack = "abc"
let needle = "c"

print(strStr(haystack, needle))
