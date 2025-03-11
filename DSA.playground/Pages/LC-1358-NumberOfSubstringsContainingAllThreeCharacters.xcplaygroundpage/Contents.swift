//
//  LC-1358-NumberOfSubstringsContainingAllThreeCharacters
//
//  Created by Harshvardhan Arora on 11/03/2025.
//
//  https://leetcode.com/problems/number-of-substrings-containing-all-three-characters/
//

func numberOfSubstrings(_ s: String) -> Int {
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
