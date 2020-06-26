func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var tempBoard = board
    var bucket = Bucket()

    //  0,1,2,3,4
    // [0,0,0,0,0] // boadr[0]
    // [0,0,1,0,3] // board[1]
    // [0,2,5,0,1] // board[2]
    // [4,2,4,4,2] // board[3]
    // [3,5,1,3,1] // board[4]
    
    for i in moves {
        let index = i - 1
    
        // 보드의 맨 위부터 검사 (0이 가장 위 인덱스임에 주의)
        for j in 0..<tempBoard.count {
            // 보드의 해당 공간이 빈 공간이 아니면
            if (tempBoard[j][index] != 0) {
                // 보드에서 인형 꺼내기
                let prize = tempBoard[j][index]
                tempBoard[j][index] = 0
                
                // 바구니에 인형 넣기
                bucket.push(element: prize)
                
                // 반복 종료
                break
            }
        }
    }
    
    
    return bucket.explosion
}

struct Bucket {
    var elements = [Int]()
    var explosion: Int = 0
        
    mutating func push(element: Int) {
        if let previous = self.peek() {
            // 밑에 인형이 있으면
            // 추가할 인형과 같은지 검사
            if previous == element {
                // 같으면 이미 있는 인형 없애고
                // 새로운 인형은 추가하지 않음
                self.pop()
                self.explosion += 2 // 폭발 카운터 2개 증가
            } else {
                // 다르면 인형 추가
                self.elements.append(element)
            }
        } else {
            // 인형 없으면 바로 추가
            self.elements.append(element)
        }
    }
    
    mutating func pop() -> Int? {
        return self.elements.popLast()
    }

    func peek() -> Int? {
        return self.elements.last
    }
}



let board = [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]]
let moves = [1,5,3,5,1,2,1,4]
solution(board, moves)  // 4
