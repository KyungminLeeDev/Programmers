func solution(_ answers:[Int]) -> [Int] {
    let person = [[1,2,3,4,5], [2,1,2,3,2,4,2,5], [3,3,1,1,2,2,4,4,5,5]]
    var count = [0, 0 ,0]
    var result = [Int]()
    
    // 채점
    for i in 0...2 {
        for (index, value) in answers.enumerated() {
            if value == person[i][index % person[i].count] {
                count[i] += 1
            }
        }
        
    }
    
    // 고득점 찾기
    for i in 0...2 {
        if count[i] == count.max() {
            result.append(i + 1)
        }
    }
        
    return result.sorted()
}

print(solution([1,2,3,4,5]))
print(solution([1,3,2,4,2]))

