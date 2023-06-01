
func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var flowerbed = [0] + flowerbed + [0]
    var c = 0

    for i in 1..<flowerbed.count-1 {
        if (flowerbed[i-1] == 0 && flowerbed[i] == 0 && flowerbed[i+1] == 0) {
            flowerbed[i] = 1
            c+=1
        }
    }
    return c >= n
}

canPlaceFlowers([1,0,0,0,1], 1)
canPlaceFlowers([1,0,0,0,1], 2)
canPlaceFlowers([1,0,0,0,0,0,1], 2)
canPlaceFlowers([0,0,1,0,1], 1)
