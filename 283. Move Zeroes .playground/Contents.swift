
func moveZeroes(_ nums: inout [Int]) {
    var notZero = [Int]()
    var counter = 0
    for i in 0..<nums.count {
        if nums[i] == .zero {
            counter += 1
            continue
        }
        notZero.append(nums[i])
    }
    nums = notZero + Array(repeating: .zero, count: counter)
    print(nums)
}

var nums = [0,1,0,3,12]

moveZeroes(&nums)

nums = [0,0,1]
moveZeroes(&nums)
