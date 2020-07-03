# 08. JadenCase 문자열 만들기  

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨2
- 사용언어: Swift



## 문제 설명  

JadenCase란 모든 단어의 첫 문자가 대문자이고, 그 외의 알파벳은 소문자인 문자열입니다. 문자열 s가 주어졌을 때, s를 JadenCase로 바꾼 문자열을 리턴하는 함수, solution을 완성해주세요.


## 제한 사항    

- s는 길이 1 이상인 문자열입니다.
- s는 알파벳과 공백문자(" ")로 이루어져 있습니다.
- 첫 문자가 영문이 아닐때에는 이어지는 영문은 소문자로 씁니다. ( 첫번째 입출력 예 참고 )


## 입출력 예  

| s                       | return                  |
| ----------------------- | ----------------------- |
| "3people unFollowed me" | "3people Unfollowed Me" |
| "for the last week"     | "For The Last Week"     |



## 주어진 코드  

~~~swift
func solution(_ s:String) -> String {
    return ''
}
~~~

## Think

- 공백이 여러개 이어져 있을 수 있고 리턴값에도 그 공백 그대로 유지해야 함.
- split 함수로 공백기준으로 나눈다면 여러개 공백이 하나의 공백으로 되서 케이스 통과 못 함. 

## 제출한 코드  

~~~swift
import Foundation

func solution(_ s:String) -> String {
    var first = true
    var result = ""

    for c in s {
        // 공백은 그냥 넘어감
        if c == " " {
            result += " "
            first = true
            continue
        }

        if first {
            if let test = Int(String(c)) {
                // 첫 문자가 숫자라면 대문자 변환 안함
                result += String(c)
            } else {
                // 문자라면 대문자로 변혼
                result += String(c).uppercased()
            }
            first = false
        } else {
            // 첫 문자아니면 소문자로 변환
            result += String(c).lowercased()
        }

    }

    return result
}
~~~
