func isPalindrome(_ x: Int) -> Bool {
    guard x >= 0 else {
        return false
    }

    let string = String(x)
    let length = string.count
    var start = 0, end = length - 1
    while(start <= end) {
        if string[start] == string[end] {
            start += 1
            end -= 1
        } else {
            return false
        }
    }
    
    return true
}

let input = 34543
print(isPalindrome(input))
