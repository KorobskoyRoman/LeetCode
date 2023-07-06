
func longestCommonPrefix(_ strs: [String]) -> String {
    var pref = strs[0]

    for s in strs {
        while !s.hasPrefix(pref) {
            pref.removeLast()
            if pref.isEmpty {
                return ""
            }
        }
    }

    return pref
}

longestCommonPrefix(["flower","flow","flight"])
longestCommonPrefix(["dog","racecar","car"])
