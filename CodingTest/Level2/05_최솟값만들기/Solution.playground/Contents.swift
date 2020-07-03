func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    
    let a = A.sorted() // 오름차순
    let b = B.sorted(by: >) // 내림차순
    
    for i in 0..<a.count {
        ans += a[i] * b[i]
    }

    return ans
}

print(solution([1,4,2], [5,4,4]))
print(solution([1,2], [3,4]))
