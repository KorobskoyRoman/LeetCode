
func increasingTriplet(_ nums: [Int]) -> Bool {
    var first = Int.max
    var second = Int.max

    for num in nums {
        if num > second {
            return true
        } else if num > first && num < second {
            second = num
        } else if num < first {
            first = num
        }
    }

    return false
}

increasingTriplet([1,2,3,4,5])
increasingTriplet([5,4,3,2,1])
increasingTriplet([2,1,5,0,4,6])
increasingTriplet([20,100,10,12,5,13])
increasingTriplet([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1])
increasingTriplet([1,6,2,5,1])
increasingTriplet([4,5,2147483647,1,2])
increasingTriplet([1,2,1,3])
increasingTriplet([6,7,1,2])
