# 20. 큰 수 만들기

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨2
- 사용언어: Swift



## 문제 설명  

어떤 숫자에서 k개의 수를 제거했을 때 얻을 수 있는 가장 큰 숫자를 구하려 합니다.

예를 들어, 숫자 1924에서 수 두 개를 제거하면 [19, 12, 14, 92, 94, 24] 를 만들 수 있습니다. 이 중 가장 큰 숫자는 94 입니다.

문자열 형식으로 숫자 number와 제거할 수의 개수 k가 solution 함수의 매개변수로 주어집니다. number에서 k 개의 수를 제거했을 때 만들 수 있는 수 중 가장 큰 숫자를 문자열 형태로 return 하도록 solution 함수를 완성하세요.


## 제한 사항    

- number는 1자리 이상, 1,000,000자리 이하인 숫자입니다.
- k는 1 이상 number의 자릿수 미만인 자연수입니다.



## 입출력 예  

| number     | k | return |
| ---------- | - | ------ |
| 1924       | 2 | 94     |
| 1231234    | 3 | 3234   |
| 4177252841 | 4 | 775841 |


## 주어진 코드  

~~~swift
import Foundation

func solution(_ number:String, _ k:Int) -> String {
    return ""
}
~~~



## 제출한 코드  

- 테스트 케이스 10번만 시간초과로 통과 못함.

~~~swift
func solution(_ number:String, _ k:Int) -> String {
    var str = number
    var count = 0
    var i = str.startIndex

    // 1개의 숫자를 제거할 때 마다 가장 큰 숫자를 만들 수 있는 경우 판단하기.
    // 1개를 뺀다고 하면 결과의 자릿수는 동일하므로 맨 앞자리가 큰 수가 크다.

    // 맨 앞부터 현재 원소와 다음 원소를 비교해서 현재 원소가 작으면 지우기
    // 아니면 다음 원소로 넘어가기
    while count < k { // k번 반복
        let next = str.index(after: i)

        if next >= str.endIndex {
            str.removeLast()
            i = str.startIndex
            count += 1
            continue
        } else if str[i] == "9" {
            i = next
            continue
        }

        if str[i] < str[next] { // 현재와 다음 원소비교해서 현재원소가 작으면
            str.remove(at: i)
            i = str.startIndex // 인덱스 초기화해서 다시 처음부터 검사
            count += 1
        } else {
            // 아니면 다음 인덱스로 넘어감
            i = next
        }
    }

    return str
}
~~~
