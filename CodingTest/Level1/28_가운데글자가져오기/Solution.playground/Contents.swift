func solution(_ s:String) -> String {
    var result = ""
    let id = s.count / 2
    
    for (index, value) in s.enumerated() {
        if (s.count % 2) == 0 {
            // 짝수
            if index == id - 1 || index == id {
                result += String(value)
            }
        } else {
            if index == id {
                result += String(value)
            }
        }
    }
    
    return result
}

print(solution("abcde"))
print(solution("qwer"))
