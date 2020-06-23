func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var arrSum = arr1
    
    for i in 0..<arr1.count {
        for j in 0..<arr1[i].count {
            arrSum[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    
    return arrSum
}

print(solution([[1,2],[2,3]], [[3,4],[5,6]]))
print(solution([[1],[2]], [[3],[4]]))
