
func productExceptSelf(_ nums: [Int]) -> [Int] {
    var arr = Array(repeating: 1, count: nums.count)

    for i in 1..<nums.count {
        arr[i] = arr[i-1] * nums[i-1]
    }

    var suffix = 1

    for i in (0..<nums.count).reversed() {
        arr[i] *= suffix
        suffix *= nums[i]
    }

    return arr
}

productExceptSelf([1,2,3,4])
productExceptSelf([-1,1,0,-3,3])

