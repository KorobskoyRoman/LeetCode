
class RecentCounter {
    var counter: [Int] = []

    func ping(_ t: Int) -> Int {
        counter.append(t)

        while counter[0] < t - 3000 {
            counter.removeFirst()
        }

        return counter.count
    }
}

var recentCounter = RecentCounter()
recentCounter.ping(1)
recentCounter.ping(100)
recentCounter.ping(3001)
recentCounter.ping(3002)
