# 07. 핸드폰 번호 가리기   

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift



## 문제 설명  

프로그래머스 모바일은 개인정보 보호를 위해 고지서를 보낼 때 고객들의 전화번호의 일부를 가립니다.
전화번호가 문자열 phone_number로 주어졌을 때, 전화번호의 뒷 4자리를 제외한 나머지 숫자를 전부 *으로 가린 문자열을 리턴하는 함수, solution을 완성해주세요.



## 제한사항  

- s는 길이 4 이상, 20이하인 문자열입니다.



## 입출력 예  

| phone_number | return       |
| ------------ | ------------ |
| "01033334444"| "*******4444"|
| "027778888"  | "*****8888"  |



## 주어진 코드  

~~~swift
func solution(_ phone_number:String) -> String {
    return ''
}
~~~



## 제출한 코드  

~~~swift
func solution(_ phone_number:String) -> String {
    let count = phone_number.count - 4
    var temp: String = ""

    for (index, value) in phone_number.enumerated() {
        if index < count {
            temp.append("*")
        } else {
            temp.append(value)
        }
    }

    return temp
}
~~~
