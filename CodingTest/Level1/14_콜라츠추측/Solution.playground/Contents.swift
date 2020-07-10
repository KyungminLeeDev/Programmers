//func solution(_ num:Int) -> Int {
//    var value = num
//    var count = 0
//
//    while value > 1 {
//        if (value & 1) == 0 { // Even
//            value /= 2
//        } else { // Odd
//            value = (value * 3) + 1
//        }
//        count += 1
//        if count == 500 {
//            count = -1
//            break
//        }
//    }
//
//    return count
//}

// 다시 푼 코드
func solution(_ num:Int) -> Int {
    var n = num
    var count = 0
    while n != 1 {
        n = (n % 2 == 0) ? n / 2 : n * 3 + 1
        count += 1

        if count > 500 {
            return -1
        }
    }

    return count
}

print(solution(6))      // 8
print(solution(16))     // 4
print(solution(626331)) // -1
