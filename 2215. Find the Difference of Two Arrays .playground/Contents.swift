
func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
    var n1 = [Int]()
    var n2 = [Int]()

    for i in nums1 {
        if !nums2.contains(i) && !n1.contains(i) {
            n1.append(i)
        }
    }

    for i in nums2 {
        if !nums1.contains(i) && !n2.contains(i) {
            n2.append(i)
        }
    }

    return [n1,n2]
}

func findDifference2(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
    var s1 = Set(nums1)
    var s2 = Set(nums2)

    return [
        Array(s1.subtracting(s2)),
        Array(s2.subtracting(s1))
    ]
}

//findDifference([1,2,3], [2,4,6])
findDifference([1,2,3,3], [1,1,2,2])

//findDifference2([1,2,3], [2,4,6])
findDifference2([1,2,3,3], [1,1,2,2])
