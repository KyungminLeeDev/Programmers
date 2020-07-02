# 02. 문자열 체크

- 출처: [프로그래머스 스킬 체크](https://programmers.co.kr/skill_checks)
- 난이도: 레벨1
- 사용언어: Swift



## 문제 설명  

문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지 확인해주는 함수, solution을 완성하세요. 예를 들어 s가 “a234”이면 False를 리턴하고 “1234”라면 True를 리턴하면 됩니다.



## 제한사항  

- s는 길이 1 이상, 길이 8 이하인 문자열입니다.


## 입출력 예  

| s      | return  |
| ------ | ------- |
| “a234” | “false” |
| "1234" | "true"  |



## 주어진 코드  

~~~swift
func solution(_ s:String) -> Bool {
    return true
}
~~~



## 제출한 코드  

~~~swift
func solution(_ s:String) -> Bool {
    guard s.count == 4 || s.count == 6 else {
        return false
    }

    for element in s {
        guard let num = Int(String(element)) else {
            return false
        }
    }

    return true
}
~~~
