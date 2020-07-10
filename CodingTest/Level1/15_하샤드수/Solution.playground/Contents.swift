//func solution(_ x:Int) -> Bool {
//    var num = x
//    var sum = 0
//
//    while num > 0 {
//        sum += (num % 10)
//        num /= 10
//    }
//
//    return x % sum == 0
//}

// 다시 푼 코드
func solution(_ x:Int) -> Bool {
    let n = Array(String(x)).map({Int(String($0))!}).reduce(0, +)
    
    return x % n == 0 ? true : false
}

print(solution(10)) // true
print(solution(12)) // true
print(solution(11)) // false
print(solution(13)) // false
