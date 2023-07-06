class NumArray {
    private let nums: [Int]

    init(_ nums: [Int]) {
        self.nums = nums
    }

    func sumRange(_ left: Int, _ right: Int) -> Int {
        var l = left
        var s = 0

        while l <= right {
            s += nums[l]
            l += 1
        }

        return s
    }
}
