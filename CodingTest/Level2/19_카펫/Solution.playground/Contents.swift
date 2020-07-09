func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let width = Int(brown / 2)
    let area = brown + yellow
    var result = [Int]()

    for i in (1...width).reversed() {
        let height = area / i

        // yellow = (x - 2) * (y - 2)
        if (i - 2) * (height - 2) == yellow {
            result.append(i)
            result.append(height)
            break
        }
    }

    return result
}

solution(10, 2)
solution(8, 1)
solution(24, 24)
