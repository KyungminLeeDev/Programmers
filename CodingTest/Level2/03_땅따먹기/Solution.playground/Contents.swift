func solution(_ land:[[Int]]) -> Int{
    var temp = [[Int]]()
    temp.append(land[0])
    
    for i in 1..<land.count {
        temp.append([0,0,0,0])
        
        for j in 0..<4 {
            for k in 0..<4 {
                if j != k {
                    temp[i][j] = max(temp[i][j], land[i][j] + temp[i-1][k])
                }
            }
        }
    }
    
    temp[land.count - 1].sort(by: >)
    
    return temp[land.count - 1][0]
}

print(solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]])) // 16

