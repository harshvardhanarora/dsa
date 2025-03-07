func isPalindrome_1(_ x: Int) -> Bool {
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

func isPalindrome_2(_ input: Int) -> Bool {
    guard input >= 0 else {
        return false
    }

    return input == input.reversed
}

let input = 34543
print(isPalindrome_2(input))
