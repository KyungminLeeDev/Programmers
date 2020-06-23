func solution(_ num:Int) -> Int {
    var value = num
    var count = 0
    
    while value > 1 {
        if (value & 1) == 0 { // Even
            value /= 2
        } else { // Odd
            value = (value * 3) + 1
        }
        count += 1
        if count == 500 {
            count = -1
            break
        }
    }
    
    return count
}

print(solution(6))
print(solution(16))
print(solution(626331))
