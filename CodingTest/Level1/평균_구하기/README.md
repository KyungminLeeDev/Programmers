# 평균 구하기
- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift
<br/>



## 문제 설명
정수를 담고 있는 배열 arr의 평균값을 return하는 함수, solution을 완성해보세요.
<br/>



## 제한사항
- arr은 길이 1 이상, 100 이하인 배열입니다.
- arr의 원소는 -10,000 이상 10,000 이하인 정수입니다.
<br/>



## 입출력 예
| arr       | return |
| :-------- | :----: |
| [1,2,3,4] |  2.5   |
| [5,5]     |   5    |
<br/>



## 주어진 코드
~~~swift
func solution(_ arr:[Int]) -> Double {
    var sum: Int = 0

    for element in arr {
        sum += element
    }

    return Double(sum) / Double(arr.count)
}
~~~
<br/>
