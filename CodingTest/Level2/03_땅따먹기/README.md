# 03. 땅따먹기     

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨2
- 사용언어: Swift



## 문제 설명  

땅따먹기 게임을 하려고 합니다. 땅따먹기 게임의 땅(land)은 총 N행 4열로 이루어져 있고, 모든 칸에는 점수가 쓰여 있습니다. 1행부터 땅을 밟으며 한 행씩 내려올 때, 각 행의 4칸 중 한 칸만 밟으면서 내려와야 합니다. 단, 땅따먹기 게임에는 한 행씩 내려올 때, 같은 열을 연속해서 밟을 수 없는 특수 규칙이 있습니다.

예를 들면,

| 1 | 2 | 3 | 5 |

| 5 | 6 | 7 | 8 |

| 4 | 3 | 2 | 1 |

로 땅이 주어졌다면, 1행에서 네번째 칸 (5)를 밟았으면, 2행의 네번째 칸 (8)은 밟을 수 없습니다.

마지막 행까지 모두 내려왔을 때, 얻을 수 있는 점수의 최대값을 return하는 solution 함수를 완성해 주세요. 위 예의 경우, 1행의 네번째 칸 (5), 2행의 세번째 칸 (7), 3행의 첫번째 칸 (4) 땅을 밟아 16점이 최고점이 되므로 16을 return 하면 됩니다.


## 제한 사항    

- 행의 개수 N : 100,000 이하의 자연수
- 열의 개수는 4개이고, 땅(land)은 2차원 배열로 주어집니다.
- 점수 : 100 이하의 자연수



## 입출력 예  

| land                            | answer |
| ------------------------------- | ------ |
| [[1,2,3,5],[5,6,7,8],[4,3,2,1]] | 16     |



## 주어진 코드  

~~~swift
import Foundation

func solution(_ land:[[Int]]) -> Int{
    var answer = 0

    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")

    return answer
}
~~~



## 제출한 코드  

~~~swift
func solution(_ land:[[Int]]) -> Int{
    var temp = [[Int]]()
    temp.append(land[0])

    for i in 1..<land.count {
        temp.append([0,0,0,0])

        for j in 0..<4 {
            for k in 0..<4 {
                if j != k {
                    temp[i][j] = max(temp[i][j], land[i][j] + temp[i-1][k])
                }
            }
        }
    }

    temp[land.count - 1].sort(by: >)

    return temp[land.count - 1][0]
}
~~~
