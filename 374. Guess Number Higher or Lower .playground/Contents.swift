
func guessNumber(_ n: Int) -> Int {
    var low = 0
    var high = n

    while low <= high {
        let mid = (low + high) / 2

        if guess(mid) == 0 {
            return mid
        } else if guess(mid) == 1 {
            low = mid + 1
        } else if guess(mid) == -1 {
            high = mid - 1
        }
    }
    return -1
}
