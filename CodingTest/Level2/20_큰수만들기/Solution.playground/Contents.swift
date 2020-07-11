import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var str = number
    var count = 0
    var i = str.startIndex

    // 1개의 숫자를 제거할 때 마다 가장 큰 숫자를 만들 수 있는 경우 판단하기.
    // 1개를 뺀다고 하면 결과의 자릿수는 동일하므로 맨 앞자리가 큰 수가 크다.

    // 맨 앞부터 현재 원소와 다음 원소를 비교해서 현재 원소가 작으면 지우기
    // 아니면 다음 원소로 넘어가기
    while count < k { // k번 반복
        let next = str.index(after: i)

        // 마지막까지 결과 없으면 마지막 원소 지움
        if next >= str.endIndex {
            str.removeLast()
            i = str.startIndex
            count += 1
            continue
        }

        if str[i] < str[next] { // 현재와 다음 원소비교해서 현재원소가 작으면
            str.remove(at: i)
            i = str.startIndex // 인덱스 초기화해서 다시 처음부터 검사
            count += 1
        } else {
            // 아니면 다음 인덱스로 넘어감
            i = next
        }
    }

    return str
}


solution("999", 2)
solution("1924", 2)
solution("1231234", 3)
solution("4177252841", 4)
