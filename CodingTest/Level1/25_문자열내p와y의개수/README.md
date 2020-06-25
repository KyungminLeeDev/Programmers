# 24. 문자열 내 p와 y의 개수      

- 출처: [프로그래머스 코딩 테스트 연습](https://programmers.co.kr/learn/challenges)
- 난이도: 레벨1
- 사용언어: Swift



## 문제 설명  

문자열 s는 한 개 이상의 단어로 구성되어 있습니다. 각 단어는 하나 이상의 공백문자로 구분되어 있습니다. 각 단어의 짝수번째 알파벳은 대문자로, 홀수번째 알파벳은 소문자로 바꾼 문자열을 리턴하는 함수, solution을 완성하세요.



## 제한 조건   

- 문자열 s의 길이 : 50 이하의 자연수
- 문자열 s는 알파벳으로만 이루어져 있습니다.



## 입출력 예  

| s         | answer |
| --------- | ------ |
| "pPoooyY" | true   |
| "Pyy"     | false  |

### 입출력 예 설명  
입출력 예 #1 <br/>
'p'의 개수 2개, 'y'의 개수 2개로 같으므로 true를 return 합니다.

입출력 예 #2 <br/>
'p'의 개수 1개, 'y'의 개수 2개로 다르므로 false를 return 합니다.




## 주어진 코드  

~~~swift
import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false

    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")

    return ans
}
~~~



## 제출한 코드  

~~~swift

~~~
