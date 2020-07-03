func solution(_ n:Int) -> Int {
    var fibo = [0, 1]
    var result = 0

    for _ in 1..<n {
        result = (fibo[0] + fibo[1]) % 1234567
        fibo[0] = fibo[1]
        fibo[1] = result
    }

    return result
}

print(solution(3))
print(solution(5))
