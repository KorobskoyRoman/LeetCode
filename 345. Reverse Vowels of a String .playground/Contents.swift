
func reverseVowels(_ s: String) -> String {
    let vowels: [Character] = [
        "a",
        "e",
        "i",
        "o",
        "u",
        "A",
        "E",
        "I",
        "O",
        "U"
    ]
    var s = Array(s)

    var (left, right) = (0, s.count - 1)

    while left < right {
        if vowels.contains(s[left]) && vowels.contains(s[right]) {
            s.swapAt(left, right)
            left += 1
            right -= 1
        } else if vowels.contains(s[left]) {
            right -= 1
        } else if vowels.contains(s[right]) {
            left += 1
        } else {
            left += 1
            right -= 1
        }
    }

    return String(s)
}

reverseVowels("hello")
