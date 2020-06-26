# 33. 크레인 인형뽑기 게임 (2019 카카오 개발자 겨울 인턴십)

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift



## 문제 설명  

게임개발자인 죠르디는 크레인 인형뽑기 기계를 모바일 게임으로 만들려고 합니다.
죠르디는 게임의 재미를 높이기 위해 화면 구성과 규칙을 다음과 같이 게임 로직에 반영하려고 합니다.

게임개발자인 죠르디는 크레인 인형뽑기 기계를 모바일 게임으로 만들려고 합니다.
죠르디는 게임의 재미를 높이기 위해 화면 구성과 규칙을 다음과 같이 게임 로직에 반영하려고 합니다.

만약 같은 모양의 인형 두 개가 바구니에 연속해서 쌓이게 되면 두 인형은 터뜨려지면서 바구니에서 사라지게 됩니다. 위 상태에서 이어서 [5번] 위치에서 인형을 집어 바구니에 쌓으면 같은 모양 인형 두 개가 없어집니다.

크레인 작동 시 인형이 집어지지 않는 경우는 없으나 만약 인형이 없는 곳에서 크레인을 작동시키는 경우에는 아무런 일도 일어나지 않습니다. 또한 바구니는 모든 인형이 들어갈 수 있을 만큼 충분히 크다고 가정합니다. (그림에서는 화면표시 제약으로 5칸만으로 표현하였음)

게임 화면의 격자의 상태가 담긴 2차원 배열 board와 인형을 집기 위해 크레인을 작동시킨 위치가 담긴 배열 moves가 매개변수로 주어질 때, 크레인을 모두 작동시킨 후 터트려져 사라진 인형의 개수를 return 하도록 solution 함수를 완성해주세요.



## 제한 조건   

- board 배열은 2차원 배열로 크기는 5 x 5 이상 30 x 30 이하입니다.
- board의 각 칸에는 0 이상 100 이하인 정수가 담겨있습니다.
  - 0은 빈 칸을 나타냅니다.
  - 1 ~ 100의 각 숫자는 각기 다른 인형의 모양을 의미하며 같은 숫자는 같은 모양의 인형을 나타냅니다.
- moves 배열의 크기는 1 이상 1,000 이하입니다.
- moves 배열 각 원소들의 값은 1 이상이며 board 배열의 가로 크기 이하인 자연수입니다.



## 입출력 예  

| board | moves | result |
| ----- | ----- | ------ |
| [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]] | [1,5,3,5,1,2,1,4] | 4 |

### 입출력 예 설명

입출력 예 #1

인형의 처음 상태는 문제에 주어진 예시와 같습니다. 크레인이 [1, 5, 3, 5, 1, 2, 1, 4] 번 위치에서 차례대로 인형을 집어서 바구니에 옮겨 담은 후, 상태는 아래 그림과 같으며 바구니에 담는 과정에서 터트려져 사라진 인형은 4개 입니다



## 주어진 코드  

~~~swift
import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    return 0
}
~~~


## Think
* 주어진 보드 배열을 잘 이해해야 한다. 예로 주어진 board 배열은 아래와 같다.
> [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]]

  [[0,0,0,0,0],
   [0,0,1,0,3],
   [0,2,5,0,1],
   [4,2,4,4,2],
   [3,5,1,3,1]]
 즉, 맨 윗칸이 인덱스의 0이다.


## 제출한 코드  

~~~swift
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
~~~
