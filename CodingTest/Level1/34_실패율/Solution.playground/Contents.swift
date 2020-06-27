import Foundation

// 실패율 계산
func calcFailRate(_ notClearPlayers: Int, _ stagePlayers: Int) -> Double {
    guard notClearPlayers != 0 else {
        return 0
    }
    guard stagePlayers != 0 else {
        return 1
    }
    return Double(notClearPlayers) / Double(stagePlayers)
}

// 지정한 스테이지까지 도달했으나 아직 클리어하지 못한 사용자의 수 카운팅
func countNotClearPlayers(_ stageNum: Int, _ stages: [Int]) -> Int {
    var count = 0
    
    for s in stages {
        if s == stageNum {
            count += 1
        }
    }
    
    return count
}

// 지정한 스테이지까지 도달한 사용자의 수 카운팅
func countStagePlayers(_ stageNum: Int, _ stages: [Int]) -> Int {
    var count = 0
    
    for s in stages {
        if s >= stageNum {
            count += 1
        }
    }
    
    return count
}

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var stageList = [Int:Double]()

    for i in 1...N {
        let stagePlayers = countStagePlayers(i, stages)
        let notClearPlayers = countNotClearPlayers(i, stages)
        let failRate = calcFailRate(notClearPlayers, stagePlayers)

        stageList[i] = failRate
    }

    // 키 값으로 먼저 오름차순 정렬후 밸류 값으로 내림차순 정렬
    let sorted = stageList.sorted(by: <).sorted(by: {$0.value > $1.value})

    return sorted.map { $0.key }
}



var stages = [2,1,2,6,2,4,3,3]
solution(5, stages)

stages = [4,4,4,4,4]
solution(4, stages)

stages = [1,2,3,4,5,6,7]
solution(8, stages) // 7,6,5,4,3,2,1,8

