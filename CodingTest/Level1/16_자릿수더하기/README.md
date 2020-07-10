# 16. 자릿수 더하기       

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift



## 문제 설명  

자연수 N이 주어지면, N의 각 자릿수의 합을 구해서 return 하는 solution 함수를 만들어 주세요.
예를들어 N = 123이면 1 + 2 + 3 = 6을 return 하면 됩니다.



## 제한 조건   

- N의 범위 : 100,000,000 이하의 자연수



## 입출력 예  

| N   | answer |
| --- | ------ |
| 123 | 6      |
| 987 | 24     |

### 입출력 예 설명  

입출력 예 #1
문제의 예시와 같습니다.

입출력 예 #2
9 + 8 + 7 = 24이므로 24를 return 하면 됩니다.



## 주어진 코드  

~~~swift
import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0

    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")

    return answer
}
~~~



## 제출한 코드  

### 처음 제출한 코드

~~~swift
func solution(_ n:Int) -> Int
{
    var answer = 0
    var num = n

    while num > 0 {
        answer += num % 10
        num /= 10
    }

    return answer
}
~~~

### 다시 푼 코드

~~~swift
func solution(_ n:Int) -> Int {
    return Array(String(n)).map({Int(String($0))!}).reduce(0, +)
}
~~~
