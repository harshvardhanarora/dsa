//
//  LC-168-ExcelSheetColumnTitle
//
//  Created by Harshvardhan Arora on 28/03/2025.
//
//  https://leetcode.com/problems/excel-sheet-column-title/description/
//

func convertToTitle(_ columnNumber: Int) -> String {
    var number = columnNumber
    var output = ""

    while number > 0  {
        let rem = number % 26
        if rem == 0 {
            output += "Z"
            number = number / 26 - 1
        } else {
            output += String(rem.characterForInt)
            number /= 26
        }
    }

    return String(output.reversed())
}

print(convertToTitle(52))
print(convertToTitle(53))
