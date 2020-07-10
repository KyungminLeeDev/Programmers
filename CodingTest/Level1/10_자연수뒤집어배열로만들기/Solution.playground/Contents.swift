//func solution(_ n:Int64) -> [Int] {
//    var num = Int(n)
//    var arr = [Int]()
//
//    while num > 0 {
//        arr.append(num % 10)
//        num /= 10
//    }
//
//    return arr
//}

// 다시 푼 코드
func solution(_ n:Int64) -> [Int] {
    return Array(String(n).reversed()).map{Int(String($0))!}
}


print(solution(12345))
