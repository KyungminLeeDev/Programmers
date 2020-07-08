func solution(_ s:String) -> Bool
{
    var open = 0
    
    for c in s {
        if c == "("{
            open += 1
        } else {
            if open <= 0 {
                return false
            }
            open -= 1
        }
    }

    return open == 0 ? true : false
}

print(solution("()()"))
print(solution("(())()"))
print(solution(")()("))
print(solution("(()("))
