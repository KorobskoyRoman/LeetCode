
func uniqueOccurrences(_ arr: [Int]) -> Bool {
    var hash = [Int: Int]()

    for i in 0..<arr.count {
        if hash[arr[i]] != nil {
            hash[arr[i]]! += 1
        } else {
            hash[arr[i]] = 1
        }
    }

    var set = Set<Int>()
    for i in hash.values {
        set.insert(i)
    }

    return set.count == hash.keys.count
}

uniqueOccurrences([1,2,2,1,1,3])
uniqueOccurrences([1,2])
uniqueOccurrences([-3,0,1,-3,1,1,1,-3,10,0])
