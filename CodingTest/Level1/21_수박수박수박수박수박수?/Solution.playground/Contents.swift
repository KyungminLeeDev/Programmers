func solution(_ n:Int) -> String {
    var str: String = ""
    
    for i in 1...n {
        if (i & 1) == 1 {
            str.append("수")
        } else {
            str.append("박")
        }
    }
    
    return str
}

print(solution(3))
print(solution(4))



