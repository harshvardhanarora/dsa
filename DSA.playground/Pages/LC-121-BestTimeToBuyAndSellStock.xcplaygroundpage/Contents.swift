//
//  LC-121-BestTimeToBuyAndSellStock
//
//  Created by Harshvardhan Arora on 28/03/2025.
//
//  https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
//

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    var profit = 0

    if prices.count == 1 {
        return profit
    }

    var buy = prices[0]
    var sell = prices[0]
    for price in prices {
        if buy > price {
            if (sell - buy) > profit {
                profit = sell - buy
            }
            buy = price
            sell = price
        }
        if price > sell {
            sell = price
            if (sell - buy) > profit {
                profit = sell - buy
            }
        }
    }

    return profit
}

let test = [1, 3, 2, 5, 2, 4]
print(maxProfit(test))
