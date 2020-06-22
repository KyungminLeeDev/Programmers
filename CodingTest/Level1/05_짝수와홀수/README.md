# 짝수와 홀수
- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift
<br/>



## 문제 설명
정수를 담고 있는 배열 arr의 평균값을 return하는 함수, solution을 완성해보세요.
<br/>



## 제한사항
- num은 int 범위의 정수입니다.
- 0은 짝수입니다.
<br/>



## 입출력 예
| num | return |
| :-- | :----: |
| 3   | "Odd"  |
| 4   | "Even" |
<br/>



## 주어진 코드
~~~swift
func solution(_ num:Int) -> String {
    return ''
}
~~~
<br/>


## 제출한 코드
~~~swift
func solution(_ num:Int) -> String {
    return ((num & 1) == 1) ? "Odd" : "Even"  
}
~~~
<br/>
