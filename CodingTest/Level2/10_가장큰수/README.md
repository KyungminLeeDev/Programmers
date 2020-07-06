# 10. 가장 큰 수  

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨2
- 사용언어: Swift



## 문제 설명  

0 또는 양의 정수가 주어졌을 때, 정수를 이어 붙여 만들 수 있는 가장 큰 수를 알아내 주세요.

예를 들어, 주어진 정수가 [6, 10, 2]라면 [6102, 6210, 1062, 1026, 2610, 2106]를 만들 수 있고, 이중 가장 큰 수는 6210입니다.

0 또는 양의 정수가 담긴 배열 numbers가 매개변수로 주어질 때, 순서를 재배치하여 만들 수 있는 가장 큰 수를 문자열로 바꾸어 return 하도록 solution 함수를 작성해주세요.



## 제한 사항    

- numbers의 길이는 1 이상 100,000 이하입니다.
- numbers의 원소는 0 이상 1,000 이하입니다.
- 정답이 너무 클 수 있으니 문자열로 바꾸어 return 합니다.



## 입출력 예  

| numbers           | return    |
| ----------------- | --------- |
| [6, 10, 2]        | "6210"    |
| [3, 30, 34, 5, 9] | "9534330" |



## 주어진 코드  

~~~swift
import Foundation

func solution(_ numbers:[Int]) -> String {
    return ""
}
~~~



## 제출한 코드  

- 1시간 동안 풀어도 모르겠어서 다른 사람의 풀이 참고했다.

~~~swift
func solution(_ numbers:[Int]) -> String {
    let temp = numbers.map { String($0) }
    let result = temp.sorted {$0 + $1 > $1 + $0}

    guard result[0] != "0" else {
        return "0"
    }

    return result.joined()
}
~~~


## 새로 배운 것

### 문자열 배열을 하나의 문자열로 합치기 - joined()

~~~swift
let arrHello = ["Hello", "World", "!"]
var hello = arrHello.joined() // "HelloWorld!"
hello = arrHello.joined(separator: " ") // Hello World !
hello = arrHello.joined(separator: ", ") // Hello, World, !
~~~
