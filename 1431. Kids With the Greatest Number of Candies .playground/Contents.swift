
func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var res = [Bool]()
    var max = candies.max()!

    for i in candies {
        max <= i + extraCandies ? res.append(true) : res.append(false)
    }

    return res
}

kidsWithCandies([2,3,5,1,3], 3)

