func solution(_ x:Int) -> Bool {
    var num = x
    var arr = [Int]()
    
    while num > 0 {
        arr.append(num % 10)
        num /= 10
    }
    
    num = 0
    for i in arr {
        num += i
    }
    
    return (x % num) == 0 ? true : false
}

print(solution(10))
print(solution(12))
print(solution(11))
print(solution(13))
