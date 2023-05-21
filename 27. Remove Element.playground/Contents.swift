
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var arr = [Int]()

    for i in nums {
        if i != val {
            arr.append(i)
        }
    }

    nums = arr
    return arr.count
}

var arr = [3,2,2,3]
var arr2 = [0,1,2,2,3,0,4,2]

removeElement(&arr, 3)
removeElement(&arr2, 2)
