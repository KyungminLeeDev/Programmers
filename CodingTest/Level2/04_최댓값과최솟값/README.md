# 04. 최댓값과 최솟값      

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨2
- 사용언어: Swift



## 문제 설명  

문자열 s에는 공백으로 구분된 숫자들이 저장되어 있습니다. str에 나타나는 숫자 중 최소값과 최대값을 찾아 이를 (최소값) (최대값)형태의 문자열을 반환하는 함수, solution을 완성하세요.
예를들어 s가 1 2 3 4라면 1 4를 리턴하고, -1 -2 -3 -4라면 -4 -1을 리턴하면 됩니다.  


## 제한 사항    

- 문자열 s에는 공백으로 구분된 숫자들이 저장되어 있습니다. str에 나타나는 숫자 중 최소값과 최대값을 찾아 이를 (최소값) (최대값)형태의 문자열을 반환하는 함수, solution을 완성하세요.
예를들어 s가 1 2 3 4라면 1 4를 리턴하고, -1 -2 -3 -4라면 -4 -1을 리턴하면 됩니다.



## 입출력 예  

| s             | answer  |
| ------------- | ------- |
| "1 2 3 4 "    | "1 4"   |
| "-1 -2 -3 -4" | "-4 -1" |
| "-1 -1"       | "-1 -1" |



## 주어진 코드  

~~~swift
func solution(_ s:String) -> String {
    return ''
}
~~~



## 제출한 코드  

~~~swift
func solution(_ s:String) -> String {
    let str = s.split(separator: " ") // 공백으로 문자열 나눔
    let numbers = str.map { Int($0)! } // 정수로 변환
    var answer = ""

    answer += String(numbers.min()!)
    answer += " "
    answer += String(numbers.max()!)

    return  answer
}
~~~
