# LV2 - 01. 가장 큰 정사각형 찾기     

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨2
- 사용언어: Swift



## 문제 설명  

1와 0로 채워진 표(board)가 있습니다. 표 1칸은 1 x 1 의 정사각형으로 이루어져 있습니다. 표에서 1로 이루어진 가장 큰 정사각형을 찾아 넓이를 return 하는 solution 함수를 완성해 주세요. (단, 정사각형이란 축에 평행한 정사각형을 말합니다.)
예를들어  

| 1 | 2 | 3 | 4 |
| - | - | - | - |
| 0 | 1 | 1 | 1 |
| 1 | 1 | 1 | 1 |
| 1 | 1 | 1 | 1 |
| 0 | 0 | 1 | 0 |

가 있다면 가장 큰 정사각형은  

| 1 | 2 | 3 | 4 |
| - | - | - | - |
| 0 | 1 | 1 | 1 |
| ~~1~~ | 1 | 1 | 1 |
| ~~1~~ | 1 | 1 | 1 |
| 0 | 0 | ~~1~~ | 0 |  
가 되며 넓이는 9가 되므로 9를 반환해 주면 됩니다.  


## 제한 조건   

- 표(board)는 2차원 배열로 주어집니다.
- 표(board)의 행(row)의 크기 : 1,000 이하의 자연수
- 표(board)의 열(column)의 크기 : 1,000 이하의 자연수
- 표(board)의 값은 1또는 0으로만 이루어져 있습니다.



## 입출력 예  

| board                                     | answer |
| ----------------------------------------- | ------ |
| [[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]] | 9      |
| [[0,0,1,1],[1,1,1,1]]                     | 4      |



### 입출력 예 설명

입출력 예 #1  

위의 예시와 같습니다.

입출력 예 #2  

| 0 | 0 | 1 | 1 |
| 1 | 1 | 1 | 1 |

로 가장 큰 정사각형의 넓이는 4가 되므로 4를 return합니다.


## 주어진 코드  

~~~swift
import Foundation

func solution(_ board:[[Int]]) -> Int
{
    var answer:Int = 0

    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")

    return answer
}
~~~



## 제출한 코드  

~~~swift
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
~~~
