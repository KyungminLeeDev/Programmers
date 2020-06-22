# 08. 제일 작은 수 제거하기   

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift



## 문제 설명  

정수를 저장한 배열, arr 에서 가장 작은 수를 제거한 배열을 리턴하는 함수, solution을 완성해주세요. 단, 리턴하려는 배열이 빈 배열인 경우엔 배열에 -1을 채워 리턴하세요. 예를들어 arr이 [4,3,2,1]인 경우는 [4,3,2]를 리턴 하고, [10]면 [-1]을 리턴 합니다.



## 제한사항  

- arr은 길이 1 이상인 배열입니다.
- 인덱스 i, j에 대해 i ≠ j이면 arr[i] ≠ arr[j] 입니다.



## 입출력 예  

| arr       | return  |
| --------- | ------- |
| [4,3,2,1] | [4,3,2] |
| [10]      | [-1]    |



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
