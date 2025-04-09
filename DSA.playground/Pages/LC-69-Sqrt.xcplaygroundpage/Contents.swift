//
//  LC-69-Sqrt
//
//  Created by Harshvardhan Arora on 09/04/2025.
//
//  https://leetcode.com/problems/sqrtx/description/
//

func mySqrt(_ x: Int) -> Int {
    var low = 0
    var high = x
    var output = 0

    if x == 1 {
        return 1
    }

    while low < high {
        let num = (low + high) / 2
        if num * num <= x && (num + 1) * (num + 1) > x {
            output = num
            break
        } else if num * num > x {
            high = num
        } else if (num + 1) * (num + 1) <= x {
            low = num + 1
        }
    }

    return output
}

print(mySqrt(169))
