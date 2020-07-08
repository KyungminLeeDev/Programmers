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

let arr = [[123, 1, 1], [356, 1, 0], [327, 2, 0], [489, 0, 1]]

print(solution(arr))
