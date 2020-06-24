# 22. 문자열 다루기 기본          

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift



## 문제 설명  

문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지 확인해주는 함수, solution을 완성하세요. 예를 들어 s가 a234이면 False를 리턴하고 1234라면 True를 리턴하면 됩니다.



## 제한 조건   

- s는 길이 1 이상, 길이 8 이하인 문자열입니다.



## 입출력 예  

| s      | return |
| ------ | ------ |
| "a234" | false  |
| "1234" | true   |




## 주어진 코드  

~~~swift
func solution(_ s:String) -> Bool {
    return true
}
~~~



## 제출한 코드  

~~~swift
guard s.count == 4 || s.count == 6 else {
    return false
}

return Int(s) == nil ? false : true
~~~
