import Foundation

func solution(_ n:Int) -> Int {
    var arr = [Int]()
    arr.append(contentsOf: stride(from: 0, to: n + 1, by: 1))
    arr[1] = 0
    
    if n == 2 {
        return 1
    }
    
    for i in 2...Int(sqrt(Double(n))) {
        if isPrimeNumber(i) {
            var count = 2
            while i * count <= n {
                arr[i * count] = 0
                count += 1
            }
        }
    }
       
    var count = 0
    for i in arr {
        if i != 0 {
            count += 1
        }
    }
    
    return count
}

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
