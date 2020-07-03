# 09. N개의 최소공배수

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨2
- 사용언어: Swift



## 문제 설명  

두 수의 최소공배수(Least Common Multiple)란 입력된 두 수의 배수 중 공통이 되는 가장 작은 숫자를 의미합니다. 예를 들어 2와 7의 최소공배수는 14가 됩니다. 정의를 확장해서, n개의 수의 최소공배수는 n 개의 수들의 배수 중 공통이 되는 가장 작은 숫자가 됩니다. n개의 숫자를 담은 배열 arr이 입력되었을 때 이 수들의 최소공배수를 반환하는 함수, solution을 완성해 주세요.



## 제한 사항    

- arr은 길이 1이상, 15이하인 배열입니다.
- arr의 원소는 100 이하인 자연수입니다.



## 입출력 예  

| arr        | result |
| [2,6,8,14] | 168    |
| [1,2,3]    | 6      |



## 주어진 코드  

~~~swift
func solution(_ arr:[Int]) -> Int {
    return 0
}
~~~



## 제출한 코드  

~~~swift
func gcd(_ a: Int, _ b: Int) -> Int {
    let _a = a > b ? a : b
    let _b = a < b ? a : b

    let r = _a % _b

    if r == 0 {
        return _b
    } else {
        return gcd(r, _b)
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return (a * b) / gcd(a, b)
}

func solution(_ arr:[Int]) -> Int {
    var temp =  arr

    for i in 0..<(arr.count - 1) {
        temp[i + 1] = lcm(temp[i], temp[i + 1])
    }

    return temp.last!
}
~~~
