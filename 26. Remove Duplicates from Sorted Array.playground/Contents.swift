
func removeDuplicates(_ nums: inout [Int]) -> Int {
    var arr = [Int]()
    var c = 0

    for i in nums {
        if !arr.contains(i) {
            arr.append(i)
            nums[c] = i
            c += 1
        }
    }

    return c
}

var arr = [1,1,2]
var arr2 = [0,0,1,1,1,2,2,3,3,4]

removeDuplicates(&arr)
removeDuplicates(&arr2)
