func solution(_ s:String) -> String {
    var result: String = ""
    var count = 0
    for ch in s {
        var str = String(ch)
        if str == " " {
            count = 0
        } else if (count & 1) == 0 {
            // 짝수는 대문자로 변경
            str = str.uppercased()
            count += 1
        } else {
            // 홀수는 소문자로 변경
            str = str.lowercased()
            count += 1
        }
        result += String(str)
    }
    
    return result
}

print(solution("try hello world"))
