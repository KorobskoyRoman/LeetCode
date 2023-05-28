
func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var wordCopy = word2
    var str = ""

    for i in word1 {
        str += String(i)

        if !wordCopy.isEmpty {
            str += String(wordCopy.first!)
            wordCopy = String(wordCopy.dropFirst())
        }
    }

    if !wordCopy.isEmpty {
        str += wordCopy
    }

    print(str)
    return str
}

mergeAlternately("abc", "pqr")
mergeAlternately("ab", "pqrs")
mergeAlternately("abcd", "pq")
