# 13. 정수 제곱근 판별   

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift



## 문제 설명  

임의의 양의 정수 n에 대해, n이 어떤 양의 정수 x의 제곱인지 아닌지 판단하려 합니다.
n이 양의 정수 x의 제곱이라면 x+1의 제곱을 리턴하고, n이 양의 정수 x의 제곱이 아니라면 -1을 리턴하는 함수를 완성하세요.



## 제한 조건   

- n은 1이상, 50000000000000 이하인 양의 정수입니다.



## 입출력 예  

| n   | return  |
| --- | ------- |
| 123 | 144     |
| 3   | -1      |

### 입출력 예 설명  

입출력 예#1
121은 양의 정수 11의 제곱이므로, (11+1)를 제곱한 144를 리턴합니다.

입출력 예#2
3은 양의 정수의 제곱이 아니므로, -1을 리턴합니다.




## 주어진 코드  

~~~swift
func solution(_ n:Int64) -> Int64 {
    return 0
}
~~~



## 제출한 코드  

### 처음 제출한 코드
~~~swift
func solution(_ n:Int64) -> Int64 {
    var x: Int64 = 0
    var r: Int64 = -1

    while (x * x) < n {
        x += 1
        if (x * x) == n {
            x += 1
            x *= x
            r = x
            break
        }
    }

    return r
}
~~~

### 다른 사람의 풀이 참고한 후 수정한 코드
~~~swift
import Foundation

func solution(_ n:Int64) -> Int64 {
    let x = Int64(sqrt(Double(n)))

    return (x * x == n) ? ((x + 1) * (x + 1)) : -1
}
~~~
