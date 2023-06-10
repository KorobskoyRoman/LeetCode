
func isSubsequence(_ s: String, _ t: String) -> Bool {
    guard !s.isEmpty ||
            !t.isEmpty
    else { return true }

    var sArr = Array(s)
    var index = 0

    for i in t {
        print(sArr[index])
        guard index < sArr.count,
              sArr[index] == i
        else { continue }
        index += 1
    }

    return index == sArr.count
}

isSubsequence("abc", "ahbgdc")

isSubsequence("axc", "ahbgdc")

isSubsequence("acb", "ahbgdc")

isSubsequence("ahbgdc", "")
