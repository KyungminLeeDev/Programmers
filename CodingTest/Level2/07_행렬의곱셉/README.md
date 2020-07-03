# 07. 행렬의 곱셈

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨2
- 사용언어: Swift



## 문제 설명  

2차원 행렬 arr1과 arr2를 입력받아, arr1에 arr2를 곱한 결과를 반환하는 함수, solution을 완성해주세요.


## 제한 사항    

- 행렬 arr1, arr2의 행과 열의 길이는 2 이상 100 이하입니다.
- 행렬 arr1, arr2의 원소는 -10 이상 20 이하인 자연수입니다.
- 곱할 수 있는 배열만 주어집니다.


## 입출력 예  

| arr1 | arr2 | return |
| ---- | ---- | ------ |
| [[1, 4], [3, 2], [4, 1]] | [[3, 3], [3, 3]] | [[15, 15], [15, 15], [15, 15]] |
| [[2, 3, 2], [4, 2, 4], [3, 1, 4]] | [[5, 4, 3], [2, 4, 1], [3, 1, 1]] | [[22, 22, 11], [36, 28, 18], [29, 20, 14]] |



## 주어진 코드  

~~~swift
import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return []
}
~~~



## 제출한 코드  

~~~swift
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer = Array(repeating: Array(repeating: 0, count: arr2[0].count), count: arr1.count)

    for i in 0..<answer.count {
        for j in 0..<answer[i].count {
            for k in 0..<arr1[0].count {
                answer[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }

    return answer
}
~~~
