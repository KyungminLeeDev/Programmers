func solution(_ n:Int) -> Int {
    var sum = 0
    guard n > 0 else {
        return 0
    }
    
    for i in 1...n {
        if n % i == 0 {
            sum += i
        }
    }
    
    return sum
}

print(solution(12))
print(solution(5))
print(solution(0))
