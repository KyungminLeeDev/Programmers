# 17. 약수의 합         

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift



## 문제 설명  

정수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.



## 제한 조건   

- n은 0 이상 3000이하인 정수입니다.



## 입출력 예  

| n   | return |
| --- | ------ |
| 12  | 28     |
| 5   | 6      |

### 입출력 예 설명  

입출력 예 #1 <br/>
12의 약수는 1, 2, 3, 4, 6, 12입니다. 이를 모두 더하면 28입니다.

입출력 예 #2 <br/>
5의 약수는 1, 5입니다. 이를 모두 더하면 6입니다.



## 주어진 코드  

~~~swift
func solution(_ n:Int) -> Int {
    return 0
}
~~~

## Think
- 약수: 어떤 수를 나누었을 때 나머지가 0이 되는 수.
- '0'도 정수다. (양의 정수도 음의 정수도 아닌 그냥 정수)

## 제출한 코드  

~~~swift
func solution(_ n:Int) -> Int {
    var sum = 0
    guard n > 0 else {
        return 0
    }

    for i in 1...n {
        if n % i == 0 {
            sum += i
        }
    }

    return sum
}
~~~
