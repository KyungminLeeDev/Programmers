# 직사각형 별찍기

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift
<br/>



## 문제 설명

이 문제에는 표준 입력으로 두 개의 정수 n과 m이 주어집니다.
별(*) 문자를 이용해 가로의 길이가 n, 세로의 길이가 m인 직사각형 형태를 출력해보세요.
<br/>



## 제한 조건

- n과 m은 각각 1000 이하인 자연수입니다.




## 예시

입력

~~~
5 3
~~~

출력

~~~
*****
*****
*****
~~~




## 주어진 코드

~~~swift
import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

print(a + b)
~~~


## 제출한 코드

~~~swift
import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

var stars: String = ""

for _ in 1...b {
    for _ in 1...a {
        stars += "*"
    }
    stars += "\n"
}

print(stars)
~~~
