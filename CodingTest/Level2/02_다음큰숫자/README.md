# 02. 다음 큰 숫자     

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨2
- 사용언어: Swift



## 문제 설명  

자연수 n이 주어졌을 때, n의 다음 큰 숫자는 다음과 같이 정의 합니다.

조건 1. n의 다음 큰 숫자는 n보다 큰 자연수 입니다.
조건 2. n의 다음 큰 숫자와 n은 2진수로 변환했을 때 1의 갯수가 같습니다.
조건 3. n의 다음 큰 숫자는 조건 1, 2를 만족하는 수 중 가장 작은 수 입니다.
예를 들어서 78(1001110)의 다음 큰 숫자는 83(1010011)입니다.

자연수 n이 매개변수로 주어질 때, n의 다음 큰 숫자를 return 하는 solution 함수를 완성해주세요.


## 제한 사항    

- n은 1,000,000 이하의 자연수 입니다.



## 입출력 예  

| n  | result |
| -- | ------ |
| 78 | 83     |
| 15 | 23     |



### 입출력 예 설명

입출력 예#1

문제 예시와 같습니다.

입출력 예#2

15(1111)의 다음 큰 숫자는 23(10111)입니다.


## 주어진 코드  

~~~swift
import Foundation

func solution(_ n:Int) -> Int
{
    answer:Int = 0

    return answer
}
~~~



## 제출한 코드  

### 처음 제출한 코드   

~~~swift
func countBinaryOne(_ n: Int) -> Int {
    var count: Int = 0

    for b in 0..<n.bitWidth {
        if n & (1 << b) == (1 << b) {
            count += 1
        }
    }

    return count
}

func solution(_ n:Int) -> Int
{
    let countN = countBinaryOne(n)
    var number = n
    var result = 0

    while number < Int.max {
        number += 1

        if countN == countBinaryOne(number) {
            result = number
            break
        }
    }

    return result
}
~~~

### 다른 사람의 풀이 참고 후 수정한 코드

~~~swift
func solution(_ n:Int) -> Int
{
    var result: Int = n + 1

    while result <= Int.max {
        if n.nonzeroBitCount == result.nonzeroBitCount {
            break
        }

        result += 1
    }

    return result
}
~~~
