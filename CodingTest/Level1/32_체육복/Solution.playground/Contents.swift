func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    let tempLost = lost.sorted()
    let tempReserve = reserve.sorted()
    var result = [Int](repeating: 1, count: n) // 체육복 각 1개씩 있다고 가정
    
    // 여분 학생 계산
    for i in tempReserve {
        let index = i - 1
        result[index] += 1
    }
    
    // 잃어버린 학생 계산
    for i in tempLost {
        let index = i - 1
        result[index] -= 1
    }
    
    // 먼저 앞, 뒤 한 사람한테만 받을수 있을 경우 받기
    for (i, v) in result.enumerated() {
        if v == 0 {
            if i > 0 && (i < n - 1) {
                if result[i - 1] == 2 && result[i + 1] != 2 {
                    result[i - 1] = 1
                    result[i] = 1
                } else if result[i + 1] == 2 && result[i - 1] != 2 {
                    result[i + 1] = 1
                    result[i] = 1
                }
            }
        }
    }
    
    // 앞, 뒤 양쪽 다 받을 수 있는 경우 받기
    for (i, v) in result.enumerated() {
        if v == 0 {
            if i > 0 {
                if result[i - 1] == 2 {
                    result[i - 1] = 1
                    result[i] = 1
                }
            }
            
            if (i < n - 1) {
                if result[i + 1] == 2 {
                    result[i + 1] = 1
                    result[i] = 1
                }
            }
        }
    }
    
    result = result.filter { ($0 > 0) }
    
    return result.count
}



solution(5, [2,4], [1,3,5]) // 5
solution(5, [2,4], [3]) // 4
solution(3, [3], [1]) // 2

solution(3, [2], [2]) // 3
solution(5, [3], [2,3]) // 5
solution(5, [3,5], [2,4]) // 4
solution(5, [1,3], [2,4]) // 5
