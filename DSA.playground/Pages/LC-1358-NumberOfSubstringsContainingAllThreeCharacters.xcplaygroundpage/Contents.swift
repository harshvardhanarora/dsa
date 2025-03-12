//
//  LC-1358-NumberOfSubstringsContainingAllThreeCharacters
//
//  Created by Harshvardhan Arora on 11/03/2025.
//
//  https://leetcode.com/problems/number-of-substrings-containing-all-three-characters/
//

func numberOfSubstrings_1(_ s: String) -> Int {
    // This is the best solution by converting the string to array of chars
    let s = Array(s)
    let length = s.count
    if length < 3 {
        return 0
    }

    var countA = 0
    var countB = 0
    var countC = 0
    var count = 0

    var beginIndex = 0
    var endIndex = 0

    while(beginIndex != length - 2) {
        while(countA * countB * countC == 0 && endIndex < length) {
            switch s[endIndex] {
            case "a": countA += 1
            case "b": countB += 1
            default: countC += 1
            }

            endIndex += 1
        }

        if countA * countB * countC != 0 {
            let remElements = length - endIndex
            count += remElements + 1
        }

        switch s[beginIndex] {
        case "a": countA -= 1
        case "b": countB -= 1
        default: countC -= 1
        }

        beginIndex += 1
    }

    return count
}

func numberOfSubstrings_2(_ s: String) -> Int {
    var length = s.count

    var aHead: ListNode? = nil
    var aNode = aHead
    var bHead: ListNode? = nil
    var bNode = bHead
    var cHead: ListNode? = nil
    var cNode = cHead

    var count = 0

    for index in 0..<length {
        switch s[index] {
        case "a":
            let next = ListNode(index)
            if aHead == nil {
                aHead = next
                aNode = aHead
            } else {
                aNode!.next = next
                aNode = aNode!.next
            }
        case "b":
            let next = ListNode(index)
            if bHead == nil {
                bHead = next
                bNode = bHead
            } else {
                bNode!.next = next
                bNode = bNode!.next
            }
        default:
            let next = ListNode(index)
            if cHead == nil {
                cHead = next
                cNode = cHead
            } else {
                cNode!.next = next
                cNode = cNode!.next
            }
        }
    }

    aNode = aHead
    bNode = bHead
    cNode = cHead

    while(aNode != nil && bNode != nil && cNode != nil) {
        var max = max(aNode!.value, max(bNode!.value, cNode!.value))
        count += length - max

        var min = min(aNode!.value, min(bNode!.value, cNode!.value))
        switch min {
        case aNode!.value:
            aNode = aNode!.next
        case bNode!.value:
            bNode = bNode!.next
        default:
            cNode = cNode!.next
        }
    }

    return count
}

func numberOfSubstrings_3(_ s: String) -> Int {
    var length = s.count

    var aHead: ListNode? = nil
    var aNode = aHead
    var bHead: ListNode? = nil
    var bNode = bHead
    var cHead: ListNode? = nil
    var cNode = cHead

    var count = 0

    for index in 0..<length {
        switch s[index] {
        case "a":
            let next = ListNode(index)
            if aHead == nil {
                aHead = next
                aNode = aHead
            } else {
                aNode!.next = next
                aNode = aNode!.next
            }
        case "b":
            let next = ListNode(index)
            if bHead == nil {
                bHead = next
                bNode = bHead
            } else {
                bNode!.next = next
                bNode = bNode!.next
            }
        default:
            let next = ListNode(index)
            if cHead == nil {
                cHead = next
                cNode = cHead
            } else {
                cNode!.next = next
                cNode = cNode!.next
            }
        }

        while(aHead != nil && bHead != nil && cHead != nil) {
            var max = max(aHead!.value, max(bHead!.value, cHead!.value))
            count += length - max

            var min = min(aHead!.value, min(bHead!.value, cHead!.value))
            switch min {
            case aHead!.value:
                aHead = aHead!.next
            case bHead!.value:
                bHead = bHead!.next
            default:
                cHead = cHead!.next
            }
        }
    }

    return count
}

let input = "abcabc"
print(numberOfSubstrings_1(input))
