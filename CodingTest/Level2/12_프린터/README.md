# 12. 프린터

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨2
- 사용언어: Swift



## 문제 설명  

일반적인 프린터는 인쇄 요청이 들어온 순서대로 인쇄합니다. 그렇기 때문에 중요한 문서가 나중에 인쇄될 수 있습니다. 이런 문제를 보완하기 위해 중요도가 높은 문서를 먼저 인쇄하는 프린터를 개발했습니다. 이 새롭게 개발한 프린터는 아래와 같은 방식으로 인쇄 작업을 수행합니다.

1. 인쇄 대기목록의 가장 앞에 있는 문서(J)를 대기목록에서 꺼냅니다.
2. 나머지 인쇄 대기목록에서 J보다 중요도가 높은 문서가 한 개라도 존재하면 J를 대기목록의 가장 마지막에 넣습니다.
3. 그렇지 않으면 J를 인쇄합니다.
예를 들어, 4개의 문서(A, B, C, D)가 순서대로 인쇄 대기목록에 있고 중요도가 2 1 3 2 라면 C D A B 순으로 인쇄하게 됩니다.

내가 인쇄를 요청한 문서가 몇 번째로 인쇄되는지 알고 싶습니다. 위의 예에서 C는 1번째로, A는 3번째로 인쇄됩니다.

현재 대기목록에 있는 문서의 중요도가 순서대로 담긴 배열 priorities와 내가 인쇄를 요청한 문서가 현재 대기목록의 어떤 위치에 있는지를 알려주는 location이 매개변수로 주어질 때, 내가 인쇄를 요청한 문서가 몇 번째로 인쇄되는지 return 하도록 solution 함수를 작성해주세요.



## 제한 사항    

- 현재 대기목록에는 1개 이상 100개 이하의 문서가 있습니다.
- 인쇄 작업의 중요도는 1~9로 표현하며 숫자가 클수록 중요하다는 뜻입니다.
- location은 0 이상 (현재 대기목록에 있는 작업 수 - 1) 이하의 값을 가지며 대기목록의 가장 앞에 있으면 0, 두 번째에 있으면 1로 표현합니다.



## 입출력 예  

| priorities         | location | return |
| ------------------ | -------- | ------ |
| [2, 1, 3, 2]       | 2        | 1      |
| [1, 1, 9, 1, 1, 1] | 0        | 5      |

### 입출력 예 설명

예제 #1

문제에 나온 예와 같습니다.

예제 #2

6개의 문서(A, B, C, D, E, F)가 인쇄 대기목록에 있고 중요도가 1 1 9 1 1 1 이므로 C D E F A B 순으로 인쇄합니다.



## 주어진 코드  

~~~swift
import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    return 0
}
~~~



## 제출한 코드  

~~~swift
import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var indexingArray = [[Int]]()
    var result = [[Int]]()

    // 2차원 배열에 인덱스와 우선순위로 저장
    for (i, p) in priorities.enumerated() {
        indexingArray.append([i, p])
    }

    while indexingArray.isEmpty == false {
        // 대기열 맨 앞부터 꺼냄
        let doc = indexingArray.removeFirst()

        // 남은 대기열의 최우선순위 탐색
        var pri = 0
        for el in indexingArray {
            if pri < el[1] {
                pri = el[1]
            }
        }

        // 현재문서의 우선순위보다
        if doc[1] >= pri {
            // 중요도 높은 문서 없으면 출력 대기열에 추가
            result.append(doc)
        } else {
            // 아니면 대기열 맨뒤로 추가
            indexingArray.append(doc)
        }
    }

    // 출력대기열의 앞부터 요청한 문서의 순서 탐색
    var count = 0
    while result.isEmpty == false {
        count += 1

        let first = result.removeFirst()
        if (first[0] == location){
            break
        }
    }

    return count
}
~~~
