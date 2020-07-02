func solution(_ n:Int) -> Int
{
    var result: Int = n + 1

    while result <= Int.max {
        if n.nonzeroBitCount == result.nonzeroBitCount {
            break
        }
        
        result += 1
    }
        
    return result
}

print(solution(78))
print(solution(15))




