//
//  LC-67-AddBinary
//
//  Created by Harshvardhan Arora on 04/04/2025.
//
//  https://leetcode.com/problems/add-binary/description/
//

func addBinary(_ a: String, _ b: String) -> String {
    var indexA = a.count - 1
    var indexB = b.count - 1
    var a = Array(a).map { Int(String($0))! }
    var b = Array(b).map { Int(String($0))! }
    var carry = 0
    var output = ""

    while(indexA >= 0 && indexB >= 0) {
        let newNum = a[indexA] + b[indexB] + carry
        carry = newNum > 1 ? 1 : 0
        output = String(newNum <= 1 ? newNum : (newNum == 2 ? 0 : 1)) + output
        indexA -= 1
        indexB -= 1
    }

    while(indexA >= 0) {
        let newNum = a[indexA] + carry
        carry = newNum > 1 ? 1 : 0
        output = String(newNum <= 1 ? newNum : 0) + output
        indexA -= 1
    }

    while(indexB >= 0) {
        let newNum = b[indexB] + carry
        carry = newNum > 1 ? 1 : 0
        output = String(newNum <= 1 ? newNum : 0) + output
        indexB -= 1
    }

    if carry > 0 {
        output = "1" + output
    }

    return output
}

let a = "11"
let b = "11"
print(addBinary(a, b))
