func solution(_ x:Int) -> Bool {
    var num = x
    var sum = 0
    
    while num > 0 {
        sum += (num % 10)
        num /= 10
    }
    
    return x % sum == 0
}

print(solution(10))
print(solution(12))
print(solution(11))
print(solution(13))
