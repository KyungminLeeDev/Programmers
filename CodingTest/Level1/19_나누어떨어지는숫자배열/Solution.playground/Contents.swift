//func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
//    var result: [Int] = [-1]
//
//    for i in arr {
//        if i % divisor == 0 {
//            result.append(i)
//        }
//    }
//
//    if result.count > 1 {
//         result.remove(at: 0)
//    }
//
//    return result.sorted()
//}

// 다시 푼 코드
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter{$0 % divisor == 0}.sorted()
    
    return result.count > 0 ? result : [-1]
}

print(solution([5,9,7,10], 5))
print(solution([2,36,1,3], 1))
print(solution([3,2,6], 10))
