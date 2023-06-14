
func pivotIndex(_ nums: [Int]) -> Int {
    var res = -1
    var left = 0
    var sum = 0

    for i in 0..<nums.count {
        sum += nums[i]
    }

    for (i,x) in nums.enumerated() {
        if left == sum - left - x {
            return i
        }
        left += x
    }

    return res
}

pivotIndex([1,7,3,6,5,6])
