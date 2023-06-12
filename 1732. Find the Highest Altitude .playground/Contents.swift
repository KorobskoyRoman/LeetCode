
func largestAltitude(_ gain: [Int]) -> Int {
    var currentArr = [0]

    for i in 0..<gain.count {
        currentArr.append(currentArr[i] + gain[i])
    }

    return currentArr.max()!
}

largestAltitude([-5,1,5,0,-7])
largestAltitude([-4,-3,-2,-1,4,3,2])
