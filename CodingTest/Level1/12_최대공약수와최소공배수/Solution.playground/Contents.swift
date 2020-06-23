func solution(_ n:Int, _ m:Int) -> [Int] {
    var max = 0
    var min = 0
    max = gcd(n, m)
    min = (n * m) / max
    
    return [max, min]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    let _a = a > b ? a : b
    let _b = a < b ? a : b
    
    let r = _a % _b
    
    if r == 0 {
        return _b
    } else {
        return gcd(r, _b)
    }
}

print(solution(3, 12))
print(solution(2, 5))
