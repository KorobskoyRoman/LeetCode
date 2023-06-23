
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var arr: [Int] = nums
    var pos = 0

    if arr.contains(target) {
        for i in 0..<nums.count {
            if target == nums[i] {
                pos = i
                return pos
            }
        }
    } else {
        arr.append(target)
        let sortArr = arr.sorted()

        for i in 0..<sortArr.count {
            if target == sortArr[i] {
                pos = i
                return pos
            }
        }
    }
    return pos
}

searchInsert([1,3,5,6], 5)
