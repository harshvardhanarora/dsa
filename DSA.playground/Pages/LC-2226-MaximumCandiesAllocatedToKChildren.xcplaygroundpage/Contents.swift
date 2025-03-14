//
//  LC-2226-MaximumCandiesAllocatedToKChildren
//
//  Created by Harshvardhan Arora on 14/03/2025.
//
//  https://leetcode.com/problems/maximum-candies-allocated-to-k-children/description/
//

func maximumCandies(_ candies: [Int], _ k: Int) -> Int {
    let average: Int = candies.reduce(0, +) / k

    if average == 0 {
        return 0
    } else if average == 1 {
        return 1
    }

    var high = average
    var low = 0
    var candyPerPerson = 0
    while low <= high {
        let tempCandyPerPerson = low + ((high - low) / 2)
        var tempCandyBatches = 0
        print(tempCandyPerPerson)
        for candy in candies {
            tempCandyBatches += candy / tempCandyPerPerson
        }
        if tempCandyBatches >= k {
            candyPerPerson = tempCandyPerPerson
            low = tempCandyPerPerson + 1
        } else {
            high = tempCandyPerPerson - 1
        }
    }

    return candyPerPerson
}

let input = [4, 7, 5]
print(maximumCandies(input, 16))
