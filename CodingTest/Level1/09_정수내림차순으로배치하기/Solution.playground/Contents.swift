func solution(_ n:Int64) -> Int64 {
    var arr = [Int64]()
    var div: Int64 = 0
    var num: Int64 = 0
    
    div = 1
    while div < n {
        arr.append((n % (div * 10)) / div)
        div *= 10
    }
    arr.sort()
    
    
    div = 1
    for i in arr {
        num += (i * div)
        div *= 10
    }
    
    return num
}

print(solution(118372))

