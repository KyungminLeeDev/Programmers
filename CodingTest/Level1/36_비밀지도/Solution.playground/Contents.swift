func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    for i in 0..<n {
        let temp = arr1[i] | arr2[i]
        var str = ""
        var x = 1
        var count = 0
        // 1, 2, 4, 8, 16, 32...
        while count < n {
            if (temp & x) == x {
                str = "#" + str
            } else {
                str = " " + str
            }
            x = x * 2
            count += 1
        }
        answer.append(str)
    }
    
    return answer
}

print(solution(5, [9,20,28,18,11], [30,1,21,17,28]))
print(solution(6, [46,33,33,22,31,50], [27,56,19,14,14,10]))
