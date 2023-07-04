
func compress(_ chars: inout [Character]) -> Int {
    var currentChar = chars[0]
    var counter = 0
    var str = ""

    for char in chars {
        if char == currentChar {
            counter += 1
        } else {
            str.append(currentChar)

            if counter > 1 {
                str.append("\(counter)")
            }
            counter = 1
            currentChar = char
        }
    }

    str.append(currentChar)

    if counter > 1 {
        str.append("\(counter)")
    }

    var index = 0

    for s in str {
        chars[index] = s
        index += 1
    }

    print(str)
    return str.count
}

var chars: [Character] = ["a","a","b","b","c","c","c"]
compress(&chars)
