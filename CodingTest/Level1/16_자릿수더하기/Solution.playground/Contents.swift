//func solution(_ n:Int) -> Int
//{
//    var answer = 0
//    var num = n
//
//    while num > 0 {
//        answer += num % 10
//        num /= 10
//    }
//
//    return answer
//}

// 다시 푼 코드 
func solution(_ n:Int) -> Int {
    return Array(String(n)).map({Int(String($0))!}).reduce(0, +)
}

print(solution(123)) // 6
print(solution(987)) // 24
