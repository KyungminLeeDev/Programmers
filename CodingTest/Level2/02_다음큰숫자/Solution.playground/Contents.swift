func countBinaryOne(_ n: Int) -> Int {
    var count: Int = 0
    
    for b in 0..<n.bitWidth {
        if n & (1 << b) == (1 << b) {
            count += 1
        }
    }
    
    return count
}

func solution(_ n:Int) -> Int
{
    let countN = countBinaryOne(n)
    var number = n
    var result = 0

    while number < Int.max {
        number += 1
        
        if countN == countBinaryOne(number) {
            result = number
            break
        }
    }
    
    return result
}

print(solution(78))
print(solution(15))


