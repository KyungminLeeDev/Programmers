//func solution(_ n:Int64) -> Int64 {
//    var arr = [Int64]()
//    var num = n
//
//    while num > 0 {
//        arr.append(num % 10)
//        num /= 10
//    }
//    arr.sort()
//
//    num = 0
//    var div = 1
//    for i in arr {
//        num += (i * Int64(div))
//        div *= 10
//    }
//
//    return num
//}

// 다시 푼 코드
func solution(_ n:Int64) -> Int64 {
    return Int64(String(Array(String(n)).sorted(by: >)))!
}


print(solution(118372))

