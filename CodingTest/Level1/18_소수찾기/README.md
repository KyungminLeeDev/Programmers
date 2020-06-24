# 18. 소수 찾기         

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift



## 문제 설명  

1부터 입력받은 숫자 n 사이에 있는 소수의 개수를 반환하는 함수, solution을 만들어 보세요.

소수는 1과 자기 자신으로만 나누어지는 수를 의미합니다.
(1은 소수가 아닙니다.)



## 제한 조건   

- n은 2이상 1000000이하의 자연수입니다.



## 입출력 예  

| n   | result |
| --- | ------ |
| 10  | 4      |
| 5   | 3      |

### 입출력 예 설명  

입출력 예 #1 <br/>
1부터 10 사이의 소수는 [2,3,5,7] 4개가 존재하므로 4를 반환

입출력 예 #2 <br/>
1부터 5 사이의 소수는 [2,3,5] 3개가 존재하므로 3를 반환



## 주어진 코드  

~~~swift
func solution(_ n:Int) -> Int {
    return 0
}
~~~



## Think
> 에라토스테네스의 체
~~~
1. 찾아내고 싶은 범위만큼 자연수를 죽 늘어놓는다.
2. 1은 수학적으로 소수도, 합성수도 아닌 유일한 자연수이므로 먼저 1을 지운다.
3. 먼저 2를 소수로 표시하고 2를 제외한 2의 배수(4, 6, 8, ...)를 모두[9] 소거한다.
4. 그 다음 3을 소수로 표시하고 남아있는 수 중 3을 제외한 3의 배수(9, 15, 21, ...)도 모두[10] 소거한다.
5. 그 다음 5를 소수로 표시하고 남아있는 수 중 5를 제외한 5의 배수(25, 35, 55, ...)도 모두[11] 소거한다.
6. 그 다음 7을 소수로 표시하고 남아있는 수 중 7을 제외한 7의 배수(49, 77, 91, ...)도 모두[12] 소거한다.
7. 남아있는 가장 작은 수(소수)에 대해 이 과정을 \sqrt(n) 보다 작거나 같은 소수까지 계속 반복한다.
이렇게 하다 보면 n보다 작은 소수만 남는다.
~~~
[출처](https://namu.wiki/w/%EC%86%8C%EC%88%98(%EC%88%98%EB%A1%A0)#s-5)




## 제출한 코드  

~~~swift
import Foundation

func solution(_ n:Int) -> Int {
    var arr = [Int]()
    arr.append(contentsOf: stride(from: 0, to: n + 1, by: 1))
    arr[1] = 0

    if n == 2 {
        return 1
    }

    for i in 2...Int(sqrt(Double(n))) {
        if isPrimeNumber(i) {
            var count = 2
            while i * count <= n {
                arr[i * count] = 0
                count += 1
            }
        }
    }

    var count = 0
    for i in arr {
        if i != 0 {
            count += 1
        }
    }

    return count
}

func isPrimeNumber(_ n: Int) -> Bool {
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true
}
~~~
