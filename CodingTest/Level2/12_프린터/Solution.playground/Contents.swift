import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var indexingArray = [[Int]]()
    var result = [[Int]]()
    
    // 2차원 배열에 인덱스와 우선순위로 저장
    for (i, p) in priorities.enumerated() {
        indexingArray.append([i, p])
    }
    
    while indexingArray.isEmpty == false {
        // 대기열 맨 앞부터 꺼냄
        let doc = indexingArray.removeFirst()
        
        // 남은 대기열의 최우선순위 탐색
        var pri = 0
        for el in indexingArray {
            if pri < el[1] {
                pri = el[1]
            }
        }
        
        // 현재문서의 우선순위보다
        if doc[1] >= pri {
            // 중요도 높은 문서 없으면 출력 대기열에 추가
            result.append(doc)
        } else {
            // 아니면 대기열 맨뒤로 추가
            indexingArray.append(doc)
        }
    }
    
    // 출력대기열의 앞부터 요청한 문서의 순서 탐색
    var count = 0
    while result.isEmpty == false {
        count += 1
        
        let first = result.removeFirst()
        if (first[0] == location){
            break
        }
    }
    
    return count
}

print(solution([2,1,3,2,], 2))
print(solution([1,1,9,1,1,1], 0))
