# 16. 숫자 야구

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨2
- 사용언어: Swift



## 문제 설명  

숫자 야구 게임이란 2명이 서로가 생각한 숫자를 맞추는 게임입니다. 게임해보기

각자 서로 다른 1~9까지 3자리 임의의 숫자를 정한 뒤 서로에게 3자리의 숫자를 불러서 결과를 확인합니다. 그리고 그 결과를 토대로 상대가 정한 숫자를 예상한 뒤 맞힙니다.
~~~
* 숫자는 맞지만, 위치가 틀렸을 때는 볼
* 숫자와 위치가 모두 맞을 때는 스트라이크
* 숫자와 위치가 모두 틀렸을 때는 아웃
~~~

예를 들어, 아래의 경우가 있으면

~~~
A : 123
B : 1스트라이크 1볼.
A : 356
B : 1스트라이크 0볼.
A : 327
B : 2스트라이크 0볼.
A : 489
B : 0스트라이크 1볼.
~~~

이때 가능한 답은 324와 328 두 가지입니다.

질문한 세 자리의 수, 스트라이크의 수, 볼의 수를 담은 2차원 배열 baseball이 매개변수로 주어질 때, 가능한 답의 개수를 return 하도록 solution 함수를 작성해주세요.


## 제한 사항    

- 질문의 수는 1 이상 100 이하의 자연수입니다.
- baseball의 각 행은 [세 자리의 수, 스트라이크의 수, 볼의 수] 를 담고 있습니다.



## 입출력 예  

| baseball                                             | return |
| ---------------------------------------------------- | ------ |
| [[123, 1, 1], [356, 1, 0], [327, 2, 0], [489, 0, 1]] | 2      |


## 주어진 코드  

~~~swift
import Foundation

func solution(_ baseball:[[Int]]) -> Int {
    return 0
}
~~~



## 제출한 코드  

~~~swift
func getStrike(_ a:Int, _ b:Int) -> Int {
    var result = 0

    let a1 = a % 10 // 1의 자리
    let a10 = (a / 10) % 10 // 10의자리
    let a100 = a / 100 // 100의 자리

    let b1 = b % 10 // 1의 자리
    let b10 = (b / 10) % 10 // 10의자리
    let b100 = b / 100 // 100의 자리

    if a1 == b1 {
        result += 1
    }

    if a10 == b10 {
        result += 1
    }

    if a100 == b100 {
        result += 1
    }

    return result
}

func getBall(_ a:Int, _ b:Int) -> Int {
    var result = 0

    let a1 = a % 10 // 1의 자리
    let a10 = (a / 10) % 10 // 10의자리
    let a100 = a / 100 // 100의 자리

    let b1 = b % 10 // 1의 자리
    let b10 = (b / 10) % 10 // 10의자리
    let b100 = b / 100 // 100의 자리

    if a1 != b1 {
        if a1 == b10 {
            result += 1
        } else if a1 == b100 {
            result += 1
        }
    }

    if a10 != b10 {
        if a10 == b1 {
            result += 1
        } else if a10 == b100 {
            result += 1
        }
    }

    if a100 != b100 {
        if a100 == b1 {
            result += 1
        } else if a100 == b10 {
            result += 1
        }
    }

    return result
}

func isOverlap(_ a:Int) -> Bool {
    let a1 = a % 10 // 1의 자리
    let a10 = (a / 10) % 10 // 10의자리
    let a100 = a / 100 // 100의 자리

    if a1 == a10 || a1 == a100 || a10 == a100 {
        return true
    }

    // 0인 경우도 제외
    if a1 == 0 || a10 == 0 || a100 == 0 {
        return true
    }

    return false
}

func solution(_ baseball:[[Int]]) -> Int {
    var result = Array(123...987)
    var bb = baseball

    while !bb.isEmpty {
        let b = bb.removeFirst()
        var removeNum = [Int]()

        for n in result {
            // 각 자릿수에 중복된 수 있으면 지우기 목록에 추가
            if isOverlap(n) {
                removeNum.append(n)
                continue
            }

            let strike = getStrike(b[0], n)
            let ball = getBall(b[0], n)

            // 스트라이크, 볼의 갯수 다른 경우 지우기 목록에 추가
            if b[1] != strike || b[2] != ball {
                removeNum.append(n)
            }

        }

        // 지우기 목록의 숫자를 결과 배열에서 지우기
        for n in removeNum {
            if let index = result.firstIndex(of: n) {
                result.remove(at: index)
            }
        }
    }

    // 결과 배열의 갯수 반환
    return result.count
}
~~~
