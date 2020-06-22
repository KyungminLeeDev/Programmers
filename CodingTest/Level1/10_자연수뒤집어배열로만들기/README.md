# 10. 자연수 뒤집어 배열로 만들기     

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift



## 문제 설명  

자연수 n을 뒤집어 각 자리 숫자를 원소로 가지는 배열 형태로 리턴해주세요. 예를들어 n이 12345이면 [5,4,3,2,1]을 리턴합니다.



## 제한 조건   

- n은 10,000,000,000이하인 자연수입니다.



## 입출력 예  

| n     | return      |
| ----- | ----------- |
| 12345 | [5,4,3,2,1] |




## 주어진 코드  

~~~swift
func solution(_ n:Int64) -> [Int] {
    return []
}
~~~



## 제출한 코드  

- 처음 제출한 코드  
~~~swift
func solution(_ n:Int64) -> [Int] {
    var div = 1
    var arr = [Int]()

    while n > div {
        arr.append((Int(n) % (div * 10)) / div)
        div *= 10
    }

    return arr
}
~~~

- 다른 사람의 풀이 참고한 후 수정한 코드  
~~~swift
func solution(_ n:Int64) -> [Int] {
    var num = Int(n)
    var arr = [Int]()

    while num > 0 {
        arr.append(num % 10)
        num /= 10
    }

    return arr
}
~~~
