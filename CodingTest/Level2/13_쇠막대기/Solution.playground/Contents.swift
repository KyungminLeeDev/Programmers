func solution(_ arrangement:String) -> Int {
    let arr = Array(arrangement)
    var count = 0
    var result = 0

    for (i, v) in arr.enumerated() {
        if v == "(" {
            // 괄호 열 때 카운트 +1
            count += 1
        } else {
            // 괄호 닫을 때 카운트 -1 하고
            count -= 1
            // 레이저라면 카운트 값을 결과에 더함
            if arr[i - 1] == "(" {
                result += count
            } else {
                // 아니면 1만 결과에 더함
                result += 1
            }
        }
    }

    return result
}

print(solution("()(((()())(())()))(())"))
