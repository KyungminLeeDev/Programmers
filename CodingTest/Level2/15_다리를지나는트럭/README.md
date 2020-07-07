# 15. 다리를 지나는 트럭

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨2
- 사용언어: Swift



## 문제 설명  

트럭 여러 대가 강을 가로지르는 일 차선 다리를 정해진 순으로 건너려 합니다. 모든 트럭이 다리를 건너려면 최소 몇 초가 걸리는지 알아내야 합니다. 트럭은 1초에 1만큼 움직이며, 다리 길이는 bridge_length이고 다리는 무게 weight까지 견딥니다.
※ 트럭이 다리에 완전히 오르지 않은 경우, 이 트럭의 무게는 고려하지 않습니다.

예를 들어, 길이가 2이고 10kg 무게를 견디는 다리가 있습니다. 무게가 [7, 4, 5, 6]kg인 트럭이 순서대로 최단 시간 안에 다리를 건너려면 다음과 같이 건너야 합니다.

| 경과 시간 | 다리를 지난 트럭 | 다리를 건너는 트럭 | 대기 트럭 |
| --------- | ---------------- | ------------------ | --------- |
| 0         | []               | []                 | [7,4,5,6] |
| 1~2       | []               | [7]                |	[4,5,6]   |
| 3         | [7]              | [4]                | [5,6]     |
| 4         |	[7]              | [4,5]              |	[6]       |
| 5         |	[7,4]            | [5]                |	[6]       |
| 6~7       |	[7,4,5]          | [6]                |	[]        |
| 8         |	[7,4,5,6]        | []	                | []        |

따라서, 모든 트럭이 다리를 지나려면 최소 8초가 걸립니다.

solution 함수의 매개변수로 다리 길이 bridge_length, 다리가 견딜 수 있는 무게 weight, 트럭별 무게 truck_weights가 주어집니다. 이때 모든 트럭이 다리를 건너려면 최소 몇 초가 걸리는지 return 하도록 solution 함수를 완성하세요.


## 제한 사항    

- bridge_length는 1 이상 10,000 이하입니다.
- weight는 1 이상 10,000 이하입니다.
- truck_weights의 길이는 1 이상 10,000 이하입니다.
- 모든 트럭의 무게는 1 이상 weight 이하입니다.



## 입출력 예  

| bridge_length |	weight | truck_weights                   | return |
| ------------- | ------ | ------------------------------- | ------ |
| 2             |	10     | [7,4,5,6]                       | 8      |
| 100           |	100    | [10]                            | 101    |
| 100           |	100    | [10,10,10,10,10,10,10,10,10,10] | 110    |


## 주어진 코드  

~~~swift
import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    return 0
}
~~~



## 제출한 코드  

~~~swift
func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var trucks = truck_weights
    var bridge = Array(repeating: 0, count: bridge_length)
    var sec = 0
    var w = 0

    while !bridge.isEmpty {
        // 1초마다 다리위의 트럭 또는 빈공간은 움직임
        w -= bridge.removeFirst()
        sec += 1

        // 다리에 진입 예정인 트럭을 포함한 무게와 다리가 견딜 수 있는 무게를 비교해서
        // 견딜 수 있으면 트럭 진입 시킨다.
        if let t = trucks.first {
            if t + w <= weight {
                w += trucks.removeFirst() // 트럭 진입
                bridge.append(t) // 트럭 진입 완료
            } else {
                // 견딜 수 업으면 트럭 대기하고 빈공간만 보낸다.
                bridge.append(0)
            }
        }
    }

    return sec
}
~~~
