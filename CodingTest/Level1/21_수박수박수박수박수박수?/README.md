# 21. 수박수박수박수박수박수?         

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift



## 문제 설명  

길이가 n이고, 수박수박수박수....와 같은 패턴을 유지하는 문자열을 리턴하는 함수, solution을 완성하세요. 예를들어 n이 4이면 수박수박을 리턴하고 3이라면 수박수를 리턴하면 됩니다.



## 제한 조건   

- n은 길이 10,000이하인 자연수입니다.



## 입출력 예  

| n | return     |
| - | ---------- |
| 3 | "수박수"   |
| 4 | "수박수박" |




## 주어진 코드  

~~~swift
func solution(_ n:Int) -> String {
    return ''
}
~~~




## 제출한 코드  

~~~swift
func solution(_ n:Int) -> String {
    var str: String = ""

    for i in 1...n {
        if (i & 1) == 1 {
            str.append("수")
        } else {
            str.append("박")
        }
    }

    return str
}
~~~
