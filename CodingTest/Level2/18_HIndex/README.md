# 18. H-Index

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨2
- 사용언어: Swift



## 문제 설명  

H-Index는 과학자의 생산성과 영향력을 나타내는 지표입니다. 어느 과학자의 H-Index를 나타내는 값인 h를 구하려고 합니다. 위키백과1에 따르면, H-Index는 다음과 같이 구합니다.

어떤 과학자가 발표한 논문 n편 중, h번 이상 인용된 논문이 h편 이상이고 나머지 논문이 h번 이하 인용되었다면 h의 최댓값이 이 과학자의 H-Index입니다.

어떤 과학자가 발표한 논문의 인용 횟수를 담은 배열 citations가 매개변수로 주어질 때, 이 과학자의 H-Index를 return 하도록 solution 함수를 작성해주세요.


## 제한 사항    

- 과학자가 발표한 논문의 수는 1편 이상 1,000편 이하입니다.
- 논문별 인용 횟수는 0회 이상 10,000회 이하입니다.



## 입출력 예  

| citations       | return |
| --------------- | ------ |
| [3, 0, 6, 1, 5] | 3      |


## 주어진 코드  

~~~swift
import Foundation

func solution(_ citations:[Int]) -> Int {
    return 0
}
~~~



## 제출한 코드  

~~~swift
func solution(_ citations:[Int]) -> Int {
    let max = citations.max()!

    // 최대값부터 0까지 검사
    for h in (0...max).reversed() {
        let hOver = citations.filter{$0 >= h} // h번 이상 인용된 논문
        let hBelow = citations.filter{$0 <= h} // h번 이하 인용된 논문

        // h번 이상 인용된 논문이 h편 이상, 나머지 논문이 h번 이하로 인용됐다면
        if hOver.count >= h && hBelow.count <= h {
            return h
        }
    }

    return 0
}
~~~
