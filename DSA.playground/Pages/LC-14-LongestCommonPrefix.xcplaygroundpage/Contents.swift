//
//  LC-14-LongestCommonPrefix
//
//  Created by Harshvardhan Arora on 07/03/2025.
//
//  https://leetcode.com/problems/longest-common-prefix/
//

func longestCommonPrefix(_ strs: [String]) -> String {
    var output = ""
    var shouldContinue = true
    var index = 0

    var arr = strs
    arr.sort(by: { $0.count < $1.count })

    while(index < arr[0].count) {
        var shouldAppend = true
        let char = arr[0][index]

        for str in arr {
            if str[index] != char {
                shouldAppend = false
                break
            }
        }
        if shouldAppend {
            output.append(char)
            index += 1;
        } else {
            break
        }
    }

    return output
}

let input = ["flower","flow","flight"]
print(longestCommonPrefix(input))
