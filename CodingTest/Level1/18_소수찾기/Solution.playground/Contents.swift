import Foundation

func solution(_ n:Int) -> Int {
    var arr = [Bool](repeating: true, count: n + 1)
    arr[0] = false // 0 제외
    arr[1] = false // 1 제외
    
    // 입력값 2면 바로 1 반환 (에라토스테네스의 체 연산 제외)
    if n == 2 {
        return 1
    }
    
    // 에라토스테네스의 체
    for i in 2...Int(sqrt(Double(n))) {
        if isPrimeNumber(i) {
            var count = 2
            while i * count <= n {
                arr[i * count] = false
                count += 1
            }
        }
    }
       
    // 파악된 소수 개수 카운팅
    var count = 0
    for i in arr {
        if i == true {
            count += 1
        }
    }
    
    return count
}

// 소수인지 판단
func isPrimeNumber(_ n: Int) -> Bool {
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true
}

print(solution(10))
print(solution(5))

print(solution(2))
print(solution(1000000))
