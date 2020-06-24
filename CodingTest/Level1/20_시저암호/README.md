# 20. 시저 암호          

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift



## 문제 설명  

어떤 문장의 각 알파벳을 일정한 거리만큼 밀어서 다른 알파벳으로 바꾸는 암호화 방식을 시저 암호라고 합니다. 예를 들어 AB는 1만큼 밀면 BC가 되고, 3만큼 밀면 DE가 됩니다. z는 1만큼 밀면 a가 됩니다. 문자열 s와 거리 n을 입력받아 s를 n만큼 민 암호문을 만드는 함수, solution을 완성해 보세요.



## 제한 조건   

- 공백은 아무리 밀어도 공백입니다.
- s는 알파벳 소문자, 대문자, 공백으로만 이루어져 있습니다.
- s의 길이는 8000이하입니다.
- n은 1 이상, 25이하인 자연수입니다.



## 입출력 예  

| s       | n   | result |
| ------- | --- | ------ |
| "AB"    | 5   | "BC"   |
| "z"     | 1   | "a"    |
| "a B z" | 4   | "eFd"  |




## 주어진 코드  

~~~swift
func solution(_ s:String, _ n:Int) -> String {
    return ''
}
~~~




## 제출한 코드  

~~~swift
func solution(_ s:String, _ n:Int) -> String {
    var alphabet = [Character]()
    var Alphabet = [Character]()
    var data = [Character]()
    var result: String = ""

    for abc in "abcdefghijklmnopqrstuvwxyz" {
        alphabet.append(abc)
    }

    for abc in "ABCDEFGHIJKLMNOPQRSTUVWXYZ" {
        Alphabet.append(abc)
    }

    for ch in s {
        data.append(ch)
    }

    for i in 0..<data.count {
        if data[i] == " " {
            result.append(" ")
            continue
        }

        for j in 0..<26 {
            if data[i] == alphabet[j] {
                result.append(alphabet[(j + n) % 26])
            } else if data[i] == Alphabet[j] {
                result.append(Alphabet[(j + n) % 26])
            }
        }
    }

    return result
}
~~~
