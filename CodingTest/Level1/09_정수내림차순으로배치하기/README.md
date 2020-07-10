# 09. 정수 내림차순으로 배치하기   

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift



## 문제 설명  

함수 solution은 정수 n을 매개변수로 입력받습니다. n의 각 자릿수를 큰것부터 작은 순으로 정렬한 새로운 정수를 리턴해주세요. 예를들어 n이 118372면 873211을 리턴하면 됩니다.



## 제한사항  

- n은 1이상 8000000000 이하인 자연수입니다.



## 입출력 예  

| n      | return |
| ------ | ------ |
| 118372 | 873211 |




## 주어진 코드  

~~~swift
func solution(_ n:Int64) -> Int64 {
    return 0
}
~~~



## 제출한 코드  

### 처음 제출한 코드  
~~~swift
func solution(_ n:Int64) -> Int64 {
    var arr = [Int64]()
    var div: Int64 = 0
    var num: Int64 = 0

    div = 1
    while div < n {
        arr.append((n % (div * 10)) / div)
        div *= 10
    }
    arr.sort()


    div = 1
    for i in arr {
        num += (i * div)
        div *= 10
    }

    return num
}
~~~

### 다른 사람의 풀이 참고한 후 수정한 코드
~~~swift
func solution(_ n:Int64) -> Int64 {
    var arr = [Int64]()
    var num = n

    while num > 0 {
        arr.append(num % 10)
        num /= 10
    }
    arr.sort()

    num = 0
    var div = 1
    for i in arr {
        num += (i * Int64(div))
        div *= 10
    }

    return num
}
~~~


### 다시 푼 코드

~~~swift
func solution(_ n:Int64) -> Int64 {
    return Int64(String(Array(String(n)).sorted(by: >)))!
}
~~~
