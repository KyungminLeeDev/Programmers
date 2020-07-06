func solution(_ heights:[Int]) -> [Int] {
    var result = Array(repeating: 0, count: heights.count)
    
    for i in (0..<heights.count).reversed() {
        for j in (0..<i).reversed() {
            if heights[i] < heights[j] {
                result[i] = j + 1 // 탑 번호는 인덱스 +1
                break
            }
        }
    }
    
    return result
}

print(solution([6,9,5,7,4]))
print(solution([3,9,9,3,5,7,2]))
print(solution([1,5,3,6,7,6,5]))


