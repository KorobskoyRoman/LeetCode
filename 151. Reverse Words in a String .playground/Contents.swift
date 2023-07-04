
func reverseWords(_ s: String) -> String {
    s.split(separator: " ")
        .reversed()
        .joined(separator: " ")
}

reverseWords("blue is sky the")
reverseWords("  hello world  ")
