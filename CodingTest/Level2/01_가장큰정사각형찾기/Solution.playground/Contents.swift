import Foundation

func solution(_ board:[[Int]]) -> Int
{
    var answer: Int = 0
    var temp = [Int]()
    var tempBoard = board
    

    // 행과 열의 크기를 +1 크기로 잡아서 모두 검사하도록 함
    // 0열 추가
    for i in 0..<tempBoard.count {
        tempBoard[i] = [0] + tempBoard[i]
    }
    // 0행 추가
    for _ in 0..<tempBoard[0].count {
        temp.append(0)
    }
    tempBoard.insert(temp, at: 0)
    temp.removeAll()
    
    // 배열 [1][1]부터 순회
    for i in 1..<tempBoard.count {
        for j in 1..<tempBoard[0].count {
            // 현재 값이 1이면
            guard tempBoard[i][j] == 1 else {
                continue
            }
            
            temp.append(tempBoard[i][j - 1]) // 좌측 값
            temp.append(tempBoard[i - 1][j]) // 상단 값
            temp.append(tempBoard[i - 1][j - 1]) // 좌측상단 값
            
            // 좌측, 상단, 좌측상단값 중 최소값의 +1을 현재값으로 변경
            if let min = temp.min() {
                tempBoard[i][j] = min + 1
                
                // 최대값 갱신
                if tempBoard[i][j] > answer {
                    answer = tempBoard[i][j]
                }
            }
            
            temp.removeAll()
        }
    }
    
    // 최대값의 제곱을 넓이로 반환
    return answer * answer
}

print(solution([[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]]))
print(solution([[0,0,1,1],[1,1,1,1]]))
print(solution([[0,0,0,0],[0,0,0,1]]))
print(solution([[0],[1]]))
print(solution([[0,0],[1,0]]))
print(solution([[0,0,0],[1,0,0]]))

