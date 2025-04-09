//
//  LC-70-ClimbingStairs
//
//  Created by Harshvardhan Arora on 09/04/2025.
//
//  https://leetcode.com/problems/climbing-stairs/
//

class Solution {
    var fib = [1: 1, 2: 2]

    func climbStairs(_ n: Int) -> Int {
        if let num = fib[n] {
            return num
        } else {
            let temp1 = climbStairs(n - 2)
            fib[n - 2] = temp1
            let temp2 = climbStairs(n - 1)
            fib[n - 1] = temp2
            return temp1 + temp2
        }
    }
}

let solution = Solution()
print(solution.climbStairs(5))
